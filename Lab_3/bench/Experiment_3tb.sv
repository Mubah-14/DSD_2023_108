`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 07:17:41 AM
// Design Name: 
// Module Name: Experiment_3tb
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


module Experiment_3tb();
logic a;
logic b;
logic c;
logic sum;
logic carry;
 Experiment_3 UUT(
   .a(a),
   .b(b),
   .c(c),
   .sum(sum),
   .carry(carry)
   );
    initial begin
  a = 0; b = 0; c = 0; 
    #10;
          a = 0; b = 0; c = 1;
    #10;
          a = 0; b = 1; c = 0; 
    #10;
          a = 0; b = 1; c = 1;
    #10;
          a = 1; b = 0; c = 0; 
    #10;
          a = 1; b = 0; c = 1; 
    #10;
          a = 1; b = 1; c = 0; 
    #10;
          a = 1; b = 1; c = 1;
    #10;
  $stop;

   end
   
   
   
    initial begin
   $monitor("a=%b, b=%b, c=%b, sum=%b, carry=%b",a,b,c,sum,carry);
   end 
   endmodule
    
  

         
   


   

   
