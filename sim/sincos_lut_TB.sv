`timescale 1ns/1ns

module sincos_lut_TB;
	parameter clock_scale = 1;

	logic clk;
	logic [11:0] sin_out, cos_out, addr;

	sincos_lut DUT(
		// Inputs
		.clk(clk),
		.en(1'b1),		//enable
		.addr(addr),

		// Outputs 
		.sin_out(sin_out),
		.cos_out(cos_out)
	);

	initial
		begin
			addr <= 12'h000;
			#(clock_scale*2);

			forever
			begin
				addr <= addr+1;
				#(clock_scale*2);
			end
		end
	
	always
		begin
			clk <=1; #clock_scale;
			clk <=0; #clock_scale;
		end

endmodule