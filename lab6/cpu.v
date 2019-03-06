module cpu(clk,reset,s,load,in,out,N,V,Z,w);
	input clk, reset, s, load;
	input [15:0] in;
	output [15:0] out;
	output N, V, Z, w;
	
	//INSTRUCTION REG123123
	wire [15:0] iRegOut;
	vDFFE #(16) instructionReg(.clk(clk), .en(load), .in(in), .out(iRegOut));

	//INSTRUCTION DECODER
	wire [2:0] opcode 	= iRegOut[15:13];
	wire [1:0] op 		= iRegOut[12:11];
	wire [1:0] ALUop	= iRegOut[12:11];
	wire [2:0] Rm 		= iRegOut[2:0];
	wire [2:0] Rd 		= iRegOut[7:5];
	wire [2:0] Rn 		= iRegOut[10:8];
	wire [7:0] imm8 	= iRegOut[7:0];
	wire [4:0] imm5 	= iRegOut[4:0];
	wire [1:0] shift 	= iRegOut[4:3];
	
	
	//SETTING THESE TO ZERO AS PER INSTRUCTIONS
	wire [7:0]  PC = 8'b0000_0000;
	wire [15:0] mdata = 16'b0;
	
	//INSTANTIATING MODULE EXTEND TO EXTEND DIGITS TO 16 BIT
	wire [15:0] imm5Extended, imm8Extended;
	signExtended #(5,16) Xtendimm5(imm5, imm5Extended);	
	signExtended #(8,16) Xtendimm8(imm8,imm8Extended);
	
	wire [2:0] nsel;
	wire [1:0] vsel;
	wire loada,loadb,loadc,write,asel,bsel,loads;
	FSM statemachine(.clk(clk), .reset(reset),  .op(op),  .opcode(opcode),    .w(w),    .s(s), .sel1(nsel), .sel2(vsel), .write(write), .loada(loada),
			.loadb(loadb), .loadc(loadc), .asel(asel), .bsel(bsel),.loads(loads));


	//MULTIPLEXER THAT DECIDES Rn Rd,or Rm.
	wire [2:0] m_out;
	mux31 #(3) muxintoregister(.select(nsel), .a(Rn), .b(Rd), .c(Rm), .out(m_out));

	datapath DP(.loada(loada),	.loadb(loadb), 	    	.loadc(loadc),	.clk(clk),	.readnum(m_out),	.writenum(m_out),
		      .asel(asel),	.bsel(bsel), 	    	.PC(PC),	.mdata(mdata),	.loads(loads),		.shift(shift),
		      .ALUop(ALUop),	.sximm8(imm8Extended),	.vsel(vsel),	.C(out),	.write(write),		.N(N),.V(V),.Z(Z),
		      .sximm5(imm5Extended));

endmodule


module mux31(select,a,b,c,out);
	parameter 	n = 8;
	
	input 	        [n-1:0] select;
	input 		[n-1:0] a,b,c;
	output reg      [n-1:0] out;

        always@(*)
		case (select)
			3'b001	: out = c;
			3'b010	: out = b;
			3'b100	: out = a;
			default : out = 3'bxxx;
		endcase
endmodule

module signExtended(in, out);
	parameter n = 10000;
	parameter m = 99999;
	parameter o = m - n;
	
	input 		[n-1:0] in;
	output reg	[m-1:0] out;
	
	//CONCATENATE LAST DIGIT WITH COPIES OF LAST DIGIT
	always @(*) begin
		out = { {o{in[n-1]}} , in[n-1:0] };
	end
	
endmodule

module FSM(clk,reset,op,opcode,w,s,sel1,sel2,
	   loada,loadb,loadc,write,asel,bsel,loads);
	
	`define SW 5
	`define Swait 5'b00000 // WAIT STATE
	`define SDec  5'b11111
	`define SMovA 5'b00001
	`define SMovB1 5'b00010
	`define SMovB2 5'b00011
	`define SMovB3 5'b00100

	`define SAluA 5'b00101 
	`define SAluA1 5'b00110 
	`define SAluA2 5'b00111 
	`define SAluA3 5'b01000
	`define SAluA4 5'b01001
	
	`define SAluB1 5'b01010
	`define SAluB2 5'b01011
	`define SAluB3 5'b01100
	`define SAluB4 5'b01101

	`define SAluC1 5'b01110
	`define SAluC2 5'b11111
	`define SAluC3 5'b10000
	`define SAluC4 5'b10001
	
	
	
	input clk,reset,s;
	input [2:0] opcode;
	input [1:0] op;
	output w;
	output [2:0] sel1;
	output [1:0] sel2;

	output loada,loadb,loadc,loads,write,asel,bsel;

	reg [17:0] next;
	
	   
	wire [`SW-1:0] next_state , present_state , next_reset_state;
	vDFF #(5) STATE(clk,next_reset_state,present_state);

	assign next_reset_state = reset ? `Swait : next_state;
	
	always @(*) begin
		casex ({present_state,s,opcode,op})
			//                                      STATE            nsel   loadabcs         asel bsel        vsel   write  w
			{`Swait,1'b0,5'bxxxxx} : 	next = {`Swait	,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b1}; // Swait -> Swait if s = 0, we dont care what opcode,op is
			//{`Swait,1'b1,5'bxxxxx} : 	next = {`SDec	,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b1}; // Swait -> SDec if s = 1 and op code is 110_11.
			
			{`Swait,1'b1,5'b110_10} : 	next = {`SMovA	,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b1}; // SDec -> SMovA if s = x and op code is 110_11.
			{`SMovA,1'bx,5'bxxx_xx} : 	next = {`Swait	,	3'b100,	4'b0000,	1'b0,1'b0,	2'b10,	1'b1, 1'b0}; // at SMovA - > Swait, don't care what input is, always goes back to wait. nsel00,vsel 10, write1

			{`Swait,1'b1,5'b110_00} :    	next = {`SMovB1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b1}; //LOAD REG B WITH Rm
			{`SMovB1,1'bx,5'bxxx_xx} :    	next = {`SMovB2	, 	3'b001, 4'b0100,	1'b1,1'b0,	2'b00,	1'b0, 1'b0}; // LOAD REG C WITH SHIFTED Rm 
			{`SMovB2,1'bx,5'bxxx_xx} :    	next = {`SMovB3	, 	3'b001, 4'b0010,	1'b0,1'b0,	2'b00,	1'b1, 1'b0}; // WRITE Rd WITH REG C
			{`SMovB3,1'bx,5'bxxx_xx} : 	next = {`Swait	,	3'b010,	4'b0000,	1'b0,1'b0,	2'b00,	1'b1, 1'b0}; // GO TO RESET STATE
			
			{`Swait,1'b1,5'b101_x0} :    	next = {`SAluA1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b1}; //LOAD REG B WITH Rm
			{`SAluA1,1'bx,5'bxxx_xx} :    	next = {`SAluA2	, 	3'b100, 4'b1000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0}; // LOAD REG A WITH Rn 
			{`SAluA2,1'bx,5'bxxx_xx} :    	next = {`SAluA3	, 	3'b001, 4'b0100,	1'b0,1'b0,	2'b00,	1'b0, 1'b0}; // LOAD REG B WITH SHIFTED Rm 
			{`SAluA3,1'bx,5'bxxx_xx} : 	next = {`SAluA4	,	3'b000,	4'b0010,	1'b0,1'b0,	2'b00,	1'b0, 1'b0}; // WRITE Rd WITH REG C
			{`SAluA4,1'bx,5'bxxx_xx} : 	next = {`Swait	,	3'b010,	4'b0000,	1'b0,1'b0,	2'b00,	1'b1, 1'b0}; // STORE VALUE INTO Rd
			
			{`Swait,1'b1,5'b101_01} :    	next = {`SAluB1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b1}; //LOAD REG B WITH Rm
			{`SAluB1,1'bx,5'bxxx_xx} :    	next = {`SAluB2	, 	3'b100, 4'b1000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0}; // LOAD REG A WITH Rn 
			{`SAluB2,1'bx,5'bxxx_xx} :    	next = {`SAluB3	, 	3'b001, 4'b0100,	1'b0,1'b0,	2'b00,	1'b0, 1'b0}; // LOAD REG B WITH SHIFTED Rm 
			{`SAluB3,1'bx,5'bxxx_xx} : 	next = {`Swait	,	3'b000,	4'b0011,	1'b0,1'b0,	2'b00,	1'b0, 1'b0}; // WRITE  UPDATING REG S ON CLK  AND RETURN TO WAIT
			
			{`Swait,1'b1,5'b101_11} :    	next = {`SAluC1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b1}; //LOAD REG B WITH Rm
			{`SAluC1,1'bx,5'bxxx_xx} :    	next = {`SAluC2	, 	3'b001, 4'b0100,	1'b0,1'b0,	2'b00,	1'b0, 1'b0}; // LOAD REG B WITH SHIFTED Rm 
			{`SAluC2,1'bx,5'bxxx_xx} : 	next = {`SAluC3	,	3'b000,	4'b0010,	1'b0,1'b0,	2'b00,	1'b0, 1'b0}; // WRITE  UPDATING REG S ON CLK AND REG C
			{`SAluC3,1'bx,5'bxxx_xx} : 	next = {`Swait	,	3'b010,	4'b0000,	1'b0,1'b0,	2'b00,	1'b1, 1'b0}; // STORE VALUE INTO Rd
			
			default : next = 18'bx;
			
			//default: next = 17'b0000_xxx_0000_xxxx_0_x;
		endcase
	
	end

	assign {next_state,sel1,loada,loadb,loadc,loads,asel,bsel,sel2,write,w} = next;

endmodule
