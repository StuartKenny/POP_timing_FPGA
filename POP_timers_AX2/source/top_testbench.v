//This file contains a testbench intended to reasonably represent top-level module instantiations

`timescale 1 ns / 1 ns

module top_testbench
	#(parameter CLOCK_CYCLE = 400);

    // Inputs
	reg tenmegclock, mode_button, load_default_button;
	reg topleft_button, topright_button, bottomleft_button, bottomright_button;
	
    // Outputs
	wire [1:0] SMstate; //2-bit state vector
	wire initial_state; //high when first powered up - to enable loading of defaults
	wire debounce_pulse; //2.5MHz clock divided by 2^8 - 100us period
	wire slow_pulse; //2.5MHz clock divided by 2^21 - 3.4s period
	wire fast_pulse; //2.5MHz clock divided by 2^18 - 420ms period
	wire pump, probe, MW, sample; //outputs from POPtimers module
	reg LED_output, pump_output, probe_output, MW_output, sample_output; //signals feeding output pins
	
	// internals
	wire CLKOP; //2.5MHz clock
	wire TenMeg_clk; //10MHz output from onboard oscillator
	wire SEDSTDBY; // PLL SED standby output for simulation
	reg sampled_modebutton, load_defaults, pieovertwo_plus, freeprecess_plus, pieovertwo_minus, freeprecess_minus; //buttons as samped once per 100us

	//internal oscillator set to (closest setting to) 10MHz
	OSCH OSCinst0 (.STDBY(1'b0), .OSC(OscTenMegOut), .SEDSTDBY(SEDSTDBY));
	defparam OSCinst0.NOM_FREQ = "9.85";
	
	//PLL divides input 10MHz by 4
	DIV4PLL PLL (.CLKI(OscTenMegOut), .CLKOP(CLKOP), .LOCK()); 

	POPtimers POPtimers (.load_defaults(load_defaults|initial_state), .clock_2_5M(CLKOP), .pieovertwo_plus(pieovertwo_plus), .freeprecess_plus(freeprecess_plus), .pieovertwo_minus(pieovertwo_minus), .freeprecess_minus(freeprecess_minus), .pump(pump), .probe(probe), .MW(MW), .sample(sample)); 
	slow_clock_pulse slowclocks (.clk(CLKOP), .debounce_pulse(debounce_pulse), .fast_pulse(fast_pulse), .slow_pulse(slow_pulse));
	quad_state_machine statemachine (.clk(sampled_modebutton), .state(SMstate), .initial_state(initial_state));
	
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
	always@(posedge CLKOP) 
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
		#(50000*CLOCK_CYCLE) mode_button = 1'b0;
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(300*CLOCK_CYCLE) mode_button = 1'b0;
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(300*CLOCK_CYCLE) $finish;
	end
	
endmodule