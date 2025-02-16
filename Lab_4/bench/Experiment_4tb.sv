`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2025 03:24:51 AM
// Design Name: 
// Module Name: Experiment_4tb
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


module Experiment_4tb();
logic [1:0] t_a, t_b;
logic red,green,blue;

Experiment_4 UUT(.a(t_a),.b(t_b),.red(red),.green(green),.blue(blue));

initial begin
t_a[0]=0; t_a[1]=0; t_b[0]=0 ; t_b[1]=0;
#50
t_a[0]=0; t_a[1]=0; t_b[0]=0 ; t_b[1]=1;
#50
t_a[0]=0; t_a[1]=0; t_b[0]=1; t_b[1]=0;
#50
t_a[0]=0; t_a[1]=0; t_b[0]=1 ; t_b[1]=1;
#50
t_a[0]=0; t_a[1]=1; t_b[0]=0 ; t_b[1]=0;
#50
t_a[0]=0; t_a[1]=1; t_b[0]=0 ; t_b[1]=1;
#50
t_a[0]=0; t_a[1]=1; t_b[0]=1 ; t_b[1]=0;
#50
t_a[0]=0; t_a[1]=1; t_b[0]=1 ; t_b[1]=1;
#50
t_a[0]=1; t_a[1]=0; t_b[0]=0 ; t_b[1]=0;
#50
t_a[0]=1; t_a[1]=0; t_b[0]=0 ; t_b[1]=1;
#50
t_a[0]=1; t_a[1]=0; t_b[0]=1 ; t_b[1]=0;
#50
t_a[0]=1; t_a[1]=0; t_b[0]=1 ; t_b[1]=1;
#50
t_a[0]=1; t_a[1]=1; t_b[0]=0 ; t_b[1]=0;
#50
t_a[0]=1; t_a[1]=1; t_b[0]=0 ; t_b[1]=1;
#50
t_a[0]=1; t_a[1]=1; t_b[0]=1 ; t_b[1]=0;
#50
t_a[0]=1; t_a[1]=1; t_b[0]=1 ; t_b[1]=1;
#50
$stop;
end
endmodule


module Experiment_4(
   input logic [1:0] a,b,
   output logic red,green,blue
    );
    assign red=((a[0]&&~b[0]) | (~a[0]&&b[0])| (~a[0]&&~a[1]&&b[1])  | (a[1]&&~b[0]&&~b[1])| (a[1]&&b[0]&&~b[1]) | (a[0]&&~a[1]&&b[1]));
    assign blue=(a[0]&&b[0]&&~b[1]) | (a[1]&&~b[0]) | (~a[0]&&~b[0]&&~b[1]) | (a[0]&&a[1]&&b[1]) | (a[0]&&~a[1]&&~b[0]);
    assign green=(~a[0]&&~a[1]) | (b[0]&&b[1]) | (a[0]&&~a[1]&&b[0]) | (b[0]&&~b[1]&&~a[0]) | (~a[0]&&~b[0]&&b[1]);
    
   

endmodule


  
