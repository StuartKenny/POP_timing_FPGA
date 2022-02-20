`timescale 1 ns / 1 ns

module top_level_testbench
	#(parameter CLOCK_CYCLE = 400, WIDTH=16);

    // Inputs
	reg reset;

    // Outputs
	wire pump;
	wire probe;
	wire MW;
	wire sample;

    POPtimers toplevel (
		.reset(reset), // 1 to reset
		.pump(pump), // pump output
		.probe(probe), // probe output
		.MW(MW), // MW output
		.sample(sample) // sample output
	);


	initial begin
		reset = 1'b0;
	end

	// 100MHz clock generation
	//always
	//	#(CLOCK_CYCLE/2.0) clk = ~clk;

	initial begin
		#(10*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) reset = 1'b1;
		#(10*CLOCK_CYCLE) reset = 1'b0;

		#(50000*CLOCK_CYCLE) $finish;
	end
endmodule
