module cpu(clk,reset,in,out,N,V,Z,mem_cmd,mem_addr,LED8);
	input clk, reset;
	input [15:0] in;
	output [15:0] out;
	output N, V, Z;
	
	//for LAB7
	output 	[1:0] mem_cmd;
	output  [8:0] mem_addr;
	
	//LAB8
	output LED8;
	
	
	wire [15:0] iRegOut;
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
	wire [2:0] cond		= iRegOut[10:8];

	
	//INSTANTIATING MODULE EXTEND TO EXTEND DIGITS TO 16 BIT
	wire [15:0] imm5Extended, imm8Extended;
	signExtended #(5,16) Xtendimm5(imm5, imm5Extended);	
	signExtended #(8,16) Xtendimm8(imm8,imm8Extended);
	
	wire [2:0] nsel;
	wire [1:0] vsel;
	wire loada,loadb,loadc,write,asel,bsel,loads,loadIR,loadPC,resetPC,loadadr;
	wire addr_sel;
	wire [8:0] intoAdr = out[8:0];

	//INSTRUCTION REG123123
	vDFFE #(16) instructionReg(.clk(clk), .en(loadIR), .in(in), .out(iRegOut));

	//MULTIPLEXER THAT DECIDES Rn Rd,or Rm.
	wire [2:0] m_out;
	mux31 #(3) muxintoregister(.select(nsel), .a(Rn), .b(Rd), .c(Rm), .out(m_out));

	//LAB7
	wire [8:0] PC;
	//LAB8
	wire [15:0] data_out;
	
	FSM statemachine(.clk(clk), .reset(reset),  .op(op),  .opcode(opcode), .sel1(nsel), .sel2(vsel), .write(write), .loada(loada),
			.loadb(loadb), .loadc(loadc), .asel(asel), .bsel(bsel),.loads(loads),.loadir(loadIR),.loadpc(loadPC),.resetpc(resetPC),.out(LED8),
			.addr_sel(addr_sel), .mem_cmd(mem_cmd), .loadadr(loadadr));

	datapath DP(.loada(loada),	.loadb(loadb), 	    	.loadc(loadc),	.clk(clk),	.readnum(m_out),	.writenum(m_out),
		      .asel(asel),	.bsel(bsel), 	    	.PC(PC),	.mdata(in),	.loads(loads),		.shift(shift),
		      .ALUop(ALUop),	.sximm8(imm8Extended),	.vsel(vsel),	.C(out),	.write(write),		.N(N),.V(V),.Z(Z),
		      .sximm5(imm5Extended),.data_out(data_out));

	//LAB 8 
	wire [8:0] next_pc;
	BranchCount branchcalc(data_out,opcode,op,PC,cond,imm8Extended[8:0],N,V,Z,next_pc);
	
	//LAB7 STAGE 1
	wire [8:0] intoPC;
	assign intoPC = resetPC ? 9'b0000_00000 : next_pc;	
	
	vDFFE #(9) PCReg(clk,loadPC,intoPC,PC); //PC REG
	wire [8:0] mem_addr;
	wire [8:0] outAdr;
	assign  mem_addr = addr_sel ? PC : outAdr;	
	//STAGE 2
	vDFFE #(9) DataAddress(clk,loadadr,intoAdr,outAdr); //DATA ADDRESS REG



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

module FSM(clk,reset,op,opcode,sel1,sel2,
	   loada,loadb,loadc,write,asel,bsel,loads,loadir,loadpc,resetpc,addr_sel,mem_cmd,loadadr,out);
	
	`define SW 6
	`define Swait 6'b00000 // WAIT STATE
	`define IF1 6'b11010
	`define IF2 6'b11011
	`define UpdatePC 6'b11100

	`define SDec  6'b11111
	`define SMovA 6'b00001
	`define SMovB1 6'b00010
	`define SMovB2 6'b00011
	`define SMovB3 6'b00100

	`define SAluA 6'b00101 
	`define SAluA1 6'b00110 
	`define SAluA2 6'b00111 
	`define SAluA3 6'b01000
	`define SAluA4 6'b01001
	
	`define SAluB1 6'b01010
	`define SAluB2 6'b01011
	`define SAluB3 6'b01100
	`define SAluB4 6'b01101

	`define SAluC1 6'b01110
	`define SAluC2 6'b11111
	`define SAluC3 6'b10000
	`define SAluC4 6'b10001

	`define Ldr 6'b10010
	`define Ldr1 6'b10011
	`define Ldr2 6'b10100
	`define Ldr3 6'b10101
	`define Ldr4 6'b10110
	`define Ldr5 6'b11101

	`define STR1 6'b10111
	`define STR2 6'b11000
	`define STR3 6'b11001

	`define MNULL 2'bxx
	`define MREAD 2'b00
	`define MWRITE 2'b01

	`define HALT 6'b11110

	`define BRANCH 6'b100000
	`define BRANCH1 6'b100001
	`define BRANCH2 6'b100010

	`define FXcall 6'b100011
	`define FXcall2 6'b100100
	`define FXcall3 6'b100101

	`define FXret 6'b100110
	`define FXret 6'b100111
	
	
	
	input clk,reset;
	input [2:0] opcode;
	input [1:0] op;
	output [2:0] sel1;
	output [1:0] sel2;	
	output out;

	output loada,loadb,loadc,loads,write,asel,bsel,loadir,loadpc,resetpc,addr_sel,loadadr;
	
	output [1:0] mem_cmd;
	reg [18+2+1+3+1:0] next;
	   
	wire [`SW-1:0] next_state , present_state , next_reset_state;
	vDFF #(6) STATE(clk,next_reset_state,present_state);

	assign next_reset_state = reset ? `Swait : next_state;
	
	always @(*) begin
		casex ({present_state,opcode,op})
			//                                      STATE            nsel   loadabcs         asel bsel     vsel   write  resetpc  ir/pc addrsel mem_cmd loadadr
			{`Swait,5'bxxxxx} : 		next = {`IF1	,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b1, 2'b01,   1'b1,    `MNULL, 1'b0, 1'b0}; // Swait -> Swait if s = 0, we dont care what opcode,op is
			{`IF1,5'bxxxxx} : 		next = {`IF2	,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b01,   1'b1,    `MREAD, 1'b0, 1'b0};
			{`IF2,5'bxxxxx} : 		next = {`UpdatePC,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b10,   1'b1,    `MREAD, 1'b0, 1'b0};		
	
			{`UpdatePC,5'b110_10} : 	next = {`SMovA	,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // SDec -> SMovA if s = x and op code is 110_11.
			{`SMovA,5'bxxx_xx} : 		next = {`IF1	,	3'b100,	4'b0000,	1'b0,1'b0,	2'b10,	1'b1, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // at SMovA - > Swait, don't care what input is, always goes back to wait. nsel00,vsel 10, write1

			{`UpdatePC,5'b110_00} :   	next = {`SMovB1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; //LOAD REG B WITH Rm
			{`SMovB1,5'bxxx_xx} :    	next = {`SMovB2	, 	3'b001, 4'b0100,	1'b1,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // LOAD REG C WITH SHIFTED Rm 
			{`SMovB2,5'bxxx_xx} :    	next = {`SMovB3	, 	3'b000, 4'b0010,	1'b1,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // WRITE Rd WITH REG C
			{`SMovB3,5'bxxx_xx} : 		next = {`IF1	,	3'b010,	4'b0000,	1'b1,1'b0,	2'b00,	1'b1, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // GO TO RESET STATE
			
			{`UpdatePC,5'b101_x0} :   	next = {`SAluA1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; //LOAD REG B WITH Rm
			{`SAluA1,5'bxxx_xx} :    	next = {`SAluA2	, 	3'b100, 4'b1000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // LOAD REG A WITH Rn 
			{`SAluA2,5'bxxx_xx} :    	next = {`SAluA3	, 	3'b001, 4'b0100,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // LOAD REG B WITH SHIFTED Rm 
			{`SAluA3,5'bxxx_xx} : 		next = {`SAluA4	,	3'b000,	4'b0010,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // WRITE Rd WITH REG C
			{`SAluA4,5'bxxx_xx} : 		next = {`IF1	,	3'b010,	4'b0000,	1'b0,1'b0,	2'b00,	1'b1, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // STORE VALUE INTO Rd
			
			{`UpdatePC,5'b101_01} :   	next = {`SAluB1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; //LOAD REG B WITH Rm
			{`SAluB1,5'bxxx_xx} :    	next = {`SAluB2	, 	3'b100, 4'b1000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // LOAD REG A WITH Rn 
			{`SAluB2,5'bxxx_xx} :    	next = {`SAluB3	, 	3'b001, 4'b0100,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // LOAD REG B WITH SHIFTED Rm 
			{`SAluB3,5'bxxx_xx} : 		next = {`IF1	,	3'b000,	4'b0011,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // WRITE  UPDATING REG S ON CLK  AND RETURN TO WAIT
			
			{`UpdatePC,5'b101_11} :   	next = {`SAluC1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; //LOAD REG B WITH Rm
			{`SAluC1,5'bxxx_xx} :    	next = {`SAluC2	, 	3'b001, 4'b0100,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // LOAD REG B WITH SHIFTED Rm 
			{`SAluC2,5'bxxx_xx} : 		next = {`SAluC3	,	3'b000,	4'b0010,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // WRITE  UPDATING REG S ON CLK AND REG C
			{`SAluC3,5'bxxx_xx} : 		next = {`IF1	,	3'b010,	4'b0000,	1'b0,1'b0,	2'b00,	1'b1, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; // STORE VALUE INTO Rd
			
			{`UpdatePC,5'b011_00} :   	next = {`Ldr	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; 
			{`Ldr,5'bxxxxx} :   		next = {`Ldr1	, 	3'b100,	4'b0100,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0};  //LOAD REG B WITH Rn
			{`Ldr1,5'bxxxxx} :   		next = {`Ldr2	, 	3'b000,	4'b0010,	1'b1,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0};  //LOAD REG C WITH imm5
			{`Ldr2,5'b011_00} :   		next = {`Ldr3	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b0,    `MNULL, 1'b1, 1'b0};  //LOAD DATA ADDRESS
			{`Ldr3,5'bxxxxx} :   		next = {`Ldr4	, 	3'b010,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b0,    `MREAD, 1'b0, 1'b0};  //GET VALUE FROM MEMORY
			{`Ldr4,5'bxxxxx} :   		next = {`IF1	, 	3'b010,	4'b0000,	1'b0,1'b0,	2'b11,	1'b1, 1'b0, 2'b00,   1'b0,    `MREAD, 1'b0, 1'b0};  //WRITE TO RD

			{`UpdatePC,5'b100_00} :   	next = {`Ldr	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; 
			{`Ldr,5'bxxxxx} :   		next = {`Ldr1	, 	3'b100,	4'b0100,	1'b1,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0};  //LOAD REG B WITH Rm
			{`Ldr1,5'bxxxxx} :   		next = {`Ldr2	, 	3'b000,	4'b0010,	1'b0,1'b1,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0};  //LOAD REG C WITH imm5
			{`Ldr2,5'b100_00} :   		next = {`STR1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b0,    `MREAD, 1'b1, 1'b0};  //LOAD DATA ADDRESS
			{`STR1,5'bxxxxx} :   		next = {`STR2	, 	3'b010,	4'b0100,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b0,    `MREAD, 1'b0, 1'b0};  //Rd TO B
			{`STR2,5'bxxxxx} :   		next = {`STR3	, 	3'b000,	4'b0010,	1'b1,1'b0,	2'b11,	1'b0, 1'b0, 2'b00,   1'b0,    `MNULL, 1'b0, 1'b0};  //ToRC
			{`STR3,5'bxxxxx} :   		next = {`IF1	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b0,    `MWRITE, 1'b0, 1'b0};  //WRITES DATA OUT TO DATA ADDRESS
			
			{`UpdatePC,5'b111_00} :   	next = {`HALT	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; 
			{`HALT,5'bxxxxx} :   		next = {`HALT	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b1}; 
		
			{`UpdatePC,5'b001_00} :		next = {`BRANCH	, 	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MNULL, 1'b0, 1'b0}; 
			{`BRANCH,5'bxxxxx} :		next = {`BRANCH1,       3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b01,   1'b1,    `MNULL, 1'b0, 1'b0}; //ENABLE LOADPC TO UPDATE
			{`BRANCH1,5'bxxxxx} : 		next = {`IF2,		3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b10,   1'b1,    `MREAD, 1'b0, 1'b0};	// ENABLE LOADIR TO LOAD ISNTRUCTIONS FROM MEM
			
			{`UpdatePC,5'b01011} : 		next = {`FXcall,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MREAD, 1'b0, 1'b0};	
			{`FXcall,5'bxxxxx} : 		next = {`FXcall2,	3'b000,	4'b0000,	1'b0,1'b0,	2'b01,	1'b1, 1'b0, 2'b00,   1'b1,    `MREAD, 1'b0, 1'b0};	
			{`FXcall2,5'bxxxxx} : 		next = {`FXcall3,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b01,   1'b1,    `MREAD, 1'b0, 1'b0};	
			{`FXcall3,5'bxxxxx} : 		next = {`IF2	,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b1, 1'b0, 2'b10,   1'b1,    `MREAD, 1'b0, 1'b0};	

			//{`UpdatePC,5'b01011} : 		next = {`FXret,		3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b00,   1'b1,    `MREAD, 1'b0, 1'b0};	
			//{`FXret,5'bxxxxx} : 		next = {`IF2	,	3'b000,	4'b0000,	1'b0,1'b0,	2'b00,	1'b0, 1'b0, 2'b01,   1'b1,    `MREAD, 1'b0, 1'b0};	

			//                                      STATE            nsel   loadabcs         asel bsel     vsel   write  resetpc  ir/pc addrsel mem_cmd loadadr
			default : next = 25'bx;

		endcase
	
	end

	assign {next_state,sel1,loada,loadb,loadc,loads,asel,bsel,sel2,write,resetpc,loadir,loadpc,addr_sel,mem_cmd,loadadr,out} = next;

endmodule

module BranchCount(data_out,opcode,op,PC,cond,imm8Extended,N,V,Z,next_pc);
	
	input [15:0] data_out;
	input [2:0] opcode;
	input [1:0] op;
	input[8:0] PC;
	input [2:0] cond;
	input [8:0] imm8Extended;
	input N,V,Z;
	output reg [8:0] next_pc;
	
	always@(*) begin
		casex ({opcode,op,cond})
			{3'b001,2'b00,3'b000} :		next_pc = PC + 1;

			{3'b001,2'b00,3'b001} : 	if(Z == 1) next_pc = PC + imm8Extended;
							else 	   next_pc = PC;	
	
			{3'b001,2'b00,3'b010} : 	if(Z == 0) next_pc = PC + imm8Extended;
							else 	   next_pc = PC ;		
	
			{3'b001,2'b00,3'b011} :		if(N != V) next_pc = PC +  imm8Extended;
							else 	   next_pc = PC ;
			
			{3'b001,2'b00,3'b100} : 	if(N != V | Z == 1)
					  			next_pc = PC + imm8Extended;
							else 	   next_pc = PC ;

			//{3'b010,2'b11,3'bxxx} : 	next_pc = PC + imm8Extended;

			//{3'b010,2'b01,3'bxxx} : 	next_pc = data_out;
			
			default: next_pc = PC + 1;
		endcase
	end

endmodule
		

