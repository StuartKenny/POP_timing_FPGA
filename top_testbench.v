//This file contains a testbench intended to reasonably represent top-level module instantiations

`timescale 1 ns / 1 ns

module top_testbench
	#(parameter CLOCK_CYCLE = 400);

    // Inputs
	reg tenmegclock, mode_button;

    // Outputs
	wire [1:0] SMstate; //2-bit state vector
	wire debounce_pulse; //2.5MHz clock divided by 2^8 - 100us period
	wire slow_pulse; //2.5MHz clock divided by 2^21 - 3.4s period
	wire fast_pulse; //2.5MHz clock divided by 2^18 - 420ms period
	wire pump, probe, MW, sample; //outputs from POPtimers module
	//wire SMstate_0, SMstate_1, SMstate_2, SMstate_3; //high for active state
	reg LED_output, pump_output, probe_output, MW_output, sample_output; //signals feeding output pins
	
	// internals
	wire CLKOP; //2.5MHz clock
	wire TenMeg_clk; //10MHz output from onboard oscillator
	wire SEDSTDBY; // PLL SED standby output for simulation
	reg sampled_pushbutton; //the button as samped once per 100us

	//internal oscillator set to (closest setting to) 2.5MHz
	OSCH OSCinst0 (.STDBY(1'b0), .OSC(CLKOP), .SEDSTDBY(SEDSTDBY));
	defparam OSCinst0.NOM_FREQ = "2.46";

	POPtimers POPtimers (.reset(1'b0), .clock_2_5M(CLKOP), .pump(pump), .probe(probe), .MW(MW), .sample(sample)); 
	slow_clock_pulse slowclocks (.clk(CLKOP), .debounce_pulse(debounce_pulse), .fast_pulse(fast_pulse), .slow_pulse(slow_pulse));
	quad_state_machine statemachine (.clk(sampled_pushbutton), .state(SMstate));
	//quad_state_machine statemachine (.clk(sampled_pushbutton), .state(SMstate), .state_0(SMstate_0), .state_1(SMstate_1), .state_2(SMstate_2), .state_3(SMstate_3));
	
	always@(posedge debounce_pulse)
		begin
			sampled_pushbutton <= !mode_button; //polls the button once every 100us, inverting the logic
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