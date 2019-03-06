module gameplay_tb ();
 // NO INPUTS OR OUTPUTS CUZ SIM
	reg [8:0] ain,bin;
	wire [8:0] cout;
	
	reg [8:0] a,b,c,d;
	wire [8:0] x;
	
	PlayAdjacentEdge dut (ain,bin,cout);
	Select4 dut1 (a, b, c, d, x);

	initial begin

		
		
		
		ain= 9'b100000001; bin = 9'b000010000;
		#10 $display("Computer's next move is: %b SHOULD BE 10", cout);	// DIAGONAL SHOULD PLAY ADJ

		ain= 9'b00100100; bin = 9'b000010000;
		#10 $display("Computers next move is:: %b SHOULD BE 10", cout); // DIAGONAL SHOULD PLAY ADJ

		ain= 9'b00000000; bin = 9'b000000000;
		#10 $display("SHOULD SKIP THIS MODULE:  %b SHOULD BE 00", cout); // EMPTY SHOULD SKIP ADJ
		ain= 9'b100010100; bin = 9'b000010101;
		#10
		$display("SHOULD SKIP THIS MODULE: %b SHOULD BE 00", cout);// RANDOM SKIP ADJ

		//CHECKS SELECT4:
		
		a= 9'b00000001; b = 9'b0001000; c = 9'b10; d=9'b101; // CHECKING THE REVERSE ARBITER, SHOULD TAKE ON HIGHEST VALUE IN A THEN B THEN C THEN D
		#10 $display("should be 1  ---> %b", x);

		a= 9'b00000000; b = 9'b0001000; c = 9'b110; d=9'b101;
		#10 $display("should be 1000  ---> %b", x);

		a= 9'b00000000; b = 9'b0000000; c = 9'b10; d=9'b101;
		#10 $display("should be 10  ---> %b", x);

		a= 9'b00000000; b = 9'b0000000; c = 9'b00; d=9'b0010;
		#10 $display("should be 10  ---> %b", x);






		

		
	end	
endmodule