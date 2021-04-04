module fast_to_slow
#(parameter N = 1)
(
    input clk1, clk2,
	input [N-1:0] in,

    output logic [N-1:0] out
);

logic [N-1:0] w_reg2, w_reg3, ff1_ff2, ff2_reg3;

	FDC #(N) reg1 
	(
		.clk(clk1),
		.reset(),
		.d(in),

		.q(w_reg3) // into reg3
	);

	FDC_en #(N) reg3 
	(
		.clk(clk1),
        .en(ff2_reg3),
		.reset(),
		.d(w_reg3), // from reg3

		.q(w_reg2)  // into reg2
	);

   FDC #(1) first 
	(
		.clk(~clk1),
		.reset(),
		.d(clk2),

		.q(ff1_ff2)
	);

   FDC #(1) second 
	(
		.clk(~clk1),
		.reset(),
		.d(ff1_ff2),

		.q(ff2_reg3)
	);

	FDC #(N) reg2 
	(
		.clk(clk2),
		.reset(),
		.d(w_reg2),

		.q(out) 	// out
	);
endmodule
