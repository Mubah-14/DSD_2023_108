`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 04:27:22 AM
// Design Name: 
// Module Name: Experiment_7tb
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


module Experiment_7tb();
logic clk;

logic reset;
logic write;
logic [3:0]num;
logic [2:0]sel;
logic [6:0]segments;
logic [7:0]anode;
Experiment_7 UTT(
.clk(clk),

.reset(reset),
.write(write),
.num(num),
.sel(sel),
.segments(segments),
.anode(anode));


    
 

initial begin
  clk=0;
  reset=0;
  write=1;
  sel=3'h7;
  num=4'h2;
  #20;
  sel=3'h6;
  num=4'h0;
  #20;
  sel=3'h5;
  num=4'h2;
  #20;
  sel=3'h4;
  num=4'h2;
  #20;
  sel=3'h3;
  num=4'hE;
  #20;
  sel=3'h2;
  num=4'hE;
  #20;
  sel=3'h1;
  num=4'h1;
  #20;
  sel=3'h0;
  num=4'h3;
  #20;
  
  $stop;

end
always  #5 clk = ~clk; 

initial begin
  $monitor("reset=%h; write=%h;   num=%h; sel=%h;  anode=%h; segments=%h ;clk = %b",reset,write,num,sel,anode,segments,clk);
end


endmodule
