module datapath_tb();

	reg [15:0] datapath_in;
	reg loada;
	reg loadb;
	reg loadc;
	reg loads;
	reg clk;
	reg asel;
	reg bsel;
	reg vsel;
	reg [2:0] writenum;
	reg write;
	reg [2:0] readnum;
	reg [1:0] shifter;
	reg [1:0] ALUop;
	wire [15:0] datapath_out;

	datapath dut(datapath_in,loada,loadb,loadc,loads,clk,asel,bsel,vsel,writenum,write,readnum,shifter,ALUop,datapath_out);



	initial begin // sets it so that this turns in and off every 5ps.
    		clk = 0; #5;
    		forever begin
      			clk = 1 ; #5;
      			clk = 0 ; #5;
    		end
  	end
	initial begin
	
	begin //WRITING INTO R0-R7
	//WANT TO TRY STORING 0 - 7 INTO THE 8 REGISTERS AND READING 2 AND 3 THEN SUMMING THEM AND STORING THEM IN C
	vsel = 1;
	
	write = 1;
	datapath_in = 16'b0;
	writenum = 3'b000;#10;	
	datapath_in = 16'b1;
	writenum = 3'b001;#10;
	datapath_in = 16'b10;
	writenum = 3'b010;#10;
	datapath_in = 16'b11;
	writenum = 3'b011;#10;
	datapath_in = 16'b100;
	writenum = 3'b100;#10;
	datapath_in = 16'b101;
	writenum = 3'b101;#10;
	datapath_in = 16'b110;
	writenum = 3'b110;#10;
	datapath_in = 16'b111;
	writenum = 3'b111;#10;

	if (dut.BigReg.R0!= 1'b0 & dut.BigReg.R1!=1 & dut.BigReg.R2!= 2 & dut.BigReg.R3!=3 & dut.BigReg.R4!= 4 & dut.BigReg.R5!=5 & dut.BigReg.R6!= 6 & dut.BigReg.R7!=7 )
		$display("ERROR, STORED VALUE DOES NOT MATCH\n");
	else
		//$display("****WHATS INSIDE R0-R8?****\nR0: %b\nR1: %b\nR2: %b\nR3: %b\nR4: %b\nR5: %b\nR6: %b\nR7: %b\n",
		  //dut.BigReg.R0,dut.BigReg.R1,dut.BigReg.R2,dut.BigReg.R3,dut.BigReg.R4,dut.BigReg.R5,dut.BigReg.R6,dut.BigReg.R7);
		$display("SUCCESS");
		
	//TRYING TO WRITE WITH WRITE = 0;
	#10;write = 0; 
	datapath_in = 16'b111111111;#10
	writenum = 3'b000;#10;	
	datapath_in = 16'b101010110101;
	writenum = 3'b001;#10;
	datapath_in = 16'b110101010100;
	writenum = 3'b010;#10;
	datapath_in = 16'b110100101001;
	writenum = 3'b011;#10;
	datapath_in = 16'b11010101000;
	writenum = 3'b100;#10;
	datapath_in = 16'b110100101;
	writenum = 3'b101;#10;
	datapath_in = 16'b110110101010;
	writenum = 3'b110;#10;
	datapath_in = 16'b11110101010;
	writenum = 3'b111;#10;

	if (dut.BigReg.R0!= 1'b0 & dut.BigReg.R1!=1 & dut.BigReg.R2!= 2 & dut.BigReg.R3!=3 & dut.BigReg.R4!= 4 & dut.BigReg.R5!=5 & dut.BigReg.R6!= 6 & dut.BigReg.R7!=7 )
		$display("ERROR, STORED VALUE DOES NOT MATCH\n");
	else
		//$display("****WHATS INSIDE R0-R8?****\nR0: %b\nR1: %b\nR2: %b\nR3: %b\nR4: %b\nR5: %b\nR6: %b\nR7: %b\n",
		  //dut.BigReg.R0,dut.BigReg.R1,dut.BigReg.R2,dut.BigReg.R3,dut.BigReg.R4,dut.BigReg.R5,dut.BigReg.R6,dut.BigReg.R7);
		$display("SUCCESS");

	end

	begin // writing into a and b
	loada=1;
	readnum = 3'b010;#10;
	loada=0;#10;
	loadb=1;
	readnum = 3'b011;#10;
	loadb=0;#10;

	if (dut.data_outA==16'b10 & dut.data_outB ==16'b11)
		$display("SUCCESS A = 2, B = 3");
	else
		$display("A & B are not what they're supposed to be...\n");

	end


	begin // SENDING THESE TWO TO ALU... AND STORING IN C
	asel=0;#10
	shifter = 2'b00;#10;
	bsel=0;#10;

	if (dut.data_outA == dut.Ain & dut.data_outB == dut.Bin )
		$display("OUTPUT OF MULTIPLEXER IS CORRECT (asel and bsel)");
	else
		$display("ERROR data_outA is not Ain or data_outB is not Bin");

	loadc = 1;
	loads = 1;
	ALUop = 2'b00;#10
	
	if (dut.CMP.loadc == 16'b101)
		$display("SUCCESS OUTPUT OF ALU IS 5");
	else
		$display("ERROR");

	#10;
	end
	begin//CHECKING OUTPUT OF DATAPATH... AND STORING IT TO R7
	if (datapath_out == 16'b101)
		$display("SUCCESS OUTPUT IS 5!");
	else
		$display("ERROR WRONG NUMBER STORED IN REGISTER C");
	vsel = 0;
	writenum = 3'b111;
	write = 1;#10
	$display("THE VALUE OF R7 IS: %d SUPPSOED TO BE 5",dut.BigReg.R7);
	
	
	
	end
	

	begin // DOING THE TB IN LAB 
	$display ("DOING TESTBENCH IN LAB5 HANDOUT");
	//PUTTING 7 INTO R0
	datapath_in = 16'b111;
	vsel = 1;
	write = 1;
	writenum = 3'b0;#10;

	//PUTTING 2 INTO R1
	datapath_in = 16'b10;
	writenum = 3'b1;#10
	write = 0;
	
	//ADDITION PART:
	loada = 1;
	loadb = 0;
	readnum = 3'b1;#10; // 2 IS IN REGISTER A
	loada = 0;
	loadb = 1;
	readnum = 3'b0;#10; // 7 IN REGISTER B
	loadb = 0;
	asel = 0;
	bsel = 0;
	shifter = 2'b01; // SHIFTING LEFT
	ALUop = 2'b00; //ADDING
	loadc = 1;#10
	
	vsel = 0;
	write = 1; 
	writenum = 2'b10;#10;

	$display ("VALUE IN REG A: %d" ,dut.data_outA);
	$display ("VALUE IN REG B: %d" ,dut.data_outB);
	$display ("VALUE IN REG C: %d" ,datapath_out);

	$display("THE VALUE OF R0 IS: %d SUPPSOED TO BE 7",dut.BigReg.R0);
	$display("THE VALUE OF R1 IS: %d SUPPSOED TO BE 2",dut.BigReg.R1);
	$display("THE VALUE OF R2 IS: %d SUPPSOED TO BE 16",dut.BigReg.R2);
	$display("THE VALUE OF R7 IS: %d SUPPSOED TO BE 5",dut.BigReg.R7);
	
	
	
	end
	
	end

endmodule