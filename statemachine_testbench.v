//This file contains testbenches for the slow_clock_pulse and quad_state_machine Verilog modules

`timescale 1 ns / 1 ns

module wrapper_testbench
	#(parameter CLOCK_CYCLE = 400);
	
    // Inputs
	reg clk; //100MHz clock

    // Outputs
    wire [1:0] state;
	wire state_0, state_1, state_2, state_3;

    // Instantiate the Units Under Test (UUT)
	slow_clock_pulse slowclocks (
		.clk(clock_2M5),
		.fast_pulse(fast_pulse),
		. slow_pulse(slow_pulse)
		);
		
	quad_state_machine state_machine (	
		.clk(fast_pulse),
		.state(state), //2 bit vector
 		.state_0(state_0), //single wire decoded output
		.state_1(state_1),
		.state_2(state_2),
		.state_3(state_3)
		);

	initial begin
		clk = 1'b1;
	end

	// 2.5MHz clock generation 
	always
		#(CLOCK_CYCLE/2.0) clock_2M5 = ~clock_2M5;

	initial begin		
		#(10*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) reset = 1'b1;
		#(10*CLOCK_CYCLE) reset = 1'b0;	
		
		#(5000000*CLOCK_CYCLE) $finish;
	end
endmodule