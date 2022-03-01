// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Tue Mar 01 12:09:28 2022
//
// Verilog Description of module TinyFPGA_A2
//

module TinyFPGA_A2 (LED_output, mode_button, pin3_sn, load_default_button, 
            pin5, tenmegclock, topleft_button, topright_button, pin9_jtgnb, 
            bottomleft_button, bottomright_button, debug_0, debug_1, 
            debug_2, pump_output, probe_output, MW_output, sample_output) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(1[8:19])
    output LED_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    input mode_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    output pin3_sn /* synthesis .original_dir=IN_OUT */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(5[8:15])
    input load_default_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    output pin5 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(7[8:12])
    input tenmegclock;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    input topleft_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    input topright_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    output pin9_jtgnb /* synthesis .original_dir=IN_OUT */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(11[8:18])
    input bottomleft_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    input bottomright_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    output debug_0;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    output debug_1;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[9:16])
    output debug_2;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[9:16])
    output pump_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    output probe_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    output MW_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    output sample_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    
    wire debug_0_c /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(35[7:21])
    wire sampled_modebutton /* synthesis is_clock=1, SET_AS_NETWORK=sampled_modebutton */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[6:24])
    wire clk_2M5_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    
    wire GND_net, VCC_net, LED_output_c, mode_button_c, load_default_button_c, 
        topleft_button_c, topright_button_c, bottomleft_button_c, bottomright_button_c, 
        debug_2_c, pump_output_c, probe_output_c, MW_output_c, sample_output_c, 
        slow_pulse, fast_pulse, load_defaults, pieovertwo_plus, freeprecess_plus, 
        pieovertwo_minus, freeprecess_minus;
    wire [1:0]SMstate;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[13:20])
    
    wire mode_button_N_18, load_default_button_N_20, topleft_button_N_22, 
        topright_button_N_24, bottomleft_button_N_26, bottomright_button_N_28, 
        LED_output_N_6, pump_output_N_8, probe_output_N_12, sample_output_N_16, 
        LED_output_N_1, probestarted, debug_1_c, n343, n2498;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX load_defaults_49 (.D(load_default_button_N_20), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(74[8] 82[6])
    defparam load_defaults_49.GSR = "ENABLED";
    FD1S3AX pieovertwo_plus_50 (.D(topleft_button_N_22), .CK(debounce_pulse), 
            .Q(pieovertwo_plus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(74[8] 82[6])
    defparam pieovertwo_plus_50.GSR = "ENABLED";
    FD1S3AX freeprecess_plus_51 (.D(topright_button_N_24), .CK(debounce_pulse), 
            .Q(freeprecess_plus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(74[8] 82[6])
    defparam freeprecess_plus_51.GSR = "ENABLED";
    FD1S3AX pieovertwo_minus_52 (.D(bottomleft_button_N_26), .CK(debounce_pulse), 
            .Q(pieovertwo_minus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(74[8] 82[6])
    defparam pieovertwo_minus_52.GSR = "ENABLED";
    FD1S3AX freeprecess_minus_53 (.D(bottomright_button_N_28), .CK(debounce_pulse), 
            .Q(freeprecess_minus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(74[8] 82[6])
    defparam freeprecess_minus_53.GSR = "ENABLED";
    FD1S3AX LED_output_54 (.D(LED_output_N_1), .CK(clk_2M5), .Q(LED_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(92[8] 122[5])
    defparam LED_output_54.GSR = "ENABLED";
    FD1S3JX probe_output_56 (.D(probe_output_N_12), .CK(clk_2M5), .PD(LED_output_N_6), 
            .Q(probe_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(92[8] 122[5])
    defparam probe_output_56.GSR = "ENABLED";
    OB probe_output_pad (.I(probe_output_c), .O(probe_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_22)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(78[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    OB pump_output_pad (.I(pump_output_c), .O(pump_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    FD1S3JX sample_output_58 (.D(sample_output_N_16), .CK(clk_2M5), .PD(LED_output_N_6), 
            .Q(sample_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(92[8] 122[5])
    defparam sample_output_58.GSR = "ENABLED";
    FD1S3AX sampled_modebutton_48 (.D(mode_button_N_18), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(74[8] 82[6])
    defparam sampled_modebutton_48.GSR = "ENABLED";
    OB debug_2_pad (.I(debug_2_c), .O(debug_2));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[9:16])
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_24)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(79[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_4_lut (.A(SMstate[0]), .B(SMstate[1]), .C(n343), .D(probestarted), 
         .Z(probe_output_N_12)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(101[12:24])
    defparam i2_3_lut_4_lut.init = 16'h0200;
    OB debug_1_pad (.I(debug_1_c), .O(debug_1));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[9:16])
    OB debug_0_pad (.I(debug_0_c), .O(debug_0));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(45[9:13])
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(49[9:19])
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(43[9:16])
    LUT4 i551_2_lut (.A(SMstate[0]), .B(SMstate[1]), .Z(LED_output_N_6)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(94[7:19])
    defparam i551_2_lut.init = 16'h1111;
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    OB MW_output_pad (.I(MW_output_c), .O(MW_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    LUT4 SMstate_0__bdd_4_lut (.A(SMstate[0]), .B(slow_pulse), .C(SMstate[1]), 
         .D(fast_pulse), .Z(LED_output_N_1)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam SMstate_0__bdd_4_lut.init = 16'h5e0e;
    LUT4 pump_output_I_2_3_lut_3_lut_4_lut_3_lut (.A(SMstate[0]), .B(SMstate[1]), 
         .C(debug_1_c), .Z(pump_output_N_8)) /* synthesis lut_function=(A (B+(C))+!A !(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(108[12:24])
    defparam pump_output_I_2_3_lut_3_lut_4_lut_3_lut.init = 16'hb9b9;
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_20)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(77[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    FD1S3IX MW_output_57 (.D(debug_2_c), .CK(clk_2M5), .CD(n2498), .Q(MW_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(92[8] 122[5])
    defparam MW_output_57.GSR = "ENABLED";
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(81[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    POPtimers POPtimers (.GND_net(GND_net), .clk_2M5_N_30(clk_2M5_N_30), 
            .debug_2_c(debug_2_c), .load_defaults(load_defaults), .clk_2M5(clk_2M5), 
            .SMstate({SMstate}), .probestarted(probestarted), .sample_output_N_16(sample_output_N_16), 
            .debug_1_c(debug_1_c), .n343(n343), .pieovertwo_minus(pieovertwo_minus), 
            .pieovertwo_plus(pieovertwo_plus), .freeprecess_minus(freeprecess_minus), 
            .freeprecess_plus(freeprecess_plus)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[12:274])
    FD1S3IX pump_output_55 (.D(pump_output_N_8), .CK(clk_2M5), .CD(LED_output_N_6), 
            .Q(pump_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(92[8] 122[5])
    defparam pump_output_55.GSR = "ENABLED";
    LUT4 equal_64_i3_2_lut_rep_17 (.A(SMstate[0]), .B(SMstate[1]), .Z(n2498)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(101[12:24])
    defparam equal_64_i3_2_lut_rep_17.init = 16'hdddd;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_18)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_26)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(80[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    quad_state_machine statemachine (.SMstate({SMstate}), .sampled_modebutton(sampled_modebutton)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(72[21:77])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    clocks clocks (.GND_net(GND_net), .debug_0_c(debug_0_c), .clk_2M5_N_30(clk_2M5_N_30), 
           .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(68[9:98])
    slow_clock_pulse slowclocks (.clk_2M5(clk_2M5), .GND_net(GND_net), .slow_pulse(slow_pulse), 
            .fast_pulse(fast_pulse), .debounce_pulse(debounce_pulse)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(71[19:128])
    OB sample_output_pad (.I(sample_output_c), .O(sample_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    IB mode_button_pad (.I(mode_button), .O(mode_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    IB load_default_button_pad (.I(load_default_button), .O(load_default_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    IB topleft_button_pad (.I(topleft_button), .O(topleft_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    IB topright_button_pad (.I(topright_button), .O(topright_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    IB bottomleft_button_pad (.I(bottomleft_button), .O(bottomleft_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    IB bottomright_button_pad (.I(bottomright_button), .O(bottomright_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    
endmodule
//
// Verilog Description of module POPtimers
//

module POPtimers (GND_net, clk_2M5_N_30, debug_2_c, load_defaults, clk_2M5, 
            SMstate, probestarted, sample_output_N_16, debug_1_c, n343, 
            pieovertwo_minus, pieovertwo_plus, freeprecess_minus, freeprecess_plus) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_2M5_N_30;
    output debug_2_c;
    input load_defaults;
    input clk_2M5;
    input [1:0]SMstate;
    output probestarted;
    output sample_output_N_16;
    output debug_1_c;
    output n343;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input freeprecess_minus;
    input freeprecess_plus;
    
    wire clk_2M5_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n2201;
    wire [15:0]Endofprobepulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[19:34])
    wire [15:0]Resetandrepeat;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[19:33])
    wire [15:0]gatedcount;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire [15:0]count;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[19:24])
    
    wire n2265;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[26:46])
    wire [13:0]n2;
    
    wire n2229;
    wire [13:0]n2_adj_208;
    wire [13:0]n18;
    wire [13:0]n2108;
    
    wire n2230, n2198, n2199;
    wire [13:0]n2_adj_209;
    wire [15:0]AdjustableFreePrecession;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[48:72])
    wire [15:0]Startof2ndMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[19:36])
    
    wire n2237, n2197, n2200, n2291, n2290, n2289, n2288, n2287, 
        n2286, n2238, n2241, n2242, n2264, n2239, n2263, n2240, 
        n2284;
    wire [15:0]Endof2ndMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[19:34])
    
    wire n2283, n2245, n2246, n1915, MW_N_38, n267, n2441, n2282, 
        n2281, n2280, n2279, n2262, n2261, n2260, pi2started, 
        n305, n2259, n2244, n2333;
    wire [13:0]n2_adj_210;
    
    wire n2332, n2331, n2330, loop, counterreset, n2329, n2328;
    wire [15:0]Endofopticalsample;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[19:37])
    
    wire n2327, n2317;
    wire [13:0]n2_adj_211;
    wire [13:0]n18_adj_212;
    wire [15:0]Startopticalsample;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[19:37])
    
    wire n2316, n2315, n2314, n2313, n2312, n2310, n2309, n2308, 
        n2307, n2306, n2305, n2304, n2249, n2250, n2234, n2248, 
        n2233, n2232, n2231, n2247;
    wire [15:0]n1421;
    
    wire n2366, n2367, n2368, n2369, n2370, n2371, n2381, n2382, 
        n2383, n2384, n2385, n2386, n2387, n2388, n2389, n2390, 
        n2391, n2392, n2393, n2394, n2395, n2396, n2397, n2398, 
        n2399, n2400, n2401;
    wire [15:0]Endof1stMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[19:34])
    
    wire n2402, n2403, n2404, n2405, n2406, n2407, n2408, n2410, 
        n2411, n2412, n2413, n2414, n2415, n2444;
    
    CCU2D Endofprobepulse_15__I_0_11 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2201), .S0(Resetandrepeat[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_11.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clk_2M5_N_30), .Q(gatedcount[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    CCU2D add_244_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2265), .S0(n2[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_244_add_1_15.INIT0 = 16'hfaaa;
    defparam add_244_add_1_15.INIT1 = 16'h0000;
    defparam add_244_add_1_15.INJECT1_0 = "NO";
    defparam add_244_add_1_15.INJECT1_1 = "NO";
    CCU2D add_488_4 (.A0(n2_adj_208[2]), .B0(n18[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_208[3]), .B1(n18[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2229), .COUT(n2230), .S0(n2108[2]), .S1(n2108[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_488_4.INIT0 = 16'h5666;
    defparam add_488_4.INIT1 = 16'h5666;
    defparam add_488_4.INJECT1_0 = "NO";
    defparam add_488_4.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_5 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2198), .COUT(n2199), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D add_489_2 (.A0(n2_adj_209[0]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_209[1]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2237), .S1(Startof2ndMWpulse[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_489_2.INIT0 = 16'h7000;
    defparam add_489_2.INIT1 = 16'h5666;
    defparam add_489_2.INJECT1_0 = "NO";
    defparam add_489_2.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_3 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2197), .COUT(n2198), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_9 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2200), .COUT(n2201), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2197), .S1(Resetandrepeat[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clk_2M5_N_30), .Q(gatedcount[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    CCU2D add_231_13 (.A0(n2108[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2108[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2291), .S0(Endofprobepulse[14]), .S1(Endofprobepulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_231_13.INIT0 = 16'h5aaa;
    defparam add_231_13.INIT1 = 16'h5aaa;
    defparam add_231_13.INJECT1_0 = "NO";
    defparam add_231_13.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_7 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2199), .COUT(n2200), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D add_231_11 (.A0(n2108[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2108[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2290), .COUT(n2291), .S0(Endofprobepulse[12]), .S1(Endofprobepulse[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_231_11.INIT0 = 16'h5aaa;
    defparam add_231_11.INIT1 = 16'h5aaa;
    defparam add_231_11.INJECT1_0 = "NO";
    defparam add_231_11.INJECT1_1 = "NO";
    CCU2D add_231_9 (.A0(n2108[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2108[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2289), 
          .COUT(n2290), .S0(Endofprobepulse[10]), .S1(Endofprobepulse[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_231_9.INIT0 = 16'h5aaa;
    defparam add_231_9.INIT1 = 16'h5aaa;
    defparam add_231_9.INJECT1_0 = "NO";
    defparam add_231_9.INJECT1_1 = "NO";
    CCU2D add_231_7 (.A0(n2108[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2108[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2288), 
          .COUT(n2289), .S0(Endofprobepulse[8]), .S1(Endofprobepulse[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_231_7.INIT0 = 16'h5555;
    defparam add_231_7.INIT1 = 16'h5aaa;
    defparam add_231_7.INJECT1_0 = "NO";
    defparam add_231_7.INJECT1_1 = "NO";
    CCU2D add_231_5 (.A0(n2108[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2108[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2287), 
          .COUT(n2288), .S0(Endofprobepulse[6]), .S1(Endofprobepulse[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_231_5.INIT0 = 16'h5555;
    defparam add_231_5.INIT1 = 16'h5aaa;
    defparam add_231_5.INJECT1_0 = "NO";
    defparam add_231_5.INJECT1_1 = "NO";
    CCU2D add_231_3 (.A0(n2108[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2108[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2286), 
          .COUT(n2287), .S0(Resetandrepeat[4]), .S1(Resetandrepeat[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_231_3.INIT0 = 16'h5555;
    defparam add_231_3.INIT1 = 16'h5555;
    defparam add_231_3.INJECT1_0 = "NO";
    defparam add_231_3.INJECT1_1 = "NO";
    CCU2D add_231_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2108[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2286), 
          .S1(Resetandrepeat[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_231_1.INIT0 = 16'hF000;
    defparam add_231_1.INIT1 = 16'h5555;
    defparam add_231_1.INJECT1_0 = "NO";
    defparam add_231_1.INJECT1_1 = "NO";
    CCU2D add_489_4 (.A0(n2_adj_209[2]), .B0(AdjustableFreePrecession[4]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_209[3]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2237), .COUT(n2238), .S0(Startof2ndMWpulse[4]), 
          .S1(Startof2ndMWpulse[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_489_4.INIT0 = 16'h5666;
    defparam add_489_4.INIT1 = 16'h5666;
    defparam add_489_4.INJECT1_0 = "NO";
    defparam add_489_4.INJECT1_1 = "NO";
    CCU2D add_489_12 (.A0(n2_adj_209[10]), .B0(AdjustableFreePrecession[12]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_209[11]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2241), .COUT(n2242), .S0(Startof2ndMWpulse[12]), 
          .S1(Startof2ndMWpulse[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_489_12.INIT0 = 16'h5666;
    defparam add_489_12.INIT1 = 16'h5666;
    defparam add_489_12.INJECT1_0 = "NO";
    defparam add_489_12.INJECT1_1 = "NO";
    CCU2D add_244_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2264), .COUT(n2265), .S0(n2[11]), 
          .S1(n2[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_244_add_1_13.INIT0 = 16'hfaaa;
    defparam add_244_add_1_13.INIT1 = 16'hfaaa;
    defparam add_244_add_1_13.INJECT1_0 = "NO";
    defparam add_244_add_1_13.INJECT1_1 = "NO";
    CCU2D add_489_6 (.A0(n2_adj_209[4]), .B0(AdjustableFreePrecession[6]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_209[5]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2238), .COUT(n2239), .S0(Startof2ndMWpulse[6]), 
          .S1(Startof2ndMWpulse[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_489_6.INIT0 = 16'h5666;
    defparam add_489_6.INIT1 = 16'h5666;
    defparam add_489_6.INJECT1_0 = "NO";
    defparam add_489_6.INJECT1_1 = "NO";
    CCU2D add_244_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2263), .COUT(n2264), .S0(n2[9]), 
          .S1(n2[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_244_add_1_11.INIT0 = 16'hfaaa;
    defparam add_244_add_1_11.INIT1 = 16'hfaaa;
    defparam add_244_add_1_11.INJECT1_0 = "NO";
    defparam add_244_add_1_11.INJECT1_1 = "NO";
    CCU2D add_489_10 (.A0(n2_adj_209[8]), .B0(AdjustableFreePrecession[10]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_209[9]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2240), .COUT(n2241), .S0(Startof2ndMWpulse[10]), 
          .S1(Startof2ndMWpulse[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_489_10.INIT0 = 16'h5666;
    defparam add_489_10.INIT1 = 16'h5666;
    defparam add_489_10.INJECT1_0 = "NO";
    defparam add_489_10.INJECT1_1 = "NO";
    CCU2D add_490_14 (.A0(n2[12]), .B0(AdjustableFreePrecession[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[13]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2284), .S0(Endof2ndMWpulse[14]), 
          .S1(Endof2ndMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_490_14.INIT0 = 16'h5666;
    defparam add_490_14.INIT1 = 16'h5666;
    defparam add_490_14.INJECT1_0 = "NO";
    defparam add_490_14.INJECT1_1 = "NO";
    CCU2D add_490_12 (.A0(n2[10]), .B0(AdjustableFreePrecession[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[11]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2283), .COUT(n2284), .S0(Endof2ndMWpulse[12]), 
          .S1(Endof2ndMWpulse[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_490_12.INIT0 = 16'h5666;
    defparam add_490_12.INIT1 = 16'h5666;
    defparam add_490_12.INJECT1_0 = "NO";
    defparam add_490_12.INJECT1_1 = "NO";
    CCU2D add_233_add_2_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2245), .COUT(n2246), .S0(n18[3]), .S1(n18[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_2_5.INIT0 = 16'h0555;
    defparam add_233_add_2_5.INIT1 = 16'h0555;
    defparam add_233_add_2_5.INJECT1_0 = "NO";
    defparam add_233_add_2_5.INJECT1_1 = "NO";
    LUT4 MW_I_0_4_lut (.A(n1915), .B(MW_N_38), .C(n267), .D(n2441), 
         .Z(debug_2_c)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(108[14:67])
    defparam MW_I_0_4_lut.init = 16'hcfce;
    CCU2D add_490_10 (.A0(n2[8]), .B0(AdjustableFreePrecession[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[9]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2282), .COUT(n2283), .S0(Endof2ndMWpulse[10]), 
          .S1(Endof2ndMWpulse[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_490_10.INIT0 = 16'h5666;
    defparam add_490_10.INIT1 = 16'h5666;
    defparam add_490_10.INJECT1_0 = "NO";
    defparam add_490_10.INJECT1_1 = "NO";
    CCU2D add_490_8 (.A0(n2[6]), .B0(AdjustableFreePrecession[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[7]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2281), .COUT(n2282), .S0(Endof2ndMWpulse[8]), 
          .S1(Endof2ndMWpulse[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_490_8.INIT0 = 16'h5666;
    defparam add_490_8.INIT1 = 16'h5666;
    defparam add_490_8.INJECT1_0 = "NO";
    defparam add_490_8.INJECT1_1 = "NO";
    CCU2D add_490_6 (.A0(n2[4]), .B0(AdjustableFreePrecession[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[5]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2280), .COUT(n2281), .S0(Endof2ndMWpulse[6]), 
          .S1(Endof2ndMWpulse[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_490_6.INIT0 = 16'h5666;
    defparam add_490_6.INIT1 = 16'h5666;
    defparam add_490_6.INJECT1_0 = "NO";
    defparam add_490_6.INJECT1_1 = "NO";
    CCU2D add_490_4 (.A0(n2[2]), .B0(AdjustableFreePrecession[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[3]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2279), .COUT(n2280), .S0(Endof2ndMWpulse[4]), 
          .S1(Endof2ndMWpulse[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_490_4.INIT0 = 16'h5666;
    defparam add_490_4.INIT1 = 16'h5666;
    defparam add_490_4.INJECT1_0 = "NO";
    defparam add_490_4.INJECT1_1 = "NO";
    CCU2D add_490_2 (.A0(n2[0]), .B0(AdjustableFreePrecession[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[1]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2279), .S1(Endof2ndMWpulse[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_490_2.INIT0 = 16'h7000;
    defparam add_490_2.INIT1 = 16'h5666;
    defparam add_490_2.INJECT1_0 = "NO";
    defparam add_490_2.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clk_2M5_N_30), .Q(gatedcount[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    CCU2D add_244_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2262), .COUT(n2263), .S0(n2[7]), .S1(n2[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_244_add_1_9.INIT0 = 16'hfaaa;
    defparam add_244_add_1_9.INIT1 = 16'h0555;
    defparam add_244_add_1_9.INJECT1_0 = "NO";
    defparam add_244_add_1_9.INJECT1_1 = "NO";
    CCU2D add_244_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2261), .COUT(n2262), .S0(n2[5]), .S1(n2[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_244_add_1_7.INIT0 = 16'hfaaa;
    defparam add_244_add_1_7.INIT1 = 16'hfaaa;
    defparam add_244_add_1_7.INJECT1_0 = "NO";
    defparam add_244_add_1_7.INJECT1_1 = "NO";
    CCU2D add_244_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2260), .COUT(n2261), .S0(n2[3]), .S1(n2[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_244_add_1_5.INIT0 = 16'h0555;
    defparam add_244_add_1_5.INIT1 = 16'h0555;
    defparam add_244_add_1_5.INJECT1_0 = "NO";
    defparam add_244_add_1_5.INJECT1_1 = "NO";
    LUT4 pi2started_I_0_2_lut (.A(pi2started), .B(n305), .Z(MW_N_38)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(108[41:67])
    defparam pi2started_I_0_2_lut.init = 16'h2222;
    CCU2D add_244_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2259), .COUT(n2260), .S0(n2[1]), .S1(n2[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_244_add_1_3.INIT0 = 16'hfaaa;
    defparam add_244_add_1_3.INIT1 = 16'hfaaa;
    defparam add_244_add_1_3.INJECT1_0 = "NO";
    defparam add_244_add_1_3.INJECT1_1 = "NO";
    CCU2D add_244_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2259), .S1(n2[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_244_add_1_1.INIT0 = 16'hF000;
    defparam add_244_add_1_1.INIT1 = 16'h0555;
    defparam add_244_add_1_1.INJECT1_0 = "NO";
    defparam add_244_add_1_1.INJECT1_1 = "NO";
    CCU2D add_233_add_2_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2244), .COUT(n2245), .S0(n18[1]), .S1(n18[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_2_3.INIT0 = 16'hfaaa;
    defparam add_233_add_2_3.INIT1 = 16'hfaaa;
    defparam add_233_add_2_3.INJECT1_0 = "NO";
    defparam add_233_add_2_3.INJECT1_1 = "NO";
    CCU2D add_237_488_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2333), .S0(n2_adj_210[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_237_488_add_1_15.INIT0 = 16'hfaaa;
    defparam add_237_488_add_1_15.INIT1 = 16'h0000;
    defparam add_237_488_add_1_15.INJECT1_0 = "NO";
    defparam add_237_488_add_1_15.INJECT1_1 = "NO";
    CCU2D add_237_488_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2332), .COUT(n2333), .S0(n2_adj_210[11]), 
          .S1(n2_adj_210[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_237_488_add_1_13.INIT0 = 16'hfaaa;
    defparam add_237_488_add_1_13.INIT1 = 16'hfaaa;
    defparam add_237_488_add_1_13.INJECT1_0 = "NO";
    defparam add_237_488_add_1_13.INJECT1_1 = "NO";
    CCU2D add_237_488_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2331), .COUT(n2332), .S0(n2_adj_210[9]), 
          .S1(n2_adj_210[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_237_488_add_1_11.INIT0 = 16'hfaaa;
    defparam add_237_488_add_1_11.INIT1 = 16'hfaaa;
    defparam add_237_488_add_1_11.INJECT1_0 = "NO";
    defparam add_237_488_add_1_11.INJECT1_1 = "NO";
    CCU2D add_237_488_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2330), .COUT(n2331), .S0(n2_adj_210[7]), 
          .S1(n2_adj_210[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_237_488_add_1_9.INIT0 = 16'hfaaa;
    defparam add_237_488_add_1_9.INIT1 = 16'h0555;
    defparam add_237_488_add_1_9.INJECT1_0 = "NO";
    defparam add_237_488_add_1_9.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clk_2M5_N_30), .Q(gatedcount[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    LUT4 load_defaults_I_0_2_lut (.A(load_defaults), .B(loop), .Z(counterreset)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(90[24:42])
    defparam load_defaults_I_0_2_lut.init = 16'heeee;
    CCU2D add_237_488_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2329), .COUT(n2330), .S0(n2_adj_210[5]), 
          .S1(n2_adj_210[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_237_488_add_1_7.INIT0 = 16'hfaaa;
    defparam add_237_488_add_1_7.INIT1 = 16'hfaaa;
    defparam add_237_488_add_1_7.INJECT1_0 = "NO";
    defparam add_237_488_add_1_7.INJECT1_1 = "NO";
    CCU2D add_237_488_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2328), .COUT(n2329), .S0(n2_adj_210[3]), 
          .S1(n2_adj_210[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_237_488_add_1_5.INIT0 = 16'h0555;
    defparam add_237_488_add_1_5.INIT1 = 16'h0555;
    defparam add_237_488_add_1_5.INJECT1_0 = "NO";
    defparam add_237_488_add_1_5.INJECT1_1 = "NO";
    LUT4 i502_2_lut (.A(n2_adj_210[0]), .B(AdjustableFreePrecession[2]), 
         .Z(Endofopticalsample[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i502_2_lut.init = 16'h6666;
    CCU2D add_237_488_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2327), .COUT(n2328), .S0(n2_adj_210[1]), 
          .S1(n2_adj_210[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_237_488_add_1_3.INIT0 = 16'hfaaa;
    defparam add_237_488_add_1_3.INIT1 = 16'hfaaa;
    defparam add_237_488_add_1_3.INJECT1_0 = "NO";
    defparam add_237_488_add_1_3.INJECT1_1 = "NO";
    CCU2D add_237_488_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2327), .S1(n2_adj_210[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_237_488_add_1_1.INIT0 = 16'hF000;
    defparam add_237_488_add_1_1.INIT1 = 16'h0555;
    defparam add_237_488_add_1_1.INJECT1_0 = "NO";
    defparam add_237_488_add_1_1.INJECT1_1 = "NO";
    CCU2D add_491_14 (.A0(n2_adj_211[12]), .B0(n18_adj_212[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_211[13]), .B1(n18_adj_212[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2317), .S0(Startopticalsample[14]), .S1(Startopticalsample[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_491_14.INIT0 = 16'h5666;
    defparam add_491_14.INIT1 = 16'h5666;
    defparam add_491_14.INJECT1_0 = "NO";
    defparam add_491_14.INJECT1_1 = "NO";
    CCU2D add_491_12 (.A0(n2_adj_211[10]), .B0(n18_adj_212[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_211[11]), .B1(n18_adj_212[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2316), .COUT(n2317), .S0(Startopticalsample[12]), 
          .S1(Startopticalsample[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_491_12.INIT0 = 16'h5666;
    defparam add_491_12.INIT1 = 16'h5666;
    defparam add_491_12.INJECT1_0 = "NO";
    defparam add_491_12.INJECT1_1 = "NO";
    CCU2D add_491_10 (.A0(n2_adj_211[8]), .B0(n18_adj_212[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_211[9]), .B1(n18_adj_212[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2315), .COUT(n2316), .S0(Startopticalsample[10]), 
          .S1(Startopticalsample[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_491_10.INIT0 = 16'h5666;
    defparam add_491_10.INIT1 = 16'h5666;
    defparam add_491_10.INJECT1_0 = "NO";
    defparam add_491_10.INJECT1_1 = "NO";
    CCU2D add_491_8 (.A0(n2_adj_211[6]), .B0(n18_adj_212[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_211[7]), .B1(n18_adj_212[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2314), .COUT(n2315), .S0(Startopticalsample[8]), 
          .S1(Startopticalsample[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_491_8.INIT0 = 16'h5666;
    defparam add_491_8.INIT1 = 16'h5666;
    defparam add_491_8.INJECT1_0 = "NO";
    defparam add_491_8.INJECT1_1 = "NO";
    CCU2D add_491_6 (.A0(n2_adj_211[4]), .B0(n18_adj_212[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_211[5]), .B1(n18_adj_212[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2313), .COUT(n2314), .S0(Startopticalsample[6]), 
          .S1(Startopticalsample[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_491_6.INIT0 = 16'h5666;
    defparam add_491_6.INIT1 = 16'h5666;
    defparam add_491_6.INJECT1_0 = "NO";
    defparam add_491_6.INJECT1_1 = "NO";
    CCU2D add_491_4 (.A0(n2_adj_211[2]), .B0(n18_adj_212[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_211[3]), .B1(n18_adj_212[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2312), .COUT(n2313), .S0(Startopticalsample[4]), 
          .S1(Startopticalsample[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_491_4.INIT0 = 16'h5666;
    defparam add_491_4.INIT1 = 16'h5666;
    defparam add_491_4.INJECT1_0 = "NO";
    defparam add_491_4.INJECT1_1 = "NO";
    CCU2D add_491_2 (.A0(n2_adj_211[0]), .B0(n18_adj_212[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_211[1]), .B1(n18_adj_212[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2312), .S1(Startopticalsample[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_491_2.INIT0 = 16'h7000;
    defparam add_491_2.INIT1 = 16'h5666;
    defparam add_491_2.INJECT1_0 = "NO";
    defparam add_491_2.INJECT1_1 = "NO";
    CCU2D add_233_add_1_15 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2310), .S0(n2_adj_208[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_1_15.INIT0 = 16'h5aaa;
    defparam add_233_add_1_15.INIT1 = 16'h0000;
    defparam add_233_add_1_15.INJECT1_0 = "NO";
    defparam add_233_add_1_15.INJECT1_1 = "NO";
    CCU2D add_233_add_1_13 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2309), .COUT(n2310), 
          .S0(n2_adj_208[11]), .S1(n2_adj_208[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_1_13.INIT0 = 16'h5aaa;
    defparam add_233_add_1_13.INIT1 = 16'h5aaa;
    defparam add_233_add_1_13.INJECT1_0 = "NO";
    defparam add_233_add_1_13.INJECT1_1 = "NO";
    CCU2D add_233_add_1_11 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2308), .COUT(n2309), 
          .S0(n2_adj_208[9]), .S1(n2_adj_208[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_1_11.INIT0 = 16'h5aaa;
    defparam add_233_add_1_11.INIT1 = 16'h5aaa;
    defparam add_233_add_1_11.INJECT1_0 = "NO";
    defparam add_233_add_1_11.INJECT1_1 = "NO";
    CCU2D add_233_add_1_9 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2307), .COUT(n2308), 
          .S0(n2_adj_208[7]), .S1(n2_adj_208[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_1_9.INIT0 = 16'h5aaa;
    defparam add_233_add_1_9.INIT1 = 16'h5aaa;
    defparam add_233_add_1_9.INJECT1_0 = "NO";
    defparam add_233_add_1_9.INJECT1_1 = "NO";
    CCU2D add_233_add_1_7 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2306), .COUT(n2307), 
          .S0(n2_adj_208[5]), .S1(n2_adj_208[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_1_7.INIT0 = 16'h5aaa;
    defparam add_233_add_1_7.INIT1 = 16'h5aaa;
    defparam add_233_add_1_7.INJECT1_0 = "NO";
    defparam add_233_add_1_7.INJECT1_1 = "NO";
    CCU2D add_233_add_1_5 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2305), .COUT(n2306), 
          .S0(n2_adj_208[3]), .S1(n2_adj_208[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_1_5.INIT0 = 16'h5555;
    defparam add_233_add_1_5.INIT1 = 16'h5555;
    defparam add_233_add_1_5.INJECT1_0 = "NO";
    defparam add_233_add_1_5.INJECT1_1 = "NO";
    CCU2D add_233_add_1_3 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2304), .COUT(n2305), 
          .S0(n2_adj_208[1]), .S1(n2_adj_208[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_1_3.INIT0 = 16'h5555;
    defparam add_233_add_1_3.INIT1 = 16'h5555;
    defparam add_233_add_1_3.INJECT1_0 = "NO";
    defparam add_233_add_1_3.INJECT1_1 = "NO";
    CCU2D add_233_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustableFreePrecession[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2304), .S1(n2_adj_208[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_1_1.INIT0 = 16'hF000;
    defparam add_233_add_1_1.INIT1 = 16'h5555;
    defparam add_233_add_1_1.INJECT1_0 = "NO";
    defparam add_233_add_1_1.INJECT1_1 = "NO";
    CCU2D add_489_8 (.A0(n2_adj_209[6]), .B0(AdjustableFreePrecession[8]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_209[7]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2239), .COUT(n2240), .S0(Startof2ndMWpulse[8]), 
          .S1(Startof2ndMWpulse[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_489_8.INIT0 = 16'h5666;
    defparam add_489_8.INIT1 = 16'h5666;
    defparam add_489_8.INJECT1_0 = "NO";
    defparam add_489_8.INJECT1_1 = "NO";
    CCU2D add_233_add_2_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2249), .COUT(n2250), .S0(n18[11]), 
          .S1(n18[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_2_13.INIT0 = 16'hfaaa;
    defparam add_233_add_2_13.INIT1 = 16'hfaaa;
    defparam add_233_add_2_13.INJECT1_0 = "NO";
    defparam add_233_add_2_13.INJECT1_1 = "NO";
    CCU2D add_233_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2244), .S1(n18[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_2_1.INIT0 = 16'hF000;
    defparam add_233_add_2_1.INIT1 = 16'h0555;
    defparam add_233_add_2_1.INJECT1_0 = "NO";
    defparam add_233_add_2_1.INJECT1_1 = "NO";
    CCU2D add_488_14 (.A0(n2_adj_208[12]), .B0(n18[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_208[13]), .B1(n18[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2234), .S0(n2108[12]), .S1(n2108[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_488_14.INIT0 = 16'h5666;
    defparam add_488_14.INIT1 = 16'h5666;
    defparam add_488_14.INJECT1_0 = "NO";
    defparam add_488_14.INJECT1_1 = "NO";
    CCU2D add_233_add_2_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2248), .COUT(n2249), .S0(n18[9]), 
          .S1(n18[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_2_11.INIT0 = 16'hfaaa;
    defparam add_233_add_2_11.INIT1 = 16'hfaaa;
    defparam add_233_add_2_11.INJECT1_0 = "NO";
    defparam add_233_add_2_11.INJECT1_1 = "NO";
    CCU2D add_488_12 (.A0(n2_adj_208[10]), .B0(n18[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_208[11]), .B1(n18[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2233), .COUT(n2234), .S0(n2108[10]), .S1(n2108[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_488_12.INIT0 = 16'h5666;
    defparam add_488_12.INIT1 = 16'h5666;
    defparam add_488_12.INJECT1_0 = "NO";
    defparam add_488_12.INJECT1_1 = "NO";
    CCU2D add_488_10 (.A0(n2_adj_208[8]), .B0(n18[8]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_208[9]), .B1(n18[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2232), .COUT(n2233), .S0(n2108[8]), .S1(n2108[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_488_10.INIT0 = 16'h5666;
    defparam add_488_10.INIT1 = 16'h5666;
    defparam add_488_10.INJECT1_0 = "NO";
    defparam add_488_10.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clk_2M5_N_30), .Q(gatedcount[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D add_489_14 (.A0(n2_adj_209[12]), .B0(AdjustableFreePrecession[14]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_209[13]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2242), .S0(Startof2ndMWpulse[14]), 
          .S1(Startof2ndMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_489_14.INIT0 = 16'h5666;
    defparam add_489_14.INIT1 = 16'h5666;
    defparam add_489_14.INJECT1_0 = "NO";
    defparam add_489_14.INJECT1_1 = "NO";
    CCU2D add_488_8 (.A0(n2_adj_208[6]), .B0(n18[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_208[7]), .B1(n18[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2231), .COUT(n2232), .S0(n2108[6]), .S1(n2108[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_488_8.INIT0 = 16'h5666;
    defparam add_488_8.INIT1 = 16'h5666;
    defparam add_488_8.INJECT1_0 = "NO";
    defparam add_488_8.INJECT1_1 = "NO";
    CCU2D add_233_add_2_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2250), .S0(n18[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_2_15.INIT0 = 16'hfaaa;
    defparam add_233_add_2_15.INIT1 = 16'h0000;
    defparam add_233_add_2_15.INJECT1_0 = "NO";
    defparam add_233_add_2_15.INJECT1_1 = "NO";
    CCU2D add_233_add_2_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2247), .COUT(n2248), .S0(n18[7]), .S1(n18[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_2_9.INIT0 = 16'hfaaa;
    defparam add_233_add_2_9.INIT1 = 16'h0555;
    defparam add_233_add_2_9.INJECT1_0 = "NO";
    defparam add_233_add_2_9.INJECT1_1 = "NO";
    CCU2D add_233_add_2_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2246), .COUT(n2247), .S0(n18[5]), .S1(n18[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_233_add_2_7.INIT0 = 16'hfaaa;
    defparam add_233_add_2_7.INIT1 = 16'hfaaa;
    defparam add_233_add_2_7.INJECT1_0 = "NO";
    defparam add_233_add_2_7.INJECT1_1 = "NO";
    CCU2D add_488_2 (.A0(n2_adj_208[0]), .B0(n18[0]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_208[1]), .B1(n18[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2229), .S1(n2108[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_488_2.INIT0 = 16'h7000;
    defparam add_488_2.INIT1 = 16'h5666;
    defparam add_488_2.INJECT1_0 = "NO";
    defparam add_488_2.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clk_2M5_N_30), .Q(gatedcount[15])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clk_2M5_N_30), .Q(gatedcount[14])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clk_2M5_N_30), .Q(gatedcount[13])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clk_2M5_N_30), .Q(gatedcount[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clk_2M5_N_30), .Q(gatedcount[11])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clk_2M5_N_30), .Q(gatedcount[10])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clk_2M5_N_30), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clk_2M5_N_30), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clk_2M5_N_30), .Q(gatedcount[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clk_2M5_N_30), .Q(gatedcount[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clk_2M5_N_30), .Q(gatedcount[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=70, LSE_RLINE=70 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    CCU2D add_488_6 (.A0(n2_adj_208[4]), .B0(n18[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_208[5]), .B1(n18[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2230), .COUT(n2231), .S0(n2108[4]), .S1(n2108[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_488_6.INIT0 = 16'h5666;
    defparam add_488_6.INIT1 = 16'h5666;
    defparam add_488_6.INJECT1_0 = "NO";
    defparam add_488_6.INJECT1_1 = "NO";
    CCU2D add_249_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustableFreePrecession[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2366), .S1(n1421[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_249_1.INIT0 = 16'hF000;
    defparam add_249_1.INIT1 = 16'h5555;
    defparam add_249_1.INJECT1_0 = "NO";
    defparam add_249_1.INJECT1_1 = "NO";
    CCU2D add_249_3 (.A0(AdjustableFreePrecession[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2366), .COUT(n2367), .S0(n1421[4]), 
          .S1(n1421[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_249_3.INIT0 = 16'h5555;
    defparam add_249_3.INIT1 = 16'h5555;
    defparam add_249_3.INJECT1_0 = "NO";
    defparam add_249_3.INJECT1_1 = "NO";
    CCU2D add_249_5 (.A0(AdjustableFreePrecession[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2367), .COUT(n2368), .S0(n1421[6]), 
          .S1(n1421[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_249_5.INIT0 = 16'h5555;
    defparam add_249_5.INIT1 = 16'h5555;
    defparam add_249_5.INJECT1_0 = "NO";
    defparam add_249_5.INJECT1_1 = "NO";
    CCU2D add_249_7 (.A0(AdjustableFreePrecession[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2368), .COUT(n2369), .S0(n1421[8]), 
          .S1(n1421[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_249_7.INIT0 = 16'h5aaa;
    defparam add_249_7.INIT1 = 16'h5aaa;
    defparam add_249_7.INJECT1_0 = "NO";
    defparam add_249_7.INJECT1_1 = "NO";
    CCU2D add_249_9 (.A0(AdjustableFreePrecession[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2369), .COUT(n2370), .S0(n1421[10]), 
          .S1(n1421[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_249_9.INIT0 = 16'h5aaa;
    defparam add_249_9.INIT1 = 16'h5aaa;
    defparam add_249_9.INJECT1_0 = "NO";
    defparam add_249_9.INJECT1_1 = "NO";
    CCU2D add_249_11 (.A0(AdjustableFreePrecession[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2370), .COUT(n2371), .S0(n1421[12]), 
          .S1(n1421[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_249_11.INIT0 = 16'h5aaa;
    defparam add_249_11.INIT1 = 16'h5aaa;
    defparam add_249_11.INJECT1_0 = "NO";
    defparam add_249_11.INJECT1_1 = "NO";
    CCU2D add_249_13 (.A0(AdjustableFreePrecession[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[15]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2371), .S0(n1421[14]), .S1(n1421[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_249_13.INIT0 = 16'h5aaa;
    defparam add_249_13.INIT1 = 16'h5aaa;
    defparam add_249_13.INJECT1_0 = "NO";
    defparam add_249_13.INJECT1_1 = "NO";
    CCU2D add_243_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustableFreePrecession[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2381), .S1(n18_adj_212[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_2_1.INIT0 = 16'hF000;
    defparam add_243_add_2_1.INIT1 = 16'h5555;
    defparam add_243_add_2_1.INJECT1_0 = "NO";
    defparam add_243_add_2_1.INJECT1_1 = "NO";
    CCU2D add_243_add_2_3 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2381), .COUT(n2382), 
          .S0(n18_adj_212[1]), .S1(n18_adj_212[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_2_3.INIT0 = 16'h5555;
    defparam add_243_add_2_3.INIT1 = 16'h5555;
    defparam add_243_add_2_3.INJECT1_0 = "NO";
    defparam add_243_add_2_3.INJECT1_1 = "NO";
    CCU2D add_243_add_2_5 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2382), .COUT(n2383), 
          .S0(n18_adj_212[3]), .S1(n18_adj_212[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_2_5.INIT0 = 16'h5555;
    defparam add_243_add_2_5.INIT1 = 16'h5555;
    defparam add_243_add_2_5.INJECT1_0 = "NO";
    defparam add_243_add_2_5.INJECT1_1 = "NO";
    CCU2D add_243_add_2_7 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2383), .COUT(n2384), 
          .S0(n18_adj_212[5]), .S1(n18_adj_212[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_2_7.INIT0 = 16'h5aaa;
    defparam add_243_add_2_7.INIT1 = 16'h5aaa;
    defparam add_243_add_2_7.INJECT1_0 = "NO";
    defparam add_243_add_2_7.INJECT1_1 = "NO";
    CCU2D add_243_add_2_9 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2384), .COUT(n2385), 
          .S0(n18_adj_212[7]), .S1(n18_adj_212[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_2_9.INIT0 = 16'h5aaa;
    defparam add_243_add_2_9.INIT1 = 16'h5aaa;
    defparam add_243_add_2_9.INJECT1_0 = "NO";
    defparam add_243_add_2_9.INJECT1_1 = "NO";
    CCU2D add_243_add_2_11 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2385), .COUT(n2386), 
          .S0(n18_adj_212[9]), .S1(n18_adj_212[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_2_11.INIT0 = 16'h5aaa;
    defparam add_243_add_2_11.INIT1 = 16'h5aaa;
    defparam add_243_add_2_11.INJECT1_0 = "NO";
    defparam add_243_add_2_11.INJECT1_1 = "NO";
    CCU2D add_243_add_2_13 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2386), .COUT(n2387), 
          .S0(n18_adj_212[11]), .S1(n18_adj_212[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_2_13.INIT0 = 16'h5aaa;
    defparam add_243_add_2_13.INIT1 = 16'h5aaa;
    defparam add_243_add_2_13.INJECT1_0 = "NO";
    defparam add_243_add_2_13.INJECT1_1 = "NO";
    CCU2D add_243_add_2_15 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2387), .S0(n18_adj_212[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_2_15.INIT0 = 16'h5aaa;
    defparam add_243_add_2_15.INIT1 = 16'h0000;
    defparam add_243_add_2_15.INJECT1_0 = "NO";
    defparam add_243_add_2_15.INJECT1_1 = "NO";
    CCU2D add_243_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2388), .S1(n2_adj_211[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_1_1.INIT0 = 16'hF000;
    defparam add_243_add_1_1.INIT1 = 16'h0555;
    defparam add_243_add_1_1.INJECT1_0 = "NO";
    defparam add_243_add_1_1.INJECT1_1 = "NO";
    CCU2D add_243_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2388), .COUT(n2389), .S0(n2_adj_211[1]), 
          .S1(n2_adj_211[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_1_3.INIT0 = 16'hfaaa;
    defparam add_243_add_1_3.INIT1 = 16'hfaaa;
    defparam add_243_add_1_3.INJECT1_0 = "NO";
    defparam add_243_add_1_3.INJECT1_1 = "NO";
    CCU2D add_243_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2389), .COUT(n2390), .S0(n2_adj_211[3]), 
          .S1(n2_adj_211[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_1_5.INIT0 = 16'h0555;
    defparam add_243_add_1_5.INIT1 = 16'h0555;
    defparam add_243_add_1_5.INJECT1_0 = "NO";
    defparam add_243_add_1_5.INJECT1_1 = "NO";
    CCU2D add_243_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2390), .COUT(n2391), .S0(n2_adj_211[5]), 
          .S1(n2_adj_211[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_1_7.INIT0 = 16'hfaaa;
    defparam add_243_add_1_7.INIT1 = 16'hfaaa;
    defparam add_243_add_1_7.INJECT1_0 = "NO";
    defparam add_243_add_1_7.INJECT1_1 = "NO";
    CCU2D add_243_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2391), .COUT(n2392), .S0(n2_adj_211[7]), 
          .S1(n2_adj_211[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_1_9.INIT0 = 16'hfaaa;
    defparam add_243_add_1_9.INIT1 = 16'h0555;
    defparam add_243_add_1_9.INJECT1_0 = "NO";
    defparam add_243_add_1_9.INJECT1_1 = "NO";
    CCU2D add_243_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2392), .COUT(n2393), .S0(n2_adj_211[9]), 
          .S1(n2_adj_211[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_1_11.INIT0 = 16'hfaaa;
    defparam add_243_add_1_11.INIT1 = 16'hfaaa;
    defparam add_243_add_1_11.INJECT1_0 = "NO";
    defparam add_243_add_1_11.INJECT1_1 = "NO";
    CCU2D add_243_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2393), .COUT(n2394), .S0(n2_adj_211[11]), 
          .S1(n2_adj_211[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_1_13.INIT0 = 16'hfaaa;
    defparam add_243_add_1_13.INIT1 = 16'hfaaa;
    defparam add_243_add_1_13.INJECT1_0 = "NO";
    defparam add_243_add_1_13.INJECT1_1 = "NO";
    CCU2D add_243_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2394), .S0(n2_adj_211[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_243_add_1_15.INIT0 = 16'hfaaa;
    defparam add_243_add_1_15.INIT1 = 16'h0000;
    defparam add_243_add_1_15.INJECT1_0 = "NO";
    defparam add_243_add_1_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2395), .S1(n2_adj_209[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3 (.A0(AdjustablePieOverTwo[3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2395), .COUT(n2396), 
          .S0(n2_adj_209[1]), .S1(n2_adj_209[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5 (.A0(AdjustablePieOverTwo[5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2396), .COUT(n2397), 
          .S0(n2_adj_209[3]), .S1(n2_adj_209[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7 (.A0(AdjustablePieOverTwo[7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2397), .COUT(n2398), 
          .S0(n2_adj_209[5]), .S1(n2_adj_209[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9 (.A0(AdjustablePieOverTwo[9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2398), .COUT(n2399), 
          .S0(n2_adj_209[7]), .S1(n2_adj_209[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11 (.A0(AdjustablePieOverTwo[11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2399), .COUT(n2400), 
          .S0(n2_adj_209[9]), .S1(n2_adj_209[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13 (.A0(AdjustablePieOverTwo[13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2400), .COUT(n2401), 
          .S0(n2_adj_209[11]), .S1(n2_adj_209[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15 (.A0(AdjustablePieOverTwo[15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2401), .S0(n2_adj_209[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2402), .S1(Endof1stMWpulse[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_3 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2402), .COUT(n2403), .S0(Endof1stMWpulse[3]), 
          .S1(Endof1stMWpulse[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_5 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2403), .COUT(n2404), .S0(Endof1stMWpulse[5]), 
          .S1(Endof1stMWpulse[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_5.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_5.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_7 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2404), .COUT(n2405), .S0(Endof1stMWpulse[7]), 
          .S1(Endof1stMWpulse[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_7.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_7.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_9 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2405), .COUT(n2406), .S0(Endof1stMWpulse[9]), 
          .S1(Endof1stMWpulse[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_9.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_11 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2406), .COUT(n2407), .S0(Endof1stMWpulse[11]), 
          .S1(Endof1stMWpulse[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_13 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2407), .COUT(n2408), .S0(Endof1stMWpulse[13]), 
          .S1(Endof1stMWpulse[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_15 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2408), .S0(Endof1stMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D add_492_2 (.A0(n2_adj_210[0]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_210[1]), .B1(n1421[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2410), .S1(Endofopticalsample[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_492_2.INIT0 = 16'h7000;
    defparam add_492_2.INIT1 = 16'h5666;
    defparam add_492_2.INJECT1_0 = "NO";
    defparam add_492_2.INJECT1_1 = "NO";
    CCU2D add_492_4 (.A0(n2_adj_210[2]), .B0(n1421[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_210[3]), .B1(n1421[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2410), .COUT(n2411), .S0(Endofopticalsample[4]), 
          .S1(Endofopticalsample[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_492_4.INIT0 = 16'h5666;
    defparam add_492_4.INIT1 = 16'h5666;
    defparam add_492_4.INJECT1_0 = "NO";
    defparam add_492_4.INJECT1_1 = "NO";
    CCU2D add_492_6 (.A0(n2_adj_210[4]), .B0(n1421[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_210[5]), .B1(n1421[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2411), .COUT(n2412), .S0(Endofopticalsample[6]), 
          .S1(Endofopticalsample[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_492_6.INIT0 = 16'h5666;
    defparam add_492_6.INIT1 = 16'h5666;
    defparam add_492_6.INJECT1_0 = "NO";
    defparam add_492_6.INJECT1_1 = "NO";
    CCU2D add_492_8 (.A0(n2_adj_210[6]), .B0(n1421[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_210[7]), .B1(n1421[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2412), .COUT(n2413), .S0(Endofopticalsample[8]), 
          .S1(Endofopticalsample[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_492_8.INIT0 = 16'h5666;
    defparam add_492_8.INIT1 = 16'h5666;
    defparam add_492_8.INJECT1_0 = "NO";
    defparam add_492_8.INJECT1_1 = "NO";
    CCU2D add_492_10 (.A0(n2_adj_210[8]), .B0(n1421[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_210[9]), .B1(n1421[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2413), .COUT(n2414), .S0(Endofopticalsample[10]), 
          .S1(Endofopticalsample[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_492_10.INIT0 = 16'h5666;
    defparam add_492_10.INIT1 = 16'h5666;
    defparam add_492_10.INJECT1_0 = "NO";
    defparam add_492_10.INJECT1_1 = "NO";
    CCU2D add_492_12 (.A0(n2_adj_210[10]), .B0(n1421[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_210[11]), .B1(n1421[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2414), .COUT(n2415), .S0(Endofopticalsample[12]), 
          .S1(Endofopticalsample[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_492_12.INIT0 = 16'h5666;
    defparam add_492_12.INIT1 = 16'h5666;
    defparam add_492_12.INJECT1_0 = "NO";
    defparam add_492_12.INJECT1_1 = "NO";
    CCU2D add_492_14 (.A0(n2_adj_210[12]), .B0(n1421[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_210[13]), .B1(n1421[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2415), .S0(Endofopticalsample[14]), .S1(Endofopticalsample[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_492_14.INIT0 = 16'h5666;
    defparam add_492_14.INIT1 = 16'h5666;
    defparam add_492_14.INJECT1_0 = "NO";
    defparam add_492_14.INJECT1_1 = "NO";
    count_n systemcounter (.count({count}), .clk_2M5(clk_2M5), .counterreset(counterreset), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[10:92])
    comparator sample2 (.GND_net(GND_net), .SMstate({SMstate}), .probestarted(probestarted), 
            .sample_output_N_16(sample_output_N_16), .gatedcount({gatedcount}), 
            .\Endofopticalsample[14] (Endofopticalsample[14]), .\Endofopticalsample[15] (Endofopticalsample[15]), 
            .\Endofopticalsample[12] (Endofopticalsample[12]), .\Endofopticalsample[13] (Endofopticalsample[13]), 
            .\Endofopticalsample[10] (Endofopticalsample[10]), .\Endofopticalsample[11] (Endofopticalsample[11]), 
            .\Endofopticalsample[8] (Endofopticalsample[8]), .\Endofopticalsample[9] (Endofopticalsample[9]), 
            .\Endofopticalsample[6] (Endofopticalsample[6]), .\Endofopticalsample[7] (Endofopticalsample[7]), 
            .\Endofopticalsample[4] (Endofopticalsample[4]), .\Endofopticalsample[5] (Endofopticalsample[5]), 
            .\Endofopticalsample[2] (Endofopticalsample[2]), .\Endofopticalsample[3] (Endofopticalsample[3])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(77[13:98])
    comparator_U4 pump2 (.\gatedcount[5] (gatedcount[5]), .\gatedcount[6] (gatedcount[6]), 
            .n2444(n2444), .\gatedcount[13] (gatedcount[13]), .\gatedcount[11] (gatedcount[11]), 
            .\gatedcount[12] (gatedcount[12]), .n2441(n2441), .\gatedcount[14] (gatedcount[14]), 
            .\gatedcount[15] (gatedcount[15]), .\gatedcount[10] (gatedcount[10]), 
            .debug_1_c(debug_1_c), .\gatedcount[8] (gatedcount[8]), .\gatedcount[7] (gatedcount[7]), 
            .\gatedcount[3] (gatedcount[3]), .\gatedcount[9] (gatedcount[9]), 
            .\gatedcount[4] (gatedcount[4])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[13:90])
    comparator_U5 probe2 (.gatedcount({gatedcount}), .\Resetandrepeat[4] (Resetandrepeat[4]), 
            .GND_net(GND_net), .\Resetandrepeat[5] (Resetandrepeat[5]), 
            .n16(n2_adj_208[0]), .n32(n18[0]), .\Resetandrepeat[3] (Resetandrepeat[3]), 
            .\Endofprobepulse[6] (Endofprobepulse[6]), .\Endofprobepulse[7] (Endofprobepulse[7]), 
            .\Endofprobepulse[8] (Endofprobepulse[8]), .\Endofprobepulse[9] (Endofprobepulse[9]), 
            .\Endofprobepulse[10] (Endofprobepulse[10]), .\Endofprobepulse[11] (Endofprobepulse[11]), 
            .\Endofprobepulse[12] (Endofprobepulse[12]), .\Endofprobepulse[13] (Endofprobepulse[13]), 
            .\Endofprobepulse[14] (Endofprobepulse[14]), .\Endofprobepulse[15] (Endofprobepulse[15]), 
            .n343(n343)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(75[13:93])
    comparator_U6 probe1 (.GND_net(GND_net), .\gatedcount[1] (gatedcount[1]), 
            .n16(n2_adj_211[0]), .n32(n18_adj_212[0]), .\gatedcount[2] (gatedcount[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Startopticalsample[3] (Startopticalsample[3]), 
            .\gatedcount[4] (gatedcount[4]), .\Startopticalsample[4] (Startopticalsample[4]), 
            .\gatedcount[5] (gatedcount[5]), .\Startopticalsample[5] (Startopticalsample[5]), 
            .\gatedcount[6] (gatedcount[6]), .\Startopticalsample[6] (Startopticalsample[6]), 
            .\gatedcount[7] (gatedcount[7]), .\Startopticalsample[7] (Startopticalsample[7]), 
            .\gatedcount[8] (gatedcount[8]), .\Startopticalsample[8] (Startopticalsample[8]), 
            .\gatedcount[9] (gatedcount[9]), .\Startopticalsample[9] (Startopticalsample[9]), 
            .\gatedcount[10] (gatedcount[10]), .\Startopticalsample[10] (Startopticalsample[10]), 
            .\gatedcount[11] (gatedcount[11]), .\Startopticalsample[11] (Startopticalsample[11]), 
            .\gatedcount[12] (gatedcount[12]), .\Startopticalsample[12] (Startopticalsample[12]), 
            .\gatedcount[13] (gatedcount[13]), .\Startopticalsample[13] (Startopticalsample[13]), 
            .\gatedcount[14] (gatedcount[14]), .\Startopticalsample[14] (Startopticalsample[14]), 
            .\gatedcount[15] (gatedcount[15]), .\Startopticalsample[15] (Startopticalsample[15]), 
            .probestarted(probestarted)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(74[13:95])
    countupdownpreload piecounter (.GND_net(GND_net), .pieovertwo_minus(pieovertwo_minus), 
            .pieovertwo_plus(pieovertwo_plus), .load_defaults(load_defaults), 
            .\AdjustablePieOverTwo[15] (AdjustablePieOverTwo[15]), .\AdjustablePieOverTwo[13] (AdjustablePieOverTwo[13]), 
            .\AdjustablePieOverTwo[14] (AdjustablePieOverTwo[14]), .\AdjustablePieOverTwo[11] (AdjustablePieOverTwo[11]), 
            .\AdjustablePieOverTwo[12] (AdjustablePieOverTwo[12]), .\AdjustablePieOverTwo[9] (AdjustablePieOverTwo[9]), 
            .\AdjustablePieOverTwo[10] (AdjustablePieOverTwo[10]), .\AdjustablePieOverTwo[8] (AdjustablePieOverTwo[8]), 
            .\AdjustablePieOverTwo[7] (AdjustablePieOverTwo[7]), .\AdjustablePieOverTwo[6] (AdjustablePieOverTwo[6]), 
            .\AdjustablePieOverTwo[5] (AdjustablePieOverTwo[5]), .\AdjustablePieOverTwo[4] (AdjustablePieOverTwo[4]), 
            .\AdjustablePieOverTwo[3] (AdjustablePieOverTwo[3]), .\AdjustablePieOverTwo[2] (AdjustablePieOverTwo[2]), 
            .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1]), .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(80[21:199])
    comparator_U7 loopcounter (.GND_net(GND_net), .loop(loop), .gatedcount({gatedcount}), 
            .\Resetandrepeat[14] (Resetandrepeat[14]), .\Resetandrepeat[15] (Resetandrepeat[15]), 
            .\Resetandrepeat[12] (Resetandrepeat[12]), .\Resetandrepeat[13] (Resetandrepeat[13]), 
            .\Resetandrepeat[10] (Resetandrepeat[10]), .\Resetandrepeat[11] (Resetandrepeat[11]), 
            .\Resetandrepeat[8] (Resetandrepeat[8]), .\Resetandrepeat[9] (Resetandrepeat[9]), 
            .\Resetandrepeat[6] (Resetandrepeat[6]), .\Resetandrepeat[7] (Resetandrepeat[7]), 
            .\Resetandrepeat[4] (Resetandrepeat[4]), .\Resetandrepeat[5] (Resetandrepeat[5]), 
            .n16(n2_adj_208[0]), .n32(n18[0]), .\Resetandrepeat[3] (Resetandrepeat[3])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(78[13:89])
    countupdownpreload_U8 freepcounter (.freeprecess_minus(freeprecess_minus), 
            .freeprecess_plus(freeprecess_plus), .GND_net(GND_net), .\AdjustableFreePrecession[14] (AdjustableFreePrecession[14]), 
            .\AdjustableFreePrecession[15] (AdjustableFreePrecession[15]), 
            .\AdjustableFreePrecession[12] (AdjustableFreePrecession[12]), 
            .\AdjustableFreePrecession[13] (AdjustableFreePrecession[13]), 
            .\AdjustableFreePrecession[10] (AdjustableFreePrecession[10]), 
            .\AdjustableFreePrecession[11] (AdjustableFreePrecession[11]), 
            .\AdjustableFreePrecession[8] (AdjustableFreePrecession[8]), .\AdjustableFreePrecession[9] (AdjustableFreePrecession[9]), 
            .\AdjustableFreePrecession[6] (AdjustableFreePrecession[6]), .\AdjustableFreePrecession[7] (AdjustableFreePrecession[7]), 
            .\AdjustableFreePrecession[4] (AdjustableFreePrecession[4]), .\AdjustableFreePrecession[5] (AdjustableFreePrecession[5]), 
            .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), .\AdjustableFreePrecession[3] (AdjustableFreePrecession[3]), 
            .load_defaults(load_defaults), .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(81[21:212])
    comparator_U9 MW4 (.gatedcount({gatedcount}), .GND_net(GND_net), .n16(n2[0]), 
            .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), .\Endof2ndMWpulse[3] (Endof2ndMWpulse[3]), 
            .\Endof2ndMWpulse[4] (Endof2ndMWpulse[4]), .\Endof2ndMWpulse[5] (Endof2ndMWpulse[5]), 
            .\Endof2ndMWpulse[6] (Endof2ndMWpulse[6]), .\Endof2ndMWpulse[7] (Endof2ndMWpulse[7]), 
            .\Endof2ndMWpulse[8] (Endof2ndMWpulse[8]), .\Endof2ndMWpulse[9] (Endof2ndMWpulse[9]), 
            .\Endof2ndMWpulse[10] (Endof2ndMWpulse[10]), .\Endof2ndMWpulse[11] (Endof2ndMWpulse[11]), 
            .\Endof2ndMWpulse[12] (Endof2ndMWpulse[12]), .\Endof2ndMWpulse[13] (Endof2ndMWpulse[13]), 
            .\Endof2ndMWpulse[14] (Endof2ndMWpulse[14]), .\Endof2ndMWpulse[15] (Endof2ndMWpulse[15]), 
            .n305(n305)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(73[13:88])
    comparator_U10 MW3 (.GND_net(GND_net), .pi2started(pi2started), .gatedcount({gatedcount}), 
            .\Startof2ndMWpulse[14] (Startof2ndMWpulse[14]), .\Startof2ndMWpulse[15] (Startof2ndMWpulse[15]), 
            .\Startof2ndMWpulse[12] (Startof2ndMWpulse[12]), .\Startof2ndMWpulse[13] (Startof2ndMWpulse[13]), 
            .\Startof2ndMWpulse[10] (Startof2ndMWpulse[10]), .\Startof2ndMWpulse[11] (Startof2ndMWpulse[11]), 
            .\Startof2ndMWpulse[8] (Startof2ndMWpulse[8]), .\Startof2ndMWpulse[9] (Startof2ndMWpulse[9]), 
            .\Startof2ndMWpulse[6] (Startof2ndMWpulse[6]), .\Startof2ndMWpulse[7] (Startof2ndMWpulse[7]), 
            .\Startof2ndMWpulse[4] (Startof2ndMWpulse[4]), .\Startof2ndMWpulse[5] (Startof2ndMWpulse[5]), 
            .n16(n2_adj_209[0]), .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), 
            .\Startof2ndMWpulse[3] (Startof2ndMWpulse[3]), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[13:90])
    comparator_U11 MW2 (.GND_net(GND_net), .n267(n267), .gatedcount({gatedcount}), 
            .\Endof1stMWpulse[14] (Endof1stMWpulse[14]), .\Endof1stMWpulse[15] (Endof1stMWpulse[15]), 
            .\Endof1stMWpulse[12] (Endof1stMWpulse[12]), .\Endof1stMWpulse[13] (Endof1stMWpulse[13]), 
            .\Endof1stMWpulse[10] (Endof1stMWpulse[10]), .\Endof1stMWpulse[11] (Endof1stMWpulse[11]), 
            .\Endof1stMWpulse[8] (Endof1stMWpulse[8]), .\Endof1stMWpulse[9] (Endof1stMWpulse[9]), 
            .\Endof1stMWpulse[6] (Endof1stMWpulse[6]), .\Endof1stMWpulse[7] (Endof1stMWpulse[7]), 
            .\Endof1stMWpulse[4] (Endof1stMWpulse[4]), .\Endof1stMWpulse[5] (Endof1stMWpulse[5]), 
            .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), .\Endof1stMWpulse[3] (Endof1stMWpulse[3]), 
            .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(71[13:88])
    comparator_U12 MW1 (.\gatedcount[10] (gatedcount[10]), .\gatedcount[7] (gatedcount[7]), 
            .\gatedcount[9] (gatedcount[9]), .n1915(n1915), .\gatedcount[4] (gatedcount[4]), 
            .\gatedcount[8] (gatedcount[8]), .n2444(n2444), .\gatedcount[0] (gatedcount[0]), 
            .\gatedcount[3] (gatedcount[3]), .\gatedcount[2] (gatedcount[2]), 
            .\gatedcount[1] (gatedcount[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[13:90])
    
endmodule
//
// Verilog Description of module count_n
//

module count_n (count, clk_2M5, counterreset, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [15:0]count;
    input clk_2M5;
    input counterreset;
    input GND_net;
    
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire [15:0]n69;
    
    wire n2373, n2374, n2375, n2376, n2377, n2378, n2379, n2380;
    
    FD1S3DX count_170__i0 (.D(n69[0]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i0.GSR = "ENABLED";
    FD1S3DX count_170__i15 (.D(n69[15]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i15.GSR = "ENABLED";
    FD1S3DX count_170__i14 (.D(n69[14]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i14.GSR = "ENABLED";
    FD1S3DX count_170__i13 (.D(n69[13]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i13.GSR = "ENABLED";
    FD1S3DX count_170__i12 (.D(n69[12]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i12.GSR = "ENABLED";
    FD1S3DX count_170__i11 (.D(n69[11]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i11.GSR = "ENABLED";
    FD1S3DX count_170__i10 (.D(n69[10]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i10.GSR = "ENABLED";
    FD1S3DX count_170__i9 (.D(n69[9]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i9.GSR = "ENABLED";
    FD1S3DX count_170__i8 (.D(n69[8]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i8.GSR = "ENABLED";
    FD1S3DX count_170__i7 (.D(n69[7]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i7.GSR = "ENABLED";
    FD1S3DX count_170__i6 (.D(n69[6]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i6.GSR = "ENABLED";
    FD1S3DX count_170__i5 (.D(n69[5]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i5.GSR = "ENABLED";
    FD1S3DX count_170__i4 (.D(n69[4]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i4.GSR = "ENABLED";
    FD1S3DX count_170__i3 (.D(n69[3]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i3.GSR = "ENABLED";
    FD1S3DX count_170__i2 (.D(n69[2]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i2.GSR = "ENABLED";
    FD1S3DX count_170__i1 (.D(n69[1]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170__i1.GSR = "ENABLED";
    CCU2D count_170_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2373), .S1(n69[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170_add_4_1.INIT0 = 16'hF000;
    defparam count_170_add_4_1.INIT1 = 16'h0555;
    defparam count_170_add_4_1.INJECT1_0 = "NO";
    defparam count_170_add_4_1.INJECT1_1 = "NO";
    CCU2D count_170_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2373), .COUT(n2374), .S0(n69[1]), .S1(n69[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170_add_4_3.INIT0 = 16'hfaaa;
    defparam count_170_add_4_3.INIT1 = 16'hfaaa;
    defparam count_170_add_4_3.INJECT1_0 = "NO";
    defparam count_170_add_4_3.INJECT1_1 = "NO";
    CCU2D count_170_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2374), .COUT(n2375), .S0(n69[3]), .S1(n69[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170_add_4_5.INIT0 = 16'hfaaa;
    defparam count_170_add_4_5.INIT1 = 16'hfaaa;
    defparam count_170_add_4_5.INJECT1_0 = "NO";
    defparam count_170_add_4_5.INJECT1_1 = "NO";
    CCU2D count_170_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2375), .COUT(n2376), .S0(n69[5]), .S1(n69[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170_add_4_7.INIT0 = 16'hfaaa;
    defparam count_170_add_4_7.INIT1 = 16'hfaaa;
    defparam count_170_add_4_7.INJECT1_0 = "NO";
    defparam count_170_add_4_7.INJECT1_1 = "NO";
    CCU2D count_170_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2376), .COUT(n2377), .S0(n69[7]), .S1(n69[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170_add_4_9.INIT0 = 16'hfaaa;
    defparam count_170_add_4_9.INIT1 = 16'hfaaa;
    defparam count_170_add_4_9.INJECT1_0 = "NO";
    defparam count_170_add_4_9.INJECT1_1 = "NO";
    CCU2D count_170_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2377), .COUT(n2378), .S0(n69[9]), .S1(n69[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170_add_4_11.INIT0 = 16'hfaaa;
    defparam count_170_add_4_11.INIT1 = 16'hfaaa;
    defparam count_170_add_4_11.INJECT1_0 = "NO";
    defparam count_170_add_4_11.INJECT1_1 = "NO";
    CCU2D count_170_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2378), .COUT(n2379), .S0(n69[11]), .S1(n69[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170_add_4_13.INIT0 = 16'hfaaa;
    defparam count_170_add_4_13.INIT1 = 16'hfaaa;
    defparam count_170_add_4_13.INJECT1_0 = "NO";
    defparam count_170_add_4_13.INJECT1_1 = "NO";
    CCU2D count_170_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2379), .COUT(n2380), .S0(n69[13]), .S1(n69[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170_add_4_15.INIT0 = 16'hfaaa;
    defparam count_170_add_4_15.INIT1 = 16'hfaaa;
    defparam count_170_add_4_15.INJECT1_0 = "NO";
    defparam count_170_add_4_15.INJECT1_1 = "NO";
    CCU2D count_170_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2380), .S0(n69[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_170_add_4_17.INIT0 = 16'hfaaa;
    defparam count_170_add_4_17.INIT1 = 16'h0000;
    defparam count_170_add_4_17.INJECT1_0 = "NO";
    defparam count_170_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator
//

module comparator (GND_net, SMstate, probestarted, sample_output_N_16, 
            gatedcount, \Endofopticalsample[14] , \Endofopticalsample[15] , 
            \Endofopticalsample[12] , \Endofopticalsample[13] , \Endofopticalsample[10] , 
            \Endofopticalsample[11] , \Endofopticalsample[8] , \Endofopticalsample[9] , 
            \Endofopticalsample[6] , \Endofopticalsample[7] , \Endofopticalsample[4] , 
            \Endofopticalsample[5] , \Endofopticalsample[2] , \Endofopticalsample[3] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [1:0]SMstate;
    input probestarted;
    output sample_output_N_16;
    input [15:0]gatedcount;
    input \Endofopticalsample[14] ;
    input \Endofopticalsample[15] ;
    input \Endofopticalsample[12] ;
    input \Endofopticalsample[13] ;
    input \Endofopticalsample[10] ;
    input \Endofopticalsample[11] ;
    input \Endofopticalsample[8] ;
    input \Endofopticalsample[9] ;
    input \Endofopticalsample[6] ;
    input \Endofopticalsample[7] ;
    input \Endofopticalsample[4] ;
    input \Endofopticalsample[5] ;
    input \Endofopticalsample[2] ;
    input \Endofopticalsample[3] ;
    
    
    wire n2227, n381, n2226, n2225, n2224, n2223, n2222, n2221, 
        n2220;
    
    CCU2D sub_123_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2227), .S0(n381));
    defparam sub_123_add_2_cout.INIT0 = 16'h0000;
    defparam sub_123_add_2_cout.INIT1 = 16'h0000;
    defparam sub_123_add_2_cout.INJECT1_0 = "NO";
    defparam sub_123_add_2_cout.INJECT1_1 = "NO";
    LUT4 i374_4_lut_4_lut (.A(SMstate[0]), .B(SMstate[1]), .C(probestarted), 
         .D(n381), .Z(sample_output_N_16)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    defparam i374_4_lut_4_lut.init = 16'h4464;
    CCU2D sub_123_add_2_16 (.A0(gatedcount[14]), .B0(\Endofopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endofopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2226), .COUT(n2227));
    defparam sub_123_add_2_16.INIT0 = 16'h5999;
    defparam sub_123_add_2_16.INIT1 = 16'h5999;
    defparam sub_123_add_2_16.INJECT1_0 = "NO";
    defparam sub_123_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_123_add_2_14 (.A0(gatedcount[12]), .B0(\Endofopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endofopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2225), .COUT(n2226));
    defparam sub_123_add_2_14.INIT0 = 16'h5999;
    defparam sub_123_add_2_14.INIT1 = 16'h5999;
    defparam sub_123_add_2_14.INJECT1_0 = "NO";
    defparam sub_123_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_123_add_2_12 (.A0(gatedcount[10]), .B0(\Endofopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endofopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2224), .COUT(n2225));
    defparam sub_123_add_2_12.INIT0 = 16'h5999;
    defparam sub_123_add_2_12.INIT1 = 16'h5999;
    defparam sub_123_add_2_12.INJECT1_0 = "NO";
    defparam sub_123_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_123_add_2_10 (.A0(gatedcount[8]), .B0(\Endofopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endofopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2223), .COUT(n2224));
    defparam sub_123_add_2_10.INIT0 = 16'h5999;
    defparam sub_123_add_2_10.INIT1 = 16'h5999;
    defparam sub_123_add_2_10.INJECT1_0 = "NO";
    defparam sub_123_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_123_add_2_8 (.A0(gatedcount[6]), .B0(\Endofopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endofopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2222), .COUT(n2223));
    defparam sub_123_add_2_8.INIT0 = 16'h5999;
    defparam sub_123_add_2_8.INIT1 = 16'h5999;
    defparam sub_123_add_2_8.INJECT1_0 = "NO";
    defparam sub_123_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_123_add_2_6 (.A0(gatedcount[4]), .B0(\Endofopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endofopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2221), .COUT(n2222));
    defparam sub_123_add_2_6.INIT0 = 16'h5999;
    defparam sub_123_add_2_6.INIT1 = 16'h5999;
    defparam sub_123_add_2_6.INJECT1_0 = "NO";
    defparam sub_123_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_123_add_2_4 (.A0(gatedcount[2]), .B0(\Endofopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endofopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2220), .COUT(n2221));
    defparam sub_123_add_2_4.INIT0 = 16'h5999;
    defparam sub_123_add_2_4.INIT1 = 16'h5999;
    defparam sub_123_add_2_4.INJECT1_0 = "NO";
    defparam sub_123_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_123_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2220));
    defparam sub_123_add_2_2.INIT0 = 16'h5000;
    defparam sub_123_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_123_add_2_2.INJECT1_0 = "NO";
    defparam sub_123_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U4
//

module comparator_U4 (\gatedcount[5] , \gatedcount[6] , n2444, \gatedcount[13] , 
            \gatedcount[11] , \gatedcount[12] , n2441, \gatedcount[14] , 
            \gatedcount[15] , \gatedcount[10] , debug_1_c, \gatedcount[8] , 
            \gatedcount[7] , \gatedcount[3] , \gatedcount[9] , \gatedcount[4] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[5] ;
    input \gatedcount[6] ;
    output n2444;
    input \gatedcount[13] ;
    input \gatedcount[11] ;
    input \gatedcount[12] ;
    output n2441;
    input \gatedcount[14] ;
    input \gatedcount[15] ;
    input \gatedcount[10] ;
    output debug_1_c;
    input \gatedcount[8] ;
    input \gatedcount[7] ;
    input \gatedcount[3] ;
    input \gatedcount[9] ;
    input \gatedcount[4] ;
    
    
    wire n6, n7, n8;
    
    LUT4 i1_2_lut (.A(\gatedcount[5] ), .B(\gatedcount[6] ), .Z(n2444)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4_4_lut (.A(\gatedcount[13] ), .B(\gatedcount[11] ), .C(\gatedcount[12] ), 
         .D(n6), .Z(n2441)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_4 (.A(\gatedcount[14] ), .B(\gatedcount[15] ), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_2_lut_adj_4.init = 16'heeee;
    LUT4 i554_4_lut (.A(n2441), .B(n7), .C(\gatedcount[10] ), .D(n8), 
         .Z(debug_1_c)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C)))) */ ;
    defparam i554_4_lut.init = 16'h0105;
    LUT4 i2_2_lut (.A(\gatedcount[8] ), .B(\gatedcount[7] ), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(n2444), .B(\gatedcount[3] ), .C(\gatedcount[9] ), 
         .D(\gatedcount[4] ), .Z(n8)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'ha080;
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (gatedcount, \Resetandrepeat[4] , GND_net, \Resetandrepeat[5] , 
            n16, n32, \Resetandrepeat[3] , \Endofprobepulse[6] , \Endofprobepulse[7] , 
            \Endofprobepulse[8] , \Endofprobepulse[9] , \Endofprobepulse[10] , 
            \Endofprobepulse[11] , \Endofprobepulse[12] , \Endofprobepulse[13] , 
            \Endofprobepulse[14] , \Endofprobepulse[15] , n343) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input \Resetandrepeat[4] ;
    input GND_net;
    input \Resetandrepeat[5] ;
    input n16;
    input n32;
    input \Resetandrepeat[3] ;
    input \Endofprobepulse[6] ;
    input \Endofprobepulse[7] ;
    input \Endofprobepulse[8] ;
    input \Endofprobepulse[9] ;
    input \Endofprobepulse[10] ;
    input \Endofprobepulse[11] ;
    input \Endofprobepulse[12] ;
    input \Endofprobepulse[13] ;
    input \Endofprobepulse[14] ;
    input \Endofprobepulse[15] ;
    output n343;
    
    
    wire n2343, n2344, n2342, n2345, n2346, n2347, n2348, n2349;
    
    CCU2D sub_119_add_2_6 (.A0(gatedcount[4]), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2343), .COUT(n2344));
    defparam sub_119_add_2_6.INIT0 = 16'h5999;
    defparam sub_119_add_2_6.INIT1 = 16'h5999;
    defparam sub_119_add_2_6.INJECT1_0 = "NO";
    defparam sub_119_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_119_add_2_4 (.A0(n16), .B0(n32), .C0(gatedcount[2]), .D0(GND_net), 
          .A1(gatedcount[3]), .B1(\Resetandrepeat[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2342), .COUT(n2343));
    defparam sub_119_add_2_4.INIT0 = 16'h6969;
    defparam sub_119_add_2_4.INIT1 = 16'h5999;
    defparam sub_119_add_2_4.INJECT1_0 = "NO";
    defparam sub_119_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_119_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2342));
    defparam sub_119_add_2_2.INIT0 = 16'h5000;
    defparam sub_119_add_2_2.INIT1 = 16'h5555;
    defparam sub_119_add_2_2.INJECT1_0 = "NO";
    defparam sub_119_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_119_add_2_8 (.A0(gatedcount[6]), .B0(\Endofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2344), .COUT(n2345));
    defparam sub_119_add_2_8.INIT0 = 16'h5999;
    defparam sub_119_add_2_8.INIT1 = 16'h5999;
    defparam sub_119_add_2_8.INJECT1_0 = "NO";
    defparam sub_119_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_119_add_2_10 (.A0(gatedcount[8]), .B0(\Endofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2345), .COUT(n2346));
    defparam sub_119_add_2_10.INIT0 = 16'h5999;
    defparam sub_119_add_2_10.INIT1 = 16'h5999;
    defparam sub_119_add_2_10.INJECT1_0 = "NO";
    defparam sub_119_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_119_add_2_12 (.A0(gatedcount[10]), .B0(\Endofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2346), .COUT(n2347));
    defparam sub_119_add_2_12.INIT0 = 16'h5999;
    defparam sub_119_add_2_12.INIT1 = 16'h5999;
    defparam sub_119_add_2_12.INJECT1_0 = "NO";
    defparam sub_119_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_119_add_2_14 (.A0(gatedcount[12]), .B0(\Endofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2347), .COUT(n2348));
    defparam sub_119_add_2_14.INIT0 = 16'h5999;
    defparam sub_119_add_2_14.INIT1 = 16'h5999;
    defparam sub_119_add_2_14.INJECT1_0 = "NO";
    defparam sub_119_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_119_add_2_16 (.A0(gatedcount[14]), .B0(\Endofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2348), .COUT(n2349));
    defparam sub_119_add_2_16.INIT0 = 16'h5999;
    defparam sub_119_add_2_16.INIT1 = 16'h5999;
    defparam sub_119_add_2_16.INJECT1_0 = "NO";
    defparam sub_119_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_119_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2349), .S0(n343));
    defparam sub_119_add_2_cout.INIT0 = 16'h0000;
    defparam sub_119_add_2_cout.INIT1 = 16'h0000;
    defparam sub_119_add_2_cout.INJECT1_0 = "NO";
    defparam sub_119_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (GND_net, \gatedcount[1] , n16, n32, \gatedcount[2] , 
            \gatedcount[3] , \Startopticalsample[3] , \gatedcount[4] , 
            \Startopticalsample[4] , \gatedcount[5] , \Startopticalsample[5] , 
            \gatedcount[6] , \Startopticalsample[6] , \gatedcount[7] , 
            \Startopticalsample[7] , \gatedcount[8] , \Startopticalsample[8] , 
            \gatedcount[9] , \Startopticalsample[9] , \gatedcount[10] , 
            \Startopticalsample[10] , \gatedcount[11] , \Startopticalsample[11] , 
            \gatedcount[12] , \Startopticalsample[12] , \gatedcount[13] , 
            \Startopticalsample[13] , \gatedcount[14] , \Startopticalsample[14] , 
            \gatedcount[15] , \Startopticalsample[15] , probestarted) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input \gatedcount[1] ;
    input n16;
    input n32;
    input \gatedcount[2] ;
    input \gatedcount[3] ;
    input \Startopticalsample[3] ;
    input \gatedcount[4] ;
    input \Startopticalsample[4] ;
    input \gatedcount[5] ;
    input \Startopticalsample[5] ;
    input \gatedcount[6] ;
    input \Startopticalsample[6] ;
    input \gatedcount[7] ;
    input \Startopticalsample[7] ;
    input \gatedcount[8] ;
    input \Startopticalsample[8] ;
    input \gatedcount[9] ;
    input \Startopticalsample[9] ;
    input \gatedcount[10] ;
    input \Startopticalsample[10] ;
    input \gatedcount[11] ;
    input \Startopticalsample[11] ;
    input \gatedcount[12] ;
    input \Startopticalsample[12] ;
    input \gatedcount[13] ;
    input \Startopticalsample[13] ;
    input \gatedcount[14] ;
    input \Startopticalsample[14] ;
    input \gatedcount[15] ;
    input \Startopticalsample[15] ;
    output probestarted;
    
    
    wire n2350, n2351, n2352, n2353, n2354, n2355, n2356, n2357;
    
    CCU2D sub_117_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2350));
    defparam sub_117_add_2_2.INIT0 = 16'h0000;
    defparam sub_117_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_117_add_2_2.INJECT1_0 = "NO";
    defparam sub_117_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_4 (.A0(n16), .B0(n32), .C0(\gatedcount[2] ), .D0(GND_net), 
          .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2350), .COUT(n2351));
    defparam sub_117_add_2_4.INIT0 = 16'h6969;
    defparam sub_117_add_2_4.INIT1 = 16'h5999;
    defparam sub_117_add_2_4.INJECT1_0 = "NO";
    defparam sub_117_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2351), .COUT(n2352));
    defparam sub_117_add_2_6.INIT0 = 16'h5999;
    defparam sub_117_add_2_6.INIT1 = 16'h5999;
    defparam sub_117_add_2_6.INJECT1_0 = "NO";
    defparam sub_117_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2352), .COUT(n2353));
    defparam sub_117_add_2_8.INIT0 = 16'h5999;
    defparam sub_117_add_2_8.INIT1 = 16'h5999;
    defparam sub_117_add_2_8.INJECT1_0 = "NO";
    defparam sub_117_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2353), .COUT(n2354));
    defparam sub_117_add_2_10.INIT0 = 16'h5999;
    defparam sub_117_add_2_10.INIT1 = 16'h5999;
    defparam sub_117_add_2_10.INJECT1_0 = "NO";
    defparam sub_117_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2354), .COUT(n2355));
    defparam sub_117_add_2_12.INIT0 = 16'h5999;
    defparam sub_117_add_2_12.INIT1 = 16'h5999;
    defparam sub_117_add_2_12.INJECT1_0 = "NO";
    defparam sub_117_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2355), .COUT(n2356));
    defparam sub_117_add_2_14.INIT0 = 16'h5999;
    defparam sub_117_add_2_14.INIT1 = 16'h5999;
    defparam sub_117_add_2_14.INJECT1_0 = "NO";
    defparam sub_117_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2356), .COUT(n2357));
    defparam sub_117_add_2_16.INIT0 = 16'h5999;
    defparam sub_117_add_2_16.INIT1 = 16'h5999;
    defparam sub_117_add_2_16.INJECT1_0 = "NO";
    defparam sub_117_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2357), .S0(probestarted));
    defparam sub_117_add_2_cout.INIT0 = 16'h0000;
    defparam sub_117_add_2_cout.INIT1 = 16'h0000;
    defparam sub_117_add_2_cout.INJECT1_0 = "NO";
    defparam sub_117_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (GND_net, pieovertwo_minus, pieovertwo_plus, 
            load_defaults, \AdjustablePieOverTwo[15] , \AdjustablePieOverTwo[13] , 
            \AdjustablePieOverTwo[14] , \AdjustablePieOverTwo[11] , \AdjustablePieOverTwo[12] , 
            \AdjustablePieOverTwo[9] , \AdjustablePieOverTwo[10] , \AdjustablePieOverTwo[8] , 
            \AdjustablePieOverTwo[7] , \AdjustablePieOverTwo[6] , \AdjustablePieOverTwo[5] , 
            \AdjustablePieOverTwo[4] , \AdjustablePieOverTwo[3] , \AdjustablePieOverTwo[2] , 
            \Startof2ndMWpulse[1] , clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input load_defaults;
    output \AdjustablePieOverTwo[15] ;
    output \AdjustablePieOverTwo[13] ;
    output \AdjustablePieOverTwo[14] ;
    output \AdjustablePieOverTwo[11] ;
    output \AdjustablePieOverTwo[12] ;
    output \AdjustablePieOverTwo[9] ;
    output \AdjustablePieOverTwo[10] ;
    output \AdjustablePieOverTwo[8] ;
    output \AdjustablePieOverTwo[7] ;
    output \AdjustablePieOverTwo[6] ;
    output \AdjustablePieOverTwo[5] ;
    output \AdjustablePieOverTwo[4] ;
    output \AdjustablePieOverTwo[3] ;
    output \AdjustablePieOverTwo[2] ;
    output \Startof2ndMWpulse[1] ;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire [14:0]n1474;
    wire [15:0]count_15__N_108;
    
    wire n2190, n2191, n2192, n2196, n2195, n2194, n2193, n4, 
        n2219, n2218, n2217, n2216, n2215, n2214, n2213, n2212;
    
    CCU2D add_250_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1474[1]), 
          .D1(GND_net), .COUT(n2190), .S1(count_15__N_108[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_1.INIT0 = 16'hF000;
    defparam add_250_1.INIT1 = 16'hd2d2;
    defparam add_250_1.INJECT1_0 = "NO";
    defparam add_250_1.INJECT1_1 = "NO";
    CCU2D add_250_5 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1474[4]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1474[5]), 
          .D1(GND_net), .CIN(n2191), .COUT(n2192), .S0(count_15__N_108[5]), 
          .S1(count_15__N_108[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_5.INIT0 = 16'hd2d2;
    defparam add_250_5.INIT1 = 16'hd2d2;
    defparam add_250_5.INJECT1_0 = "NO";
    defparam add_250_5.INJECT1_1 = "NO";
    CCU2D add_250_15 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1474[14]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2196), .S0(count_15__N_108[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_15.INIT0 = 16'hd2d2;
    defparam add_250_15.INIT1 = 16'h0000;
    defparam add_250_15.INJECT1_0 = "NO";
    defparam add_250_15.INJECT1_1 = "NO";
    CCU2D add_250_13 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1474[12]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1474[13]), 
          .D1(GND_net), .CIN(n2195), .COUT(n2196), .S0(count_15__N_108[13]), 
          .S1(count_15__N_108[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_13.INIT0 = 16'hd2d2;
    defparam add_250_13.INIT1 = 16'hd2d2;
    defparam add_250_13.INJECT1_0 = "NO";
    defparam add_250_13.INJECT1_1 = "NO";
    CCU2D add_250_11 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1474[10]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1474[11]), 
          .D1(GND_net), .CIN(n2194), .COUT(n2195), .S0(count_15__N_108[11]), 
          .S1(count_15__N_108[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_11.INIT0 = 16'hd2d2;
    defparam add_250_11.INIT1 = 16'hd2d2;
    defparam add_250_11.INJECT1_0 = "NO";
    defparam add_250_11.INJECT1_1 = "NO";
    CCU2D add_250_9 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1474[8]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1474[9]), 
          .D1(GND_net), .CIN(n2193), .COUT(n2194), .S0(count_15__N_108[9]), 
          .S1(count_15__N_108[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_9.INIT0 = 16'hd2d2;
    defparam add_250_9.INIT1 = 16'hd2d2;
    defparam add_250_9.INJECT1_0 = "NO";
    defparam add_250_9.INJECT1_1 = "NO";
    CCU2D add_250_3 (.A0(n1474[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1474[3]), 
          .D1(GND_net), .CIN(n2190), .COUT(n2191), .S0(count_15__N_108[3]), 
          .S1(count_15__N_108[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_3.INIT0 = 16'h5aaa;
    defparam add_250_3.INIT1 = 16'hd2d2;
    defparam add_250_3.INJECT1_0 = "NO";
    defparam add_250_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(pieovertwo_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_163_209_add_1_17 (.A0(\AdjustablePieOverTwo[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2219), .S0(n1474[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_163_209_add_1_17.INIT0 = 16'h5aaa;
    defparam add_163_209_add_1_17.INIT1 = 16'h0000;
    defparam add_163_209_add_1_17.INJECT1_0 = "NO";
    defparam add_163_209_add_1_17.INJECT1_1 = "NO";
    CCU2D add_163_209_add_1_15 (.A0(\AdjustablePieOverTwo[13] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[14] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2218), .COUT(n2219), 
          .S0(n1474[12]), .S1(n1474[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_163_209_add_1_15.INIT0 = 16'h5aaa;
    defparam add_163_209_add_1_15.INIT1 = 16'h5aaa;
    defparam add_163_209_add_1_15.INJECT1_0 = "NO";
    defparam add_163_209_add_1_15.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_108[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    CCU2D add_163_209_add_1_13 (.A0(\AdjustablePieOverTwo[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[12] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2217), .COUT(n2218), 
          .S0(n1474[10]), .S1(n1474[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_163_209_add_1_13.INIT0 = 16'h5aaa;
    defparam add_163_209_add_1_13.INIT1 = 16'h5aaa;
    defparam add_163_209_add_1_13.INJECT1_0 = "NO";
    defparam add_163_209_add_1_13.INJECT1_1 = "NO";
    CCU2D add_163_209_add_1_11 (.A0(\AdjustablePieOverTwo[9] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[10] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2216), .COUT(n2217), 
          .S0(n1474[8]), .S1(n1474[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_163_209_add_1_11.INIT0 = 16'h5aaa;
    defparam add_163_209_add_1_11.INIT1 = 16'h5aaa;
    defparam add_163_209_add_1_11.INJECT1_0 = "NO";
    defparam add_163_209_add_1_11.INJECT1_1 = "NO";
    CCU2D add_250_7 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1474[6]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1474[7]), 
          .D1(GND_net), .CIN(n2192), .COUT(n2193), .S0(count_15__N_108[7]), 
          .S1(count_15__N_108[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_7.INIT0 = 16'hd2d2;
    defparam add_250_7.INIT1 = 16'hd2d2;
    defparam add_250_7.INJECT1_0 = "NO";
    defparam add_250_7.INJECT1_1 = "NO";
    FD1S3IX count_i14 (.D(count_15__N_108[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_108[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_108[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_108[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_108[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_108[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_108[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3JX count_i7 (.D(count_15__N_108[7]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3JX count_i6 (.D(count_15__N_108[6]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3JX count_i5 (.D(count_15__N_108[5]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3IX count_i4 (.D(count_15__N_108[4]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_108[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_108[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    FD1S3IX count_i1 (.D(count_15__N_108[1]), .CK(trigger), .CD(load_defaults), 
            .Q(\Startof2ndMWpulse[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i1.GSR = "ENABLED";
    CCU2D add_163_209_add_1_9 (.A0(\AdjustablePieOverTwo[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[8] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2215), .COUT(n2216), 
          .S0(n1474[6]), .S1(n1474[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_163_209_add_1_9.INIT0 = 16'h5aaa;
    defparam add_163_209_add_1_9.INIT1 = 16'h5aaa;
    defparam add_163_209_add_1_9.INJECT1_0 = "NO";
    defparam add_163_209_add_1_9.INJECT1_1 = "NO";
    CCU2D add_163_209_add_1_7 (.A0(\AdjustablePieOverTwo[5] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[6] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2214), .COUT(n2215), 
          .S0(n1474[4]), .S1(n1474[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_163_209_add_1_7.INIT0 = 16'h5aaa;
    defparam add_163_209_add_1_7.INIT1 = 16'h5aaa;
    defparam add_163_209_add_1_7.INJECT1_0 = "NO";
    defparam add_163_209_add_1_7.INJECT1_1 = "NO";
    CCU2D add_163_209_add_1_5 (.A0(\AdjustablePieOverTwo[3] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[4] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2213), .COUT(n2214), 
          .S0(n1474[2]), .S1(n1474[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_163_209_add_1_5.INIT0 = 16'h5666;
    defparam add_163_209_add_1_5.INIT1 = 16'h5aaa;
    defparam add_163_209_add_1_5.INJECT1_0 = "NO";
    defparam add_163_209_add_1_5.INJECT1_1 = "NO";
    CCU2D add_163_209_add_1_3 (.A0(\Startof2ndMWpulse[1] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[2] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2212), .COUT(n2213), 
          .S0(count_15__N_108[1]), .S1(n1474[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_163_209_add_1_3.INIT0 = 16'h5666;
    defparam add_163_209_add_1_3.INIT1 = 16'h5aaa;
    defparam add_163_209_add_1_3.INJECT1_0 = "NO";
    defparam add_163_209_add_1_3.INJECT1_1 = "NO";
    CCU2D add_163_209_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(GND_net), 
          .D1(GND_net), .COUT(n2212));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_163_209_add_1_1.INIT0 = 16'hF000;
    defparam add_163_209_add_1_1.INIT1 = 16'hdddd;
    defparam add_163_209_add_1_1.INJECT1_0 = "NO";
    defparam add_163_209_add_1_1.INJECT1_1 = "NO";
    single_period_pulse clean_trigger (.trigger(trigger), .clk_2M5(clk_2M5), 
            .pieovertwo_minus(pieovertwo_minus), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[22:92])
    
endmodule
//
// Verilog Description of module single_period_pulse
//

module single_period_pulse (trigger, clk_2M5, pieovertwo_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output trigger;
    input clk_2M5;
    input pieovertwo_minus;
    input n4;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire Q0, Q1;
    
    LUT4 Q0_I_0_2_lut (.A(Q0), .B(Q1), .Z(trigger)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(55[15:25])
    defparam Q0_I_0_2_lut.init = 16'h2222;
    d_flip_flop stage1_ff (.Q1(Q1), .clk_2M5(clk_2M5), .Q0(Q0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(52[14:51])
    d_flip_flop_U0 stage0_ff (.Q0(Q0), .clk_2M5(clk_2M5), .pieovertwo_minus(pieovertwo_minus), 
            .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(51[14:51])
    
endmodule
//
// Verilog Description of module d_flip_flop
//

module d_flip_flop (Q1, clk_2M5, Q0) /* synthesis syn_module_defined=1 */ ;
    output Q1;
    input clk_2M5;
    input Q0;
    
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3AX Q_5 (.D(Q0), .CK(clk_2M5), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module d_flip_flop_U0
//

module d_flip_flop_U0 (Q0, clk_2M5, pieovertwo_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output Q0;
    input clk_2M5;
    input pieovertwo_minus;
    input n4;
    
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3JX Q_5 (.D(n4), .CK(clk_2M5), .PD(pieovertwo_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module comparator_U7
//

module comparator_U7 (GND_net, loop, gatedcount, \Resetandrepeat[14] , 
            \Resetandrepeat[15] , \Resetandrepeat[12] , \Resetandrepeat[13] , 
            \Resetandrepeat[10] , \Resetandrepeat[11] , \Resetandrepeat[8] , 
            \Resetandrepeat[9] , \Resetandrepeat[6] , \Resetandrepeat[7] , 
            \Resetandrepeat[4] , \Resetandrepeat[5] , n16, n32, \Resetandrepeat[3] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output loop;
    input [15:0]gatedcount;
    input \Resetandrepeat[14] ;
    input \Resetandrepeat[15] ;
    input \Resetandrepeat[12] ;
    input \Resetandrepeat[13] ;
    input \Resetandrepeat[10] ;
    input \Resetandrepeat[11] ;
    input \Resetandrepeat[8] ;
    input \Resetandrepeat[9] ;
    input \Resetandrepeat[6] ;
    input \Resetandrepeat[7] ;
    input \Resetandrepeat[4] ;
    input \Resetandrepeat[5] ;
    input n16;
    input n32;
    input \Resetandrepeat[3] ;
    
    
    wire n2341, n2340, n2339, n2338, n2337, n2336, n2335, n2334;
    
    CCU2D sub_125_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2341), .S0(loop));
    defparam sub_125_add_2_cout.INIT0 = 16'h0000;
    defparam sub_125_add_2_cout.INIT1 = 16'h0000;
    defparam sub_125_add_2_cout.INJECT1_0 = "NO";
    defparam sub_125_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_125_add_2_16 (.A0(gatedcount[14]), .B0(\Resetandrepeat[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Resetandrepeat[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2340), .COUT(n2341));
    defparam sub_125_add_2_16.INIT0 = 16'h5999;
    defparam sub_125_add_2_16.INIT1 = 16'h5999;
    defparam sub_125_add_2_16.INJECT1_0 = "NO";
    defparam sub_125_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_125_add_2_14 (.A0(gatedcount[12]), .B0(\Resetandrepeat[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Resetandrepeat[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2339), .COUT(n2340));
    defparam sub_125_add_2_14.INIT0 = 16'h5999;
    defparam sub_125_add_2_14.INIT1 = 16'h5999;
    defparam sub_125_add_2_14.INJECT1_0 = "NO";
    defparam sub_125_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_125_add_2_12 (.A0(gatedcount[10]), .B0(\Resetandrepeat[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Resetandrepeat[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2338), .COUT(n2339));
    defparam sub_125_add_2_12.INIT0 = 16'h5999;
    defparam sub_125_add_2_12.INIT1 = 16'h5999;
    defparam sub_125_add_2_12.INJECT1_0 = "NO";
    defparam sub_125_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_125_add_2_10 (.A0(gatedcount[8]), .B0(\Resetandrepeat[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Resetandrepeat[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2337), .COUT(n2338));
    defparam sub_125_add_2_10.INIT0 = 16'h5999;
    defparam sub_125_add_2_10.INIT1 = 16'h5999;
    defparam sub_125_add_2_10.INJECT1_0 = "NO";
    defparam sub_125_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_125_add_2_8 (.A0(gatedcount[6]), .B0(\Resetandrepeat[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Resetandrepeat[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2336), .COUT(n2337));
    defparam sub_125_add_2_8.INIT0 = 16'h5999;
    defparam sub_125_add_2_8.INIT1 = 16'h5999;
    defparam sub_125_add_2_8.INJECT1_0 = "NO";
    defparam sub_125_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_125_add_2_6 (.A0(gatedcount[4]), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2335), .COUT(n2336));
    defparam sub_125_add_2_6.INIT0 = 16'h5999;
    defparam sub_125_add_2_6.INIT1 = 16'h5999;
    defparam sub_125_add_2_6.INJECT1_0 = "NO";
    defparam sub_125_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_125_add_2_4 (.A0(n16), .B0(n32), .C0(gatedcount[2]), .D0(GND_net), 
          .A1(gatedcount[3]), .B1(\Resetandrepeat[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2334), .COUT(n2335));
    defparam sub_125_add_2_4.INIT0 = 16'h6969;
    defparam sub_125_add_2_4.INIT1 = 16'h5999;
    defparam sub_125_add_2_4.INJECT1_0 = "NO";
    defparam sub_125_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_125_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2334));
    defparam sub_125_add_2_2.INIT0 = 16'h5000;
    defparam sub_125_add_2_2.INIT1 = 16'h5555;
    defparam sub_125_add_2_2.INJECT1_0 = "NO";
    defparam sub_125_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload_U8
//

module countupdownpreload_U8 (freeprecess_minus, freeprecess_plus, GND_net, 
            \AdjustableFreePrecession[14] , \AdjustableFreePrecession[15] , 
            \AdjustableFreePrecession[12] , \AdjustableFreePrecession[13] , 
            \AdjustableFreePrecession[10] , \AdjustableFreePrecession[11] , 
            \AdjustableFreePrecession[8] , \AdjustableFreePrecession[9] , 
            \AdjustableFreePrecession[6] , \AdjustableFreePrecession[7] , 
            \AdjustableFreePrecession[4] , \AdjustableFreePrecession[5] , 
            \AdjustableFreePrecession[2] , \AdjustableFreePrecession[3] , 
            load_defaults, clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input freeprecess_minus;
    input freeprecess_plus;
    input GND_net;
    output \AdjustableFreePrecession[14] ;
    output \AdjustableFreePrecession[15] ;
    output \AdjustableFreePrecession[12] ;
    output \AdjustableFreePrecession[13] ;
    output \AdjustableFreePrecession[10] ;
    output \AdjustableFreePrecession[11] ;
    output \AdjustableFreePrecession[8] ;
    output \AdjustableFreePrecession[9] ;
    output \AdjustableFreePrecession[6] ;
    output \AdjustableFreePrecession[7] ;
    output \AdjustableFreePrecession[4] ;
    output \AdjustableFreePrecession[5] ;
    output \AdjustableFreePrecession[2] ;
    output \AdjustableFreePrecession[3] ;
    input load_defaults;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n2206;
    wire [13:0]n1634;
    wire [15:0]count_15__N_108;
    
    wire n2207, n2205, n2204, n2203, n2202, n2302, n2301, n2300, 
        n2299, n2298, n2297, n2296, n4;
    
    CCU2D add_251_11 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1634[10]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1634[11]), .D1(GND_net), .CIN(n2206), .COUT(n2207), .S0(count_15__N_108[12]), 
          .S1(count_15__N_108[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_251_11.INIT0 = 16'hd2d2;
    defparam add_251_11.INIT1 = 16'hd2d2;
    defparam add_251_11.INJECT1_0 = "NO";
    defparam add_251_11.INJECT1_1 = "NO";
    CCU2D add_251_9 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1634[8]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1634[9]), .D1(GND_net), .CIN(n2205), .COUT(n2206), .S0(count_15__N_108[10]), 
          .S1(count_15__N_108[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_251_9.INIT0 = 16'hd2d2;
    defparam add_251_9.INIT1 = 16'hd2d2;
    defparam add_251_9.INJECT1_0 = "NO";
    defparam add_251_9.INJECT1_1 = "NO";
    CCU2D add_251_7 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1634[6]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1634[7]), .D1(GND_net), .CIN(n2204), .COUT(n2205), .S0(count_15__N_108[8]), 
          .S1(count_15__N_108[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_251_7.INIT0 = 16'hd2d2;
    defparam add_251_7.INIT1 = 16'hd2d2;
    defparam add_251_7.INJECT1_0 = "NO";
    defparam add_251_7.INJECT1_1 = "NO";
    CCU2D add_251_5 (.A0(n1634[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1634[5]), 
          .D1(GND_net), .CIN(n2203), .COUT(n2204), .S0(count_15__N_108[6]), 
          .S1(count_15__N_108[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_251_5.INIT0 = 16'h5aaa;
    defparam add_251_5.INIT1 = 16'hd2d2;
    defparam add_251_5.INJECT1_0 = "NO";
    defparam add_251_5.INJECT1_1 = "NO";
    CCU2D add_251_3 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1634[2]), 
          .D0(GND_net), .A1(n1634[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2202), .COUT(n2203), .S0(count_15__N_108[4]), .S1(count_15__N_108[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_251_3.INIT0 = 16'hd2d2;
    defparam add_251_3.INIT1 = 16'h5aaa;
    defparam add_251_3.INJECT1_0 = "NO";
    defparam add_251_3.INJECT1_1 = "NO";
    CCU2D add_167_211_add_1_15 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2302), .S0(n1634[12]), 
          .S1(n1634[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_167_211_add_1_15.INIT0 = 16'h5aaa;
    defparam add_167_211_add_1_15.INIT1 = 16'h5aaa;
    defparam add_167_211_add_1_15.INJECT1_0 = "NO";
    defparam add_167_211_add_1_15.INJECT1_1 = "NO";
    CCU2D add_167_211_add_1_13 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2301), .COUT(n2302), 
          .S0(n1634[10]), .S1(n1634[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_167_211_add_1_13.INIT0 = 16'h5aaa;
    defparam add_167_211_add_1_13.INIT1 = 16'h5aaa;
    defparam add_167_211_add_1_13.INJECT1_0 = "NO";
    defparam add_167_211_add_1_13.INJECT1_1 = "NO";
    CCU2D add_167_211_add_1_11 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2300), .COUT(n2301), 
          .S0(n1634[8]), .S1(n1634[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_167_211_add_1_11.INIT0 = 16'h5aaa;
    defparam add_167_211_add_1_11.INIT1 = 16'h5aaa;
    defparam add_167_211_add_1_11.INJECT1_0 = "NO";
    defparam add_167_211_add_1_11.INJECT1_1 = "NO";
    CCU2D add_167_211_add_1_9 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2299), .COUT(n2300), 
          .S0(n1634[6]), .S1(n1634[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_167_211_add_1_9.INIT0 = 16'h5aaa;
    defparam add_167_211_add_1_9.INIT1 = 16'h5aaa;
    defparam add_167_211_add_1_9.INJECT1_0 = "NO";
    defparam add_167_211_add_1_9.INJECT1_1 = "NO";
    CCU2D add_167_211_add_1_7 (.A0(\AdjustableFreePrecession[6] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2298), .COUT(n2299), 
          .S0(n1634[4]), .S1(n1634[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_167_211_add_1_7.INIT0 = 16'h5666;
    defparam add_167_211_add_1_7.INIT1 = 16'h5aaa;
    defparam add_167_211_add_1_7.INJECT1_0 = "NO";
    defparam add_167_211_add_1_7.INJECT1_1 = "NO";
    CCU2D add_167_211_add_1_5 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), 
          .B1(freeprecess_plus), .C1(GND_net), .D1(GND_net), .CIN(n2297), 
          .COUT(n2298), .S0(n1634[2]), .S1(n1634[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_167_211_add_1_5.INIT0 = 16'h5aaa;
    defparam add_167_211_add_1_5.INIT1 = 16'h5666;
    defparam add_167_211_add_1_5.INJECT1_0 = "NO";
    defparam add_167_211_add_1_5.INJECT1_1 = "NO";
    CCU2D add_167_211_add_1_3 (.A0(\AdjustableFreePrecession[2] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[3] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2296), .COUT(n2297), 
          .S0(count_15__N_108[2]), .S1(n1634[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_167_211_add_1_3.INIT0 = 16'h5666;
    defparam add_167_211_add_1_3.INIT1 = 16'h5aaa;
    defparam add_167_211_add_1_3.INJECT1_0 = "NO";
    defparam add_167_211_add_1_3.INJECT1_1 = "NO";
    CCU2D add_167_211_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(GND_net), .D1(GND_net), .COUT(n2296));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_167_211_add_1_1.INIT0 = 16'hF000;
    defparam add_167_211_add_1_1.INIT1 = 16'hdddd;
    defparam add_167_211_add_1_1.INJECT1_0 = "NO";
    defparam add_167_211_add_1_1.INJECT1_1 = "NO";
    CCU2D add_251_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1634[1]), 
          .D1(GND_net), .COUT(n2202), .S1(count_15__N_108[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_251_1.INIT0 = 16'hF000;
    defparam add_251_1.INIT1 = 16'hd2d2;
    defparam add_251_1.INJECT1_0 = "NO";
    defparam add_251_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(freeprecess_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX count_i15 (.D(count_15__N_108[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_108[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_108[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3JX count_i12 (.D(count_15__N_108[12]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3JX count_i11 (.D(count_15__N_108[11]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3JX count_i10 (.D(count_15__N_108[10]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3IX count_i9 (.D(count_15__N_108[9]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_108[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_108[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3JX count_i6 (.D(count_15__N_108[6]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_108[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3IX count_i4 (.D(count_15__N_108[4]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_108[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3JX count_i2 (.D(count_15__N_108[2]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    CCU2D add_251_13 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1634[12]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1634[13]), .D1(GND_net), .CIN(n2207), .S0(count_15__N_108[14]), 
          .S1(count_15__N_108[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_251_13.INIT0 = 16'hd2d2;
    defparam add_251_13.INIT1 = 16'hd2d2;
    defparam add_251_13.INJECT1_0 = "NO";
    defparam add_251_13.INJECT1_1 = "NO";
    single_period_pulse_U3 clean_trigger (.trigger(trigger), .clk_2M5(clk_2M5), 
            .freeprecess_minus(freeprecess_minus), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[22:92])
    
endmodule
//
// Verilog Description of module single_period_pulse_U3
//

module single_period_pulse_U3 (trigger, clk_2M5, freeprecess_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output trigger;
    input clk_2M5;
    input freeprecess_minus;
    input n4;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire Q0, Q1;
    
    LUT4 Q0_I_0_2_lut (.A(Q0), .B(Q1), .Z(trigger)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(55[15:25])
    defparam Q0_I_0_2_lut.init = 16'h2222;
    d_flip_flop_U1 stage1_ff (.Q1(Q1), .clk_2M5(clk_2M5), .Q0(Q0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(52[14:51])
    d_flip_flop_U2 stage0_ff (.Q0(Q0), .clk_2M5(clk_2M5), .freeprecess_minus(freeprecess_minus), 
            .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(51[14:51])
    
endmodule
//
// Verilog Description of module d_flip_flop_U1
//

module d_flip_flop_U1 (Q1, clk_2M5, Q0) /* synthesis syn_module_defined=1 */ ;
    output Q1;
    input clk_2M5;
    input Q0;
    
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3AX Q_5 (.D(Q0), .CK(clk_2M5), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module d_flip_flop_U2
//

module d_flip_flop_U2 (Q0, clk_2M5, freeprecess_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output Q0;
    input clk_2M5;
    input freeprecess_minus;
    input n4;
    
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3JX Q_5 (.D(n4), .CK(clk_2M5), .PD(freeprecess_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module comparator_U9
//

module comparator_U9 (gatedcount, GND_net, n16, \AdjustableFreePrecession[2] , 
            \Endof2ndMWpulse[3] , \Endof2ndMWpulse[4] , \Endof2ndMWpulse[5] , 
            \Endof2ndMWpulse[6] , \Endof2ndMWpulse[7] , \Endof2ndMWpulse[8] , 
            \Endof2ndMWpulse[9] , \Endof2ndMWpulse[10] , \Endof2ndMWpulse[11] , 
            \Endof2ndMWpulse[12] , \Endof2ndMWpulse[13] , \Endof2ndMWpulse[14] , 
            \Endof2ndMWpulse[15] , n305) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input GND_net;
    input n16;
    input \AdjustableFreePrecession[2] ;
    input \Endof2ndMWpulse[3] ;
    input \Endof2ndMWpulse[4] ;
    input \Endof2ndMWpulse[5] ;
    input \Endof2ndMWpulse[6] ;
    input \Endof2ndMWpulse[7] ;
    input \Endof2ndMWpulse[8] ;
    input \Endof2ndMWpulse[9] ;
    input \Endof2ndMWpulse[10] ;
    input \Endof2ndMWpulse[11] ;
    input \Endof2ndMWpulse[12] ;
    input \Endof2ndMWpulse[13] ;
    input \Endof2ndMWpulse[14] ;
    input \Endof2ndMWpulse[15] ;
    output n305;
    
    
    wire n2358, n2359, n2360, n2361, n2362, n2363, n2364, n2365;
    
    CCU2D sub_115_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2358));
    defparam sub_115_add_2_2.INIT0 = 16'h5000;
    defparam sub_115_add_2_2.INIT1 = 16'h5555;
    defparam sub_115_add_2_2.INJECT1_0 = "NO";
    defparam sub_115_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_4 (.A0(n16), .B0(\AdjustableFreePrecession[2] ), 
          .C0(gatedcount[2]), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2358), .COUT(n2359));
    defparam sub_115_add_2_4.INIT0 = 16'h6969;
    defparam sub_115_add_2_4.INIT1 = 16'h5999;
    defparam sub_115_add_2_4.INJECT1_0 = "NO";
    defparam sub_115_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_6 (.A0(gatedcount[4]), .B0(\Endof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2359), .COUT(n2360));
    defparam sub_115_add_2_6.INIT0 = 16'h5999;
    defparam sub_115_add_2_6.INIT1 = 16'h5999;
    defparam sub_115_add_2_6.INJECT1_0 = "NO";
    defparam sub_115_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_8 (.A0(gatedcount[6]), .B0(\Endof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2360), .COUT(n2361));
    defparam sub_115_add_2_8.INIT0 = 16'h5999;
    defparam sub_115_add_2_8.INIT1 = 16'h5999;
    defparam sub_115_add_2_8.INJECT1_0 = "NO";
    defparam sub_115_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_10 (.A0(gatedcount[8]), .B0(\Endof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2361), .COUT(n2362));
    defparam sub_115_add_2_10.INIT0 = 16'h5999;
    defparam sub_115_add_2_10.INIT1 = 16'h5999;
    defparam sub_115_add_2_10.INJECT1_0 = "NO";
    defparam sub_115_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_12 (.A0(gatedcount[10]), .B0(\Endof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2362), .COUT(n2363));
    defparam sub_115_add_2_12.INIT0 = 16'h5999;
    defparam sub_115_add_2_12.INIT1 = 16'h5999;
    defparam sub_115_add_2_12.INJECT1_0 = "NO";
    defparam sub_115_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_14 (.A0(gatedcount[12]), .B0(\Endof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2363), .COUT(n2364));
    defparam sub_115_add_2_14.INIT0 = 16'h5999;
    defparam sub_115_add_2_14.INIT1 = 16'h5999;
    defparam sub_115_add_2_14.INJECT1_0 = "NO";
    defparam sub_115_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_16 (.A0(gatedcount[14]), .B0(\Endof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2364), .COUT(n2365));
    defparam sub_115_add_2_16.INIT0 = 16'h5999;
    defparam sub_115_add_2_16.INIT1 = 16'h5999;
    defparam sub_115_add_2_16.INJECT1_0 = "NO";
    defparam sub_115_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2365), .S0(n305));
    defparam sub_115_add_2_cout.INIT0 = 16'h0000;
    defparam sub_115_add_2_cout.INIT1 = 16'h0000;
    defparam sub_115_add_2_cout.INJECT1_0 = "NO";
    defparam sub_115_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U10
//

module comparator_U10 (GND_net, pi2started, gatedcount, \Startof2ndMWpulse[14] , 
            \Startof2ndMWpulse[15] , \Startof2ndMWpulse[12] , \Startof2ndMWpulse[13] , 
            \Startof2ndMWpulse[10] , \Startof2ndMWpulse[11] , \Startof2ndMWpulse[8] , 
            \Startof2ndMWpulse[9] , \Startof2ndMWpulse[6] , \Startof2ndMWpulse[7] , 
            \Startof2ndMWpulse[4] , \Startof2ndMWpulse[5] , n16, \AdjustableFreePrecession[2] , 
            \Startof2ndMWpulse[3] , \Startof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output pi2started;
    input [15:0]gatedcount;
    input \Startof2ndMWpulse[14] ;
    input \Startof2ndMWpulse[15] ;
    input \Startof2ndMWpulse[12] ;
    input \Startof2ndMWpulse[13] ;
    input \Startof2ndMWpulse[10] ;
    input \Startof2ndMWpulse[11] ;
    input \Startof2ndMWpulse[8] ;
    input \Startof2ndMWpulse[9] ;
    input \Startof2ndMWpulse[6] ;
    input \Startof2ndMWpulse[7] ;
    input \Startof2ndMWpulse[4] ;
    input \Startof2ndMWpulse[5] ;
    input n16;
    input \AdjustableFreePrecession[2] ;
    input \Startof2ndMWpulse[3] ;
    input \Startof2ndMWpulse[1] ;
    
    
    wire n2258, n2257, n2256, n2255, n2254, n2253, n2252, n2251;
    
    CCU2D sub_113_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2258), .S0(pi2started));
    defparam sub_113_add_2_cout.INIT0 = 16'h0000;
    defparam sub_113_add_2_cout.INIT1 = 16'h0000;
    defparam sub_113_add_2_cout.INJECT1_0 = "NO";
    defparam sub_113_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_113_add_2_16 (.A0(gatedcount[14]), .B0(\Startof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Startof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2257), .COUT(n2258));
    defparam sub_113_add_2_16.INIT0 = 16'h5999;
    defparam sub_113_add_2_16.INIT1 = 16'h5999;
    defparam sub_113_add_2_16.INJECT1_0 = "NO";
    defparam sub_113_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_113_add_2_14 (.A0(gatedcount[12]), .B0(\Startof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Startof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2256), .COUT(n2257));
    defparam sub_113_add_2_14.INIT0 = 16'h5999;
    defparam sub_113_add_2_14.INIT1 = 16'h5999;
    defparam sub_113_add_2_14.INJECT1_0 = "NO";
    defparam sub_113_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_113_add_2_12 (.A0(gatedcount[10]), .B0(\Startof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Startof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2255), .COUT(n2256));
    defparam sub_113_add_2_12.INIT0 = 16'h5999;
    defparam sub_113_add_2_12.INIT1 = 16'h5999;
    defparam sub_113_add_2_12.INJECT1_0 = "NO";
    defparam sub_113_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_113_add_2_10 (.A0(gatedcount[8]), .B0(\Startof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Startof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2254), .COUT(n2255));
    defparam sub_113_add_2_10.INIT0 = 16'h5999;
    defparam sub_113_add_2_10.INIT1 = 16'h5999;
    defparam sub_113_add_2_10.INJECT1_0 = "NO";
    defparam sub_113_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_113_add_2_8 (.A0(gatedcount[6]), .B0(\Startof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Startof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2253), .COUT(n2254));
    defparam sub_113_add_2_8.INIT0 = 16'h5999;
    defparam sub_113_add_2_8.INIT1 = 16'h5999;
    defparam sub_113_add_2_8.INJECT1_0 = "NO";
    defparam sub_113_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_113_add_2_6 (.A0(gatedcount[4]), .B0(\Startof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Startof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2252), .COUT(n2253));
    defparam sub_113_add_2_6.INIT0 = 16'h5999;
    defparam sub_113_add_2_6.INIT1 = 16'h5999;
    defparam sub_113_add_2_6.INJECT1_0 = "NO";
    defparam sub_113_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_113_add_2_4 (.A0(n16), .B0(\AdjustableFreePrecession[2] ), 
          .C0(gatedcount[2]), .D0(GND_net), .A1(gatedcount[3]), .B1(\Startof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2251), .COUT(n2252));
    defparam sub_113_add_2_4.INIT0 = 16'h6969;
    defparam sub_113_add_2_4.INIT1 = 16'h5999;
    defparam sub_113_add_2_4.INJECT1_0 = "NO";
    defparam sub_113_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_113_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2251));
    defparam sub_113_add_2_2.INIT0 = 16'h5000;
    defparam sub_113_add_2_2.INIT1 = 16'h5999;
    defparam sub_113_add_2_2.INJECT1_0 = "NO";
    defparam sub_113_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U11
//

module comparator_U11 (GND_net, n267, gatedcount, \Endof1stMWpulse[14] , 
            \Endof1stMWpulse[15] , \Endof1stMWpulse[12] , \Endof1stMWpulse[13] , 
            \Endof1stMWpulse[10] , \Endof1stMWpulse[11] , \Endof1stMWpulse[8] , 
            \Endof1stMWpulse[9] , \Endof1stMWpulse[6] , \Endof1stMWpulse[7] , 
            \Endof1stMWpulse[4] , \Endof1stMWpulse[5] , \Endof1stMWpulse[2] , 
            \Endof1stMWpulse[3] , \Startof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n267;
    input [15:0]gatedcount;
    input \Endof1stMWpulse[14] ;
    input \Endof1stMWpulse[15] ;
    input \Endof1stMWpulse[12] ;
    input \Endof1stMWpulse[13] ;
    input \Endof1stMWpulse[10] ;
    input \Endof1stMWpulse[11] ;
    input \Endof1stMWpulse[8] ;
    input \Endof1stMWpulse[9] ;
    input \Endof1stMWpulse[6] ;
    input \Endof1stMWpulse[7] ;
    input \Endof1stMWpulse[4] ;
    input \Endof1stMWpulse[5] ;
    input \Endof1stMWpulse[2] ;
    input \Endof1stMWpulse[3] ;
    input \Startof2ndMWpulse[1] ;
    
    
    wire n2326, n2325, n2324, n2323, n2322, n2321, n2320, n2319;
    
    CCU2D sub_111_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2326), .S0(n267));
    defparam sub_111_add_2_cout.INIT0 = 16'h0000;
    defparam sub_111_add_2_cout.INIT1 = 16'h0000;
    defparam sub_111_add_2_cout.INJECT1_0 = "NO";
    defparam sub_111_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_16 (.A0(gatedcount[14]), .B0(\Endof1stMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof1stMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2325), .COUT(n2326));
    defparam sub_111_add_2_16.INIT0 = 16'h5999;
    defparam sub_111_add_2_16.INIT1 = 16'h5999;
    defparam sub_111_add_2_16.INJECT1_0 = "NO";
    defparam sub_111_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_14 (.A0(gatedcount[12]), .B0(\Endof1stMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof1stMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2324), .COUT(n2325));
    defparam sub_111_add_2_14.INIT0 = 16'h5999;
    defparam sub_111_add_2_14.INIT1 = 16'h5999;
    defparam sub_111_add_2_14.INJECT1_0 = "NO";
    defparam sub_111_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_12 (.A0(gatedcount[10]), .B0(\Endof1stMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof1stMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2323), .COUT(n2324));
    defparam sub_111_add_2_12.INIT0 = 16'h5999;
    defparam sub_111_add_2_12.INIT1 = 16'h5999;
    defparam sub_111_add_2_12.INJECT1_0 = "NO";
    defparam sub_111_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_10 (.A0(gatedcount[8]), .B0(\Endof1stMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof1stMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2322), .COUT(n2323));
    defparam sub_111_add_2_10.INIT0 = 16'h5999;
    defparam sub_111_add_2_10.INIT1 = 16'h5999;
    defparam sub_111_add_2_10.INJECT1_0 = "NO";
    defparam sub_111_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_8 (.A0(gatedcount[6]), .B0(\Endof1stMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof1stMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2321), .COUT(n2322));
    defparam sub_111_add_2_8.INIT0 = 16'h5999;
    defparam sub_111_add_2_8.INIT1 = 16'h5999;
    defparam sub_111_add_2_8.INJECT1_0 = "NO";
    defparam sub_111_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_6 (.A0(gatedcount[4]), .B0(\Endof1stMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof1stMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2320), .COUT(n2321));
    defparam sub_111_add_2_6.INIT0 = 16'h5999;
    defparam sub_111_add_2_6.INIT1 = 16'h5999;
    defparam sub_111_add_2_6.INJECT1_0 = "NO";
    defparam sub_111_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_4 (.A0(gatedcount[2]), .B0(\Endof1stMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof1stMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2319), .COUT(n2320));
    defparam sub_111_add_2_4.INIT0 = 16'h5999;
    defparam sub_111_add_2_4.INIT1 = 16'h5999;
    defparam sub_111_add_2_4.INJECT1_0 = "NO";
    defparam sub_111_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2319));
    defparam sub_111_add_2_2.INIT0 = 16'h5000;
    defparam sub_111_add_2_2.INIT1 = 16'h5999;
    defparam sub_111_add_2_2.INJECT1_0 = "NO";
    defparam sub_111_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U12
//

module comparator_U12 (\gatedcount[10] , \gatedcount[7] , \gatedcount[9] , 
            n1915, \gatedcount[4] , \gatedcount[8] , n2444, \gatedcount[0] , 
            \gatedcount[3] , \gatedcount[2] , \gatedcount[1] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[10] ;
    input \gatedcount[7] ;
    input \gatedcount[9] ;
    output n1915;
    input \gatedcount[4] ;
    input \gatedcount[8] ;
    input n2444;
    input \gatedcount[0] ;
    input \gatedcount[3] ;
    input \gatedcount[2] ;
    input \gatedcount[1] ;
    
    
    wire n5, n4;
    
    LUT4 i433_4_lut (.A(n5), .B(\gatedcount[10] ), .C(\gatedcount[7] ), 
         .D(\gatedcount[9] ), .Z(n1915)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i433_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut (.A(\gatedcount[4] ), .B(\gatedcount[8] ), .C(n2444), 
         .D(n4), .Z(n5)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i1_4_lut_adj_3 (.A(\gatedcount[0] ), .B(\gatedcount[3] ), .C(\gatedcount[2] ), 
         .D(\gatedcount[1] ), .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_3.init = 16'hfcec;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module quad_state_machine
//

module quad_state_machine (SMstate, sampled_modebutton) /* synthesis syn_module_defined=1 */ ;
    output [1:0]SMstate;
    input sampled_modebutton;
    
    wire sampled_modebutton /* synthesis is_clock=1, SET_AS_NETWORK=sampled_modebutton */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[6:24])
    wire [1:0]state_1__N_150;
    
    FD1S3AX state_i0 (.D(state_1__N_150[0]), .CK(sampled_modebutton), .Q(SMstate[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=77, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(38[9] 41[7])
    defparam state_i0.GSR = "ENABLED";
    LUT4 i239_1_lut (.A(SMstate[0]), .Z(state_1__N_150[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(40[14:26])
    defparam i239_1_lut.init = 16'h5555;
    LUT4 i242_2_lut (.A(SMstate[0]), .B(SMstate[1]), .Z(state_1__N_150[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(40[14:26])
    defparam i242_2_lut.init = 16'h6666;
    FD1S3AX state_i1 (.D(state_1__N_150[1]), .CK(sampled_modebutton), .Q(SMstate[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=77, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(38[9] 41[7])
    defparam state_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clocks
//

module clocks (GND_net, debug_0_c, clk_2M5_N_30, clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output debug_0_c;
    output clk_2M5_N_30;
    output clk_2M5;
    
    wire debug_0_c /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    wire clk_2M5_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(debug_0_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=98, LSE_LLINE=68, LSE_RLINE=68 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(68[9:98])
    defparam OSCinst0.NOM_FREQ = "9.85";
    DIV4PLL PLL (.clk_2M5_N_30(clk_2M5_N_30), .clk_2M5(clk_2M5), .debug_0_c(debug_0_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(33[10:58])
    
endmodule
//
// Verilog Description of module DIV4PLL
//

module DIV4PLL (clk_2M5_N_30, clk_2M5, debug_0_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_2M5_N_30;
    output clk_2M5;
    input debug_0_c;
    input GND_net;
    
    wire clk_2M5_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debug_0_c /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    
    wire CLKFB_t;
    
    INV i579 (.A(clk_2M5), .Z(clk_2M5_N_30));
    EHXPLLJ PLLInst_0 (.CLKI(debug_0_c), .CLKFB(CLKFB_t), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_2M5), .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOP="2.500000", FREQUENCY_PIN_CLKI="10.000000", ICP_CURRENT="10", LPF_RESISTOR="76", syn_instantiated=1, LSE_LINE_FILE_ID=8, LSE_LCOL=10, LSE_RCOL=58, LSE_LLINE=33, LSE_RLINE=33 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(33[10:58])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 4;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "ENABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 3;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "INT_DIVA";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module slow_clock_pulse
//

module slow_clock_pulse (clk_2M5, GND_net, slow_pulse, fast_pulse, debounce_pulse) /* synthesis syn_module_defined=1 */ ;
    input clk_2M5;
    input GND_net;
    output slow_pulse;
    output fast_pulse;
    output debounce_pulse;
    
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(35[7:21])
    wire [22:0]n170;
    wire [22:0]n97;
    
    wire n2276, n2275, n2274, n2273, n2272, n2271, n2270, n2269, 
        n2268, n2267, n2266;
    
    FD1S3AX count_169__i0 (.D(n97[0]), .CK(clk_2M5), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i0.GSR = "ENABLED";
    CCU2D count_169_add_4_23 (.A0(n170[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2276), .S0(n97[21]), .S1(n97[22]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_23.INIT0 = 16'hfaaa;
    defparam count_169_add_4_23.INIT1 = 16'hfaaa;
    defparam count_169_add_4_23.INJECT1_0 = "NO";
    defparam count_169_add_4_23.INJECT1_1 = "NO";
    CCU2D count_169_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2275), .COUT(n2276), .S0(n97[19]), .S1(n97[20]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_21.INIT0 = 16'hfaaa;
    defparam count_169_add_4_21.INIT1 = 16'hfaaa;
    defparam count_169_add_4_21.INJECT1_0 = "NO";
    defparam count_169_add_4_21.INJECT1_1 = "NO";
    CCU2D count_169_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2274), .COUT(n2275), .S0(n97[17]), .S1(n97[18]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_19.INIT0 = 16'hfaaa;
    defparam count_169_add_4_19.INIT1 = 16'hfaaa;
    defparam count_169_add_4_19.INJECT1_0 = "NO";
    defparam count_169_add_4_19.INJECT1_1 = "NO";
    CCU2D count_169_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2273), .COUT(n2274), .S0(n97[15]), .S1(n97[16]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_17.INIT0 = 16'hfaaa;
    defparam count_169_add_4_17.INIT1 = 16'hfaaa;
    defparam count_169_add_4_17.INJECT1_0 = "NO";
    defparam count_169_add_4_17.INJECT1_1 = "NO";
    CCU2D count_169_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2272), .COUT(n2273), .S0(n97[13]), .S1(n97[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_15.INIT0 = 16'hfaaa;
    defparam count_169_add_4_15.INIT1 = 16'hfaaa;
    defparam count_169_add_4_15.INJECT1_0 = "NO";
    defparam count_169_add_4_15.INJECT1_1 = "NO";
    CCU2D count_169_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2271), .COUT(n2272), .S0(n97[11]), .S1(n97[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_13.INIT0 = 16'hfaaa;
    defparam count_169_add_4_13.INIT1 = 16'hfaaa;
    defparam count_169_add_4_13.INJECT1_0 = "NO";
    defparam count_169_add_4_13.INJECT1_1 = "NO";
    CCU2D count_169_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2270), .COUT(n2271), .S0(n97[9]), .S1(n97[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_11.INIT0 = 16'hfaaa;
    defparam count_169_add_4_11.INIT1 = 16'hfaaa;
    defparam count_169_add_4_11.INJECT1_0 = "NO";
    defparam count_169_add_4_11.INJECT1_1 = "NO";
    CCU2D count_169_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2269), .COUT(n2270), .S0(n97[7]), .S1(n97[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_9.INIT0 = 16'hfaaa;
    defparam count_169_add_4_9.INIT1 = 16'hfaaa;
    defparam count_169_add_4_9.INJECT1_0 = "NO";
    defparam count_169_add_4_9.INJECT1_1 = "NO";
    CCU2D count_169_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2268), .COUT(n2269), .S0(n97[5]), .S1(n97[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_7.INIT0 = 16'hfaaa;
    defparam count_169_add_4_7.INIT1 = 16'hfaaa;
    defparam count_169_add_4_7.INJECT1_0 = "NO";
    defparam count_169_add_4_7.INJECT1_1 = "NO";
    CCU2D count_169_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2267), .COUT(n2268), .S0(n97[3]), .S1(n97[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_5.INIT0 = 16'hfaaa;
    defparam count_169_add_4_5.INIT1 = 16'hfaaa;
    defparam count_169_add_4_5.INJECT1_0 = "NO";
    defparam count_169_add_4_5.INJECT1_1 = "NO";
    CCU2D count_169_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2266), .COUT(n2267), .S0(n97[1]), .S1(n97[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_3.INIT0 = 16'hfaaa;
    defparam count_169_add_4_3.INIT1 = 16'hfaaa;
    defparam count_169_add_4_3.INJECT1_0 = "NO";
    defparam count_169_add_4_3.INJECT1_1 = "NO";
    CCU2D count_169_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2266), .S1(n97[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169_add_4_1.INIT0 = 16'hF000;
    defparam count_169_add_4_1.INIT1 = 16'h0555;
    defparam count_169_add_4_1.INJECT1_0 = "NO";
    defparam count_169_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_169__i22 (.D(n97[22]), .CK(clk_2M5), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i22.GSR = "ENABLED";
    FD1S3AX count_169__i21 (.D(n97[21]), .CK(clk_2M5), .Q(n170[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i21.GSR = "ENABLED";
    FD1S3AX count_169__i20 (.D(n97[20]), .CK(clk_2M5), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i20.GSR = "ENABLED";
    FD1S3AX count_169__i19 (.D(n97[19]), .CK(clk_2M5), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i19.GSR = "ENABLED";
    FD1S3AX count_169__i18 (.D(n97[18]), .CK(clk_2M5), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i18.GSR = "ENABLED";
    FD1S3AX count_169__i17 (.D(n97[17]), .CK(clk_2M5), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i17.GSR = "ENABLED";
    FD1S3AX count_169__i16 (.D(n97[16]), .CK(clk_2M5), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i16.GSR = "ENABLED";
    FD1S3AX count_169__i15 (.D(n97[15]), .CK(clk_2M5), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i15.GSR = "ENABLED";
    FD1S3AX count_169__i14 (.D(n97[14]), .CK(clk_2M5), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i14.GSR = "ENABLED";
    FD1S3AX count_169__i13 (.D(n97[13]), .CK(clk_2M5), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i13.GSR = "ENABLED";
    FD1S3AX count_169__i12 (.D(n97[12]), .CK(clk_2M5), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i12.GSR = "ENABLED";
    FD1S3AX count_169__i11 (.D(n97[11]), .CK(clk_2M5), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i11.GSR = "ENABLED";
    FD1S3AX count_169__i10 (.D(n97[10]), .CK(clk_2M5), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i10.GSR = "ENABLED";
    FD1S3AX count_169__i9 (.D(n97[9]), .CK(clk_2M5), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i9.GSR = "ENABLED";
    FD1S3AX count_169__i8 (.D(n97[8]), .CK(clk_2M5), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i8.GSR = "ENABLED";
    FD1S3AX count_169__i7 (.D(n97[7]), .CK(clk_2M5), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i7.GSR = "ENABLED";
    FD1S3AX count_169__i6 (.D(n97[6]), .CK(clk_2M5), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i6.GSR = "ENABLED";
    FD1S3AX count_169__i5 (.D(n97[5]), .CK(clk_2M5), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i5.GSR = "ENABLED";
    FD1S3AX count_169__i4 (.D(n97[4]), .CK(clk_2M5), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i4.GSR = "ENABLED";
    FD1S3AX count_169__i3 (.D(n97[3]), .CK(clk_2M5), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i3.GSR = "ENABLED";
    FD1S3AX count_169__i2 (.D(n97[2]), .CK(clk_2M5), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i2.GSR = "ENABLED";
    FD1S3AX count_169__i1 (.D(n97[1]), .CK(clk_2M5), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_169__i1.GSR = "ENABLED";
    
endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211401afe -pmi -lang verilog  */
/* Tue Mar 01 12:39:13 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211401afe (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211401afe_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211401afe_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211401afe__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211401afe_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211401afe__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211401afe_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 32 -num_rows 16 -rdata_width 32 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr324163241611884d26 -pmi -lang verilog  */
/* Tue Mar 01 12:39:12 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr324163241611884d26 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] WrAddress;
    input wire [3:0] RdAddress;
    input wire [31:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [31:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_0_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_0_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_0_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_0_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_0_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_0_1.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr324163241611884d26_0_0_1 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(scuba_vlo), 
        .ADW7(scuba_vlo), .ADW6(scuba_vlo), .ADW5(scuba_vlo), .ADW4(scuba_vlo), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(scuba_vlo), 
        .ADR11(scuba_vlo), .ADR10(scuba_vlo), .ADR9(scuba_vlo), .ADR8(scuba_vlo), 
        .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), 
        .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), .ADR0(scuba_vlo), 
        .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), .CSR2(scuba_vlo), 
        .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), .DO17(Q[8]), .DO16(Q[7]), 
        .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), .DO12(Q[3]), .DO11(Q[2]), 
        .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), .DO7(Q[16]), .DO6(Q[15]), 
        .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), .DO2(Q[11]), .DO1(Q[10]), 
        .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr324163241611884d26__PMIP__16__32__32B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_1_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_1_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_1_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_1_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_1_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr324163241611884d26_0_1_0.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr324163241611884d26_0_1_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(Data[31]), 
        .DI12(Data[30]), .DI11(Data[29]), .DI10(Data[28]), .DI9(Data[27]), 
        .DI8(Data[26]), .DI7(Data[25]), .DI6(Data[24]), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(scuba_vlo), .ADW7(scuba_vlo), .ADW6(scuba_vlo), 
        .ADW5(scuba_vlo), .ADW4(scuba_vlo), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(scuba_vlo), .ADR11(scuba_vlo), .ADR10(scuba_vlo), 
        .ADR9(scuba_vlo), .ADR8(scuba_vlo), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[26]), .DO16(Q[25]), .DO15(Q[24]), .DO14(Q[23]), 
        .DO13(Q[22]), .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), 
        .DO8(), .DO7(), .DO6(), .DO5(), .DO4(Q[31]), .DO3(Q[30]), .DO2(Q[29]), 
        .DO1(Q[28]), .DO0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr324163241611884d26__PMIP__16__32__32B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr324163241611884d26_0_0_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr324163241611884d26__PMIP__16__32__32B
    // exemplar attribute pmi_ram_dpXbnonesadr324163241611884d26_0_0_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr324163241611884d26_0_1_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr324163241611884d26__PMIP__16__32__32B
    // exemplar attribute pmi_ram_dpXbnonesadr324163241611884d26_0_1_0 MEM_INIT_FILE 
    // exemplar end

endmodule
