`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 01:15:53 PM
// Design Name: 
// Module Name: TB_exp3_dsd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB__exp3_dsd;
reg a,b,c;
wire x,y;
exp3_dsd uut(
  .a(a),
  .b(b),
  .c(c),
  .x(x),
  .y(y));
 initial begin
 a=0;b=0;c=0;
 #10
 a=0;b=0;c=1;
 #10
 a=0;b=1;c=0;
 #10
 a=0;b=1;c=1;
 #10
 a=1;b=0;c=0;
 #10
 a=1;b=0;c=1;
 #10
 a=1;b=1;c=0;
 #10
 a=1;b=1;c=1;
 #10
 $finish;
 end
 
 
 
  
  


 endmodule