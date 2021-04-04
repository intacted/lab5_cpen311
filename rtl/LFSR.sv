module LFSR_block(
    input clk,reset,
    output logic [4:0] q
);

logic q0;
logic q0_next;
logic q1_next;
logic q2_next;
logic q3_next;
logic q4_next;
logic q1;
logic q2;
logic q3;
logic q4;


assign {q4_next,q3_next,q2_next,q1_next,q0_next}=reset?5'b000_10:{q3,q2,q1,q0,q2^q0};

	FDC #(1) ff_0
	(
		.clk(clk),
		.reset(),
		.d(q0_next),
		.q(q0)
	);

    	FDC_in #(1) ff_1
	(
		.clk(clk),
		.reset(),
		.d(q1_next),
		.q(q1)
	);

    	FDC #(1) ff_2
	(
		.clk(clk),
		.reset(),
		.d(q2_next),
		.q(q2)
	);

    	FDC #(1) ff_3
	(
		.clk(clk),
		.reset(),
		.d(q3_next),
		.q(q3)
	);

    	FDC #(1) ff_4
	(
		.clk(clk),
		.reset(),
		.d(q4_next),
		.q(q4)
	);

    assign q={q4,q3,q2,q1,q0};

endmodule