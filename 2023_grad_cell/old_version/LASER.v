module LASER (
input CLK,
input RST,
input [3:0] X,
input [3:0] Y,
output reg [3:0] C1X,
output reg [3:0] C1Y,
output reg [3:0] C2X,
output reg [3:0] C2Y,
output reg DONE);

//================================================================
//   PARAMETER
//================================================================

localparam IDLE               = 3'd0;
localparam RD_DATA            = 3'd1;
localparam SCAN_C2            = 3'd2;
localparam DET_MAX_OBJ_POS_C2 = 3'd3;
localparam SCAN_C1            = 3'd4;
localparam DET_MAX_OBJ_POS_C1 = 3'd5;
localparam OUT                = 3'd6;
integer i;

//================================================================
//   REG/WIRE
//================================================================
reg [2:0] curr_state,next_state ;
reg [3:0] col_ptr,row_ptr;
reg [5:0] scan_valid_cnt;
reg [7:0] obj_mem[0:39];//obj_x [3:0];obj_y [7:4]
reg [39:0] max_c1_dirty,tmp_c1_dirty ;
reg [39:0] max_c2_dirty,tmp_c2_dirty ;
reg [6:0]  opt_c1_obj_num,opt_c2_obj_num;
reg [6:0]  tmp_obj_num;
reg [7:0]  circal_loc_C1,circal_loc_C2;
reg[39:0] or_result;
reg[5:0] opt_c2_obj_num_wr;



wire state_RD_data 		      = curr_state == RD_DATA;
wire state_SCAN_C2			  = curr_state == SCAN_C2;
wire state_SCAN_C1			  = curr_state == SCAN_C1;
wire state_DET_MAX_OBJ_POS_C2 = curr_state == DET_MAX_OBJ_POS_C2;
wire state_DET_MAX_OBJ_POS_C1 = curr_state == DET_MAX_OBJ_POS_C1;
wire state_out 				  = curr_state == OUT;


wire read_done_f =  state_RD_data&& scan_valid_cnt == 'd39;
wire scan_c1_done_f = state_SCAN_C1 && scan_valid_cnt == 'd39;
wire scan_c2_done_f = state_SCAN_C2 && scan_valid_cnt == 'd39;
wire det_max_c1_done_f = state_DET_MAX_OBJ_POS_C1 && col_ptr == 'd15 && row_ptr == 'd15;
wire det_max_c2_done_f = state_DET_MAX_OBJ_POS_C2 && col_ptr == 'd15 && row_ptr == 'd15;
//================================================================
//   WIRE
//================================================================
wire [3:0] cur_pos_X = obj_mem[scan_valid_cnt][3:0];
wire [3:0] cur_pos_Y = obj_mem[scan_valid_cnt][7:4];
//operator 
wire [9:0] dis = ($signed(row_ptr-cur_pos_Y)) ** 2 + ($signed(col_ptr-cur_pos_X)) ** 2;
//flag
wire dis_lr_16_f = dis <= 16;
//================================================================
//   FSM
//================================================================

always @(posedge CLK or posedge RST) begin
	if(RST) begin
		curr_state <= RD_DATA;
	end else begin
		curr_state <= next_state;
	end
end

always @(*) begin 
	case (curr_state)
		IDLE    : next_state = RD_DATA;
		RD_DATA : next_state = read_done_f ? SCAN_C1 : RD_DATA;           
		SCAN_C2 : next_state = DET_MAX_OBJ_POS_C2;       
		DET_MAX_OBJ_POS_C2 : next_state = det_max_c2_done_f ? OUT : SCAN_C2;
		SCAN_C1 : next_state = DET_MAX_OBJ_POS_C1;       
		DET_MAX_OBJ_POS_C1 : next_state = det_max_c1_done_f ? SCAN_C2 : SCAN_C1;
		OUT    : next_state = IDLE;         
		default : next_state = IDLE;
	endcase
end


//================================================================
//   OUT
//================================================================
always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		C1X <= 0;
		C1Y <= 0;
		C2X <= 0;
		C2Y <= 0;
		DONE <= 0;
	end else if(curr_state == OUT)begin
		C1X <= circal_loc_C1[3:0];
		C1Y <= circal_loc_C1[7:4];
		C2X <= circal_loc_C2[3:0];
		C2Y <= circal_loc_C2[7:4];
		DONE <= 1;
	end
	else
	begin
		C1X <= 0;
		C1Y <= 0;
		C2X <= 0;
		C2Y <= 0;
		DONE <= 0;
	end
end


//================================================================
//   DESIGN
//================================================================

//obj_mem
always @(posedge CLK or posedge RST) begin
	if(RST) begin
		for (i = 0; i < 40; i=i+1) begin
		    obj_mem[i] <= 'd0;
		end
	end else if(curr_state == RD_DATA)begin
			obj_mem[scan_valid_cnt] <= {Y,X};
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		col_ptr <= 0;
	end else if(det_max_c1_done_f || det_max_c2_done_f || curr_state == IDLE) begin
		col_ptr <= 0 ;
	end else if(scan_c2_done_f||scan_c1_done_f) begin
		col_ptr <= col_ptr + 1;
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		row_ptr <= 0;
	end  else if(curr_state == IDLE) begin
		row_ptr <= 0;
	end else if(det_max_c1_done_f || det_max_c2_done_f) begin
		row_ptr <= row_ptr + 1;
	end else if(col_ptr == 'd15 && (scan_c1_done_f || scan_c2_done_f) ) begin
		row_ptr <= row_ptr + 1;
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		scan_valid_cnt <= 0;
	end else if(read_done_f || scan_c1_done_f || scan_c2_done_f || curr_state == IDLE)begin
		scan_valid_cnt <= 0;
	end
	else if(curr_state == RD_DATA || curr_state == DET_MAX_OBJ_POS_C1 || curr_state == DET_MAX_OBJ_POS_C2) begin
		scan_valid_cnt <= scan_valid_cnt + 1;
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		max_c1_dirty <= 0;
	end else if(curr_state == IDLE)begin
		max_c1_dirty <= 0;
	end
	else if(curr_state == DET_MAX_OBJ_POS_C1)begin
		max_c1_dirty <= tmp_obj_num > opt_c1_obj_num ? tmp_c1_dirty : max_c1_dirty;
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		max_c2_dirty <= 0;
	end  else if(curr_state == IDLE)begin
		max_c2_dirty <= 0;
	end else if(scan_c2_done_f)begin
		max_c2_dirty <= tmp_obj_num > opt_c2_obj_num ? tmp_c2_dirty : max_c2_dirty;
	end
end

//tmp_c1_dirty
always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		tmp_c1_dirty <= 0;
	end else if(scan_c1_done_f || curr_state == IDLE) begin
		tmp_c1_dirty <= 0;
	end else if(curr_state == SCAN_C1)begin
		tmp_c1_dirty[scan_valid_cnt] <= dis_lr_16_f ? 1 : 0;
	end
	
end

//tmp_c2_dirty
always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		tmp_c2_dirty <= 0;
	end else if(scan_c2_done_f || curr_state == IDLE) begin
		tmp_c2_dirty <= 0;
	end else if(curr_state == SCAN_C2)begin
		tmp_c2_dirty[scan_valid_cnt] <= dis_lr_16_f ? 1 : 0;
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		tmp_obj_num <= 0;
	end
	else if(scan_c1_done_f || scan_c2_done_f || curr_state == IDLE)
	begin
		tmp_obj_num <= 0;
	end
    else if(curr_state == SCAN_C2 || curr_state == SCAN_C1) begin
		tmp_obj_num <= dis_lr_16_f ? tmp_obj_num + 1 : tmp_obj_num;
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		 opt_c1_obj_num <= 0;
	end else if (curr_state == IDLE)begin
		 opt_c1_obj_num <= 0;
	end else if (scan_c1_done_f)begin
		 opt_c1_obj_num <= tmp_obj_num > opt_c1_obj_num ? tmp_obj_num : opt_c1_obj_num;
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		 circal_loc_C1 <= 0;
	end else if (curr_state == IDLE)begin
		 circal_loc_C1 <= 0;
	end else if(scan_c1_done_f) begin
		 circal_loc_C1 <= tmp_obj_num > opt_c1_obj_num ? {row_ptr,col_ptr} : circal_loc_C1;
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		 circal_loc_C2 <= 0;
	end else if (curr_state == IDLE)begin
		 circal_loc_C2 <= 0;
	end else if(scan_c2_done_f) begin
		 circal_loc_C2 <=  opt_c2_obj_num_wr > opt_c2_obj_num ? {row_ptr,col_ptr} : circal_loc_C2;
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		 opt_c2_obj_num <= 0;
	end else if (curr_state == IDLE)begin
		 opt_c2_obj_num <= 0;
	end else if (scan_c2_done_f)begin
		 opt_c2_obj_num <= opt_c2_obj_num_wr > opt_c2_obj_num ? opt_c2_obj_num_wr : opt_c2_obj_num;
	end
end




always@(*)
begin
	or_result = max_c1_dirty | tmp_c2_dirty ; 
    opt_c2_obj_num_wr = 0;  //initialize count variable.
    for(i=0;i<40;i=i+1)   //check for all the bits.
        if(or_result[i] == 1'b1)    //check if the bit is '1'
            opt_c2_obj_num_wr = opt_c2_obj_num_wr + 1;    //if its one, increment the count.

end


endmodule