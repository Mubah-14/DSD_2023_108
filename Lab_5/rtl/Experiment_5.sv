`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 01:15:02 PM
// Design Name: 
// Module Name: Experiment_5
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2024 07:00:48 PM
// Design Name: 
// Module Name: LAB 5 RTL
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

module Experiment_5(
  input [3:0] a,
  input [2:0] sel,
  output logic sega,segb,segc,segd,sege,segf,segg,
  output logic an7,an6,an5,an4,an3,an2,an1,an0 
    );
always_comb 
begin
    sega=(~a[3]&(~a[2])&(~a[1])&a[0]) | (~a[3]&(a[2])&(~a[1])&(~a[0])) | (a[3]&a[2]&(~a[1])&a[0]) | (a[3]&(~a[2])&a[1]&a[0]);
    segb=(a[2]&a[1]&(~a[0])) | (a[3]&a[1]&a[0]) | (a[3]&a[2]&(~a[0])) | (~a[3]&a[2]&(~a[1])&a[0]);
    segc=(a[3]&a[2]&(~a[0])) | (a[3]&a[2]&a[1]) | (~a[3]&(~a[2])&(a[1])&(~a[0])) ;
    segd= (a[2]&a[1]&a[0]) | (~a[3]&(~a[2])&(~a[1])&a[0]) | (~a[3]&a[2]&(~a[1])&(~a[0])) | (a[3]&(~a[2])&a[1]&~a[0]);
    sege=(~a[3]&a[0]) | (~a[2]&(~a[1])&a[0]) | (~a[3]&(a[2])&(~a[1]));
    segf=(~a[3]&(~a[2])&a[0]) | (~a[3]&(~a[2])&a[1]) | (~a[3]&(a[1])&a[0]) | (a[3]&a[2]&(~a[1])&a[0]);
    segg=(~a[3]&(~a[2])&(~a[1])) | (~a[3]&a[2]&a[1]&a[0])| (a[3]&a[2]&(~a[1])&(~a[0]));
    an0= sel[2] | sel[1] | sel[0];
    an1 = sel[2] | sel[1] | (~sel[0]);
    an2 = sel[2] | sel[0] | (~sel[1]);
    an3 = sel[2] | (~sel[1]) | (~sel[0]);
    an4 = (~sel[2]) | sel[1] |  (sel[0]);
    an5 = (~sel[2]) | sel[1] |  (~sel[0]);
    an6 = (~sel[2]) |(~sel[1]) | (sel[0]);
    an7 = (~sel[2]) |(~sel[1]) |  (~sel[0]);
     end
endmodule
