`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2025 12:23:31 AM
// Design Name: 
// Module Name: Experiment_4
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


module Experiment_4(
  input logic [1:0] a,
  input logic [1:0] b,
  output logic red,
  output logic blue,
  output logic green );
  
  assign red=((a[0]&&~b[0]) | (~a[0]&&b[0])| (~a[0]&&~a[1]&&b[1])  | (a[1]&&~b[0]&&~b[1])| (a[1]&&b[0]&&~b[1]) | (a[0]&&~a[1]&&b[1]));
  assign blue=(a[0]&&b[0]&&~b[1]) | (a[1]&&~b[0]) | (~a[0]&&~b[0]&&~b[1]) | (a[0]&&a[1]&&b[1]) | (a[0]&&~a[1]&&~b[0]);
  assign green=(~a[0]&&~a[1]) | (b[0]&&b[1]) | (a[0]&&~a[1]&&b[0]) | (b[0]&&~b[1]&&~a[0]) | (~a[0]&&~b[0]&&b[1]);
endmodule

