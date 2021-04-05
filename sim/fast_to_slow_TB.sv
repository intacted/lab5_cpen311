`timescale 1ns/1ns

module fast_to_slow_TB;
    parameter clock_scale1 = 5'd20;	 // for clk1
	parameter clock_scale2 = 7'd120; // for clk2

	// -- clock and reset signals  
	logic clk1, clk2, in, out;										
	 
	fast_to_slow #(1) dut(
    	.clk1(clk1), 				//CLOCK_1),
    	.clk2(clk2),                //CLOCK_50),
    	.in(in),					//LSFR_out[0]),
	 
    	.out(out)
	);

	 

	initial
		begin
			in <= 1'b0;

			#clock_scale1;

			in <= 1'b0;

			#clock_scale1;
			#clock_scale1;

			in <= 1'b0;

			#(clock_scale1*5);

			in <= 1'b1;

			#(clock_scale1*3);

			in <= 1'b0;

			#(clock_scale1*2);

			in <= 1'b1;

			#(clock_scale1*6);

			in <= 1'b0;

			
			#(clock_scale1*4);

			in <= 1'b1;

			#(clock_scale1*3);

			in <= 1'b0;

			#(clock_scale1*2);

			in <= 1'b1;

			#(clock_scale1*6);

			in <= 1'b0;



			/*forever
			begin
				// forever loop for testing
			end*/
		end
	
	always
		begin
			clk1 <=0; #(clock_scale1/2);
			clk1 <=1; #(clock_scale1/2);
		end
	always
		begin
			clk2 <=0; #(clock_scale2/2);
			clk2 <=1; #(clock_scale2/2);
		end

endmodule