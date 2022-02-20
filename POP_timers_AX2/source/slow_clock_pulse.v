//Divides an input clock by 2^20 and 2^23
//2.5MHz input provides outputs with 420ms and 3.4s periods

module slow_clock_pulse
	(	clk,
		fast_pulse, //single bit output
		slow_pulse //single bit output
		);

  input clk;
  output reg fast_pulse, slow_pulse;

	reg [22:0] count = 22'b0;

	always@(*)begin
		fast_pulse <= count[19];
		slow_pulse <= count[22];
	end

	always@(posedge clk)
	begin
		count <= count + 1'b1;
	end
 endmodule

//cycles through 4 states, starting with state_0
//state_x line is high when in that state
 module quad_state_machine
	(	clk,
		state, //2 bit vector
 		state_0, //single wire decoded output
		state_1,
		state_2,
		state_3
		);

	input clk;
	output reg state_0, state_1, state_2, state_3;
	output reg [1:0] state = 2'b00;

	always@(*)
		begin
			state_0 <= !state[1]&!state[0];
			state_1 <= !state[1]&state[0];
			state_2 <= state[1]&!state[0];
			state_3 <= state[1]&state[0];
		end

 	always@(negedge clk) //button is active low, so state changes on negative edge
 		begin
 			state <= state + 1'b1;
 		end
endmodule
