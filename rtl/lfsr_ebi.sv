module lfsr_generic
	#(parameter N = 5) 
	(
		input clk,
		input reset,

		output logic [N-1:0] q
	 );
	 
	reg [N-1:0] lfsr_reg0;
	wire [N-1:0] lfsr_wire;
	parameter [N-1:0] lfsr_init = {{N-2{1'b0}}, {{1'b1}}, {{1'b0}}};
	
	wire feedback; 
	logic reset_lfsr, reset_ff;
	
	assign feedback = lfsr_reg0[0] ^ lfsr_reg0[2];
	assign lfsr_wire = reset_lfsr ? lfsr_init : lfsr_reg0;
	assign q = lfsr_reg0;

	genvar i;
	generate
		for (i = N-1; i > 0; i--) begin : flip_flops
			FDC #(1) ff
			(
				.clk(clk),
				.reset(reset_ff),
				.d(lfsr_wire[i]),
				.q(lfsr_reg0[i-1])
			);

		end
	endgenerate
	
	FDC #(1) ff_last 
	(
		.clk(clk),
		.reset(reset_ff),
		.d(feedback),
		.q(lfsr_reg0[N-1])
	);

	// Defining states
	enum int unsigned { 
		START = 0,
		ENABLE_FF = 1,
		RUN = 2
	} state, next_state;

	// Defining next_state order
	always_comb begin : next_state_logic 
	next_state = START;
		case(state)
				START: next_state = ENABLE_FF;
					
				ENABLE_FF: next_state = RUN;

				RUN: next_state = RUN;
				
			default: next_state = START;
		endcase
	end

	// Handle resets and updating state to next_state
	always_ff@(posedge clk or negedge reset) begin : internal_reset_handler
		if(!reset)
		begin
			state <= ENABLE_FF;

			reset_lfsr <= 1'b1;
			reset_ff <= 1'b1;
		end
		
		// If not resetting, normal operation
		else
		begin
			case(state)
				START:
				begin
					reset_lfsr <= 1'b1;
					reset_ff <= 1'b1;
				end
				
				ENABLE_FF:
				begin
					reset_lfsr <= 1'b1;
					reset_ff <= 1'b0;
				end

				RUN:
				begin
					reset_lfsr <= 1'b0;
					reset_ff <= 1'b0;
				end
				
				default:
				begin
					reset_lfsr <= 1'b1;
					reset_ff <= 1'b1;
				end
			endcase

			state <= next_state;
		end
	end
	
endmodule

/*
module lfsr
	(
		input clk,
		input reset,
		output logic [4:0] q
	 );
	 
	reg [4:0] lfsr_reg0;
	wire [4:0] lfsr_wire;
	parameter [4:0] lfsr_init = 5'b000_01;
	
	wire feedback, feedback_stable;
	
	assign feedback = lfsr_reg0[0] ^ lfsr_reg0[2];
	assign q = lfsr_reg0;

	assign lfsr_wire = reset ? lfsr_init : lfsr_reg0;

	FDC #(5) output_metastability_handler 
	(
		.clk(clk),
		.reset(),
		.d(lfsr_reg0),
		.q(q)
	);

	FDC #(1) feedback_metastability_handler 
	(
		.clk(clk),
		.reset(),
		.d(feedback),
		.q(feedback_stable)
	);
	
	FDC #(1) ff3 
	(
		.clk(clk),
		.reset(),
		.d(lfsr_wire[4]),
		.q(lfsr_reg0[3])
	);
	
	FDC #(1) ff2
	(
		.clk(clk),
		.reset(),
		.d(lfsr_wire[3]),
		.q(lfsr_reg0[2])
	);
	
	FDC #(1) ff1  
	(
		.clk(clk),
		.reset(),
		.d(lfsr_wire[2]),
		.q(lfsr_reg0[1])
	);
	
	FDC #(1) ff0  
	(
		.clk(clk),
		.reset(),
		.d(lfsr_wire[1]),
		.q(lfsr_reg0[0])
	);
	
	FDC #(1) ff4 
	(
		.clk(clk),
		.reset(),
		.d(feedback_stable),
		.q(lfsr_reg0[4])
	);
	
endmodule
*/