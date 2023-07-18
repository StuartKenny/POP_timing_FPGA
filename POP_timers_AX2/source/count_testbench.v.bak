`timescale 1 ns / 1 ns

module counter_testbench
	#(parameter CLOCK_CYCLE = 10, WIDTH=16);
	
    // Inputs
    reg clk;
	reg direction;
	reg reset;

    // Outputs
    wire [WIDTH-1:0] count;

    // Instantiate the Unit Under Test (UUT)
    count_n syscounter (
		.clk(clk),
		.direction(direction), //1 to count up, 0 to count down
		.reset(reset), // 1 to reset
		.count(count) // WIDTH-bit counter output
		);

	initial begin
		clk = 1'b1;
		reset = 1'b0;
		direction = 1'b1;
	end

	// 100MHz clock generation 
	always
		#(CLOCK_CYCLE/2.0) clk = ~clk;

	initial begin		
		#(10*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) reset = 1'b1;
		#(10*CLOCK_CYCLE) reset = 1'b0;	
		
		#(500*CLOCK_CYCLE) $finish;
	end
endmodule