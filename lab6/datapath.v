module datapath(
	//input [15:0] datapath_in,
	input [15:0] mdata,sximm8,sximm5,
	input [7:0] PC,
	input loada,
	input loadb,
	input loadc,
	input loads,
	input clk,
	input asel,
	input bsel,
	input [1:0] vsel,
	input [2:0] writenum,
	input write,
	input [2:0] readnum,
	input [1:0] shift,
	input [1:0] ALUop,
	output [15:0] C,
	output N,V,Z
	
	);

	// MULTIPLEX to choose between dataout and datain
	wire [15:0] data_in;
	//assign data_in = vsel ? datapath_in : datapath_out;
	mux41 #(16) muxintoregister(.select(vsel),.a(C),.b({8'b0,PC}),
					.c(sximm8),.d(mdata),.out(data_in));

	//wires the multiplexer into the register
	wire [15:0] data_out;
	regfile REGFILE(writenum, write,data_in,clk,readnum,data_out);
	
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
	assign Bin = bsel ? sximm5 : shifter_out;
	
	wire [15:0] Alu_out;
	wire [2:0] status;
	alu CMP(Ain, Bin, ALUop,Alu_out,status);
	//ALU INTO REGISTER C
	vDFFE cRegister(clk, loadc, Alu_out, C);

	//AND STATUS REGISTER
	vDFFE #(3) stat(clk, loads, status, {N,V,Z} );



endmodule

module mux41(select,a,b,c,d,out);

	parameter 	n = 8;
	
	input 	        [1:0] select;
	input 		[n-1:0] a,b,c,d;
	output reg      [n-1:0] out;

        always@(*)
		case (select)
			2'b00	: out = a;
			2'b01	: out = b;
			2'b10	: out = c;
			2'b11	: out = d;
			default 	: out = 16'bxxxxxxxx;
		endcase
endmodule

