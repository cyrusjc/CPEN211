module alu_tb () ;
   
	reg [15:0] Ain, Bin;
	reg [1:0] ALUop;
	wire [15:0] loadc;
	wire loads;

	alu dut(Ain, Bin, ALUop, loadc, loads);

   
	initial begin
    	
		//Ain = 1, Bin = 1 (added results expect b10 (2) subtract result = 0 anded expect b1, ~b expect inverse of b
		Ain = 16'b1;
		Bin = 16'b1;
		ALUop = 2'b00;#10;
		$display("ADDITION\nExpect: 2\nActual: %d\nloads: %d\n",loadc,loads);#10; 
		ALUop = 2'b01;#10;
		$display("SUBTRACT\nExpect: 0\nActual: %d\nloads: %d\n",loadc,loads);#10; 
		ALUop = 2'b10;#10;
		$display("BITWISE AND\nExpect: 0000000000000001\nActual: %b\nloads: %d\n",loadc,loads);#10; 
		ALUop = 2'b11;#10;		
		$display("~b\nExpect: 1111111111111110\nActual: %b\nloads: %d\n",loadc,loads);#10;

		//checking for large numbers...
		Ain = 16'b0000_1111_1111_1111; //d4095
		Bin = 16'b0000_0111_1111_1111; //d2047 Bin>Ain what will happen?
		ALUop = 2'b00;#10;
		$display("ADDITION\nExpect: 6142\nActual: %d\nloads: %d\n",loadc,loads);#10; 
		ALUop = 2'b01;#10;
		$display("SUBTRACT\nExpect: 2048 (2^11)\nActual: %d\nloads: %d\n",loadc,loads);#10; 
		ALUop = 2'b10;#10;
		$display("BITWISE AND\nExpect: 0000011111111111\nActual: %b\nloads: %d\n",loadc,loads);#10; 
		ALUop = 2'b11;#10;		
		$display("~b\nExpect: 1111100000000000\nActual: %b\nloads: %d\n",loadc,loads);#10;
		
		Ain = 16'b0000_0111_1111_1111; //d2047
		Bin = 16'b0000_1111_1111_1111; //d4095 expect non sense
		ALUop = 2'b01;#10;
		$display("SUBTRACTION\nExpect: NON-SENSICAL \nActual: %d %b\nloads: %d\n",loadc,loadc,loads);#10; 

		//ALUOP NOT DEFINED?
		ALUop = 2'bxx;#10;
		$display("NO SIGNAL FROM ALUop\nExpect: xxx \nActual: %d %b\nloads: %d\n",loadc,loadc,loads);#10;
		//
		
 	end


endmodule

