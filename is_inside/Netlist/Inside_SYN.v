/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Mar 31 19:07:47 2023
/////////////////////////////////////////////////////////////


module Inside ( x, y, circle_x, circle_y, is_inside );
  input [3:0] x;
  input [3:0] y;
  input [3:0] circle_x;
  input [3:0] circle_y;
  output is_inside;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58;

  OAI31XL U23 ( .A0(n22), .A1(n23), .A2(n24), .B0(n25), .Y(is_inside) );
  OAI21XL U24 ( .A0(n26), .A1(n27), .B0(n28), .Y(n25) );
  CLKINVX1 U25 ( .A(n23), .Y(n28) );
  OAI32X1 U26 ( .A0(n29), .A1(x[3]), .A2(n30), .B0(n31), .B1(n32), .Y(n24) );
  CLKINVX1 U27 ( .A(n33), .Y(n31) );
  XNOR2X1 U28 ( .A(n34), .B(n35), .Y(n23) );
  AND2X1 U29 ( .A(n27), .B(n26), .Y(n35) );
  OA22X1 U30 ( .A0(n36), .A1(n37), .B0(y[3]), .B1(n38), .Y(n26) );
  AND2X1 U31 ( .A(n37), .B(n36), .Y(n38) );
  XOR2X1 U32 ( .A(n39), .B(circle_y[3]), .Y(n37) );
  NAND2X1 U33 ( .A(circle_y[2]), .B(circle_y[1]), .Y(n39) );
  AOI2BB2X1 U34 ( .B0(n40), .B1(n41), .A0N(y[2]), .A1N(n42), .Y(n36) );
  NOR2X1 U35 ( .A(n41), .B(n40), .Y(n42) );
  XOR2X1 U36 ( .A(circle_y[2]), .B(circle_y[1]), .Y(n41) );
  OAI22XL U37 ( .A0(circle_y[1]), .A1(n43), .B0(y[1]), .B1(n44), .Y(n40) );
  AND2X1 U38 ( .A(circle_y[1]), .B(n43), .Y(n44) );
  NOR2BX1 U39 ( .AN(y[0]), .B(circle_y[0]), .Y(n43) );
  NAND3X1 U40 ( .A(circle_y[2]), .B(circle_y[1]), .C(circle_y[3]), .Y(n27) );
  OAI21XL U41 ( .A0(n30), .A1(n29), .B0(n45), .Y(n34) );
  AO21X1 U42 ( .A0(n29), .A1(n30), .B0(x[3]), .Y(n45) );
  CLKINVX1 U43 ( .A(circle_x[3]), .Y(n29) );
  AOI2BB2X1 U44 ( .B0(n46), .B1(circle_x[2]), .A0N(x[2]), .A1N(n47), .Y(n30)
         );
  NOR2X1 U45 ( .A(circle_x[2]), .B(n46), .Y(n47) );
  NAND3X1 U46 ( .A(n48), .B(n49), .C(n50), .Y(n22) );
  MXI2X1 U47 ( .A(n51), .B(n52), .S0(x[0]), .Y(n50) );
  NOR2X1 U48 ( .A(n33), .B(n53), .Y(n52) );
  XNOR2X1 U49 ( .A(circle_x[0]), .B(n33), .Y(n51) );
  NAND2BX1 U50 ( .AN(y[0]), .B(circle_y[0]), .Y(n33) );
  XNOR2X1 U51 ( .A(n54), .B(n55), .Y(n49) );
  XNOR2X1 U52 ( .A(circle_x[1]), .B(x[1]), .Y(n55) );
  XNOR2X1 U53 ( .A(n56), .B(n46), .Y(n48) );
  OAI21XL U54 ( .A0(n54), .A1(n57), .B0(n58), .Y(n46) );
  AO21X1 U55 ( .A0(n57), .A1(n54), .B0(x[1]), .Y(n58) );
  CLKINVX1 U56 ( .A(circle_x[1]), .Y(n57) );
  CLKINVX1 U57 ( .A(n32), .Y(n54) );
  NAND2X1 U58 ( .A(x[0]), .B(n53), .Y(n32) );
  CLKINVX1 U59 ( .A(circle_x[0]), .Y(n53) );
  XNOR2X1 U60 ( .A(circle_x[2]), .B(x[2]), .Y(n56) );
endmodule

