//This file contains a testbench intended to reasonably represent top-level module instantiations

`timescale 1 ns / 1 ns

module top_testbench
	#(parameter CLOCK_CYCLE = 400);

    // Inputs
	reg tenmegclock, mode_button, load_default_button;
	reg topleft_button, topright_button, bottomleft_button, bottomright_button;
	
    // Outputs
	wire [1:0] SMstate; //2-bit state vector
	wire debounce_pulse; //2.5MHz clock divided by 2^8 - 100us period
	wire slow_pulse; //2.5MHz clock divided by 2^21 - 3.4s period
	wire fast_pulse; //2.5MHz clock divided by 2^18 - 420ms period
	wire pump, probe, MW, sample; //outputs from POPtimers module
	reg LED_output, pump_output, probe_output, MW_output, sample_output; //signals feeding output pins
	wire debug_0, debug_1, debug_2; //debug pins
	
	// internals
	wire clk_2M5; //2.5MHz clock
	wire clk_debug; //debug clock - either 2.5MHz, 10MHz, or 38MHz depending on clocks.v file
	wire SEDSTDBY; // PLL SED standby output for simulation
	reg sampled_modebutton, load_defaults, pieovertwo_plus, freeprecess_plus, pieovertwo_minus, freeprecess_minus; //buttons as samped once per 100us

	clocks clocks (.clk_10M_ref(tenmegclock), .clk_2M5(clk_2M5), .clk_debug(clk_debug), .SEDSTDBY());
	POPtimers POPtimers (.clk_2M5(clk_2M5), .load_defaults(load_defaults), .pieovertwo_plus(pieovertwo_plus), .freeprecess_plus(freeprecess_plus), .pieovertwo_minus(pieovertwo_minus), .freeprecess_minus(freeprecess_minus), .pump(pump), .probe(probe), .MW(MW), .sample(sample)); 
	slow_clock_pulse slowclocks (.clk(clk_2M5), .debounce_pulse(debounce_pulse), .fast_pulse(fast_pulse), .slow_pulse(slow_pulse));
	quad_state_machine statemachine (.clk(sampled_modebutton), .state(SMstate));
	
	always@(posedge debounce_pulse) //polls buttons once every 100us, inverting the logic
		begin
			sampled_modebutton <= !mode_button; //mode button, inverting the logic
			load_defaults <= !load_default_button; //load default button, inverting the logic
			pieovertwo_plus <= !topleft_button; //TL button assigned to pieovertwo_plus, inverted logic
			freeprecess_plus <= !topright_button; //TR button assigned to freeprecess_plus, inverted logic
			pieovertwo_minus <= !bottomleft_button; //BL button assigned to pieovertwo_minus, inverted logic
			freeprecess_minus <= !bottomright_button; //BR button assigned to freeprecess_minus, inverted logic
		end
	
	//States
	//0. Laser frequency setup. probe and sample outputs high. Slow LED flash
	//1. POP cycle. signals controlled by POPtimers module. LED on
	//2. Dark. sample output high. Fast LED flash
	//3. Pump beam calibration. pump output high. LED off

	//Signals from POPtimers module are updated on the negative clock edge
	//The following combinatorial logic is synchronised to a positive clock edge
	always@(posedge clk_2M5) 
	begin
		if (SMstate == 0) begin //0. Laser frequency setup
			LED_output <= slow_pulse;
			pump_output <= 1'b0;
			probe_output <= 1'b1;
			MW_output <= 1'b0;
			sample_output <= 1'b1;
			end
		else if (SMstate == 1) begin //1. POP cycle
			LED_output <= 1'b1;
			pump_output <= pump;
			probe_output <= probe;
			MW_output <= MW;
			sample_output <= sample;
			end
		else if (SMstate == 2) begin //2. Dark
			LED_output <= fast_pulse;
			pump_output <= 1'b0;
			probe_output <= 1'b0;
			MW_output <= 1'b0;
			sample_output <= 1'b1;
			end
		else begin //SMstate == 3. Pump beam calibration
			LED_output <= 1'b0;
			pump_output <= 1'b1;
			probe_output <= 1'b0;
			MW_output <= 1'b0;
			sample_output <= 1'b0;
			end
	end

	initial begin
		mode_button = 1'b1;
		topleft_button = 1'b1;
		topright_button = 1'b1;
		bottomleft_button = 1'b1;
		bottomright_button = 1'b1;
		load_default_button = 1'b1;
	end

	initial begin
		#(300*CLOCK_CYCLE) mode_button = 1'b0;
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(300*CLOCK_CYCLE) load_default_button = 1'b0;
		#(300*CLOCK_CYCLE) load_default_button = 1'b1;
		#(30000*CLOCK_CYCLE) topleft_button = 1'b0;
		#(300*CLOCK_CYCLE) topleft_button = 1'b1;
		#(300*CLOCK_CYCLE) topleft_button = 1'b0;
		#(300*CLOCK_CYCLE) topleft_button = 1'b1;
		#(300*CLOCK_CYCLE) bottomright_button = 1'b0;
		#(300*CLOCK_CYCLE) bottomright_button = 1'b1;
		#(50000*CLOCK_CYCLE) mode_button = 1'b0;
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(300*CLOCK_CYCLE) mode_button = 1'b0;
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(300*CLOCK_CYCLE) $finish;
	end
	
endmodule