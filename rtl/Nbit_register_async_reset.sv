// From homework-1 Q6d) N-bit register async reset 
module FDC
	#(parameter N = 4) 
	(input logic clk,
	 input logic reset,
	 input logic [N-1:0] d,
	 output logic [N-1:0] q);
	
	// asynchronous
	always_ff @(posedge clk, posedge reset)
		if (reset) q <= 0;
		else q <= d;
endmodule