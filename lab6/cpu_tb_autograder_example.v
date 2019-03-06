// To work with our autograder you MUST be able to get your cpu.v to work
// without making ANY changes to this file.  Refer to Section 4 in the Lab
// 6 handout for more details.

module cpu_autograder_example_tb;
  reg clk, reset, s, load;
  reg [15:0] in;
  wire [15:0] out;
  wire N,V,Z,w;

  reg err;

  cpu DUT(clk,reset,s,load,in,out,N,V,Z,w);

  initial begin
    clk = 0; #5;
    forever begin
      clk = 1; #5;
      clk = 0; #5;
    end
  end

  initial begin
    err = 0;
    reset = 1; s = 0; load = 0; in = 16'b0;
    #10;
    reset = 0; 
    #10;
	
    in = 16'b1101000000000000;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.DUT.DP.REGFILE.R0 !== 16'h0) begin
      err = 1;
      $display("FAILED: MOV R0, #0");
      $stop;
    end

    in = 16'b1101000100000001;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.DUT.DP.REGFILE.R1 !== 16'h1) begin
      err = 1;
      $display("FAILED: MOV R1, #1");
      $stop;
    end
	
    in = 16'b11010010_00000010;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.DUT.DP.REGFILE.R2!== 16'h2) begin
      err = 1;
      $display("FAILED: MOV R2, #2");
      $stop;
    end
	
    in = 16'b10100001_01100010;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.DUT.DP.REGFILE.R3!== 16'h3) begin
      err = 1;
      $display("FAILED: ADD R3 R1 R2 #3");
      $stop;
    end
	
    in = 16'b10100001_10000011;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.DUT.DP.REGFILE.R4!== 16'h4) begin
      err = 1;
      $display("FAILED: ADD R4 R1 R3 #4");
      $stop;
    end
	
    in = 16'b10100001_10101010;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.DUT.DP.REGFILE.R5!== 16'h5) begin
      err = 1;
      $display("FAILED: ADD R5 R1 R2 LS#1 #4");
      $stop;
    end
	
    in = 16'b10101001_00000001;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.DUT.DP.cRegister.out!== 16'h0 & cpu_autograder_example_tb.Z != 0) begin
      err = 1;
      $display("FAILED: CMP R1 ,R1");
      $stop;
    end
	
    in = 16'b10101101_00000100;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.DUT.DP.cRegister.out!== 16'h1) begin
      err = 1;
      $display("FAILED: CMP R5 ,R4");
      $stop;
    end
	
    in = 16'b10101100_00000101;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.N != 1) begin
      err = 1;
      $display("FAILED: CMP R4 ,R5");
      $stop;
    end
    
    in = 16'b10111000_11010001;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_autograder_example_tb.DUT.DP.REGFILE.R6!== 16'b1111_1111_1111_1111) begin
      err = 1;
      $display("FAILED: MVN R6 R1(RS#1)");
      $stop;
    end
    
    in = 16'b10111000_11100010;
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
     if (cpu_autograder_example_tb.DUT.DP.REGFILE.R7!== 16'b1111_1111_1111_1101) begin
      err = 1;
      $display("FAILED: MVN R7 R1");
      $stop;
    end


    if (~err) $display("INTERFACE OK");
    $stop;
  end
endmodule
