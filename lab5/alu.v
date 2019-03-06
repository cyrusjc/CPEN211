module alu(
	input [15:0] Ain,
	input [15:0] Bin,
	input [1:0] ALUop,
	output reg [15:0] loadc,
	output reg loads
);
	//conditions of ALUop and it's results:
	always@(*) begin
		case (ALUop)
			2'b00 : loadc = Ain + Bin;
			2'b01 : loadc = Ain - Bin;
			2'b10 : loadc = Ain & Bin;
			2'b11 : loadc = ~Bin;
			default : loadc = 16'bxxxxxxxxxxxxxxxx;
		endcase
	//after it does the always block it checks loadc to see if its 0, then status is 1.
		if (loadc==16'b0)
			loads = 1'b1;
		else 
			loads = 1'b0;
	end

	

endmodule