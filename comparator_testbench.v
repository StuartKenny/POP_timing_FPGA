`timescale 1 ns / 1 ns

module comparator_testbench
	#(	parameter WIDTH=16);
	
    // Inputs
    reg [WIDTH-1:0] a;
    reg [WIDTH-1:0] b;
	//reg clock;

    // Outputs
    wire a_gteq_b;
    wire a_lt_b;

    // Instantiate the Unit Under Test (UUT)
    comparator uut (
        .a(a), 
        .b(b), 
        .a_gteq_b(a_gteq_b), 
        .a_lt_b(a_lt_b)
    );

    initial begin
        //Apply inputs
        a = 10;
        b = 12;
        #100;
        a = 15;
        b = 11;
        #100;
        a = 10;
        b = 10;
        #100;
    end
      
endmodule