`timescale 1ns / 10ps

module Experiment_6tb();
	reg [3:0]num;
	reg [2:0]sel;
	reg clk,reset,write;
	wire [6:0]s;
	wire [7:0]pin;
	
	Experiment_6 UUT(.s(s), .pin(pin), .sel(sel), .num(num), .clk(clk), .reset(reset), .write(write));
	
	initial 
		begin
			clk<=0;
			forever #10 clk<=~clk;
		end
		
	initial
		begin
			num=0;sel=0;write=0;reset=1;
			$monitor("s=%b, pin=%b, num=%d, sel=%b, write=%b, reset=%b",s,pin,num,sel,write,reset);
			
			@(posedge clk);
				
				reset<=0;
				write<=1;
				
			@(posedge clk);
				
				num<=6;
				sel<=2;
			
			@(posedge clk);
			
				num<=5;
				sel<=4;
				
			@(posedge clk);
			
				num<=9;
				sel<=6;
				
			@(posedge clk);
			
				write<=0;
				sel<=0;
				
			@(posedge clk);
			
				sel<=2;
			
			@(posedge clk);
			
				sel<=4;
				
			@(posedge clk);
			
				sel<=6;
			
			@(posedge clk);
			$stop;
			
		end
endmodule