`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 03:45:26 PM
// Design Name: 
// Module Name: tb_exp2_dsd
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


module tb_exp2_dsd();
logic a1;
logic b1;
logic c1;
logic sum1;
logic carry1;
exp3_dsd uut(
   .a(a1),
   .b(b1),
   .c(c1),
   .sum(sum1),
   .carry(carry1)
   );
    initial begin
   a1=0;b1=0;c1=0;
   #10
   a1=0;b1=0;c1=1;
   #10
   a1=0;b1=1;c1=0;
   #10
   a1=0;b1=1;c1=1;
   #10
   a1=1;b1=0;c1=0;
   #10
   a1=1;b1=0;c1=1;
   #10
   a1=1;b1=1;c1=0;
   #10
   a1=1;b1=1;c1=1;
   #10
   $finish;
   end
   
   
   
    
    
  
endmodule
         
   


   
