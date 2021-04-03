//=====================================================================================
//
// Clock Divider
// Modelled on the professor's onfuscated code
//=====================================================================================

module clock_divider(
	input inclk, 			// Put in CLK_50M
	output logic outclk, 		
	output logic outclk_Not, 
	input[31:0] div_clk_count,  	// Half-period tick count for frequency
	input Reset); 			// Assuming Active-LOW Reset
	

	logic [31:0] count;
	logic high_or_low; // test for inferred latch related to this var

	assign outclk_Not = ~outclk;

	// Evaluate at every update of inclk & reset
	always @(negedge Reset, posedge inclk)
	begin
		// Reset Conditions
		if(~Reset)
		begin
			outclk <= 0;			// Output nothing
			count <= 0;				// Restart counting
			high_or_low <= 1;		// Start Outputting High
		end

		// Operating Conditions
		else
		begin
			if(count >= div_clk_count)
			begin
				high_or_low <= ~high_or_low;

				count <= 0;
			end
			else
			begin
				count <= count + 1;
			end

			outclk <= high_or_low; // Write high if high, low if low
		end
	end

endmodule

