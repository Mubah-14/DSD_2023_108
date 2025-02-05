`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 11:04:31 AM
// Design Name: 
// Module Name: TB__exp3_DSD
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


module TB__exp3_DSD;
reg a,b,c;
wire x,y;
exp3_DSD(
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
