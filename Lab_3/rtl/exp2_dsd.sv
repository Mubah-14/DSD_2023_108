`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 02:41:08 PM
// Design Name: 
// Module Name: exp2_dsd
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


module exp2_dsd(
   input logic a,
   input logic b,
   input logic c,
   output logic sum,
   output logic carry );
 assign sum=(a^b)^c;
 assign carry=(a&b)|(c&(a^b));
    
endmodule
