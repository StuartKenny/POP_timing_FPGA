`timescale 1 ns / 1 ns

module extended_counter_testbench
	#(parameter CLOCK_CYCLE = 10, WIDTH=16);
	
    // Inputs
    reg clk_up;
	reg clk_dn;
	reg reset;
    reg [WIDTH-1:0] preload;
    reg [WIDTH-1:0] increment;
	
    // Outputs
    wire [WIDTH-1:0] count;

    // Instantiate the Unit Under Test (UUT)
	countupdownpreload piecounter (
		.clk_up(clk_up),
		.clk_dn(clk_dn), 
		.reset(reset), // 1 to reset
		.preload(preload), //WIDTH-bit initialisation value
		.increment(increment), //WIDTH-bit value of increment/decrement
		.count(count) // WIDTH-bit counter output
		);
		
	initial begin
		clk_up = 1'b0;
		clk_dn = 1'b0;
		reset = 1'b0;
		preload = 16'd1000;
		increment = 16'd25;	
	end

	// 100MHz clock generation 
	//always
		//#(CLOCK_CYCLE/2.0) clk = ~clk;

	initial begin		
		#(10*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) reset = 1'b1;
		#(10*CLOCK_CYCLE) reset = 1'b0;
		#(10*CLOCK_CYCLE) clk_up = 1'b1;			
		#(5*CLOCK_CYCLE) clk_up = 1'b0;			
		#(10*CLOCK_CYCLE) clk_up = 1'b1;			
		#(5*CLOCK_CYCLE) clk_up = 1'b0;
		#(10*CLOCK_CYCLE) clk_dn = 1'b1;			
		#(5*CLOCK_CYCLE) clk_dn = 1'b0;
		#(10*CLOCK_CYCLE) reset = 1'b1;			
		#(5*CLOCK_CYCLE) clk_up = 1'b1;			
		#(5*CLOCK_CYCLE) clk_up = 1'b0;
		#(5*CLOCK_CYCLE) reset = 1'b0;		
		#(500*CLOCK_CYCLE); 
		#(0.3*CLOCK_CYCLE) reset = 1'b1;
		#(10*CLOCK_CYCLE) reset = 1'b0;
		#(500*CLOCK_CYCLE) $finish;
	end
endmodule