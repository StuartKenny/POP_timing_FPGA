module POPtimers 
	#(parameter WIDTH=16,
	Up=1'b1,
	parameter [WIDTH-1:0] ResetPumpgap=10, //4탎 before asserting pump
	PumpPulse=2000, //800탎
	PieOverTwo=795, //318탎
	FreePrecession=6900, //2.76ms
	//FreePrecession=10000, //4ms
	ProbePulse=2500, //1ms
	SampleDelay=2000, //800탎
	SampleLength=50, //20탎
	LaserMWgap=10, //4탎
	PostCycle=40000 //prevent reduction of 16-bit counter
	)(clk_2M5, //2.5MHz clock
	reset, //level-sensitive input, 1 to reset 
	load_defaults, //input, 1 to reset
	pieovertwo_plus, //sampled button input
	freeprecess_plus, //sampled button input
	pieovertwo_minus, //sampled button input
	freeprecess_minus, //sampled button input
	pump, //output
	probe, //output 
	MW, //output
	sample //output
	);
	
	input clk_2M5, reset, load_defaults, pieovertwo_plus, freeprecess_plus, pieovertwo_minus, freeprecess_minus;
	output pump, probe, MW, sample;
	wire [WIDTH-1:0] count, AdjustablePieOverTwo, AdjustableFreePrecession;
	reg [WIDTH-1:0] gatedcount; 
	wire counterreset; //for reseting the main counter once it has reached the 'Resetandrepeat' value
	wire pumpstarted, pumpstopped, pi1started, pi1stopped, pi2started, pi2stopped, probestarted, probestopped, samplestarted, samplestopped, loop;

	//POP events with counter values for comparator	//wire [WIDTH-1:0] Startofpumppulse = 16'd10;
	wire [WIDTH-1:0] Startofpumppulse = ResetPumpgap; 
	wire [WIDTH-1:0] Endofpumppulse = Startofpumppulse+PumpPulse; 
	wire [WIDTH-1:0] Startof1stMWpulse = Endofpumppulse+LaserMWgap; 
	wire [WIDTH-1:0] Endof1stMWpulse = Startof1stMWpulse+AdjustablePieOverTwo; /* synthesis syn_keep = 1 */ ; // prevents synthesis from optimising away
	wire [WIDTH-1:0] Startof2ndMWpulse = Endof1stMWpulse+AdjustableFreePrecession; /* synthesis syn_keep = 1 */ ; // prevents synthesis from optimising away
	wire [WIDTH-1:0] Endof2ndMWpulse = Startof2ndMWpulse+AdjustablePieOverTwo; /* synthesis syn_keep = 1 */ ; // prevents synthesis from optimising away
	wire [WIDTH-1:0] Startofprobepulse = Endof2ndMWpulse+LaserMWgap; /* synthesis syn_keep = 1 */ ; // prevents synthesis from optimising away
	wire [WIDTH-1:0] Startopticalsample = Startofprobepulse+SampleDelay; /* synthesis syn_keep = 1 */ ; // prevents synthesis from optimising away
	wire [WIDTH-1:0] Endofopticalsample = Startopticalsample+SampleLength; /* synthesis syn_keep = 1 */ ; // prevents synthesis from optimising away
	wire [WIDTH-1:0] Endofprobepulse = Startofprobepulse+ProbePulse; /* synthesis syn_keep = 1 */ ; // prevents synthesis from optimising away
	wire [WIDTH-1:0] Resetandrepeat = Endofprobepulse+PostCycle; /* synthesis syn_keep = 1 */ ; // prevents synthesis from optimising away
	
	//wire [WIDTH-1:0] Endof1stMWpulse = Startof1stMWpulse+PieOverTwo;
	//wire [WIDTH-1:0] Startof2ndMWpulse = Endof1stMWpulse+FreePrecession;
	//wire [WIDTH-1:0] Endof2ndMWpulse = Startof2ndMWpulse+PieOverTwo;

	count_n systemcounter (.clk(clk_2M5), .direction(Up), .reset(counterreset), .count(count)); 
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
	//comparator loopcounter (.a(gatedcount), .b(16'd20000), .a_gteq_b(loop), .a_lt_b()); 	
	countupdownpreload piecounter (.clk_2M5(clk_2M5), .clk_up(pieovertwo_plus), .clk_dn(pieovertwo_minus), .reset(load_defaults), .preload(PieOverTwo), .increment(16'd10), .count(AdjustablePieOverTwo));
	countupdownpreload freepcounter (.clk_2M5(clk_2M5), .clk_up(freeprecess_plus), .clk_dn(freeprecess_minus), .reset(load_defaults), .preload(FreePrecession), .increment(16'd100), .count(AdjustableFreePrecession));
		 	
	assign counterreset = load_defaults|loop|reset;
	
	//counter updates on a positive clock edge
	//comparators are asynchronous but outputs are gated on the negative clock edge
	//'loop' counter reset is therefore also gated on the falling clock edge
	always@(negedge clk_2M5) begin
		gatedcount <= count; 
	end
			
	//logical outputs to be synchronised to positive clock edge at top-level	
	assign pump = pumpstarted & !pumpstopped;
	assign MW = (pi1started & !pi1stopped)|(pi2started & !pi2stopped);
	assign probe = probestarted & !probestopped;
	assign sample = samplestarted & !samplestopped;
	
endmodule