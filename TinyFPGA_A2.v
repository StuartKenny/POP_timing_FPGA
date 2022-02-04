module TinyFPGA_A2 (
	//inout pin1, //LED indicator
	output reg LED_output, //high for LED on	
	inout mode_button, //state select button - push to ground
	inout pin3_sn,
	inout load_default_button, //load defaults button - push to ground
	inout pin5,
	inout tenmegclock, //10MHz clock input
	inout topleft_button, //load defaults button - push to ground
	inout topright_button, //load defaults button - push to ground
	inout pin9_jtgnb,
	inout bottomleft_button, //load defaults button - push to ground
	inout bottomright_button, //load defaults button - push to ground
	//inout pin12_tdo,
	//inout pin13_tdi,
	//inout pin14_tck,
	//inout pin15_tms,
	inout pin16,
	inout pin17,
	inout pin18_cs,
	output reg pump_output, //pump
	output reg probe_output, //probe - check timing
	output reg MW_output, //MW
	output reg sample_output //sample - check timing
);

	//wire OscTenMegOut; //10MHz output from onboard oscillator
	wire CLKOP; //2.5MHz clock
	wire SEDSTDBY; // PLL SED standby output for simulation
	wire slow_pulse; //2.5MHz clock divided by 2^21 - 3.4s period
	wire fast_pulse; //2.5MHz clock divided by 2^18 - 420ms period
	wire debounce_pulse; //2.5MHz clock divided by 2^8 - 100us period
	reg sampled_modebutton, load_defaults, pieovertwo_plus, freeprecess_plus, pieovertwo_minus, freeprecess_minus; //buttons as samped once per 100us
	wire [1:0] SMstate; //2-bit state vector
	wire initial_state; //high when first powered up - to enable loading of defaults
	wire pump, probe, MW, sample; //outputs from POPtimers module
	
	// tristate the unused pins
	//assign pin1 = 1'bz;
	//assign pin2 = 1'bz;
	assign pin3_sn = 1'bz;
	//assign pin4_mosi = 1'bz;
	assign pin5 = 1'bz;
	assign pin6 = 1'bz; //reserved for 10MHz input
	//assign pin7_done = 1'bz;
	//assign pin8_pgmn = 1'bz;
	assign pin9_jtgnb = 1'bz;
	//assign pin10_sda = 1'bz;
	//assign pin11_scl = 1'bz;
  	//assign pin12_tdo = 1'bz;
	//assign pin13_tdi = 1'bz;
	//assign pin14_tck = 1'bz;
	//assign pin15_tms = 1'bz;
	assign pin16 = 1'bz;
	assign pin17 = 1'bz;
	assign pin18_cs = 1'bz;
	//assign pin19_sclk = 1'bz;
	//assign pin20_miso = 1'bz;
	//assign pin21 = 1'bz;
	//assign pin22 = 1'bz;

	//internal oscillator set to (closest setting to) 2.5MHz
	//OSCH OSCinst0 (.STDBY(1'b0), .OSC(CLKOP), .SEDSTDBY(SEDSTDBY));
	//defparam OSCinst0.NOM_FREQ = "2.46";
	
	//internal oscillator set to (closest setting to) 10MHz
	OSCH OSCinst0 (.STDBY(1'b0), .OSC(OscTenMegOut), .SEDSTDBY(SEDSTDBY));
	defparam OSCinst0.NOM_FREQ = "9.85";
	
	//PLL divides input 10MHz by 4
	Div4PLL PLL (.CLKI(OscTenMegOut), .CLKOP(CLKOP)); 

	//POPtimers POPtimers (.reset(1'b0), .clock_2_5M(CLKOP), .pump(pump), .probe(probe), .MW(MW), .sample(sample)); 
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

endmodule
