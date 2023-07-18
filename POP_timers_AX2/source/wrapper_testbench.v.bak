//This file contains testbenches for the slow_clock_pulse and quad_state_machine Verilog modules

`timescale 1 ns / 1 ns

module wrapper_testbench
	#(parameter CLOCK_CYCLE = 400);
	
    // Inputs
	reg clock_2_5M; //2.5MHz clock

    // Outputs
    wire [1:0] quad_state;
    wire [2:0] five_state;
	wire debounce_pulse, fast_pulse, slow_pulse;

    // Instantiate the Units Under Test (UUT)
	slow_clock_pulse slowclocksUT (
		.clk(clock_2_5M),
		.debounce_pulse(debounce_pulse),
		.fast_pulse(fast_pulse),
		. slow_pulse(slow_pulse)
		);
		
	quad_state_machine four_state_machineUT (	
		.clk(fast_pulse),
		.state(quad_state) //2 bit vector
		);

	n_state_machine five_state_machineUT (	
		.clk(fast_pulse),
		.state(five_state) //3 bit vector
		);
		
	initial begin
		clock_2_5M = 1'b1;
	end

	// 2.5MHz clock generation 
	always
		#(CLOCK_CYCLE/2.0) clock_2_5M = ~clock_2_5M;

	initial begin		
		#(10000000*CLOCK_CYCLE) $finish;
	end
endmodule