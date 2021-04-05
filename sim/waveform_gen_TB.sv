`timescale 1ns/1ns

module waveform_gen_TB;
	parameter clock_scale = 1;

	logic clk;
	logic reset;

	logic [11:0] sin_wave, cos_wave, squ_wave, saw_wave;

	// 32'd258 is the calculated value for 3Hz

	//create a waveform gen
	waveform_gen DUT(
		// Inputs
		.clk(clk),
		.reset(reset),	//reset key unknown
		.en(1'b1),		//enable
		.phase_inc(32'hFFFF_FFFF),

		// Outputs 
		.sin_out(sin_wave),
		.cos_out(cos_wave),
		.squ_out(squ_wave),
		.saw_out(saw_wave)
	);

	initial
		begin
			reset <= 1; 

			#clock_scale;

			reset <= 0; 

			#clock_scale;

		end
	
	always
		begin
			clk <=1; #clock_scale;
			clk <=0; #clock_scale;
		end

endmodule