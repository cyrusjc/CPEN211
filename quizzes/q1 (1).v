module detect_full(ain, f);
input [11:0] ain;
output [2:0] f;

wire toprow;
wire midrow;
wire botrow;
wire [2:0] array;

assign toprow = ain[0] & ain[1] & ain[2] & ain[3] ;
assign midrow = ain[4] & ain[5] & ain[6] & ain[7] ;
assign botrow = ain[8] & ain[9] & ain[10] & ain[11]; 

RArb #(3) ra({toprow,midrow,botrow},array); // this is sent to RArb, and will output 1 first whether top row, midrow or bot row is filled up in that order

assign f = array[2:0];

endmodule

module RArb(r, g) ; // THIS ONE HOT CODE IS TAKEN FROM LAB3.
  parameter n=8 ;
  input  [n-1:0] r ;
  output [n-1:0] g ;
  wire   [n-1:0] c = {1'b1,(~r[n-1:1] & c[n-1:1])} ;
  assign g = r & c ;
endmodule // RArb


