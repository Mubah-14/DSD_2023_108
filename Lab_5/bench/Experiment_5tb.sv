`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 01:18:28 PM
// Design Name: 
// Module Name: Experiment_5tb
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
module Experiment_5tb();
    logic [3:0] a;   
    logic [2:0] sel;
    logic segA, segB, segC, segD, segE, segF, segG;
    logic AN7, AN6, AN5, AN4, AN3, AN2, AN1, AN0;
     Experiment_5 UUT (
        .a(a),
        .sel(sel),
        .sega(segA),
        .segb(segB),
        .segc(segC),
        .segd(segD),
        .sege(segE),
        .segf(segF),
        .segg(segG),
        .an7(AN7),
        .an6(AN6),
        .an5(AN5),
        .an4(AN4),
        .an3(AN3),
        .an2(AN2),
        .an1(AN1),
        .an0(AN0)
    );
    initial begin
        for (int index = 0; index < 8; index  =index +  1) begin
            sel = index;
            for (int num = 0; num < 16; num = num + 1) begin
                a = num ;
                #10;
            end
        end
    end
endmodule

