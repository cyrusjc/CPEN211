module test(clk,r,out);
	input clk;
	input r;
	output [5:0] out;

	
	reg fd = out[5:3];
	reg sd = out[2:0];

	assign out = r ? 6'b0 : out;

	always @(posedge clk) begin
		if (fd == 3'd4)
			{fd,sd} = 6'b0;
		else begin
			if (sd < 4'd5)
				sd = sd + 1'b1;
			else if (sd == 4) begin
				sd = 3'b0;
				fd = fd + 1'b1;
			end
		end
		out = {fd,sd};

	end
endmodule
			
	
	