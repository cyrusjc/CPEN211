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
 
module lab4_top(SW,KEY,HEX0);
  input [9:0] SW;
  input [3:0] KEY;
  output reg [6:0] HEX0;

  wire clk;
  wire reset;
  wire dir; 

  //TAKEN FROM LAB ONE. SINCE BUTTON IS 1 WHEN NOT PRESSED ,NEED TO INVERT AND ASSIGN TO CLK
  assign clk = ~KEY[0];  
  assign reset =  ~KEY[1];
  assign dir = ~SW[0];
  
  reg [6:0] present_state;

  //TEMPLATE TAKEN FROM LECTURE ON THURSDAY (SEPT 28)
  always @(posedge clk) begin                   
    if (reset) 
      present_state = `HEXNUM1;
    else begin
      case (present_state)
	    `HEXNUM1: if (dir) present_state = `HEXNUM2;
		           else     present_state = `HEXNUM5;
	    `HEXNUM2: if (dir) present_state = `HEXNUM3;
		           else     present_state = `HEXNUM1;
	    `HEXNUM3: if (dir) present_state = `HEXNUM4;
		           else     present_state = `HEXNUM2;
     	 `HEXNUM4: if (dir) present_state = `HEXNUM5;
		           else     present_state = `HEXNUM3;
	    `HEXNUM5: if (dir) present_state = `HEXNUM1;
		           else     present_state = `HEXNUM4;
	     default: present_state = 7'bxxxxxxx;
      endcase
    end
    HEX0 = present_state;
  end

endmodule
