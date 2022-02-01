
module count_n
	#(	parameter WIDTH=16)
	(	clk,
		direction, //1 to count up, 0 to count down
		reset, // 1 to reset
		count // WIDTH-bit counter output
		);
				
  input clk, direction, reset; //wires
  output reg [WIDTH-1:0] count = 0;

	always@(posedge clk or posedge reset)	  
	begin 
		if(reset) begin
			count <= 0;
		end
		else begin
			if(direction) count <= count + 1'b1;
			else begin
				count <= count - 1'b1; 
			end
		end
	end
 endmodule 