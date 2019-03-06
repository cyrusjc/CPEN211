module regfile_tb () ;
   
  reg [15:0] data_in;
  reg clk;
  reg [2:0] readnum;
  reg [2:0] writenum;
  reg write;
  wire [15:0] data_out;

  regfile dut(writenum,write,data_in,clk,readnum,data_out);

   
  initial begin
    	
	write = 0;#10;
	writenum = 3'b000;#10;
	writenum = 3'b001;#10;
	writenum = 3'b010;#10;
	write = 1;#10;	
	writenum = 3'b000;#10;
	writenum = 3'b001;#10;
	writenum = 3'b010;#10;

  end

	initial begin // sets it so that this turns in and off every 5ps.
    		clk = 0; #5;
    		forever begin
      		clk = 1 ; #5;
      		clk = 0 ; #5;
    		end
  	end

        initial begin

	//writing 0 to all of the registers

	data_in = 16'b0;
	write = 1;#10;

	writenum = 3'b000;#10;
	writenum = 3'b001;#10;
	writenum = 3'b010;#10;
	writenum = 3'b011;#10;
	writenum = 3'b100;#10;
	writenum = 3'b101;#10;
	writenum = 3'b110;#10;
	writenum = 3'b111;#10;
	//writing 0 to 7 into each registers with write off

	write = 0;#10
	writenum = 3'b000;#10;	
	data_in = 16'b1;
	writenum = 3'b001;#10;
	data_in = 16'b11;
	writenum = 3'b010;#10;
	data_in = 16'b111;
	writenum = 3'b011;#10;
	data_in = 16'b1111;
	writenum = 3'b100;#10;
	data_in = 16'b11111;
	writenum = 3'b101;#10;
	data_in = 16'b111111;
	writenum = 3'b110;#10;
	data_in = 16'b1111111;
	writenum = 3'b111;#10;
	data_in = 16'b1111111;#10

	//writing 0 to 7 into each registers with write on
	
	write = 1;
	data_in = 16'b1;
	writenum = 3'b000;#10;	
	data_in = 16'b11;
	writenum = 3'b001;#10;
	data_in = 16'b111;
	writenum = 3'b010;#10;
	data_in = 16'b1111;
	writenum = 3'b011;#10;
	data_in = 16'b11111;
	writenum = 3'b100;#10;
	data_in = 16'b111111;
	writenum = 3'b101;#10;
	data_in = 16'b1111111;
	writenum = 3'b110;#10;
	data_in = 16'b11111111;
	writenum = 3'b111;#10;

	
	//dATA OUT SHOULD BE 1,11,111...,111111111
	readnum = 3'b000;
	$display("%b is dataout, should be 1\n", data_out);#10;
	readnum = 3'b001;
	$display("%b is dataout, should be 11\n", data_out);#10;
	readnum = 3'b010;
	$display("%b is dataout, should be 111\n", data_out);#10;
	readnum = 3'b011;
	$display("%b is dataout, should be 1111\n", data_out);#10;
	readnum = 3'b100;
	$display("%b is dataout, should be 11111\n", data_out);#10;
	readnum = 3'b101;
	$display("%b is dataout, should be 111111\n", data_out);#10;
	readnum = 3'b110;
	$display("%b is dataout, should be 1111111\n", data_out);#10;
	readnum = 3'b111;
	$display("%b is dataout, should be 11111111\n", data_out);#10;

	//CORNER CASE:: WHAT IF READNUM IS RANDOM XXX
	//DATAOUT SHOULD BE xxx IN WAVE FORM TOO

	readnum =3'bxxx;
	
	
	/*$display("%b is stored in R0\n", R0) ;
	$display("%b is stored in R1\n", R1) ;
	$display("%b is stored in R2\n", R2) ;
	$display("%b is stored in R3\n", R3) ;
	$display("%b is stored in R4\n", R4) ;
	$display("%b is stored in R5\n", R5) ;
	$display("%b is stored in R6\n", R6) ;*/
   
     end

	

endmodule

