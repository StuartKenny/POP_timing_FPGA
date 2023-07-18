module TinyFPGA_A2 (
	//inout pin1, //LED indicator
	output reg LED_output, //pin 1, high for LED on	
	input mode_button, //pin 2, state select button - push to ground
	inout pin3_sn,
	input load_default_button, //pin 4, load defaults button - push to ground
	inout pin5, //pin 5, currently soldered to ground
	input tenmegclock, //pin 6, 10MHz clock input
	input topleft_button, //pin 7, load defaults button - push to ground
	input topright_button, //pin 8, load defaults button - push to ground
	inout pin9_jtgnb,
	input bottomleft_button, //pin 10, load defaults button - push to ground
	input bottomright_button, //pin 11, load defaults button - push to ground
	//inout pin12_tdo,
	//inout pin13_tdi,
	//inout pin14_tck,
	//inout pin15_tms,
	//inout pin16,
	//inout pin17,
	//inout pin18_cs,
	input MW_invalid, //pin16, STM32 request to suppress activity on ADC sample
	output reg ADC_sample, //pin17, STM32 ADC sample on rising edge 
	input laser_tuning, //pin18, STM32 request to perform laser frequency setup
	output reg pump_output, //pin 19
	output reg probe_output, //pin 20
	output reg MW_output, //pin 21
	output reg sample_output //pin 22
);

	wire clk_2M5; //2.5MHz clock
	wire clk_debug; //debug clock - either 2.5MHz, 10MHz, or 38MHz depending on clocks.v file
	wire SEDSTDBY; // PLL SED standby output for simulation
	wire slow_pulse; //2.5MHz clock divided by 2^21 - 3.4s period
	wire medium_pulse; //2.5MHz clock divided by 2^20 - 1.7s period
	wire fast_pulse; //2.5MHz clock divided by 2^18 - 420ms period
	wire debounce_pulse; //2.5MHz clock divided by 2^8 - 100us period
	reg sampled_modebutton, load_defaults, pieovertwo_plus, freeprecess_plus, pieovertwo_minus, freeprecess_minus; //buttons as samped once per 100us
	wire [2:0] SMstate; //3-bit state vector
	wire pump, probe, MW, sample; //outputs from POPtimers module
	wire reset_timers; //will zero counter when high
	
	// tristate the unused pins
	assign pin3_sn = 1'bz;
	assign pin5 = 1'bz;
	assign pin9_jtgnb = 1'bz;
	
	//Module instantiation
	clocks clocks (.clk_10M_ref(tenmegclock), .clk_2M5(clk_2M5), .clk_debug(clk_debug), .SEDSTDBY());
	POPtimers POPtimers (.clk_2M5(clk_2M5), .reset(reset_timers), .load_defaults(load_defaults), .pieovertwo_plus(pieovertwo_plus), .freeprecess_plus(freeprecess_plus), .pieovertwo_minus(pieovertwo_minus), .freeprecess_minus(freeprecess_minus), .pump(pump), .probe(probe), .MW(MW), .sample(sample)); 
	slow_clock_pulse slowclocks (.clk(clk_2M5), .debounce_pulse(debounce_pulse), .fast_pulse(fast_pulse), .medium_pulse(medium_pulse), .slow_pulse(slow_pulse));
	n_state_machine statemachine (.clk(sampled_modebutton), .state(SMstate));

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

endmodule
