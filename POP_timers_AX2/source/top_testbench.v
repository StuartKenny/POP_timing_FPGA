//This file contains a testbench intended to reasonably represent top-level module instantiations

`timescale 1 ns / 1 ns

module top_testbench
	#(parameter CLOCK_CYCLE = 100);

    // Inputs
	reg tenmegclock, mode_button, load_default_button;
	reg topleft_button, topright_button, bottomleft_button, bottomright_button;
	reg MW_invalid, laser_tuning;
	
    // Outputs
	//wire [1:0] quad_SMstate; //2-bit state vector
	//wire [2:0] five_SMstate; //3-bit state vector
	wire [2:0] SMstate; //3-bit state vector for 'regular' 7-state machine
	wire debounce_pulse; //2.5MHz clock divided by 2^8 - 100us period
	wire slow_pulse; //2.5MHz clock divided by 2^21 - 3.4s period
	wire medium_pulse; //2.5MHz clock divided by 2^20 - 1.7s period
	wire fast_pulse; //2.5MHz clock divided by 2^18 - 420ms period
	wire pump, probe, MW, sample; //outputs from POPtimers module
	reg LED_output, pump_output, probe_output, MW_output, sample_output; //signals feeding output pins
	reg ADC_sample; //pin17, STM32 ADC sample on rising edge
	
	// internals
	wire clk_2M5; //2.5MHz clock
	wire clk_debug; //debug clock - either 2.5MHz, 10MHz, or 38MHz depending on clocks.v file
	wire SEDSTDBY; // PLL SED standby output for simulation
	reg sampled_modebutton, load_defaults, pieovertwo_plus, freeprecess_plus, pieovertwo_minus, freeprecess_minus; //buttons as samped once per 100us
	wire reset_timers; //will zero counter when high

	clocks clocks (.clk_10M_ref(tenmegclock), .clk_2M5(clk_2M5), .clk_debug(clk_debug), .SEDSTDBY());
	POPtimers POPtimers (.clk_2M5(clk_2M5), .reset(reset_timers), .load_defaults(load_defaults), .pieovertwo_plus(pieovertwo_plus), .freeprecess_plus(freeprecess_plus), .pieovertwo_minus(pieovertwo_minus), .freeprecess_minus(freeprecess_minus), .pump(pump), .probe(probe), .MW(MW), .sample(sample)); 
	slow_clock_pulse slowclocks (.clk(clk_2M5), .debounce_pulse(debounce_pulse), .fast_pulse(fast_pulse), .medium_pulse(medium_pulse), .slow_pulse(slow_pulse));
	n_state_machine statemachine (.clk(sampled_modebutton), .state(SMstate));
	//quad_state_machine quad_statemachine (.clk(sampled_modebutton), .state(quad_SMstate));
	//five_state_machine five_statemachine (.clk(sampled_modebutton), .state(five_SMstate));
	
	//POP count to be restarted on falling edge of MW_invalid signal
	assign reset_timers = !MW_invalid;

	//The following combinatorial logic is synchronised to a positive clock edge
	always@(posedge clk_2M5) 
	begin
		ADC_sample <= sample&!MW_invalid; //suppress ADC trigger pulse when MW_invalid is high
	end

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
	//0. Default state after power on. POP or laser frequency setup dependent on laser_tuning input. LED reflects laser_tuning input
	//1. Laser frequency setup. probe and sample outputs high. Slow LED flash
	//2. POP cycle. signals controlled by POPtimers module. LED on
	//3. Dark. sample output high. Fast LED flash
	//4. Pump beam calibration. pump output high. LED off
	//5. DR. probe, sample, and MW outputs high. LED four quick flashes then pause
	//6. Probe with pulsing MW. probe and sample high. Pulsing MW. 3 fast & 1 slow LED pulses.
	//7. POP with sample bypass. sample high. pump, probe and MW controller by POPtimers module. LED two quick flashes then pause
	
	//Signals from POPtimers module are updated on the negative clock edge
	//The following combinatorial logic is synchronised to a positive clock edge
	always@(posedge clk_2M5) 
	begin
		if (SMstate == 0) begin //0. POP / Laser frequency setup dependent on laser_tuning input
			LED_output <= laser_tuning;
			pump_output <= pump&!laser_tuning;
			probe_output <= probe|laser_tuning;
			MW_output <= MW&!laser_tuning;
			sample_output <= sample;
			end
		else if (SMstate == 1) begin //1. Laser frequency setup
			LED_output <= slow_pulse;
			pump_output <= 1'b0;
			probe_output <= 1'b1;
			MW_output <= 1'b0;
			sample_output <= 1'b1;
			end
		else if (SMstate == 2) begin //2. POP cycle
			LED_output <= 1'b1;
			pump_output <= pump;
			probe_output <= probe;
			MW_output <= MW;
			sample_output <= sample;
			end
		else if (SMstate == 3) begin //3. Dark
			LED_output <= fast_pulse;
			pump_output <= 1'b0;
			probe_output <= 1'b0;
			MW_output <= 1'b0;
			sample_output <= 1'b1;
			end
		else if (SMstate == 4) begin //4. Pump beam calibration
			LED_output <= 1'b0;
			pump_output <= 1'b1;
			probe_output <= 1'b0;
			MW_output <= 1'b0;
			sample_output <= 1'b0;
			end
		else if (SMstate == 5) begin //SMstate == 5. Double resonance
			LED_output <= slow_pulse&fast_pulse;
			pump_output <= 1'b0;
			probe_output <= 1'b1;
			MW_output <= 1'b1;
			sample_output <= 1'b1;
			end
		else if (SMstate == 6) begin //SMstate == 6. Probe with pulsing MW
			LED_output <= slow_pulse|fast_pulse;
			pump_output <= 1'b0;
			probe_output <= 1'b1;
			MW_output <= slow_pulse;
			sample_output <= 1'b1;
			end
		else begin //SMstate == 7. POP with sample bypass
			LED_output <= slow_pulse&medium_pulse&fast_pulse;
			pump_output <= pump;
			probe_output <= probe;
			MW_output <= MW;
			sample_output <= 1'b1;
			end
	end
	
	initial begin
		mode_button = 1'b1;
		topleft_button = 1'b1;
		topright_button = 1'b1;
		bottomleft_button = 1'b1;
		bottomright_button = 1'b1;
		load_default_button = 1'b1;
		MW_invalid = 1'b0;
		laser_tuning = 1'b0;
		tenmegclock = 1'b0;
	end

	// 10MHz clock generation
	always
		#(CLOCK_CYCLE/2.0) tenmegclock = ~tenmegclock;
		
	initial begin
		#(10*CLOCK_CYCLE);
		#(0.3*CLOCK_CYCLE) load_default_button = 1'b0;
		#(10*CLOCK_CYCLE) load_default_button = 1'b1;	
		//Sequence above this point is to make loop reset work in simulation. Appears to work on the bench without needing this twiddling
		#(300*CLOCK_CYCLE) load_default_button = 1'b0;
		#(300*CLOCK_CYCLE) load_default_button = 1'b1;
		#(30000*CLOCK_CYCLE) topleft_button = 1'b0;
		#(300*CLOCK_CYCLE) topleft_button = 1'b1;
		#(300*CLOCK_CYCLE) topleft_button = 1'b0;
		#(300*CLOCK_CYCLE) topleft_button = 1'b1;
		#(300*CLOCK_CYCLE) bottomright_button = 1'b0;
		#(300*CLOCK_CYCLE) bottomright_button = 1'b1;
		#(50000*CLOCK_CYCLE) MW_invalid = 1'b1;
		#(30000*CLOCK_CYCLE) MW_invalid = 1'b0;
		#(300*CLOCK_CYCLE) laser_tuning = 1'b1; //Should switch to CW absorption
		#(300*CLOCK_CYCLE) laser_tuning = 1'b0; //And back to POP
		#(300*CLOCK_CYCLE) mode_button = 1'b0; //Laser frequency setup
		#(300*CLOCK_CYCLE) mode_button = 1'b1; 
		#(300*CLOCK_CYCLE) mode_button = 1'b0; // POP cycle
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(50000*CLOCK_CYCLE) mode_button = 1'b0; //Dark
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(300*CLOCK_CYCLE) mode_button = 1'b0; // Pump beam calibration
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(300*CLOCK_CYCLE) mode_button = 1'b0; // Double resonance
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(300*CLOCK_CYCLE) mode_button = 1'b0; // Probe w pulsing MW
		#(300*CLOCK_CYCLE) mode_button = 1'b1;
		#(10000*CLOCK_CYCLE) $finish;
	end
	
		//States
	//0. Default state: POP cycle or frequency setup depending on laser_tuning input. Slow LED flash
	//1. Laser frequency setup. probe and sample outputs high. LED two quick flashes then pause
	//2. POP cycle. Signals solely controlled by POPtimers module. LED on
	//3. Dark. sample output high. LED off
	//4. Pump beam calibration - pump output high. Fast LED flash
	//5. DR. probe, sample, and MW outputs high. LED four quick flashes then pause
	//6. Probe with pulsing MW. probe and sample high. Pulsing MW. 3 fast & 1 slow LED pulses.
endmodule