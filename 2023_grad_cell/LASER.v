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
//   REG
//================================================================

//================================================================
//   WIRE
//================================================================


//================================================================
//   FSM
//================================================================




//================================================================
//   OUT
//================================================================



//================================================================
//   DESIGN
//================================================================




endmodule