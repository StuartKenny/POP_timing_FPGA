`timescale 1 ns / 1 ns

module POPtimers_testbench
	#(parameter CLOCK_CYCLE = 400, WIDTH=16);

    // Inputs
	reg reset;
	reg load_defaults;
	reg clk_2M5;
	reg pieovertwo_plus;
	reg freeprecess_plus;
	reg pieovertwo_minus;
	reg freeprecess_minus;

    // Outputs
	wire pump;
	wire probe;
	wire MW;
	wire sample;

	//Instantiate the UUT
    POPtimers POPtimers (
		.reset(reset), // 1 to reset
		.clk_2M5(clk_2M5), //2.5MHz clock
		.load_defaults(load_defaults), // 1 to reset
		.pieovertwo_plus(pieovertwo_plus), //sampled button input
		.freeprecess_plus(freeprecess_plus), //sampled button input
		.pieovertwo_minus(pieovertwo_minus), //sampled button input
		.freeprecess_minus(freeprecess_minus), //sampled button input
		.pump(pump), // pump output
		.probe(probe), // probe output
		.MW(MW), // MW output
		.sample(sample) // sample output
	);

	initial begin
		reset = 1'b0;
		load_defaults = 1'b0;
		clk_2M5 = 1'b0;
		pieovertwo_plus = 1'b0;
		freeprecess_plus = 1'b0;
		pieovertwo_minus = 1'b0;
		freeprecess_minus = 1'b0;
	end

	// 2.5MHz clock generation
	always
		#(CLOCK_CYCLE/2.0) clk_2M5 = ~clk_2M5;

	initial begin
		#(10*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) reset = 1'b1;
		#(10*CLOCK_CYCLE) reset = 1'b0;	
		#(10*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) load_defaults = 1'b1;
		#(10*CLOCK_CYCLE) load_defaults = 1'b0;
		#(20000*CLOCK_CYCLE);
		#(10*CLOCK_CYCLE) reset = 1'b1;
		#(10000*CLOCK_CYCLE) reset = 1'b0;	
		#(20000*CLOCK_CYCLE);
		#(CLOCK_CYCLE) pieovertwo_minus = 1'b1;
		#(CLOCK_CYCLE) pieovertwo_minus = 1'b0;
		#(CLOCK_CYCLE) pieovertwo_minus = 1'b1;
		#(CLOCK_CYCLE) pieovertwo_minus = 1'b0;
		#(CLOCK_CYCLE) pieovertwo_minus = 1'b1;
		#(CLOCK_CYCLE) pieovertwo_minus = 1'b0;
		#(CLOCK_CYCLE) pieovertwo_minus = 1'b1;
		#(CLOCK_CYCLE) pieovertwo_minus = 1'b0;
		#(CLOCK_CYCLE) freeprecess_plus = 1'b1;
		#(CLOCK_CYCLE) freeprecess_plus = 1'b0;
		#(CLOCK_CYCLE) freeprecess_plus = 1'b1;
		#(CLOCK_CYCLE) freeprecess_plus = 1'b0;
		#(20000*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) load_defaults = 1'b1;
		#(10*CLOCK_CYCLE) load_defaults = 1'b0;	
		#(1000*CLOCK_CYCLE);	
		#(0.3*CLOCK_CYCLE) reset = 1'b1;
		#(10*CLOCK_CYCLE) reset = 1'b0;	
		#(50000*CLOCK_CYCLE) $finish;
	end
endmodule
