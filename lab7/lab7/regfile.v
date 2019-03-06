module regfile(
	input [2:0] writenum,
	input write,
	input [15:0] data_in,
	input clk,
	input [2:0] readnum,
	output [15:0] data_out
	);

	// THIS IS THE OUTPUT WIRE OF THE DECODER OF WRITENUM
	wire [7:0] decoderA;
	wire load0, load1,load2,load3,load4,load5,load6,load7;
	dec #(3,8) decodetoregister(writenum,decoderA);
	
	//THIS IS THE AND GATE THAT DETERMINES IF LOAD IS 1 or 0 TO SEE IF IT WRITES VALUE IN REGISTER w/ LOAD ENABLE
	assign load0 = write & decoderA[0];
	assign load1 = write & decoderA[1];
	assign load2 = write & decoderA[2];
	assign load3 = write & decoderA[3];
	assign load4 = write & decoderA[4];
	assign load5 = write & decoderA[5];
	assign load6 = write & decoderA[6];
	assign load7 = write & decoderA[7];
	
	//NEED ABUNCHA WIRES 4 MULTIPLEXER IN!@#1231
	wire [15:0] R0,R1,R2,R3,R4,R5,R6,R7;
	
	//DECLARING EACH OF THE 8 INPUTS TO 8:1 MUX
	vDFFE #(16) toR0(clk,load0,data_in,R0);
	vDFFE #(16) toR1(clk,load1,data_in,R1);
	vDFFE #(16) toR2(clk,load2,data_in,R2);
	vDFFE #(16) toR3(clk,load3,data_in,R3);
	vDFFE #(16) toR4(clk,load4,data_in,R4);
	vDFFE #(16) toR5(clk,load5,data_in,R5);
	vDFFE #(16) toR6(clk,load6,data_in,R6);
	vDFFE #(16) toR7(clk,load7,data_in,R7);

	//DECODE READNUM
	wire [7:0] decoderB;
	dec #(3,8) decodetomux(readnum,decoderB);

	//INSANTIATING MODULE PUTTING ALL THAT JAZZ IN
	mux2 chooser(decoderB,R0,R1,R2,R3,R4,R5,R6,R7,data_out);

endmodule

// DECODER, STR8 FROM LECTURE SLIDES
module dec(a,b); 

	parameter 	n = 3;
	parameter 	m = 8;
	input 	       [n-1:0] a;
	output         [m-1:0] b;

	wire [m-1:0] b = 1 << a;

endmodule


// REGISTER LOAD ENABLE, STR8 FROM LECTURE SLIDES (1:01:06 of pre-recorded lecture thurs oct5 2017)
module vDFFE(clk, en, in, out);
	
	parameter 	n = 16;
	
	input		clk , en;
	input 	       [n-1:0] in;
	output reg     [n-1:0] out;

	wire	       [n-1:0] next_out;
	
	assign next_out = en ? in : out;

	always@(posedge clk)
		       out = next_out;

endmodule

//MUX 8:1 SELECTS INPUT (REGISTERS) AND OUTPUTS
module mux2(select,a0,a1,a2,a3,a4,a5,a6,a7,out);

	//parameter 	n = 8;
	
	input 	        [7:0] select;
	input 		[15:0]a0,a1,a2,a3,a4,a5,a6,a7;
	output reg      [15:0] out;

        always@(*)
		case (select)
			8'b00000001	: out = a0;
			8'b00000010	: out = a1;	
			8'b00000100	: out = a2;
			8'b00001000	: out = a3;
			8'b00010000	: out = a4;
			8'b00100000	: out = a5;
			8'b01000000	: out = a6;
			8'b10000000	: out = a7;	
			default 	: out = 16'bxxxxxxxx;
		endcase
endmodule






// DFLIPFLOP, STR8 FROM LECTURE SLIDES
module vDFF(clk,in,out);

	parameter 	n = 6;
	parameter 	m = 8;
	
	input		clk;
	input 	       [n-1:0] in;
	output reg     [n-1:0] out;

	always@(posedge clk)
		       out = in;

endmodule
