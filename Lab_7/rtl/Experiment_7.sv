`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 04:26:38 AM
// Design Name: 
// Module Name: Experiment_7
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


module Experiment_7(
    input logic [3:0] num,
    input logic [2:0] sel,
    input logic clk,
    input logic reset,
    input logic write,
    output logic [7:0] anode,
    output logic [6:0] segments
    );
    logic [8:0][3:0] mem; 
    logic newclk = 0;
    logic [2:0] innersel;
    logic [17:0]count;
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            newclk <= 0;
            count <= 0;
        end else begin
            if (count == 18'd249999) begin  // Count to a much larger value (999999)
                newclk <= ~newclk;
                count <= 0;
            end else begin
                count <= count + 1;
            end
        end
    end
     
    always_ff @(posedge newclk, posedge reset) begin
        if (reset) begin
            mem[1] <= 0;
            mem[2] <= 0;
            mem[3] <= 0;
            mem[4] <= 0;
            mem[5] <= 0;
            mem[6] <= 0;
            mem[7] <= 0;
            mem[8] <= 0;
            
        end
        else if (write) begin
            case (sel)
            3'h0 : mem[1] <= num;
            
            3'h1 : mem[2] <= num;
            3'h2 : mem[3] <= num;
            3'h3 : mem[4] <= num;
            3'h4 : mem[5] <= num;
            3'h5 : mem[6] <= num;
            3'h6 : mem[7] <= num;
            3'h7 : mem[8] <= num;
                
                default: begin
                    mem[1]<=mem[1] ;
                    mem[2]<=mem[2] ;
                    mem[3]<=mem[3] ;
                    mem[4]<=mem[4] ; 
                    mem[5]<=mem[5] ; 
                    mem[6]<=mem[6] ; 
                    mem[7]<=mem[7] ; 
                    mem[8]<=mem[8];
                end
            endcase
        end
        
    end
    
    always_comb begin
        case (innersel)
            3'h0 : mem[0] <= mem[1];
            3'h1 : mem[0] <= mem[2];
            3'h2 : mem[0] <= mem[3];
            3'h3 : mem[0] <= mem[4];
            3'h4 : mem[0] <= mem[5];
            3'h5 : mem[0] <= mem[6];
            3'h6 : mem[0] <= mem[7];
            3'h7 : mem[0] <= mem[8];
            
            default: begin
                mem[0] = 4'b0000;
            end
        endcase
    end

    always_comb begin
        if (reset) begin
            innersel[0] = 0;
        end
        else begin
            innersel[0] = newclk;
        end
        
    end

    always_ff @(posedge newclk or posedge reset) begin
        if (reset) begin
            innersel[1] <= 0;
        end
        else begin
            innersel[1] <= ~innersel[1];
        end
        
    end

    always_ff @(posedge innersel[1] or posedge reset) begin
        if (reset) begin
            innersel[2] <= 0;
        end
        else begin
            innersel[2] <= ~innersel[2];
        end
        
    end

    always_comb begin
        case (mem[0])
             4'h0 : segments = 7'b0000001;
             4'h1 : segments = 7'b1001111;
             4'h2 : segments = 7'b0010010;
             4'h3 : segments = 7'b0000110;
             4'h4 : segments = 7'b1001100;
             4'h5 : segments = 7'b0100100;
             4'h6 : segments = 7'b0100000;
             4'h7 : segments = 7'b0001111;
             4'h8 : segments = 7'b0000000;
             4'h9 : segments = 7'b0000100;
             4'hA : segments = 7'b0001000;
             4'hB : segments = 7'b1100000;
             4'hC : segments = 7'b0110001;
             4'hD : segments = 7'b1000010;
             4'hE : segments = 7'b0110000;
             4'hF : segments = 7'b0111000;
    
            default: begin
                segments = 7'b1111111;
            end
        endcase
    end
    
    always_comb begin
        if (write == 0) begin
        case (innersel)
        3'h0 : anode = 8'b11111110;
        3'h1 : anode = 8'b11111101;
        3'h2 : anode = 8'b11111011;
        3'h3 : anode = 8'b11110111;
        3'h4 : anode = 8'b11101111;
        3'h5 : anode = 8'b11011111;
        3'h6 : anode = 8'b10111111;
        3'h7 : anode = 8'b01111111;
            default: begin
                anode = 8'b11111111;
            end
        endcase
        end
        else begin
            anode = 8'b00000000;
            end
        end
endmodule


    
