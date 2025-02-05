`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2025 07:00:56 AM
// Design Name: 
// Module Name: exp3_dsd
// Project Name: 
module exp3_dsd(
       output x,y,
       input a,b,c
       );
assign x = (~c) ^ (a|b);
assign y = (a|b)&(~(a&b)^(a|b));
endmodule
