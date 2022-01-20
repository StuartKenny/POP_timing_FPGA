module POPtimers 
	#(parameter WIDTH=16,
	Up=1'b1,
	parameter [WIDTH-1:0] PumpPulse=1000,
	PieOverTwo=1000,
	FreePrecession=7500,
	ProbePulse=375,
	SampleDelay=0,
	SampleLength=125,
	LaserMWgap=125)(
	reset, //input, 1 to reset
	pump, //output
	probe, //output 
	MW, //output
	sample //output
	);
	
	input reset;
	output reg pump, probe, MW, sample; //outputs also defined as registers to allow assignment

	wire TenMeg_clk; //10MHz output from onboard oscillator
	wire CLKOP; //2.5MHz divided output from PLL
	wire SEDSTDBY; // PLL SED standby output for simulation
	wire [WIDTH-1:0] count;
	reg [WIDTH-1:0] gatedcount;
	reg counterreset; //for reseting the counter once it has reached the 'Resetandrepeat' value
	wire pumpstarted, pumpstopped, pi1started, pi1stopped, pi2started, pi2stopped, probestarted, probestopped, samplestarted, samplestopped, loop;

	//POP events with counter values for comparator	//wire [WIDTH-1:0] Startofpumppulse, Endofpumppulse, Startof1stMWpulse, Endof1stMWpulse, Startof2ndMWpulse, Endof2ndMWpulse, Startofprobepulse, Startopticalsample, Endofopticalsample, Endofprobepulse, Resetandrepeat; 
	wire [WIDTH-1:0] Startofpumppulse = 16'd0;
	wire [WIDTH-1:0] Endofpumppulse = PumpPulse;
	wire [WIDTH-1:0] Startof1stMWpulse = Endofpumppulse+LaserMWgap;
	wire [WIDTH-1:0] Endof1stMWpulse = Startof1stMWpulse+PieOverTwo;
	wire [WIDTH-1:0] Startof2ndMWpulse = Endof1stMWpulse+FreePrecession;
	wire [WIDTH-1:0] Endof2ndMWpulse = Startof2ndMWpulse+PieOverTwo;
	wire [WIDTH-1:0] Startofprobepulse = Endof2ndMWpulse+LaserMWgap;
	wire [WIDTH-1:0] Startopticalsample = Startofprobepulse+SampleDelay;
	wire [WIDTH-1:0] Endofopticalsample = Startopticalsample+SampleLength;
	wire [WIDTH-1:0] Endofprobepulse = Startofprobepulse+ProbePulse;
	wire [WIDTH-1:0] Resetandrepeat = Endofprobepulse+LaserMWgap;
	
	//internal oscillator set to (closest setting to) 10MHz
	OSCH OSCinst0 (.STDBY(1'b0), .OSC(TenMeg_clk), .SEDSTDBY(SEDSTDBY));
	defparam OSCinst0.NOM_FREQ = "9.85";
	
	//PLL divides input 10MHz by 4
	Div4PLL PLL (.CLKI(TenMeg_clk), .CLKOP(CLKOP)); 
	
	count_n systemcounter (.clk(CLKOP), .direction(Up), .reset(counterreset), .count(count)); 
	comparator pump1 (.a(gatedcount), .b(Startofpumppulse), .a_gteq_b(pumpstarted), .a_lt_b());
	comparator pump2 (.a(gatedcount), .b(Endofpumppulse), .a_gteq_b(pumpstopped), .a_lt_b());
	comparator MW1 (.a(gatedcount), .b(Startof1stMWpulse), .a_gteq_b(pi1started), .a_lt_b());
	comparator MW2 (.a(gatedcount), .b(Endof1stMWpulse), .a_gteq_b(pi1stopped), .a_lt_b());
	comparator MW3 (.a(gatedcount), .b(Startof2ndMWpulse), .a_gteq_b(pi2started), .a_lt_b());
	comparator MW4 (.a(gatedcount), .b(Endof2ndMWpulse), .a_gteq_b(pi2stopped), .a_lt_b());
	comparator probe1 (.a(gatedcount), .b(Startofprobepulse), .a_gteq_b(probestarted), .a_lt_b());
	comparator probe2 (.a(gatedcount), .b(Endofprobepulse), .a_gteq_b(probestopped), .a_lt_b());
	comparator sample1 (.a(gatedcount), .b(Startopticalsample), .a_gteq_b(samplestarted), .a_lt_b());
	comparator sample2 (.a(gatedcount), .b(Endofopticalsample), .a_gteq_b(samplestopped), .a_lt_b());
	comparator loopcounter (.a(gatedcount), .b(Resetandrepeat), .a_gteq_b(loop), .a_lt_b()); 	
		
	always@(*) begin 
		// reset line is updated immediately
		// Counter should be forced to zero for as long as the reset input is high,
		// or for one cycle when it reaches the 'resetandrepeat' value
		counterreset <= reset|loop;
	end
	
	always@(negedge CLKOP) begin
		gatedcount <= count; //comparators get updated on the negative clock edge
	end
	
	always@(posedge CLKOP) begin //logical outputs get updated on positive clock edge
		pump <= pumpstarted & !pumpstopped;
		MW <= (pi1started & !pi1stopped)|(pi2started & !pi2stopped);
		probe <= probestarted & !probestopped;
		sample <= samplestarted & !samplestopped;
	end
	
endmodule