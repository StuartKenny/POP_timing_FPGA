//Divides an input clock by 2^8, 2^20 and 2^23
//2.5MHz input provides outputs with 100us, 420ms and 3.4s periods

module slow_clock_pulse
	(	clk,
		debounce_pulse, //single bit output
		fast_pulse, //single bit output
		slow_pulse //single bit output
		);

  input clk;
  output reg debounce_pulse, fast_pulse, slow_pulse;

	reg [22:0] count = 22'b0;

	always@(*)begin
		debounce_pulse <= count[7];
		fast_pulse <= count[19];
		slow_pulse <= count[22];
	end

	always@(posedge clk)
	begin
		count <= count + 1'b1;
	end
 endmodule

//cycles through 4 states, starting with state_0
//initial_state is high the first time in state_0, otherwise low
 module quad_state_machine
	(	clk,
		state, //2 bit vector
		initial_state //high when first in state 0
		);

	input clk;
	output reg [1:0] state = 2'b00;
	output reg initial_state = 1;

 	always@(posedge clk) //state changes on button press
 		begin
 			state <= state + 1'b1;
 		end
		
	always@(*) 
		begin
			if (state == 1) begin 
				initial_state <= 1'b0;
			end
		end	
endmodule
