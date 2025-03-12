module Experiment_6(output[6:0]s,output[7:0]pin,input [2:0]sel,input[3:0]num , input clk,reset,write);
    wire [3:0] w1,w2,w3,w4,w5,w6,w7,w8,L_out;
    Flip_flops STORAGE(w1,w2,w3,w4,w5,w6,w7,w8,num,sel,clk,reset,write);
    Mux SELECTOR(L_out,w1,w2,w3,w4,w5,w6,w7,w8,sel);
    seven_segment PINS(pin,sel,write);
    segment_decoder SEGMENT(s,L_out);
    
endmodule

module Flip_flops(output reg [3:0]D1,reg [3:0]D2,reg [3:0]D3,reg [3:0]D4,reg [3:0]D5,reg [3:0]D6,reg [3:0]D7,reg [3:0]D8,input [3:0]num,[2:0]sel,input clk,reset,write);
    always @(posedge clk)
		if (write & ~reset)
			case(sel)
				0: D1<=num;
				1: D2<=num;
				2: D3<=num;
				3: D4<=num;
				4: D5<=num;
				5: D6<=num;
				6: D7<=num;
				7: D8<=num;
			endcase
		else if(reset)
			begin
			D1<= 4'b0000;
			D2<= 4'b0000;
			D3<= 4'b0000;
			D4<= 4'b0000;
			D5<= 4'b0000;
			D6<= 4'b0000;
			D7<= 4'b0000;
			D8<= 4'b0000;
			end
			
endmodule
module Mux(output reg [3:0] m_out,input [3:0] D1,D2,D3,D4,D5,D6,D7,D8,input [2:0] sel);
    always @(*)
        case(sel)
            0:m_out=D1;
            1:m_out=D2;
            2:m_out=D3;
            3:m_out=D4;
			4:m_out=D5;
			5:m_out=D6;
			6:m_out=D7;
			7:m_out=D8;
         endcase
endmodule
module segment_decoder(output reg [6:0]s,input [3:0]m_out);
    always@(m_out)
        case(m_out)
            0 :s<=7'b000_0001;
            1 :s<=7'b100_1111;
            2 :s<=7'b001_0010;
            3 :s<=7'b000_0110;
            4 :s<=7'b100_1100;
            5 :s<=7'b010_0100;
            6 :s<=7'b010_0000;
            7 :s<=7'b000_1111;
            8 :s<=7'b000_0000;
            9 :s<=7'b000_0100;
            10:s<=7'b000_1000;
            11:s<=7'b110_0000;
            12:s<=7'b011_0001;
            13:s<=7'b100_0010;
            14:s<=7'b011_0000;
            15:s<=7'b011_1000;
        endcase
endmodule
module seven_segment(output reg[7:0]o, input[2:0]sel,input write);
	reg [7:0]k;
	always @(sel)
			case(sel)
				0:k=8'b1111_1110;
				1:k=8'b1111_1101;
				2:k=8'b1111_1011;
				3:k=8'b1111_0111;
				4:k=8'b1110_1111;
				5:k=8'b1101_1111;
				6:k=8'b1011_1111;
				7:k=8'b0111_1111;
			endcase
	always @(sel,write)		
    if (write)
		o = {8'b1111_1111};
	else
		o = k;
endmodule
