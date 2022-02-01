`timescale 1 ns / 1 ns

module POPtimers_testbench
	#(parameter CLOCK_CYCLE = 400, WIDTH=16);

    // Inputs
	reg reset;
	reg clock_2_5M;

    // Outputs
	wire pump;
	wire probe;
	wire MW;
	wire sample;

    POPtimers POPtimers (
		.reset(reset), // 1 to reset
		.clock_2_5M(clock_2_5M), //2.5MHz clock
		.pump(pump), // pump output
		.probe(probe), // probe output
		.MW(MW), // MW output
		.sample(sample) // sample output
	);

	initial begin
		reset = 1'b0;
		clock_2_5M = 1'b0;
	end

	// 2.5MHz clock generation
	always
		#(CLOCK_CYCLE/2.0) clock_2_5M = ~clock_2_5M;

	initial begin
		#(10*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) reset = 1'b1;
		#(10*CLOCK_CYCLE) reset = 1'b0;

		#(50000*CLOCK_CYCLE) $finish;
	end
endmodule
