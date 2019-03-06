`define HEXNUM0 7'b1000000
`define HEXNUM1 7'b1111001
`define HEXNUM2 7'b0100100
`define HEXNUM3 7'b0110000
`define HEXNUM4 7'b0011001
`define HEXNUM5 7'b0010010
`define HEXNUM6 7'b0000010
`define HEXNUM7 7'b1111000
`define HEXNUM8 7'b0000000
`define HEXNUM9 7'b0011000

module lab4_top_tb () ;
   
  wire [9:0] SW;
  wire [3:0] KEY;
  wire [6:0] HEX0;

  reg clk;	
  reg reset;
  reg dir;

  assign KEY[0] = ~clk;
  assign KEY[1] = ~reset;
  assign SW[0] = ~dir;

  lab4_top dut(SW,KEY,HEX0);
  

  initial begin // sets it so that this turns in and off every 5ps.
    clk = 0; #5;
    forever begin
      clk = 1 ; #5;
      clk = 0 ; #5;
    end
  end

  initial begin
    reset = 1;
    dir = 1;
    #10;
    reset = 0; // AT THIS POINT IT SHOULD BE COUNTING UP
    #45; // OUTPUTS 1 2 3 4 5...
    dir = 0;// SHOULD NOW OUTPUT REVERSE
    #50;
    reset = 1; // NOW IT SETS IT TO 1 SINCE ITS INTITIAL STATE.
  end

    


endmodule
