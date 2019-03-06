module datapath(
	input [15:0] datapath_in,
	input loada,
	input loadb,
	input loadc,
	input loads,
	input clk,
	input asel,
	input bsel,
	input vsel,
	input [2:0] writenum,
	input write,
	input [2:0] readnum,
	input [1:0] shift,
	input [1:0] ALUop,
	output [15:0] datapath_out,
	output status
	);

	// MULTIPLEX to choose between dataout and datain
	wire [15:0] data_in;
	assign data_in = vsel ? datapath_in : datapath_out;

	//wires the multiplexer into the register
	wire [15:0] data_out;
	regfile BigReg(writenum, write,data_in,clk,readnum,data_out);
	
	//dataout to register A and B
	wire [15:0] data_outA;
	vDFFE aRegister(clk, loada, data_out, data_outA);
	wire [15:0] data_outB;
	vDFFE bRegister(clk, loadb, data_out, data_outB);
	//the shifter is then connected to dataout B

	wire [15:0] shifter_out;
	shifter shifting(data_outB, shift, shifter_out) ;
		
	//AIN and BIN goes into ALU
	wire [15:0] Ain,Bin;
	assign Ain = asel ? 16'b0 : data_outA;
	assign Bin = bsel ? {11'b0,datapath_in[4:0]} : shifter_out;
	
	
	wire [15:0] Alu_out;
	wire is0;
	alu CMP(Ain, Bin, ALUop,Alu_out,is0);
	//ALU INTO REGISTER C
	vDFFE cRegister(clk, loadc, Alu_out, datapath_out);

	//AND STATUS REGISTER 
	vDFFE #(1) stat(clk, loads, is0, status);



endmodule

/*module vDFFE(clk, en, in, out);
	
	parameter 	n = 16;
	
	input		clk , en;
	input 	       [n-1:0] in;
	output reg     [n-1:0] out;

	wire	       [n-1:0] next_out;
	
	assign next_out = en ? in : out;

	always@(posedge clk)
		       out = next_out;

endmodule*/

