module calc(clk, reset, s, in, op, out, ovf, done);
	input clk, reset, s;
	input [7:0] in;
	input [1:0] op;
	output [7:0] out;
	output ovf, done;

	FSM controller(clk,s,reset,selA,loadA,loadB,loadV,done);
	
	wire [7:0] outMux, outA;
	assign outMux  = selA ? in : outA - 1;
	vDFFE  #(8) A(clk,loadA,outMux,outA);
	
	wire [7:0] cpuOut;
	FuncUnit CPU(op,outA,out, cpuOut, isOVF);
	vDFFE   #(8) B(clk,loadB,cpuOUT,out);
	vDFFE   #(1) V(clk,loadV, isOVF,ovf);

endmodule;


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

module FuncUnit(op,outA,outB,out,isOVF);

	input op;
	input [7:0] outA, outB;
	output reg [7:0] out;
	output reg isOVF;

	always @(*) begin
		casex(op)
			2'b00: out = 8'b0;
			2'b01: out = outA + outB;
			2'b10: out = outB >> 1;
		endcase
		
		if (out[7] == 0 & (outA[7:0] ==1 | outB[7] ==1))
			isOVF = 1'b1;
	end

endmodule;

module FSM(clk,s,reset,selA,loadA,loadB,loadV,done);

	`define A 3'b000
	`define B 3'b001
	`define C 3'b010
	`define SW 3

	FSM controller(clk,s,reset,selA,loadA,loadB,loadV,done);
	input clk, reset,s;
	output loadA,loadB,loadV,selA,done;
	

	reg [`SW+1:0] next;
	wire [`SW-1:0] next_state , present_state , next_reset_state;
	
	vDFF #(5) STATE(clk,next_reset_state,present_state);

	assign next_reset_state = reset ? `A : next_state;

	always @(*) begin
		casex ({present_state,reset,s})
			{`A,2'b1x} : next = {`A, 3'b000, 1'b0, 1'b1};
			{`A,1'b01} : next = {`B, 3'b000, 1'b0, 1'b0};

			{`B,1'bxx} : next = {`C, 3'b100, 1'b1, 1'b0};
			{`C,1'bxx} : next = {`A, 3'b011, 1'b1, 1'b0};

			default :    next = {3'bxxx, 5'bxxxxx};	

		endcase
	end
	
	assign {next_state,loadA,loadB,loadV,selA,done} = next;

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
