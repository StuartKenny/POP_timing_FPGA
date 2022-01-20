module comparator 
	#(	parameter WIDTH=16)
	(	a, //WIDTH-bit input a
		b, //WIDTH-bit input b
		a_gteq_b, //high when a is greater than or equal to b
		a_lt_b //high when a is less than b 
	);
	
	input [WIDTH-1:0] a,b; //WIDTH-bit inputs
	output reg a_gteq_b, a_lt_b; //wires also declared as registers to enable assignment

	always@(*)
	begin
		if (a < b) begin //a is less than b
			a_gteq_b = 0;
			a_lt_b = 1; end
		else begin //a equals or greater than b
			a_gteq_b = 1;
			a_lt_b = 0; end
	end
endmodule
