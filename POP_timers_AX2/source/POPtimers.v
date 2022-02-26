module POPtimers 
	#(parameter WIDTH=16,
	Up=1'b1,
	parameter [WIDTH-1:0] PumpPulse=1000, //400us
	PieOverTwo=1000, //400us
	FreePrecession=7500, //3ms
	ProbePulse=375, //150us
	SampleDelay=0, 
	SampleLength=125, //50us
	LaserMWgap=125, //50us
	PostCycle=500 //200us - at least 500 to prevent premature counter reset
	)(clk_2M5, //2.5MHz clock
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
	
	input load_defaults, clk_2M5, pieovertwo_plus, freeprecess_plus, pieovertwo_minus, freeprecess_minus;
	output reg pump, probe, MW, sample; //outputs also defined as registers to allow assignment
	wire [WIDTH-1:0] count, AdjustablePieOverTwo, AdjustableFreePrecession;
	reg [WIDTH-1:0] gatedcount;
	reg counterreset; //for reseting the main counter once it has reached the 'Resetandrepeat' value
	wire pumpstarted, pumpstopped, pi1started, pi1stopped, pi2started, pi2stopped, probestarted, probestopped, samplestarted, samplestopped, loop;

	//POP events with counter values for comparator	//wire [WIDTH-1:0] Startofpumppulse = 16'b0;
	wire [WIDTH-1:0] Endofpumppulse = PumpPulse;
	wire [WIDTH-1:0] Startof1stMWpulse = Endofpumppulse+LaserMWgap;
	//wire [WIDTH-1:0] Endof1stMWpulse = Startof1stMWpulse+PieOverTwo;
	//wire [WIDTH-1:0] Startof2ndMWpulse = Endof1stMWpulse+FreePrecession;
	//wire [WIDTH-1:0] Endof2ndMWpulse = Startof2ndMWpulse+PieOverTwo;
	wire [WIDTH-1:0] Endof1stMWpulse = Startof1stMWpulse+AdjustablePieOverTwo;
	wire [WIDTH-1:0] Startof2ndMWpulse = Endof1stMWpulse+AdjustableFreePrecession;
	wire [WIDTH-1:0] Endof2ndMWpulse = Startof2ndMWpulse+AdjustablePieOverTwo;
	wire [WIDTH-1:0] Startofprobepulse = Endof2ndMWpulse+LaserMWgap;
	wire [WIDTH-1:0] Startopticalsample = Startofprobepulse+SampleDelay;
	wire [WIDTH-1:0] Endofopticalsample = Startopticalsample+SampleLength;
	wire [WIDTH-1:0] Endofprobepulse = Startofprobepulse+ProbePulse;
	wire [WIDTH-1:0] Resetandrepeat = Endofprobepulse+PostCycle; 
	
	count_n systemcounter (.clk(clk_2M5), .direction(Up), .reset(counterreset), .count(count)); 
	comparator pump1 (.a(gatedcount), .b(16'b0), .a_gteq_b(pumpstarted), .a_lt_b());
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
	countupdownpreload piecounter (.clk_2M5(clk_2M5), .clk_up(pieovertwo_plus), .clk_dn(pieovertwo_minus), .reset(load_defaults), .preload(PieOverTwo), .increment(16'd25), .count(AdjustablePieOverTwo));
	countupdownpreload freepcounter (.clk_2M5(clk_2M5), .clk_up(freeprecess_plus), .clk_dn(freeprecess_minus), .reset(load_defaults), .preload(FreePrecession), .increment(16'd200), .count(AdjustableFreePrecession));
		 	
	always@(*) begin 
		// reset line is updated immediately
		// Counter should be forced to zero for as long as the load_defaults input is high,
		// or for one cycle when it reaches the 'resetandrepeat' value
		counterreset <= load_defaults|loop;
	end
	
	//counter updates on a positive clock edge
	//comparators are updated on the negative clock edge for stability 
	always@(negedge clk_2M5) begin
		gatedcount <= count; 
	end
	
	//logical outputs updated immediately - to be synchronised to positive clock edge at top-level
	always@(*) begin 
		pump <= pumpstarted & !pumpstopped;
		MW <= (pi1started & !pi1stopped)|(pi2started & !pi2stopped);
		probe <= probestarted & !probestopped;
		sample <= samplestarted & !samplestopped;
	end
	
endmodule