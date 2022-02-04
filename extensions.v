
module countupdownpreload
	#(	parameter WIDTH=16)
	(	clk_up,
		clk_dn,
		reset,
		preload, //WIDTH-bit initialisation value
		increment, //WIDTH-bit value of increment/decrement
		count // WIDTH-bit counter output
		);

	input clk_up, clk_dn, reset; //wires
	input [WIDTH-1:0] preload, increment;
	output reg [WIDTH-1:0] count; //count is initialised with preload value

	always@(posedge clk_up or posedge clk_dn or posedge reset)
		begin
			if(reset) begin
				count <= preload;
			end
			else begin
				if(clk_up) begin
					count <= count + increment;
				end
				else if (clk_dn) begin
					count <= count - increment;
				end
			end		
		end
		
endmodule