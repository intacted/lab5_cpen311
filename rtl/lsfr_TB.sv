`timescale 1ns/1ns

module lsfr_TB;
    parameter clock_scale = 5'd20;		// for clk

	// Output
	logic [4:0] q;

	// -- clock and reset signals  
	logic clk, reset, reset_ff;										
	 
	LFSR_block dut(
		// Inputs
		.clk(clk),
		.reset(reset),
		//.reset_ff(reset_ff),

		// Outputs
		.q(q)
	);

	initial begin
		forever begin
			clk=0;
			#5;
			clk=1;
			#5;
		end
	end
	 

	initial
		begin
			//reset <= 1'b1;

			reset <= 1'b1;
			//reset_ff <= 1'b1;
			#5;

			reset <= 1'b0;
			#10000;


			//reset_ff <= 1'b0;
			//reset <= 1'b0;



			/*forever
			begin
				// forever loop for testing
			end*/
		end

endmodule