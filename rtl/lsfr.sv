module lsfr
	#(parameter N = 5) 
	(
		input /*logic*/ clk,
		input /*logic*/ reset,
		output logic [N-1:0] q
	 );
	 
	reg [4:0] lsfr_reg0;
	wire [4:0] lsfr_wire;
	parameter [4:0] lsfr_init = 5'b000_01;
	
	wire feedback;
	
	assign feedback = lsfr_reg0[0] ^ lsfr_reg0[2];
	assign q = lsfr_reg0;

	assign lsfr_wire = reset ? lsfr_init : lsfr_reg0;
	
	FDC #(1) ff3 
	(
		.clk(clk),
		.reset(/*EMPTY*/),
		.d(lsfr_wire[4]),
		.q(lsfr_reg0[3])
	);
	
	FDC #(1) ff2
	(
		.clk(clk),
		.reset(/*EMPTY*/),
		.d(lsfr_wire[3]),
		.q(lsfr_reg0[2])
	);
	
	FDC #(1) ff1  
	(
		.clk(clk),
		.reset(/*EMPTY*/),
		.d(lsfr_wire[2]),
		.q(lsfr_reg0[1])
	);
	
	FDC #(1) ff0  
	(
		.clk(clk),
		.reset(/*EMPTY*/),
		.d(lsfr_wire[1]),
		.q(lsfr_reg0[0])
	);
	
	FDC #(1) ff4 
	(
		.clk(clk),
		.reset(/*EMPTY*/),
		.d(feedback),
		.q(lsfr_reg0[4])
	);
	
endmodule