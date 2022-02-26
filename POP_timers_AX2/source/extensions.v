
module countupdownpreload
	#(	parameter WIDTH=16)
	(	clk_2M5, 
		clk_up,
		clk_dn,
		reset,
		preload, //WIDTH-bit initialisation value
		increment, //WIDTH-bit value of increment/decrement
		count // WIDTH-bit counter output
		);

	input clk_2M5, clk_up, clk_dn, reset; //wires
	input [WIDTH-1:0] preload, increment;
	output reg [WIDTH-1:0] count; //count is initialised with preload value
	
	wire trigger; //single 400ns pulse to feed increment/decrement/reset block

	single_period_pulse clean_trigger (.in(clk_up|clk_dn|reset), .clk(clk_2M5), .out(trigger));

	//always@(posedge clk_up or posedge clk_dn or posedge reset)
	always@(posedge trigger)
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

//turns a multi-cycle trigger into a single-period positive clock pulse
module single_period_pulse
	(	in, //pushbutton input
		clk, //clock used for sampling
		out //de-bounced button output
		);
	
	input in, clk;
	output out;
	
	wire Q0, Q1, Q1bar; //
	
	d_flip_flop stage0_ff (.D(in), .clk(clk), .Q(Q0)); //stage 0
	d_flip_flop stage1_ff (.D(Q0), .clk(clk), .Q(Q1)); //stage 1
	
	assign Q1bar = ~Q1;
	assign out = Q0 & Q1bar;
	
endmodule

//D-type flip flop
module d_flip_flop
	(	D, //input
		clk, 
		Q //output
		);
	
	input D, clk;
	output reg Q;
	
	always@(posedge clk) begin
		Q <= D;
	end
endmodule