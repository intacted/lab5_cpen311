`timescale 1ns/1ns

module clock_divider_TB;

	logic inclk;
	logic Reset;
	logic [31:0] div_clk_count;

	logic outclk;
	logic outclk_Not;

	clock_divider dut(
		.inclk(inclk),
		.Reset(Reset),
		.div_clk_count(div_clk_count),
		.outclk(outclk),
		.outclk_Not(outclk_Not)
	);  

	initial
		begin
			
			div_clk_count <= 32'h5D5C; //32'h3331;
			Reset <= 0; #1;

			assert(outclk === 0) else $error("Big Problem at 1.1");
			assert(outclk_Not === 1) else $error("Big Problem at 1.2"); 

			#25;

			Reset <= 1; 

			#300;

			assert(outclk === 1) else $error("Big Problem at 2.1");
			assert(outclk_Not === 0) else $error("Big Problem at 2.2");
		end
	
	always
		begin
			inclk <=1; #20;
			inclk <=0; #20;
		end

endmodule