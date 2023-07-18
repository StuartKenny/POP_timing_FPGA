//Divides an input clock by 2^8, 2^20 and 2^23
//2.5MHz input provides outputs with 100us, 420ms, 1.7s and 3.4s periods

module slow_clock_pulse
	(	clk,
		debounce_pulse, //single bit output
		fast_pulse, //single bit output
		medium_pulse, //single bit output
		slow_pulse //single bit output
		);

  input clk;
  output reg debounce_pulse, fast_pulse, medium_pulse, slow_pulse;

	reg [22:0] count = 22'b0;

	always@(*)begin
		debounce_pulse <= count[7];
		fast_pulse <= count[19];
		medium_pulse <= count[21];
		slow_pulse <= count[22];
	end

	always@(posedge clk)
	begin
		count <= count + 1'b1;
	end
 endmodule

//cycles through up-to-8 states, starting with state_0
 module n_state_machine
	#(parameter STATES=8
	)(	clk,
		state //3 bit vector
		);

	input clk;
	output reg [2:0] state = 3'b00;

 	always@(posedge clk) //state changes on button press
 		begin
			if (state >= STATES-1) state <=0;
			else state <= state + 1'b1;
 		end
		
endmodule