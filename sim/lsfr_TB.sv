`timescale 1ns/1ns

module lsfr_TB;
    parameter clock_scale = 5'd20;		// for clk

	// Output
	logic [4:0] q;

	// -- clock and reset signals  
	logic clk, reset;										
	 
	lsfr dut(
		// Inputs
		.clk(clk),
		.reset(reset),
		
		// Outputs
		.q(q)
	);
	 

	initial
		begin
			reset <= 1'b1;

			#clock_scale;
			#clock_scale;
			
			assert(q === 5'b000_01) else $error("Problem at 0");
			reset <= 1'b0;

			#clock_scale;

			/*forever
			begin
				// forever loop for testing
			end*/
		end
	
	always
		begin
			clk <=1; #(clock_scale/2);
			clk <=0; #(clock_scale/2);
		end

endmodule