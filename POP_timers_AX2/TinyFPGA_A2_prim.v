// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Mon Jul 17 10:58:38 2023
//
// Verilog Description of module TinyFPGA_A2
//

module TinyFPGA_A2 (LED_output, mode_button, pin3_sn, load_default_button, 
            pin5, tenmegclock, topleft_button, topright_button, pin9_jtgnb, 
            bottomleft_button, bottomright_button, MW_invalid, ADC_sample, 
            laser_tuning, pump_output, probe_output, MW_output, sample_output) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(1[8:19])
    output LED_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    input mode_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    output pin3_sn /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(5[8:15])
    input load_default_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    output pin5 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(7[8:12])
    input tenmegclock;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    input topleft_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    input topright_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    output pin9_jtgnb /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(11[8:18])
    input bottomleft_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    input bottomright_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    input MW_invalid;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[8:18])
    output ADC_sample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[13:23])
    input laser_tuning;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[8:20])
    output pump_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    output probe_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    output MW_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    output sample_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[7:21])
    wire sampled_modebutton /* synthesis SET_AS_NETWORK=sampled_modebutton, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[6:24])
    wire clk_2M5_N_56 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    
    wire GND_net, VCC_net, LED_output_c, mode_button_c, load_default_button_c, 
        topleft_button_c, topright_button_c, bottomleft_button_c, bottomright_button_c, 
        MW_invalid_c, ADC_sample_c, pump_output_c, probe_output_c, MW_output_c, 
        sample_output_c, slow_pulse, medium_pulse, fast_pulse, load_defaults, 
        pieovertwo_plus, freeprecess_plus, pieovertwo_minus, freeprecess_minus;
    wire [2:0]SMstate;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    
    wire ADC_sample_N_17, mode_button_N_44, load_default_button_N_46, 
        topleft_button_N_48, topright_button_N_50, bottomleft_button_N_52, 
        bottomright_button_N_54, LED_output_N_13, n188, sample_output_N_39, 
        LED_output_N_1, MW_output_N_32, pi2started, probestarted, state_2__N_182, 
        n361, n1981, n399, n437, n1918, n1883, n44, n1885, n49, 
        n1946;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX sampled_modebutton_72 (.D(mode_button_N_44), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam sampled_modebutton_72.GSR = "ENABLED";
    FD1S3AX load_defaults_73 (.D(load_default_button_N_46), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam load_defaults_73.GSR = "ENABLED";
    FD1S3AX pieovertwo_plus_74 (.D(topleft_button_N_48), .CK(debounce_pulse), 
            .Q(pieovertwo_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam pieovertwo_plus_74.GSR = "ENABLED";
    FD1S3AX freeprecess_plus_75 (.D(topright_button_N_50), .CK(debounce_pulse), 
            .Q(freeprecess_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam freeprecess_plus_75.GSR = "ENABLED";
    FD1S3AX pieovertwo_minus_76 (.D(bottomleft_button_N_52), .CK(debounce_pulse), 
            .Q(pieovertwo_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam pieovertwo_minus_76.GSR = "ENABLED";
    FD1S3AX freeprecess_minus_77 (.D(bottomright_button_N_54), .CK(debounce_pulse), 
            .Q(freeprecess_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam freeprecess_minus_77.GSR = "ENABLED";
    FD1S3AX LED_output_78 (.D(LED_output_N_1), .CK(clk_2M5), .Q(LED_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(78[8] 129[5])
    defparam LED_output_78.GSR = "ENABLED";
    FD1S3JX pump_output_79 (.D(n1885), .CK(clk_2M5), .PD(LED_output_N_13), 
            .Q(pump_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(78[8] 129[5])
    defparam pump_output_79.GSR = "ENABLED";
    FD1S3AX MW_output_81 (.D(MW_output_N_32), .CK(clk_2M5), .Q(MW_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(78[8] 129[5])
    defparam MW_output_81.GSR = "ENABLED";
    FD1S3AX ADC_sample_71 (.D(ADC_sample_N_17), .CK(clk_2M5), .Q(ADC_sample_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(47[8] 50[5])
    defparam ADC_sample_71.GSR = "ENABLED";
    IB tenmegclock_pad (.I(tenmegclock), .O(tenmegclock_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_48)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(61[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_50)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(62[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    IB load_default_button_pad (.I(load_default_button), .O(load_default_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    IB mode_button_pad (.I(mode_button), .O(mode_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    OB sample_output_pad (.I(sample_output_c), .O(sample_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(43[9:13])
    OB MW_output_pad (.I(MW_output_c), .O(MW_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(42[9:16])
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    OB probe_output_pad (.I(probe_output_c), .O(probe_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_44)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(59[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
    OB pump_output_pad (.I(pump_output_c), .O(pump_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    OB ADC_sample_pad (.I(ADC_sample_c), .O(ADC_sample));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[13:23])
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_46)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(60[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    FD1S3JX sample_output_82 (.D(sample_output_N_39), .CK(clk_2M5), .PD(n1883), 
            .Q(sample_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(78[8] 129[5])
    defparam sample_output_82.GSR = "ENABLED";
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_52)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(63[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    POPtimers POPtimers (.GND_net(GND_net), .clk_2M5_N_56(clk_2M5_N_56), 
            .n1918(n1918), .load_defaults(load_defaults), .n49(n49), .n1946(n1946), 
            .clk_2M5(clk_2M5), .n1981(n1981), .MW_invalid_c(MW_invalid_c), 
            .ADC_sample_N_17(ADC_sample_N_17), .n437(n437), .probestarted(probestarted), 
            .pieovertwo_minus(pieovertwo_minus), .pieovertwo_plus(pieovertwo_plus), 
            .freeprecess_minus(freeprecess_minus), .freeprecess_plus(freeprecess_plus), 
            .n399(n399), .pi2started(pi2started), .n361(n361)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(53[12:274])
    FD1S3IX probe_output_80 (.D(n188), .CK(clk_2M5), .CD(n44), .Q(probe_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(78[8] 129[5])
    defparam probe_output_80.GSR = "ENABLED";
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(44[9:19])
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_54)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(64[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    n_state_machine statemachine (.\SMstate[1] (SMstate[1]), .slow_pulse(slow_pulse), 
            .fast_pulse(fast_pulse), .pi2started(pi2started), .n361(n361), 
            .n399(n399), .n49(n49), .\SMstate[2] (SMstate[2]), .sampled_modebutton(sampled_modebutton), 
            .state_2__N_182(state_2__N_182), .MW_output_N_32(MW_output_N_32), 
            .medium_pulse(medium_pulse), .n1918(n1918), .LED_output_N_1(LED_output_N_1), 
            .LED_output_N_13(LED_output_N_13), .n1946(n1946), .n1885(n1885), 
            .n1883(n1883), .n1981(n1981), .sample_output_N_39(sample_output_N_39), 
            .n44(n44), .probestarted(probestarted), .n437(n437), .n188(n188)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(55[18:74])
    VLO i1 (.Z(GND_net));
    IB topleft_button_pad (.I(topleft_button), .O(topleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    slow_clock_pulse slowclocks (.clk_2M5(clk_2M5), .GND_net(GND_net), .medium_pulse(medium_pulse), 
            .slow_pulse(slow_pulse), .fast_pulse(fast_pulse), .debounce_pulse(debounce_pulse)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[19:157])
    LUT4 i1_2_lut (.A(SMstate[2]), .B(SMstate[1]), .Z(state_2__N_182)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    clocks clocks (.clk_2M5_N_56(clk_2M5_N_56), .clk_2M5(clk_2M5), .tenmegclock_c(tenmegclock_c), 
           .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(52[9:98])
    IB topright_button_pad (.I(topright_button), .O(topright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    IB bottomleft_button_pad (.I(bottomleft_button), .O(bottomleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    IB bottomright_button_pad (.I(bottomright_button), .O(bottomright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    IB MW_invalid_pad (.I(MW_invalid), .O(MW_invalid_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[8:18])
    
endmodule
//
// Verilog Description of module POPtimers
//

module POPtimers (GND_net, clk_2M5_N_56, n1918, load_defaults, n49, 
            n1946, clk_2M5, n1981, MW_invalid_c, ADC_sample_N_17, 
            n437, probestarted, pieovertwo_minus, pieovertwo_plus, freeprecess_minus, 
            freeprecess_plus, n399, pi2started, n361) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_2M5_N_56;
    output n1918;
    input load_defaults;
    output n49;
    output n1946;
    input clk_2M5;
    output n1981;
    input MW_invalid_c;
    output ADC_sample_N_17;
    output n437;
    output probestarted;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input freeprecess_minus;
    input freeprecess_plus;
    output n399;
    output pi2started;
    output n361;
    
    wire clk_2M5_N_56 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1762;
    wire [15:0]Endofprobepulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[19:34])
    wire [15:0]Resetandrepeat;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[19:33])
    
    wire n1759, n1760, n1758, n1707;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[26:46])
    wire [15:0]Endof1stMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[19:34])
    
    wire n1708, n1757;
    wire [15:0]Startofprobepulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[19:36])
    wire [15:0]gatedcount;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire [15:0]count;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[19:24])
    
    wire n1756, n1755, n1754, n1753, n1752, n1751;
    wire [15:0]Startopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[19:37])
    
    wire n1749;
    wire [15:0]Endofopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[19:37])
    
    wire n1748, n1706, n1715;
    wire [15:0]AdjustableFreePrecession;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[48:72])
    wire [15:0]Startof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[19:36])
    
    wire n1716, n1747, n1746, n1745, n1744, n1917, n4, n1743, 
        n1726;
    wire [15:0]n2;
    wire [15:0]Endof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[19:34])
    
    wire n1727, n1725, n1714, n1724, n1723, n1741, n1740, n1705, 
        n1739, n1738, n1737, n1736, n1735, n1722, n1734, n1761, 
        n1733, n1711, n6, loop, counterreset, n1721, n1710, n1732, 
        n1731, n1730, n1729, n1719, n1718, n1717, n1709, n1859, 
        n1860, n1861, n1862, n1863, n1864, samplestarted;
    
    CCU2D Endofprobepulse_15__I_0_11 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1762), .S0(Resetandrepeat[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_11.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_5 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1759), .COUT(n1760), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_3 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1758), .COUT(n1759), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_260_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1707), .COUT(n1708), .S0(Endof1stMWpulse[6]), 
          .S1(Endof1stMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_260_7.INIT0 = 16'h0555;
    defparam add_260_7.INIT1 = 16'h0555;
    defparam add_260_7.INJECT1_0 = "NO";
    defparam add_260_7.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1758), .S1(Resetandrepeat[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_15 (.A0(Startofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1757), .S0(Endofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_15.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_15.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clk_2M5_N_56), .Q(gatedcount[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D Startofprobepulse_15__I_0_13 (.A0(Startofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1756), .COUT(n1757), .S0(Endofprobepulse[13]), 
          .S1(Endofprobepulse[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_13.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_11 (.A0(Startofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1755), .COUT(n1756), .S0(Endofprobepulse[11]), 
          .S1(Endofprobepulse[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_9 (.A0(Startofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1754), .COUT(n1755), .S0(Endofprobepulse[9]), 
          .S1(Endofprobepulse[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_7 (.A0(Startofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1753), .COUT(n1754), .S0(Endofprobepulse[7]), 
          .S1(Endofprobepulse[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_5 (.A0(Startofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1752), .COUT(n1753), .S0(Resetandrepeat[5]), 
          .S1(Endofprobepulse[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_3 (.A0(Startopticalsample[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1751), .COUT(n1752), .S0(Resetandrepeat[3]), 
          .S1(Resetandrepeat[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1751), .S1(Resetandrepeat[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D add_262_15 (.A0(Startopticalsample[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1749), .S0(Endofopticalsample[14]), .S1(Endofopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_262_15.INIT0 = 16'h5aaa;
    defparam add_262_15.INIT1 = 16'h5aaa;
    defparam add_262_15.INJECT1_0 = "NO";
    defparam add_262_15.INJECT1_1 = "NO";
    CCU2D add_262_13 (.A0(Startopticalsample[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1748), .COUT(n1749), .S0(Endofopticalsample[12]), 
          .S1(Endofopticalsample[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_262_13.INIT0 = 16'h5aaa;
    defparam add_262_13.INIT1 = 16'h5aaa;
    defparam add_262_13.INJECT1_0 = "NO";
    defparam add_262_13.INJECT1_1 = "NO";
    CCU2D add_260_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1706), .COUT(n1707), .S0(Endof1stMWpulse[4]), 
          .S1(Endof1stMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_260_5.INIT0 = 16'h0555;
    defparam add_260_5.INIT1 = 16'hfaaa;
    defparam add_260_5.INJECT1_0 = "NO";
    defparam add_260_5.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_6 (.A0(Endof1stMWpulse[6]), .B0(AdjustableFreePrecession[6]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[7]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1715), .COUT(n1716), .S0(Startof2ndMWpulse[6]), 
          .S1(Startof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_6.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_6.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_6.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_6.INJECT1_1 = "NO";
    CCU2D add_262_11 (.A0(Startopticalsample[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1747), .COUT(n1748), .S0(Endofopticalsample[10]), 
          .S1(Endofopticalsample[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_262_11.INIT0 = 16'h5aaa;
    defparam add_262_11.INIT1 = 16'h5aaa;
    defparam add_262_11.INJECT1_0 = "NO";
    defparam add_262_11.INJECT1_1 = "NO";
    CCU2D add_262_9 (.A0(Startopticalsample[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1746), .COUT(n1747), .S0(Endofopticalsample[8]), 
          .S1(Endofopticalsample[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_262_9.INIT0 = 16'h5aaa;
    defparam add_262_9.INIT1 = 16'h5aaa;
    defparam add_262_9.INJECT1_0 = "NO";
    defparam add_262_9.INJECT1_1 = "NO";
    CCU2D add_262_7 (.A0(Startopticalsample[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1745), .COUT(n1746), .S0(Endofopticalsample[6]), 
          .S1(Endofopticalsample[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_262_7.INIT0 = 16'h5aaa;
    defparam add_262_7.INIT1 = 16'h5aaa;
    defparam add_262_7.INJECT1_0 = "NO";
    defparam add_262_7.INJECT1_1 = "NO";
    CCU2D add_262_5 (.A0(Startopticalsample[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1744), .COUT(n1745), .S0(Endofopticalsample[4]), 
          .S1(Endofopticalsample[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_262_5.INIT0 = 16'h5555;
    defparam add_262_5.INIT1 = 16'h5555;
    defparam add_262_5.INJECT1_0 = "NO";
    defparam add_262_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(gatedcount[4]), .B(n1917), .C(gatedcount[5]), .D(n4), 
         .Z(n1918)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut.init = 16'hc8c0;
    CCU2D add_262_3 (.A0(Startopticalsample[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1743), .COUT(n1744), .S0(Endofopticalsample[2]), 
          .S1(Endofopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_262_3.INIT0 = 16'h5aaa;
    defparam add_262_3.INIT1 = 16'h5aaa;
    defparam add_262_3.INJECT1_0 = "NO";
    defparam add_262_3.INJECT1_1 = "NO";
    CCU2D add_262_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Resetandrepeat[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1743), .S1(Endofopticalsample[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_262_1.INIT0 = 16'hF000;
    defparam add_262_1.INIT1 = 16'h5555;
    defparam add_262_1.INJECT1_0 = "NO";
    defparam add_262_1.INJECT1_1 = "NO";
    CCU2D add_321_14 (.A0(n2[12]), .B0(Endof1stMWpulse[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[13]), .B1(Endof1stMWpulse[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1726), .COUT(n1727), .S0(Endof2ndMWpulse[12]), 
          .S1(Endof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_321_14.INIT0 = 16'h5666;
    defparam add_321_14.INIT1 = 16'h5666;
    defparam add_321_14.INJECT1_0 = "NO";
    defparam add_321_14.INJECT1_1 = "NO";
    CCU2D add_321_12 (.A0(n2[10]), .B0(Endof1stMWpulse[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[11]), .B1(Endof1stMWpulse[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1725), .COUT(n1726), .S0(Endof2ndMWpulse[10]), 
          .S1(Endof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_321_12.INIT0 = 16'h5666;
    defparam add_321_12.INIT1 = 16'h5666;
    defparam add_321_12.INJECT1_0 = "NO";
    defparam add_321_12.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_4 (.A0(Endof1stMWpulse[4]), .B0(AdjustableFreePrecession[4]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[5]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1714), .COUT(n1715), .S0(Startof2ndMWpulse[4]), 
          .S1(Startof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_4.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_4.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_4.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_4.INJECT1_1 = "NO";
    CCU2D add_321_10 (.A0(n2[8]), .B0(Endof1stMWpulse[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[9]), .B1(Endof1stMWpulse[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1724), .COUT(n1725), .S0(Endof2ndMWpulse[8]), 
          .S1(Endof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_321_10.INIT0 = 16'h5666;
    defparam add_321_10.INIT1 = 16'h5666;
    defparam add_321_10.INJECT1_0 = "NO";
    defparam add_321_10.INJECT1_1 = "NO";
    CCU2D add_321_8 (.A0(n2[6]), .B0(Endof1stMWpulse[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[7]), .B1(Endof1stMWpulse[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1723), .COUT(n1724), .S0(Endof2ndMWpulse[6]), 
          .S1(Endof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_321_8.INIT0 = 16'h5666;
    defparam add_321_8.INIT1 = 16'h5666;
    defparam add_321_8.INJECT1_0 = "NO";
    defparam add_321_8.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_2 (.A0(Endof1stMWpulse[2]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[3]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n1714), .S1(Startof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_2.INIT0 = 16'h7000;
    defparam Endof1stMWpulse_15__I_0_2.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_2.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_2.INJECT1_1 = "NO";
    CCU2D add_261_15 (.A0(Endof2ndMWpulse[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1741), .S0(Startofprobepulse[14]), .S1(Startofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_261_15.INIT0 = 16'h5aaa;
    defparam add_261_15.INIT1 = 16'h5aaa;
    defparam add_261_15.INJECT1_0 = "NO";
    defparam add_261_15.INJECT1_1 = "NO";
    CCU2D add_261_13 (.A0(Endof2ndMWpulse[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1740), .COUT(n1741), .S0(Startofprobepulse[12]), 
          .S1(Startofprobepulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_261_13.INIT0 = 16'h5aaa;
    defparam add_261_13.INIT1 = 16'h5aaa;
    defparam add_261_13.INJECT1_0 = "NO";
    defparam add_261_13.INJECT1_1 = "NO";
    CCU2D add_260_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1705), .COUT(n1706), .S0(Endof1stMWpulse[2]), 
          .S1(Endof1stMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_260_3.INIT0 = 16'hfaaa;
    defparam add_260_3.INIT1 = 16'h0555;
    defparam add_260_3.INJECT1_0 = "NO";
    defparam add_260_3.INJECT1_1 = "NO";
    CCU2D add_261_11 (.A0(Endof2ndMWpulse[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1739), .COUT(n1740), .S0(Startofprobepulse[10]), 
          .S1(Startofprobepulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_261_11.INIT0 = 16'h5aaa;
    defparam add_261_11.INIT1 = 16'h5aaa;
    defparam add_261_11.INJECT1_0 = "NO";
    defparam add_261_11.INJECT1_1 = "NO";
    CCU2D add_261_9 (.A0(Endof2ndMWpulse[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1738), .COUT(n1739), .S0(Startofprobepulse[8]), 
          .S1(Startofprobepulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_261_9.INIT0 = 16'h5aaa;
    defparam add_261_9.INIT1 = 16'h5aaa;
    defparam add_261_9.INJECT1_0 = "NO";
    defparam add_261_9.INJECT1_1 = "NO";
    CCU2D add_261_7 (.A0(Endof2ndMWpulse[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1737), .COUT(n1738), .S0(Startofprobepulse[6]), 
          .S1(Startofprobepulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_261_7.INIT0 = 16'h5aaa;
    defparam add_261_7.INIT1 = 16'h5aaa;
    defparam add_261_7.INJECT1_0 = "NO";
    defparam add_261_7.INJECT1_1 = "NO";
    CCU2D add_261_5 (.A0(Endof2ndMWpulse[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1736), .COUT(n1737), .S0(Startofprobepulse[4]), 
          .S1(Startofprobepulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_261_5.INIT0 = 16'h5aaa;
    defparam add_261_5.INIT1 = 16'h5aaa;
    defparam add_261_5.INJECT1_0 = "NO";
    defparam add_261_5.INJECT1_1 = "NO";
    CCU2D add_261_3 (.A0(Endof2ndMWpulse[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1735), .COUT(n1736), .S0(Startopticalsample[2]), 
          .S1(Startopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_261_3.INIT0 = 16'h5aaa;
    defparam add_261_3.INIT1 = 16'h5555;
    defparam add_261_3.INJECT1_0 = "NO";
    defparam add_261_3.INJECT1_1 = "NO";
    CCU2D add_261_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Endof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1735), .S1(Resetandrepeat[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_261_1.INIT0 = 16'hF000;
    defparam add_261_1.INIT1 = 16'h5555;
    defparam add_261_1.INJECT1_0 = "NO";
    defparam add_261_1.INJECT1_1 = "NO";
    CCU2D add_321_6 (.A0(n2[4]), .B0(Endof1stMWpulse[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[5]), .B1(Endof1stMWpulse[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1722), .COUT(n1723), .S0(Endof2ndMWpulse[4]), 
          .S1(Endof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_321_6.INIT0 = 16'h5666;
    defparam add_321_6.INIT1 = 16'h5666;
    defparam add_321_6.INJECT1_0 = "NO";
    defparam add_321_6.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_13 (.A0(Startofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1734), .S0(Startopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_13.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__I_0_28_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_13.INJECT1_1 = "NO";
    CCU2D add_260_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1705), .S1(Startof2ndMWpulse[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_260_1.INIT0 = 16'hF000;
    defparam add_260_1.INIT1 = 16'h0555;
    defparam add_260_1.INJECT1_0 = "NO";
    defparam add_260_1.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_9 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1761), .COUT(n1762), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_11 (.A0(Startofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1733), .COUT(n1734), .S0(Startopticalsample[13]), 
          .S1(Startopticalsample[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_11.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_11.INJECT1_1 = "NO";
    CCU2D add_260_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1711), .S0(Endof1stMWpulse[14]), .S1(Endof1stMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_260_15.INIT0 = 16'hfaaa;
    defparam add_260_15.INIT1 = 16'hfaaa;
    defparam add_260_15.INJECT1_0 = "NO";
    defparam add_260_15.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(gatedcount[8]), .B(gatedcount[7]), .C(gatedcount[10]), 
         .D(n6), .Z(n1917)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(gatedcount[6]), .B(gatedcount[9]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 load_defaults_I_0_2_lut (.A(load_defaults), .B(loop), .Z(counterreset)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(64[24:42])
    defparam load_defaults_I_0_2_lut.init = 16'heeee;
    LUT4 i698_2_lut (.A(AdjustableFreePrecession[2]), .B(AdjustablePieOverTwo[2]), 
         .Z(n2[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i698_2_lut.init = 16'h6666;
    CCU2D add_321_4 (.A0(n2[2]), .B0(Endof1stMWpulse[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[3]), .B1(Endof1stMWpulse[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1721), .COUT(n1722), .S0(Endof2ndMWpulse[2]), 
          .S1(Endof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_321_4.INIT0 = 16'h5666;
    defparam add_321_4.INIT1 = 16'h5666;
    defparam add_321_4.INJECT1_0 = "NO";
    defparam add_321_4.INJECT1_1 = "NO";
    CCU2D add_260_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1710), .COUT(n1711), .S0(Endof1stMWpulse[12]), 
          .S1(Endof1stMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_260_13.INIT0 = 16'hfaaa;
    defparam add_260_13.INIT1 = 16'hfaaa;
    defparam add_260_13.INJECT1_0 = "NO";
    defparam add_260_13.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_7 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1760), .COUT(n1761), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_9 (.A0(Startofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1732), .COUT(n1733), .S0(Startopticalsample[11]), 
          .S1(Startopticalsample[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_9.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_7 (.A0(Startofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1731), .COUT(n1732), .S0(Startopticalsample[9]), 
          .S1(Startopticalsample[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_7.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_5 (.A0(Startofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1730), .COUT(n1731), .S0(Startopticalsample[7]), 
          .S1(Startopticalsample[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_5.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_3 (.A0(Startofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1729), .COUT(n1730), .S0(Startopticalsample[5]), 
          .S1(Startopticalsample[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_3.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_3.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clk_2M5_N_56), .Q(gatedcount[15])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    CCU2D Startofprobepulse_15__I_0_28_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1729), .S1(Startopticalsample[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__I_0_28_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_1.INJECT1_1 = "NO";
    CCU2D add_321_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(Startof2ndMWpulse[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n1721), .S1(Endof2ndMWpulse[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_321_2.INIT0 = 16'h0000;
    defparam add_321_2.INIT1 = 16'h5666;
    defparam add_321_2.INJECT1_0 = "NO";
    defparam add_321_2.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_14 (.A0(Endof1stMWpulse[14]), .B0(AdjustableFreePrecession[14]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[15]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1719), .S0(Startof2ndMWpulse[14]), 
          .S1(Startof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_14.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_14.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_14.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_14.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_12 (.A0(Endof1stMWpulse[12]), .B0(AdjustableFreePrecession[12]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[13]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1718), .COUT(n1719), .S0(Startof2ndMWpulse[12]), 
          .S1(Startof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_12.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_12.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_12.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_12.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_10 (.A0(Endof1stMWpulse[10]), .B0(AdjustableFreePrecession[10]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[11]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1717), .COUT(n1718), .S0(Startof2ndMWpulse[10]), 
          .S1(Startof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_10.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_10.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_10.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_10.INJECT1_1 = "NO";
    CCU2D add_260_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1709), .COUT(n1710), .S0(Endof1stMWpulse[10]), 
          .S1(Endof1stMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_260_11.INIT0 = 16'h0555;
    defparam add_260_11.INIT1 = 16'hfaaa;
    defparam add_260_11.INJECT1_0 = "NO";
    defparam add_260_11.INJECT1_1 = "NO";
    CCU2D add_260_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1708), .COUT(n1709), .S0(Endof1stMWpulse[8]), 
          .S1(Endof1stMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_260_9.INIT0 = 16'h0555;
    defparam add_260_9.INIT1 = 16'h0555;
    defparam add_260_9.INJECT1_0 = "NO";
    defparam add_260_9.INJECT1_1 = "NO";
    CCU2D add_321_16 (.A0(n2[14]), .B0(Endof1stMWpulse[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[15]), .B1(Endof1stMWpulse[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1727), .S0(Endof2ndMWpulse[14]), .S1(Endof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_321_16.INIT0 = 16'h5666;
    defparam add_321_16.INIT1 = 16'h5666;
    defparam add_321_16.INJECT1_0 = "NO";
    defparam add_321_16.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_8 (.A0(Endof1stMWpulse[8]), .B0(AdjustableFreePrecession[8]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[9]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1716), .COUT(n1717), .S0(Startof2ndMWpulse[8]), 
          .S1(Startof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_8.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_8.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_8.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_8.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clk_2M5_N_56), .Q(gatedcount[14])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clk_2M5_N_56), .Q(gatedcount[13])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clk_2M5_N_56), .Q(gatedcount[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clk_2M5_N_56), .Q(gatedcount[11])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clk_2M5_N_56), .Q(gatedcount[10])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clk_2M5_N_56), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clk_2M5_N_56), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clk_2M5_N_56), .Q(gatedcount[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clk_2M5_N_56), .Q(gatedcount[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clk_2M5_N_56), .Q(gatedcount[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clk_2M5_N_56), .Q(gatedcount[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clk_2M5_N_56), .Q(gatedcount[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clk_2M5_N_56), .Q(gatedcount[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clk_2M5_N_56), .Q(gatedcount[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    LUT4 i769_4_lut (.A(gatedcount[5]), .B(n49), .C(n1917), .D(gatedcount[4]), 
         .Z(n1946)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i769_4_lut.init = 16'h0313;
    CCU2D Endof1stMWpulse_15__I_0_rep_1_308_add_1_2 (.A0(AdjustableFreePrecession[2]), 
          .B0(AdjustablePieOverTwo[2]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[3]), 
          .B1(AdjustablePieOverTwo[3]), .C1(GND_net), .D1(GND_net), .COUT(n1859), 
          .S1(n2[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_2.INIT0 = 16'h7000;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_2.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_2.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_2.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_308_add_1_4 (.A0(AdjustableFreePrecession[4]), 
          .B0(AdjustablePieOverTwo[4]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[5]), 
          .B1(AdjustablePieOverTwo[5]), .C1(GND_net), .D1(GND_net), .CIN(n1859), 
          .COUT(n1860), .S0(n2[4]), .S1(n2[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_4.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_4.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_4.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_4.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_308_add_1_6 (.A0(AdjustableFreePrecession[6]), 
          .B0(AdjustablePieOverTwo[6]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[7]), 
          .B1(AdjustablePieOverTwo[7]), .C1(GND_net), .D1(GND_net), .CIN(n1860), 
          .COUT(n1861), .S0(n2[6]), .S1(n2[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_6.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_6.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_6.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_6.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_308_add_1_8 (.A0(AdjustableFreePrecession[8]), 
          .B0(AdjustablePieOverTwo[8]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[9]), 
          .B1(AdjustablePieOverTwo[9]), .C1(GND_net), .D1(GND_net), .CIN(n1861), 
          .COUT(n1862), .S0(n2[8]), .S1(n2[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_8.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_8.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_8.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_8.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_308_add_1_10 (.A0(AdjustableFreePrecession[10]), 
          .B0(AdjustablePieOverTwo[10]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[11]), 
          .B1(AdjustablePieOverTwo[11]), .C1(GND_net), .D1(GND_net), .CIN(n1862), 
          .COUT(n1863), .S0(n2[10]), .S1(n2[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_10.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_10.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_10.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_10.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_308_add_1_12 (.A0(AdjustableFreePrecession[12]), 
          .B0(AdjustablePieOverTwo[12]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[13]), 
          .B1(AdjustablePieOverTwo[13]), .C1(GND_net), .D1(GND_net), .CIN(n1863), 
          .COUT(n1864), .S0(n2[12]), .S1(n2[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_12.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_12.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_12.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_12.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_308_add_1_14 (.A0(AdjustableFreePrecession[14]), 
          .B0(AdjustablePieOverTwo[14]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[15]), 
          .B1(AdjustablePieOverTwo[15]), .C1(GND_net), .D1(GND_net), .CIN(n1864), 
          .S0(n2[14]), .S1(n2[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_14.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_14.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_14.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_308_add_1_14.INJECT1_1 = "NO";
    count_n systemcounter (.count({count}), .GND_net(GND_net), .clk_2M5(clk_2M5), 
            .counterreset(counterreset)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(48[10:92])
    comparator sample2 (.GND_net(GND_net), .\gatedcount[1] (gatedcount[1]), 
            .\Endofopticalsample[1] (Endofopticalsample[1]), .\gatedcount[2] (gatedcount[2]), 
            .\Endofopticalsample[2] (Endofopticalsample[2]), .\gatedcount[3] (gatedcount[3]), 
            .\Endofopticalsample[3] (Endofopticalsample[3]), .\gatedcount[4] (gatedcount[4]), 
            .\Endofopticalsample[4] (Endofopticalsample[4]), .\gatedcount[5] (gatedcount[5]), 
            .\Endofopticalsample[5] (Endofopticalsample[5]), .\gatedcount[6] (gatedcount[6]), 
            .\Endofopticalsample[6] (Endofopticalsample[6]), .\gatedcount[7] (gatedcount[7]), 
            .\Endofopticalsample[7] (Endofopticalsample[7]), .\gatedcount[8] (gatedcount[8]), 
            .\Endofopticalsample[8] (Endofopticalsample[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Endofopticalsample[9] (Endofopticalsample[9]), .\gatedcount[10] (gatedcount[10]), 
            .\Endofopticalsample[10] (Endofopticalsample[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Endofopticalsample[11] (Endofopticalsample[11]), .\gatedcount[12] (gatedcount[12]), 
            .\Endofopticalsample[12] (Endofopticalsample[12]), .\gatedcount[13] (gatedcount[13]), 
            .\Endofopticalsample[13] (Endofopticalsample[13]), .\gatedcount[14] (gatedcount[14]), 
            .\Endofopticalsample[14] (Endofopticalsample[14]), .\gatedcount[15] (gatedcount[15]), 
            .\Endofopticalsample[15] (Endofopticalsample[15]), .samplestarted(samplestarted), 
            .n1981(n1981), .MW_invalid_c(MW_invalid_c), .ADC_sample_N_17(ADC_sample_N_17)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(58[13:98])
    comparator_U4 sample1 (.GND_net(GND_net), .samplestarted(samplestarted), 
            .\gatedcount[14] (gatedcount[14]), .\Startopticalsample[14] (Startopticalsample[14]), 
            .\gatedcount[15] (gatedcount[15]), .\Startopticalsample[15] (Startopticalsample[15]), 
            .\gatedcount[12] (gatedcount[12]), .\Startopticalsample[12] (Startopticalsample[12]), 
            .\gatedcount[13] (gatedcount[13]), .\Startopticalsample[13] (Startopticalsample[13]), 
            .\gatedcount[10] (gatedcount[10]), .\Startopticalsample[10] (Startopticalsample[10]), 
            .\gatedcount[11] (gatedcount[11]), .\Startopticalsample[11] (Startopticalsample[11]), 
            .\gatedcount[8] (gatedcount[8]), .\Startopticalsample[8] (Startopticalsample[8]), 
            .\gatedcount[9] (gatedcount[9]), .\Startopticalsample[9] (Startopticalsample[9]), 
            .\gatedcount[6] (gatedcount[6]), .\Startopticalsample[6] (Startopticalsample[6]), 
            .\gatedcount[7] (gatedcount[7]), .\Startopticalsample[7] (Startopticalsample[7]), 
            .\gatedcount[4] (gatedcount[4]), .\Startopticalsample[4] (Startopticalsample[4]), 
            .\gatedcount[5] (gatedcount[5]), .\Startopticalsample[5] (Startopticalsample[5]), 
            .\gatedcount[2] (gatedcount[2]), .\Startopticalsample[2] (Startopticalsample[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Startopticalsample[3] (Startopticalsample[3]), 
            .\gatedcount[1] (gatedcount[1]), .\Resetandrepeat[1] (Resetandrepeat[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(57[13:98])
    comparator_U5 probe2 (.GND_net(GND_net), .n437(n437), .\gatedcount[14] (gatedcount[14]), 
            .\Endofprobepulse[14] (Endofprobepulse[14]), .\gatedcount[15] (gatedcount[15]), 
            .\Endofprobepulse[15] (Endofprobepulse[15]), .\gatedcount[12] (gatedcount[12]), 
            .\Endofprobepulse[12] (Endofprobepulse[12]), .\gatedcount[13] (gatedcount[13]), 
            .\Endofprobepulse[13] (Endofprobepulse[13]), .\gatedcount[10] (gatedcount[10]), 
            .\Endofprobepulse[10] (Endofprobepulse[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Endofprobepulse[11] (Endofprobepulse[11]), .\gatedcount[8] (gatedcount[8]), 
            .\Endofprobepulse[8] (Endofprobepulse[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Endofprobepulse[9] (Endofprobepulse[9]), .\gatedcount[6] (gatedcount[6]), 
            .\Endofprobepulse[6] (Endofprobepulse[6]), .\gatedcount[7] (gatedcount[7]), 
            .\Endofprobepulse[7] (Endofprobepulse[7]), .\gatedcount[4] (gatedcount[4]), 
            .\Resetandrepeat[4] (Resetandrepeat[4]), .\gatedcount[5] (gatedcount[5]), 
            .\Resetandrepeat[5] (Resetandrepeat[5]), .\gatedcount[2] (gatedcount[2]), 
            .\Resetandrepeat[2] (Resetandrepeat[2]), .\gatedcount[3] (gatedcount[3]), 
            .\Resetandrepeat[3] (Resetandrepeat[3]), .\gatedcount[1] (gatedcount[1]), 
            .\Resetandrepeat[1] (Resetandrepeat[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(56[13:93])
    comparator_U6 probe1 (.\gatedcount[6] (gatedcount[6]), .\Startofprobepulse[6] (Startofprobepulse[6]), 
            .GND_net(GND_net), .\gatedcount[7] (gatedcount[7]), .\Startofprobepulse[7] (Startofprobepulse[7]), 
            .\gatedcount[4] (gatedcount[4]), .\Startofprobepulse[4] (Startofprobepulse[4]), 
            .\gatedcount[5] (gatedcount[5]), .\Startofprobepulse[5] (Startofprobepulse[5]), 
            .\gatedcount[2] (gatedcount[2]), .\Startopticalsample[2] (Startopticalsample[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Startopticalsample[3] (Startopticalsample[3]), 
            .\gatedcount[1] (gatedcount[1]), .\Resetandrepeat[1] (Resetandrepeat[1]), 
            .probestarted(probestarted), .\gatedcount[14] (gatedcount[14]), 
            .\Startofprobepulse[14] (Startofprobepulse[14]), .\gatedcount[15] (gatedcount[15]), 
            .\Startofprobepulse[15] (Startofprobepulse[15]), .\gatedcount[12] (gatedcount[12]), 
            .\Startofprobepulse[12] (Startofprobepulse[12]), .\gatedcount[13] (gatedcount[13]), 
            .\Startofprobepulse[13] (Startofprobepulse[13]), .\gatedcount[10] (gatedcount[10]), 
            .\Startofprobepulse[10] (Startofprobepulse[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Startofprobepulse[11] (Startofprobepulse[11]), .\gatedcount[8] (gatedcount[8]), 
            .\Startofprobepulse[8] (Startofprobepulse[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Startofprobepulse[9] (Startofprobepulse[9])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(55[13:95])
    countupdownpreload piecounter (.GND_net(GND_net), .pieovertwo_minus(pieovertwo_minus), 
            .pieovertwo_plus(pieovertwo_plus), .\AdjustablePieOverTwo[9] (AdjustablePieOverTwo[9]), 
            .\AdjustablePieOverTwo[10] (AdjustablePieOverTwo[10]), .\AdjustablePieOverTwo[13] (AdjustablePieOverTwo[13]), 
            .\AdjustablePieOverTwo[14] (AdjustablePieOverTwo[14]), .\AdjustablePieOverTwo[3] (AdjustablePieOverTwo[3]), 
            .\AdjustablePieOverTwo[4] (AdjustablePieOverTwo[4]), .\AdjustablePieOverTwo[7] (AdjustablePieOverTwo[7]), 
            .\AdjustablePieOverTwo[8] (AdjustablePieOverTwo[8]), .\AdjustablePieOverTwo[11] (AdjustablePieOverTwo[11]), 
            .\AdjustablePieOverTwo[12] (AdjustablePieOverTwo[12]), .load_defaults(load_defaults), 
            .\AdjustablePieOverTwo[1] (AdjustablePieOverTwo[1]), .\AdjustablePieOverTwo[2] (AdjustablePieOverTwo[2]), 
            .\AdjustablePieOverTwo[15] (AdjustablePieOverTwo[15]), .\AdjustablePieOverTwo[6] (AdjustablePieOverTwo[6]), 
            .\AdjustablePieOverTwo[5] (AdjustablePieOverTwo[5]), .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(61[21:199])
    comparator_U7 loopcounter (.GND_net(GND_net), .loop(loop), .\gatedcount[14] (gatedcount[14]), 
            .\Resetandrepeat[14] (Resetandrepeat[14]), .\gatedcount[15] (gatedcount[15]), 
            .\Resetandrepeat[15] (Resetandrepeat[15]), .\gatedcount[12] (gatedcount[12]), 
            .\Resetandrepeat[12] (Resetandrepeat[12]), .\gatedcount[13] (gatedcount[13]), 
            .\Resetandrepeat[13] (Resetandrepeat[13]), .\gatedcount[10] (gatedcount[10]), 
            .\Resetandrepeat[10] (Resetandrepeat[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Resetandrepeat[11] (Resetandrepeat[11]), .\gatedcount[8] (gatedcount[8]), 
            .\Resetandrepeat[8] (Resetandrepeat[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Resetandrepeat[9] (Resetandrepeat[9]), .\gatedcount[6] (gatedcount[6]), 
            .\Resetandrepeat[6] (Resetandrepeat[6]), .\gatedcount[7] (gatedcount[7]), 
            .\Resetandrepeat[7] (Resetandrepeat[7]), .\gatedcount[4] (gatedcount[4]), 
            .\Resetandrepeat[4] (Resetandrepeat[4]), .\gatedcount[5] (gatedcount[5]), 
            .\Resetandrepeat[5] (Resetandrepeat[5]), .\gatedcount[2] (gatedcount[2]), 
            .\Resetandrepeat[2] (Resetandrepeat[2]), .\gatedcount[3] (gatedcount[3]), 
            .\Resetandrepeat[3] (Resetandrepeat[3]), .\gatedcount[1] (gatedcount[1]), 
            .\Resetandrepeat[1] (Resetandrepeat[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(59[13:89])
    countupdownpreload_U8 freepcounter (.GND_net(GND_net), .freeprecess_minus(freeprecess_minus), 
            .freeprecess_plus(freeprecess_plus), .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), 
            .\AdjustableFreePrecession[3] (AdjustableFreePrecession[3]), .\AdjustableFreePrecession[4] (AdjustableFreePrecession[4]), 
            .\AdjustableFreePrecession[5] (AdjustableFreePrecession[5]), .\AdjustableFreePrecession[6] (AdjustableFreePrecession[6]), 
            .\AdjustableFreePrecession[7] (AdjustableFreePrecession[7]), .\AdjustableFreePrecession[8] (AdjustableFreePrecession[8]), 
            .\AdjustableFreePrecession[9] (AdjustableFreePrecession[9]), .\AdjustableFreePrecession[10] (AdjustableFreePrecession[10]), 
            .\AdjustableFreePrecession[11] (AdjustableFreePrecession[11]), 
            .\AdjustableFreePrecession[12] (AdjustableFreePrecession[12]), 
            .\AdjustableFreePrecession[13] (AdjustableFreePrecession[13]), 
            .\AdjustableFreePrecession[15] (AdjustableFreePrecession[15]), 
            .load_defaults(load_defaults), .\AdjustableFreePrecession[14] (AdjustableFreePrecession[14]), 
            .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(62[21:212])
    comparator_U9 MW4 (.GND_net(GND_net), .n399(n399), .\gatedcount[14] (gatedcount[14]), 
            .\Endof2ndMWpulse[14] (Endof2ndMWpulse[14]), .\gatedcount[15] (gatedcount[15]), 
            .\Endof2ndMWpulse[15] (Endof2ndMWpulse[15]), .\gatedcount[12] (gatedcount[12]), 
            .\Endof2ndMWpulse[12] (Endof2ndMWpulse[12]), .\gatedcount[13] (gatedcount[13]), 
            .\Endof2ndMWpulse[13] (Endof2ndMWpulse[13]), .\gatedcount[10] (gatedcount[10]), 
            .\Endof2ndMWpulse[10] (Endof2ndMWpulse[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Endof2ndMWpulse[11] (Endof2ndMWpulse[11]), .\gatedcount[8] (gatedcount[8]), 
            .\Endof2ndMWpulse[8] (Endof2ndMWpulse[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Endof2ndMWpulse[9] (Endof2ndMWpulse[9]), .\gatedcount[6] (gatedcount[6]), 
            .\Endof2ndMWpulse[6] (Endof2ndMWpulse[6]), .\gatedcount[7] (gatedcount[7]), 
            .\Endof2ndMWpulse[7] (Endof2ndMWpulse[7]), .\gatedcount[4] (gatedcount[4]), 
            .\Endof2ndMWpulse[4] (Endof2ndMWpulse[4]), .\gatedcount[5] (gatedcount[5]), 
            .\Endof2ndMWpulse[5] (Endof2ndMWpulse[5]), .\gatedcount[2] (gatedcount[2]), 
            .\Endof2ndMWpulse[2] (Endof2ndMWpulse[2]), .\gatedcount[3] (gatedcount[3]), 
            .\Endof2ndMWpulse[3] (Endof2ndMWpulse[3]), .\gatedcount[1] (gatedcount[1]), 
            .\Endof2ndMWpulse[1] (Endof2ndMWpulse[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(54[13:88])
    comparator_U10 MW3 (.GND_net(GND_net), .pi2started(pi2started), .gatedcount({gatedcount}), 
            .\Startof2ndMWpulse[14] (Startof2ndMWpulse[14]), .\Startof2ndMWpulse[15] (Startof2ndMWpulse[15]), 
            .\Startof2ndMWpulse[12] (Startof2ndMWpulse[12]), .\Startof2ndMWpulse[13] (Startof2ndMWpulse[13]), 
            .\Startof2ndMWpulse[10] (Startof2ndMWpulse[10]), .\Startof2ndMWpulse[11] (Startof2ndMWpulse[11]), 
            .\Startof2ndMWpulse[8] (Startof2ndMWpulse[8]), .\Startof2ndMWpulse[9] (Startof2ndMWpulse[9]), 
            .\Startof2ndMWpulse[6] (Startof2ndMWpulse[6]), .\Startof2ndMWpulse[7] (Startof2ndMWpulse[7]), 
            .\Startof2ndMWpulse[4] (Startof2ndMWpulse[4]), .\Startof2ndMWpulse[5] (Startof2ndMWpulse[5]), 
            .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), 
            .\Startof2ndMWpulse[3] (Startof2ndMWpulse[3]), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(53[13:90])
    comparator_U11 MW2 (.gatedcount({gatedcount}), .\Endof1stMWpulse[14] (Endof1stMWpulse[14]), 
            .GND_net(GND_net), .\Endof1stMWpulse[15] (Endof1stMWpulse[15]), 
            .n361(n361), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1]), 
            .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), .\Endof1stMWpulse[3] (Endof1stMWpulse[3]), 
            .\Endof1stMWpulse[4] (Endof1stMWpulse[4]), .\Endof1stMWpulse[5] (Endof1stMWpulse[5]), 
            .\Endof1stMWpulse[6] (Endof1stMWpulse[6]), .\Endof1stMWpulse[7] (Endof1stMWpulse[7]), 
            .\Endof1stMWpulse[8] (Endof1stMWpulse[8]), .\Endof1stMWpulse[9] (Endof1stMWpulse[9]), 
            .\Endof1stMWpulse[10] (Endof1stMWpulse[10]), .\Endof1stMWpulse[11] (Endof1stMWpulse[11]), 
            .\Endof1stMWpulse[12] (Endof1stMWpulse[12]), .\Endof1stMWpulse[13] (Endof1stMWpulse[13])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(52[13:88])
    comparator_U12 MW1 (.\gatedcount[13] (gatedcount[13]), .\gatedcount[12] (gatedcount[12]), 
            .\gatedcount[11] (gatedcount[11]), .n49(n49), .\gatedcount[1] (gatedcount[1]), 
            .\gatedcount[3] (gatedcount[3]), .\gatedcount[2] (gatedcount[2]), 
            .n4(n4), .\gatedcount[15] (gatedcount[15]), .\gatedcount[14] (gatedcount[14])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(51[13:90])
    
endmodule
//
// Verilog Description of module count_n
//

module count_n (count, GND_net, clk_2M5, counterreset) /* synthesis syn_module_defined=1 */ ;
    output [15:0]count;
    input GND_net;
    input clk_2M5;
    input counterreset;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1854;
    wire [15:0]n69;
    
    wire n1855, n1853, n1852, n1851, n1850, n1856, n1857;
    
    CCU2D count_265_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1854), .COUT(n1855), .S0(n69[9]), .S1(n69[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265_add_4_11.INIT0 = 16'hfaaa;
    defparam count_265_add_4_11.INIT1 = 16'hfaaa;
    defparam count_265_add_4_11.INJECT1_0 = "NO";
    defparam count_265_add_4_11.INJECT1_1 = "NO";
    CCU2D count_265_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1853), .COUT(n1854), .S0(n69[7]), .S1(n69[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265_add_4_9.INIT0 = 16'hfaaa;
    defparam count_265_add_4_9.INIT1 = 16'hfaaa;
    defparam count_265_add_4_9.INJECT1_0 = "NO";
    defparam count_265_add_4_9.INJECT1_1 = "NO";
    CCU2D count_265_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1852), .COUT(n1853), .S0(n69[5]), .S1(n69[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265_add_4_7.INIT0 = 16'hfaaa;
    defparam count_265_add_4_7.INIT1 = 16'hfaaa;
    defparam count_265_add_4_7.INJECT1_0 = "NO";
    defparam count_265_add_4_7.INJECT1_1 = "NO";
    CCU2D count_265_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1851), .COUT(n1852), .S0(n69[3]), .S1(n69[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265_add_4_5.INIT0 = 16'hfaaa;
    defparam count_265_add_4_5.INIT1 = 16'hfaaa;
    defparam count_265_add_4_5.INJECT1_0 = "NO";
    defparam count_265_add_4_5.INJECT1_1 = "NO";
    CCU2D count_265_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1850), .COUT(n1851), .S0(n69[1]), .S1(n69[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265_add_4_3.INIT0 = 16'hfaaa;
    defparam count_265_add_4_3.INIT1 = 16'hfaaa;
    defparam count_265_add_4_3.INJECT1_0 = "NO";
    defparam count_265_add_4_3.INJECT1_1 = "NO";
    CCU2D count_265_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1850), .S1(n69[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265_add_4_1.INIT0 = 16'hF000;
    defparam count_265_add_4_1.INIT1 = 16'h0555;
    defparam count_265_add_4_1.INJECT1_0 = "NO";
    defparam count_265_add_4_1.INJECT1_1 = "NO";
    FD1S3DX count_265__i0 (.D(n69[0]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i0.GSR = "ENABLED";
    FD1S3DX count_265__i15 (.D(n69[15]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i15.GSR = "ENABLED";
    FD1S3DX count_265__i14 (.D(n69[14]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i14.GSR = "ENABLED";
    FD1S3DX count_265__i13 (.D(n69[13]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i13.GSR = "ENABLED";
    FD1S3DX count_265__i12 (.D(n69[12]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i12.GSR = "ENABLED";
    FD1S3DX count_265__i11 (.D(n69[11]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i11.GSR = "ENABLED";
    FD1S3DX count_265__i10 (.D(n69[10]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i10.GSR = "ENABLED";
    FD1S3DX count_265__i9 (.D(n69[9]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i9.GSR = "ENABLED";
    FD1S3DX count_265__i8 (.D(n69[8]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i8.GSR = "ENABLED";
    FD1S3DX count_265__i7 (.D(n69[7]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i7.GSR = "ENABLED";
    FD1S3DX count_265__i6 (.D(n69[6]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i6.GSR = "ENABLED";
    FD1S3DX count_265__i5 (.D(n69[5]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i5.GSR = "ENABLED";
    FD1S3DX count_265__i4 (.D(n69[4]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i4.GSR = "ENABLED";
    FD1S3DX count_265__i3 (.D(n69[3]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i3.GSR = "ENABLED";
    FD1S3DX count_265__i2 (.D(n69[2]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i2.GSR = "ENABLED";
    FD1S3DX count_265__i1 (.D(n69[1]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265__i1.GSR = "ENABLED";
    CCU2D count_265_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1855), .COUT(n1856), .S0(n69[11]), .S1(n69[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265_add_4_13.INIT0 = 16'hfaaa;
    defparam count_265_add_4_13.INIT1 = 16'hfaaa;
    defparam count_265_add_4_13.INJECT1_0 = "NO";
    defparam count_265_add_4_13.INJECT1_1 = "NO";
    CCU2D count_265_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1856), .COUT(n1857), .S0(n69[13]), .S1(n69[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265_add_4_15.INIT0 = 16'hfaaa;
    defparam count_265_add_4_15.INIT1 = 16'hfaaa;
    defparam count_265_add_4_15.INJECT1_0 = "NO";
    defparam count_265_add_4_15.INJECT1_1 = "NO";
    CCU2D count_265_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1857), .S0(n69[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_265_add_4_17.INIT0 = 16'hfaaa;
    defparam count_265_add_4_17.INIT1 = 16'h0000;
    defparam count_265_add_4_17.INJECT1_0 = "NO";
    defparam count_265_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator
//

module comparator (GND_net, \gatedcount[1] , \Endofopticalsample[1] , 
            \gatedcount[2] , \Endofopticalsample[2] , \gatedcount[3] , 
            \Endofopticalsample[3] , \gatedcount[4] , \Endofopticalsample[4] , 
            \gatedcount[5] , \Endofopticalsample[5] , \gatedcount[6] , 
            \Endofopticalsample[6] , \gatedcount[7] , \Endofopticalsample[7] , 
            \gatedcount[8] , \Endofopticalsample[8] , \gatedcount[9] , 
            \Endofopticalsample[9] , \gatedcount[10] , \Endofopticalsample[10] , 
            \gatedcount[11] , \Endofopticalsample[11] , \gatedcount[12] , 
            \Endofopticalsample[12] , \gatedcount[13] , \Endofopticalsample[13] , 
            \gatedcount[14] , \Endofopticalsample[14] , \gatedcount[15] , 
            \Endofopticalsample[15] , samplestarted, n1981, MW_invalid_c, 
            ADC_sample_N_17) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input \gatedcount[1] ;
    input \Endofopticalsample[1] ;
    input \gatedcount[2] ;
    input \Endofopticalsample[2] ;
    input \gatedcount[3] ;
    input \Endofopticalsample[3] ;
    input \gatedcount[4] ;
    input \Endofopticalsample[4] ;
    input \gatedcount[5] ;
    input \Endofopticalsample[5] ;
    input \gatedcount[6] ;
    input \Endofopticalsample[6] ;
    input \gatedcount[7] ;
    input \Endofopticalsample[7] ;
    input \gatedcount[8] ;
    input \Endofopticalsample[8] ;
    input \gatedcount[9] ;
    input \Endofopticalsample[9] ;
    input \gatedcount[10] ;
    input \Endofopticalsample[10] ;
    input \gatedcount[11] ;
    input \Endofopticalsample[11] ;
    input \gatedcount[12] ;
    input \Endofopticalsample[12] ;
    input \gatedcount[13] ;
    input \Endofopticalsample[13] ;
    input \gatedcount[14] ;
    input \Endofopticalsample[14] ;
    input \gatedcount[15] ;
    input \Endofopticalsample[15] ;
    input samplestarted;
    output n1981;
    input MW_invalid_c;
    output ADC_sample_N_17;
    
    
    wire n1763, n1764, n1765, n1766, n1767, n1768, n1769, n1770, 
        n475;
    
    CCU2D sub_207_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Endofopticalsample[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1763));
    defparam sub_207_add_2_2.INIT0 = 16'h0000;
    defparam sub_207_add_2_2.INIT1 = 16'h5999;
    defparam sub_207_add_2_2.INJECT1_0 = "NO";
    defparam sub_207_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_4 (.A0(\gatedcount[2] ), .B0(\Endofopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Endofopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1763), .COUT(n1764));
    defparam sub_207_add_2_4.INIT0 = 16'h5999;
    defparam sub_207_add_2_4.INIT1 = 16'h5999;
    defparam sub_207_add_2_4.INJECT1_0 = "NO";
    defparam sub_207_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_6 (.A0(\gatedcount[4] ), .B0(\Endofopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Endofopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1764), .COUT(n1765));
    defparam sub_207_add_2_6.INIT0 = 16'h5999;
    defparam sub_207_add_2_6.INIT1 = 16'h5999;
    defparam sub_207_add_2_6.INJECT1_0 = "NO";
    defparam sub_207_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endofopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endofopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1765), .COUT(n1766));
    defparam sub_207_add_2_8.INIT0 = 16'h5999;
    defparam sub_207_add_2_8.INIT1 = 16'h5999;
    defparam sub_207_add_2_8.INJECT1_0 = "NO";
    defparam sub_207_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endofopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endofopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1766), .COUT(n1767));
    defparam sub_207_add_2_10.INIT0 = 16'h5999;
    defparam sub_207_add_2_10.INIT1 = 16'h5999;
    defparam sub_207_add_2_10.INJECT1_0 = "NO";
    defparam sub_207_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endofopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endofopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1767), .COUT(n1768));
    defparam sub_207_add_2_12.INIT0 = 16'h5999;
    defparam sub_207_add_2_12.INIT1 = 16'h5999;
    defparam sub_207_add_2_12.INJECT1_0 = "NO";
    defparam sub_207_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endofopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endofopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1768), .COUT(n1769));
    defparam sub_207_add_2_14.INIT0 = 16'h5999;
    defparam sub_207_add_2_14.INIT1 = 16'h5999;
    defparam sub_207_add_2_14.INJECT1_0 = "NO";
    defparam sub_207_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endofopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endofopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1769), .COUT(n1770));
    defparam sub_207_add_2_16.INIT0 = 16'h5999;
    defparam sub_207_add_2_16.INIT1 = 16'h5999;
    defparam sub_207_add_2_16.INJECT1_0 = "NO";
    defparam sub_207_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1770), .S0(n475));
    defparam sub_207_add_2_cout.INIT0 = 16'h0000;
    defparam sub_207_add_2_cout.INIT1 = 16'h0000;
    defparam sub_207_add_2_cout.INJECT1_0 = "NO";
    defparam sub_207_add_2_cout.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_7 (.A(n475), .B(samplestarted), .Z(n1981)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_7.init = 16'h4444;
    LUT4 i1_2_lut_3_lut (.A(n475), .B(samplestarted), .C(MW_invalid_c), 
         .Z(ADC_sample_N_17)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0404;
    
endmodule
//
// Verilog Description of module comparator_U4
//

module comparator_U4 (GND_net, samplestarted, \gatedcount[14] , \Startopticalsample[14] , 
            \gatedcount[15] , \Startopticalsample[15] , \gatedcount[12] , 
            \Startopticalsample[12] , \gatedcount[13] , \Startopticalsample[13] , 
            \gatedcount[10] , \Startopticalsample[10] , \gatedcount[11] , 
            \Startopticalsample[11] , \gatedcount[8] , \Startopticalsample[8] , 
            \gatedcount[9] , \Startopticalsample[9] , \gatedcount[6] , 
            \Startopticalsample[6] , \gatedcount[7] , \Startopticalsample[7] , 
            \gatedcount[4] , \Startopticalsample[4] , \gatedcount[5] , 
            \Startopticalsample[5] , \gatedcount[2] , \Startopticalsample[2] , 
            \gatedcount[3] , \Startopticalsample[3] , \gatedcount[1] , 
            \Resetandrepeat[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output samplestarted;
    input \gatedcount[14] ;
    input \Startopticalsample[14] ;
    input \gatedcount[15] ;
    input \Startopticalsample[15] ;
    input \gatedcount[12] ;
    input \Startopticalsample[12] ;
    input \gatedcount[13] ;
    input \Startopticalsample[13] ;
    input \gatedcount[10] ;
    input \Startopticalsample[10] ;
    input \gatedcount[11] ;
    input \Startopticalsample[11] ;
    input \gatedcount[8] ;
    input \Startopticalsample[8] ;
    input \gatedcount[9] ;
    input \Startopticalsample[9] ;
    input \gatedcount[6] ;
    input \Startopticalsample[6] ;
    input \gatedcount[7] ;
    input \Startopticalsample[7] ;
    input \gatedcount[4] ;
    input \Startopticalsample[4] ;
    input \gatedcount[5] ;
    input \Startopticalsample[5] ;
    input \gatedcount[2] ;
    input \Startopticalsample[2] ;
    input \gatedcount[3] ;
    input \Startopticalsample[3] ;
    input \gatedcount[1] ;
    input \Resetandrepeat[1] ;
    
    
    wire n1817, n1816, n1815, n1814, n1813, n1812, n1811, n1810;
    
    CCU2D sub_205_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1817), .S0(samplestarted));
    defparam sub_205_add_2_cout.INIT0 = 16'h0000;
    defparam sub_205_add_2_cout.INIT1 = 16'h0000;
    defparam sub_205_add_2_cout.INJECT1_0 = "NO";
    defparam sub_205_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1816), .COUT(n1817));
    defparam sub_205_add_2_16.INIT0 = 16'h5999;
    defparam sub_205_add_2_16.INIT1 = 16'h5999;
    defparam sub_205_add_2_16.INJECT1_0 = "NO";
    defparam sub_205_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1815), .COUT(n1816));
    defparam sub_205_add_2_14.INIT0 = 16'h5999;
    defparam sub_205_add_2_14.INIT1 = 16'h5999;
    defparam sub_205_add_2_14.INJECT1_0 = "NO";
    defparam sub_205_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1814), .COUT(n1815));
    defparam sub_205_add_2_12.INIT0 = 16'h5999;
    defparam sub_205_add_2_12.INIT1 = 16'h5999;
    defparam sub_205_add_2_12.INJECT1_0 = "NO";
    defparam sub_205_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1813), .COUT(n1814));
    defparam sub_205_add_2_10.INIT0 = 16'h5999;
    defparam sub_205_add_2_10.INIT1 = 16'h5999;
    defparam sub_205_add_2_10.INJECT1_0 = "NO";
    defparam sub_205_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1812), .COUT(n1813));
    defparam sub_205_add_2_8.INIT0 = 16'h5999;
    defparam sub_205_add_2_8.INIT1 = 16'h5999;
    defparam sub_205_add_2_8.INJECT1_0 = "NO";
    defparam sub_205_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1811), .COUT(n1812));
    defparam sub_205_add_2_6.INIT0 = 16'h5999;
    defparam sub_205_add_2_6.INIT1 = 16'h5999;
    defparam sub_205_add_2_6.INJECT1_0 = "NO";
    defparam sub_205_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_4 (.A0(\gatedcount[2] ), .B0(\Startopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1810), .COUT(n1811));
    defparam sub_205_add_2_4.INIT0 = 16'h5999;
    defparam sub_205_add_2_4.INIT1 = 16'h5999;
    defparam sub_205_add_2_4.INJECT1_0 = "NO";
    defparam sub_205_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1810));
    defparam sub_205_add_2_2.INIT0 = 16'h0000;
    defparam sub_205_add_2_2.INIT1 = 16'h5999;
    defparam sub_205_add_2_2.INJECT1_0 = "NO";
    defparam sub_205_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (GND_net, n437, \gatedcount[14] , \Endofprobepulse[14] , 
            \gatedcount[15] , \Endofprobepulse[15] , \gatedcount[12] , 
            \Endofprobepulse[12] , \gatedcount[13] , \Endofprobepulse[13] , 
            \gatedcount[10] , \Endofprobepulse[10] , \gatedcount[11] , 
            \Endofprobepulse[11] , \gatedcount[8] , \Endofprobepulse[8] , 
            \gatedcount[9] , \Endofprobepulse[9] , \gatedcount[6] , \Endofprobepulse[6] , 
            \gatedcount[7] , \Endofprobepulse[7] , \gatedcount[4] , \Resetandrepeat[4] , 
            \gatedcount[5] , \Resetandrepeat[5] , \gatedcount[2] , \Resetandrepeat[2] , 
            \gatedcount[3] , \Resetandrepeat[3] , \gatedcount[1] , \Resetandrepeat[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n437;
    input \gatedcount[14] ;
    input \Endofprobepulse[14] ;
    input \gatedcount[15] ;
    input \Endofprobepulse[15] ;
    input \gatedcount[12] ;
    input \Endofprobepulse[12] ;
    input \gatedcount[13] ;
    input \Endofprobepulse[13] ;
    input \gatedcount[10] ;
    input \Endofprobepulse[10] ;
    input \gatedcount[11] ;
    input \Endofprobepulse[11] ;
    input \gatedcount[8] ;
    input \Endofprobepulse[8] ;
    input \gatedcount[9] ;
    input \Endofprobepulse[9] ;
    input \gatedcount[6] ;
    input \Endofprobepulse[6] ;
    input \gatedcount[7] ;
    input \Endofprobepulse[7] ;
    input \gatedcount[4] ;
    input \Resetandrepeat[4] ;
    input \gatedcount[5] ;
    input \Resetandrepeat[5] ;
    input \gatedcount[2] ;
    input \Resetandrepeat[2] ;
    input \gatedcount[3] ;
    input \Resetandrepeat[3] ;
    input \gatedcount[1] ;
    input \Resetandrepeat[1] ;
    
    
    wire n1841, n1840, n1839, n1838, n1837, n1836, n1835, n1834;
    
    CCU2D sub_203_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1841), .S0(n437));
    defparam sub_203_add_2_cout.INIT0 = 16'h0000;
    defparam sub_203_add_2_cout.INIT1 = 16'h0000;
    defparam sub_203_add_2_cout.INJECT1_0 = "NO";
    defparam sub_203_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1840), .COUT(n1841));
    defparam sub_203_add_2_16.INIT0 = 16'h5999;
    defparam sub_203_add_2_16.INIT1 = 16'h5999;
    defparam sub_203_add_2_16.INJECT1_0 = "NO";
    defparam sub_203_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1839), .COUT(n1840));
    defparam sub_203_add_2_14.INIT0 = 16'h5999;
    defparam sub_203_add_2_14.INIT1 = 16'h5999;
    defparam sub_203_add_2_14.INJECT1_0 = "NO";
    defparam sub_203_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1838), .COUT(n1839));
    defparam sub_203_add_2_12.INIT0 = 16'h5999;
    defparam sub_203_add_2_12.INIT1 = 16'h5999;
    defparam sub_203_add_2_12.INJECT1_0 = "NO";
    defparam sub_203_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1837), .COUT(n1838));
    defparam sub_203_add_2_10.INIT0 = 16'h5999;
    defparam sub_203_add_2_10.INIT1 = 16'h5999;
    defparam sub_203_add_2_10.INJECT1_0 = "NO";
    defparam sub_203_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1836), .COUT(n1837));
    defparam sub_203_add_2_8.INIT0 = 16'h5999;
    defparam sub_203_add_2_8.INIT1 = 16'h5999;
    defparam sub_203_add_2_8.INJECT1_0 = "NO";
    defparam sub_203_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_6 (.A0(\gatedcount[4] ), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1835), .COUT(n1836));
    defparam sub_203_add_2_6.INIT0 = 16'h5999;
    defparam sub_203_add_2_6.INIT1 = 16'h5999;
    defparam sub_203_add_2_6.INJECT1_0 = "NO";
    defparam sub_203_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_4 (.A0(\gatedcount[2] ), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1834), .COUT(n1835));
    defparam sub_203_add_2_4.INIT0 = 16'h5999;
    defparam sub_203_add_2_4.INIT1 = 16'h5999;
    defparam sub_203_add_2_4.INJECT1_0 = "NO";
    defparam sub_203_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1834));
    defparam sub_203_add_2_2.INIT0 = 16'h0000;
    defparam sub_203_add_2_2.INIT1 = 16'h5999;
    defparam sub_203_add_2_2.INJECT1_0 = "NO";
    defparam sub_203_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (\gatedcount[6] , \Startofprobepulse[6] , GND_net, 
            \gatedcount[7] , \Startofprobepulse[7] , \gatedcount[4] , 
            \Startofprobepulse[4] , \gatedcount[5] , \Startofprobepulse[5] , 
            \gatedcount[2] , \Startopticalsample[2] , \gatedcount[3] , 
            \Startopticalsample[3] , \gatedcount[1] , \Resetandrepeat[1] , 
            probestarted, \gatedcount[14] , \Startofprobepulse[14] , \gatedcount[15] , 
            \Startofprobepulse[15] , \gatedcount[12] , \Startofprobepulse[12] , 
            \gatedcount[13] , \Startofprobepulse[13] , \gatedcount[10] , 
            \Startofprobepulse[10] , \gatedcount[11] , \Startofprobepulse[11] , 
            \gatedcount[8] , \Startofprobepulse[8] , \gatedcount[9] , 
            \Startofprobepulse[9] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[6] ;
    input \Startofprobepulse[6] ;
    input GND_net;
    input \gatedcount[7] ;
    input \Startofprobepulse[7] ;
    input \gatedcount[4] ;
    input \Startofprobepulse[4] ;
    input \gatedcount[5] ;
    input \Startofprobepulse[5] ;
    input \gatedcount[2] ;
    input \Startopticalsample[2] ;
    input \gatedcount[3] ;
    input \Startopticalsample[3] ;
    input \gatedcount[1] ;
    input \Resetandrepeat[1] ;
    output probestarted;
    input \gatedcount[14] ;
    input \Startofprobepulse[14] ;
    input \gatedcount[15] ;
    input \Startofprobepulse[15] ;
    input \gatedcount[12] ;
    input \Startofprobepulse[12] ;
    input \gatedcount[13] ;
    input \Startofprobepulse[13] ;
    input \gatedcount[10] ;
    input \Startofprobepulse[10] ;
    input \gatedcount[11] ;
    input \Startofprobepulse[11] ;
    input \gatedcount[8] ;
    input \Startofprobepulse[8] ;
    input \gatedcount[9] ;
    input \Startofprobepulse[9] ;
    
    
    wire n1804, n1805, n1803, n1802, n1809, n1808, n1807, n1806;
    
    CCU2D sub_201_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1804), .COUT(n1805));
    defparam sub_201_add_2_8.INIT0 = 16'h5999;
    defparam sub_201_add_2_8.INIT1 = 16'h5999;
    defparam sub_201_add_2_8.INJECT1_0 = "NO";
    defparam sub_201_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startofprobepulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startofprobepulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1803), .COUT(n1804));
    defparam sub_201_add_2_6.INIT0 = 16'h5999;
    defparam sub_201_add_2_6.INIT1 = 16'h5999;
    defparam sub_201_add_2_6.INJECT1_0 = "NO";
    defparam sub_201_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_4 (.A0(\gatedcount[2] ), .B0(\Startopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1802), .COUT(n1803));
    defparam sub_201_add_2_4.INIT0 = 16'h5999;
    defparam sub_201_add_2_4.INIT1 = 16'h5999;
    defparam sub_201_add_2_4.INJECT1_0 = "NO";
    defparam sub_201_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1802));
    defparam sub_201_add_2_2.INIT0 = 16'h0000;
    defparam sub_201_add_2_2.INIT1 = 16'h5999;
    defparam sub_201_add_2_2.INJECT1_0 = "NO";
    defparam sub_201_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1809), .S0(probestarted));
    defparam sub_201_add_2_cout.INIT0 = 16'h0000;
    defparam sub_201_add_2_cout.INIT1 = 16'h0000;
    defparam sub_201_add_2_cout.INJECT1_0 = "NO";
    defparam sub_201_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1808), .COUT(n1809));
    defparam sub_201_add_2_16.INIT0 = 16'h5999;
    defparam sub_201_add_2_16.INIT1 = 16'h5999;
    defparam sub_201_add_2_16.INJECT1_0 = "NO";
    defparam sub_201_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1807), .COUT(n1808));
    defparam sub_201_add_2_14.INIT0 = 16'h5999;
    defparam sub_201_add_2_14.INIT1 = 16'h5999;
    defparam sub_201_add_2_14.INJECT1_0 = "NO";
    defparam sub_201_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1806), .COUT(n1807));
    defparam sub_201_add_2_12.INIT0 = 16'h5999;
    defparam sub_201_add_2_12.INIT1 = 16'h5999;
    defparam sub_201_add_2_12.INJECT1_0 = "NO";
    defparam sub_201_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1805), .COUT(n1806));
    defparam sub_201_add_2_10.INIT0 = 16'h5999;
    defparam sub_201_add_2_10.INIT1 = 16'h5999;
    defparam sub_201_add_2_10.INJECT1_0 = "NO";
    defparam sub_201_add_2_10.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (GND_net, pieovertwo_minus, pieovertwo_plus, 
            \AdjustablePieOverTwo[9] , \AdjustablePieOverTwo[10] , \AdjustablePieOverTwo[13] , 
            \AdjustablePieOverTwo[14] , \AdjustablePieOverTwo[3] , \AdjustablePieOverTwo[4] , 
            \AdjustablePieOverTwo[7] , \AdjustablePieOverTwo[8] , \AdjustablePieOverTwo[11] , 
            \AdjustablePieOverTwo[12] , load_defaults, \AdjustablePieOverTwo[1] , 
            \AdjustablePieOverTwo[2] , \AdjustablePieOverTwo[15] , \AdjustablePieOverTwo[6] , 
            \AdjustablePieOverTwo[5] , clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input pieovertwo_minus;
    input pieovertwo_plus;
    output \AdjustablePieOverTwo[9] ;
    output \AdjustablePieOverTwo[10] ;
    output \AdjustablePieOverTwo[13] ;
    output \AdjustablePieOverTwo[14] ;
    output \AdjustablePieOverTwo[3] ;
    output \AdjustablePieOverTwo[4] ;
    output \AdjustablePieOverTwo[7] ;
    output \AdjustablePieOverTwo[8] ;
    output \AdjustablePieOverTwo[11] ;
    output \AdjustablePieOverTwo[12] ;
    input load_defaults;
    output \AdjustablePieOverTwo[1] ;
    output \AdjustablePieOverTwo[2] ;
    output \AdjustablePieOverTwo[15] ;
    output \AdjustablePieOverTwo[6] ;
    output \AdjustablePieOverTwo[5] ;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1690, n1694;
    wire [14:0]n1295;
    
    wire n1695, n1696, n1697, n1691, n1692, n1693, n4;
    wire [15:0]count_15__N_134;
    
    wire n1866, n1867, n1868, n1869, n1870, n1871, n1872;
    
    CCU2D add_254_306_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(GND_net), 
          .D1(GND_net), .COUT(n1690));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_1.INIT0 = 16'hF000;
    defparam add_254_306_add_1_1.INIT1 = 16'hdddd;
    defparam add_254_306_add_1_1.INJECT1_0 = "NO";
    defparam add_254_306_add_1_1.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_11 (.A0(\AdjustablePieOverTwo[9] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[10] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1694), .COUT(n1695), 
          .S0(n1295[8]), .S1(n1295[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_11.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_11.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_11.INJECT1_0 = "NO";
    defparam add_254_306_add_1_11.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_15 (.A0(\AdjustablePieOverTwo[13] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[14] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1696), .COUT(n1697), 
          .S0(n1295[12]), .S1(n1295[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_15.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_15.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_15.INJECT1_0 = "NO";
    defparam add_254_306_add_1_15.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_5 (.A0(\AdjustablePieOverTwo[3] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[4] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1691), .COUT(n1692), 
          .S0(n1295[2]), .S1(n1295[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_5.INIT0 = 16'h5666;
    defparam add_254_306_add_1_5.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_5.INJECT1_0 = "NO";
    defparam add_254_306_add_1_5.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_9 (.A0(\AdjustablePieOverTwo[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[8] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1693), .COUT(n1694), 
          .S0(n1295[6]), .S1(n1295[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_9.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_9.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_9.INJECT1_0 = "NO";
    defparam add_254_306_add_1_9.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_13 (.A0(\AdjustablePieOverTwo[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[12] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1695), .COUT(n1696), 
          .S0(n1295[10]), .S1(n1295[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_13.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_13.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_13.INJECT1_0 = "NO";
    defparam add_254_306_add_1_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(pieovertwo_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_254_306_add_1_3 (.A0(\AdjustablePieOverTwo[1] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[2] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1690), .COUT(n1691), 
          .S0(count_15__N_134[1]), .S1(n1295[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_3.INIT0 = 16'h5666;
    defparam add_254_306_add_1_3.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_3.INJECT1_0 = "NO";
    defparam add_254_306_add_1_3.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_134[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_134[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_134[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_134[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_134[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_134[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_134[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_134[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_134[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3IX count_i6 (.D(count_15__N_134[6]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_134[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_134[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_134[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_134[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    FD1S3JX count_i1 (.D(count_15__N_134[1]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i1.GSR = "ENABLED";
    CCU2D add_254_306_add_1_7 (.A0(\AdjustablePieOverTwo[5] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[6] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1692), .COUT(n1693), 
          .S0(n1295[4]), .S1(n1295[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_7.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_7.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_7.INJECT1_0 = "NO";
    defparam add_254_306_add_1_7.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_17 (.A0(\AdjustablePieOverTwo[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1697), .S0(n1295[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_17.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_17.INIT1 = 16'h0000;
    defparam add_254_306_add_1_17.INJECT1_0 = "NO";
    defparam add_254_306_add_1_17.INJECT1_1 = "NO";
    CCU2D add_324_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1295[1]), 
          .D1(GND_net), .COUT(n1866), .S1(count_15__N_134[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_324_1.INIT0 = 16'hF000;
    defparam add_324_1.INIT1 = 16'hd2d2;
    defparam add_324_1.INJECT1_0 = "NO";
    defparam add_324_1.INJECT1_1 = "NO";
    CCU2D add_324_3 (.A0(n1295[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1295[3]), 
          .D1(GND_net), .CIN(n1866), .COUT(n1867), .S0(count_15__N_134[3]), 
          .S1(count_15__N_134[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_324_3.INIT0 = 16'h5aaa;
    defparam add_324_3.INIT1 = 16'hd2d2;
    defparam add_324_3.INJECT1_0 = "NO";
    defparam add_324_3.INJECT1_1 = "NO";
    CCU2D add_324_5 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1295[4]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1295[5]), 
          .D1(GND_net), .CIN(n1867), .COUT(n1868), .S0(count_15__N_134[5]), 
          .S1(count_15__N_134[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_324_5.INIT0 = 16'hd2d2;
    defparam add_324_5.INIT1 = 16'hd2d2;
    defparam add_324_5.INJECT1_0 = "NO";
    defparam add_324_5.INJECT1_1 = "NO";
    CCU2D add_324_7 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1295[6]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1295[7]), 
          .D1(GND_net), .CIN(n1868), .COUT(n1869), .S0(count_15__N_134[7]), 
          .S1(count_15__N_134[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_324_7.INIT0 = 16'hd2d2;
    defparam add_324_7.INIT1 = 16'hd2d2;
    defparam add_324_7.INJECT1_0 = "NO";
    defparam add_324_7.INJECT1_1 = "NO";
    CCU2D add_324_9 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1295[8]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1295[9]), 
          .D1(GND_net), .CIN(n1869), .COUT(n1870), .S0(count_15__N_134[9]), 
          .S1(count_15__N_134[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_324_9.INIT0 = 16'hd2d2;
    defparam add_324_9.INIT1 = 16'hd2d2;
    defparam add_324_9.INJECT1_0 = "NO";
    defparam add_324_9.INJECT1_1 = "NO";
    CCU2D add_324_11 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1295[10]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1295[11]), 
          .D1(GND_net), .CIN(n1870), .COUT(n1871), .S0(count_15__N_134[11]), 
          .S1(count_15__N_134[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_324_11.INIT0 = 16'hd2d2;
    defparam add_324_11.INIT1 = 16'hd2d2;
    defparam add_324_11.INJECT1_0 = "NO";
    defparam add_324_11.INJECT1_1 = "NO";
    CCU2D add_324_13 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1295[12]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1295[13]), 
          .D1(GND_net), .CIN(n1871), .COUT(n1872), .S0(count_15__N_134[13]), 
          .S1(count_15__N_134[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_324_13.INIT0 = 16'hd2d2;
    defparam add_324_13.INIT1 = 16'hd2d2;
    defparam add_324_13.INJECT1_0 = "NO";
    defparam add_324_13.INJECT1_1 = "NO";
    CCU2D add_324_15 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1295[14]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1872), .S0(count_15__N_134[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_324_15.INIT0 = 16'hd2d2;
    defparam add_324_15.INIT1 = 16'h0000;
    defparam add_324_15.INJECT1_0 = "NO";
    defparam add_324_15.INJECT1_1 = "NO";
    single_period_pulse clean_trigger (.trigger(trigger), .clk_2M5(clk_2M5), 
            .pieovertwo_minus(pieovertwo_minus), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[22:92])
    
endmodule
//
// Verilog Description of module single_period_pulse
//

module single_period_pulse (trigger, clk_2M5, pieovertwo_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output trigger;
    input clk_2M5;
    input pieovertwo_minus;
    input n4;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire Q0, Q1;
    
    LUT4 Q0_I_0_2_lut (.A(Q0), .B(Q1), .Z(trigger)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(55[15:25])
    defparam Q0_I_0_2_lut.init = 16'h2222;
    d_flip_flop stage1_ff (.Q1(Q1), .clk_2M5(clk_2M5), .Q0(Q0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(52[14:51])
    d_flip_flop_U0 stage0_ff (.Q0(Q0), .clk_2M5(clk_2M5), .pieovertwo_minus(pieovertwo_minus), 
            .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(51[14:51])
    
endmodule
//
// Verilog Description of module d_flip_flop
//

module d_flip_flop (Q1, clk_2M5, Q0) /* synthesis syn_module_defined=1 */ ;
    output Q1;
    input clk_2M5;
    input Q0;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3AX Q_5 (.D(Q0), .CK(clk_2M5), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
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
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3JX Q_5 (.D(n4), .CK(clk_2M5), .PD(pieovertwo_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module comparator_U7
//

module comparator_U7 (GND_net, loop, \gatedcount[14] , \Resetandrepeat[14] , 
            \gatedcount[15] , \Resetandrepeat[15] , \gatedcount[12] , 
            \Resetandrepeat[12] , \gatedcount[13] , \Resetandrepeat[13] , 
            \gatedcount[10] , \Resetandrepeat[10] , \gatedcount[11] , 
            \Resetandrepeat[11] , \gatedcount[8] , \Resetandrepeat[8] , 
            \gatedcount[9] , \Resetandrepeat[9] , \gatedcount[6] , \Resetandrepeat[6] , 
            \gatedcount[7] , \Resetandrepeat[7] , \gatedcount[4] , \Resetandrepeat[4] , 
            \gatedcount[5] , \Resetandrepeat[5] , \gatedcount[2] , \Resetandrepeat[2] , 
            \gatedcount[3] , \Resetandrepeat[3] , \gatedcount[1] , \Resetandrepeat[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output loop;
    input \gatedcount[14] ;
    input \Resetandrepeat[14] ;
    input \gatedcount[15] ;
    input \Resetandrepeat[15] ;
    input \gatedcount[12] ;
    input \Resetandrepeat[12] ;
    input \gatedcount[13] ;
    input \Resetandrepeat[13] ;
    input \gatedcount[10] ;
    input \Resetandrepeat[10] ;
    input \gatedcount[11] ;
    input \Resetandrepeat[11] ;
    input \gatedcount[8] ;
    input \Resetandrepeat[8] ;
    input \gatedcount[9] ;
    input \Resetandrepeat[9] ;
    input \gatedcount[6] ;
    input \Resetandrepeat[6] ;
    input \gatedcount[7] ;
    input \Resetandrepeat[7] ;
    input \gatedcount[4] ;
    input \Resetandrepeat[4] ;
    input \gatedcount[5] ;
    input \Resetandrepeat[5] ;
    input \gatedcount[2] ;
    input \Resetandrepeat[2] ;
    input \gatedcount[3] ;
    input \Resetandrepeat[3] ;
    input \gatedcount[1] ;
    input \Resetandrepeat[1] ;
    
    
    wire n1849, n1848, n1847, n1846, n1845, n1844, n1843, n1842;
    
    CCU2D sub_209_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1849), .S0(loop));
    defparam sub_209_add_2_cout.INIT0 = 16'h0000;
    defparam sub_209_add_2_cout.INIT1 = 16'h0000;
    defparam sub_209_add_2_cout.INJECT1_0 = "NO";
    defparam sub_209_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_209_add_2_16 (.A0(\gatedcount[14] ), .B0(\Resetandrepeat[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Resetandrepeat[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1848), .COUT(n1849));
    defparam sub_209_add_2_16.INIT0 = 16'h5999;
    defparam sub_209_add_2_16.INIT1 = 16'h5999;
    defparam sub_209_add_2_16.INJECT1_0 = "NO";
    defparam sub_209_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_209_add_2_14 (.A0(\gatedcount[12] ), .B0(\Resetandrepeat[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Resetandrepeat[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1847), .COUT(n1848));
    defparam sub_209_add_2_14.INIT0 = 16'h5999;
    defparam sub_209_add_2_14.INIT1 = 16'h5999;
    defparam sub_209_add_2_14.INJECT1_0 = "NO";
    defparam sub_209_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_209_add_2_12 (.A0(\gatedcount[10] ), .B0(\Resetandrepeat[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Resetandrepeat[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1846), .COUT(n1847));
    defparam sub_209_add_2_12.INIT0 = 16'h5999;
    defparam sub_209_add_2_12.INIT1 = 16'h5999;
    defparam sub_209_add_2_12.INJECT1_0 = "NO";
    defparam sub_209_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_209_add_2_10 (.A0(\gatedcount[8] ), .B0(\Resetandrepeat[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Resetandrepeat[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1845), .COUT(n1846));
    defparam sub_209_add_2_10.INIT0 = 16'h5999;
    defparam sub_209_add_2_10.INIT1 = 16'h5999;
    defparam sub_209_add_2_10.INJECT1_0 = "NO";
    defparam sub_209_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_209_add_2_8 (.A0(\gatedcount[6] ), .B0(\Resetandrepeat[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Resetandrepeat[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1844), .COUT(n1845));
    defparam sub_209_add_2_8.INIT0 = 16'h5999;
    defparam sub_209_add_2_8.INIT1 = 16'h5999;
    defparam sub_209_add_2_8.INJECT1_0 = "NO";
    defparam sub_209_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_209_add_2_6 (.A0(\gatedcount[4] ), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1843), .COUT(n1844));
    defparam sub_209_add_2_6.INIT0 = 16'h5999;
    defparam sub_209_add_2_6.INIT1 = 16'h5999;
    defparam sub_209_add_2_6.INJECT1_0 = "NO";
    defparam sub_209_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_209_add_2_4 (.A0(\gatedcount[2] ), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1842), .COUT(n1843));
    defparam sub_209_add_2_4.INIT0 = 16'h5999;
    defparam sub_209_add_2_4.INIT1 = 16'h5999;
    defparam sub_209_add_2_4.INJECT1_0 = "NO";
    defparam sub_209_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_209_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1842));
    defparam sub_209_add_2_2.INIT0 = 16'h0000;
    defparam sub_209_add_2_2.INIT1 = 16'h5999;
    defparam sub_209_add_2_2.INJECT1_0 = "NO";
    defparam sub_209_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload_U8
//

module countupdownpreload_U8 (GND_net, freeprecess_minus, freeprecess_plus, 
            \AdjustableFreePrecession[2] , \AdjustableFreePrecession[3] , 
            \AdjustableFreePrecession[4] , \AdjustableFreePrecession[5] , 
            \AdjustableFreePrecession[6] , \AdjustableFreePrecession[7] , 
            \AdjustableFreePrecession[8] , \AdjustableFreePrecession[9] , 
            \AdjustableFreePrecession[10] , \AdjustableFreePrecession[11] , 
            \AdjustableFreePrecession[12] , \AdjustableFreePrecession[13] , 
            \AdjustableFreePrecession[15] , load_defaults, \AdjustableFreePrecession[14] , 
            clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input freeprecess_minus;
    input freeprecess_plus;
    output \AdjustableFreePrecession[2] ;
    output \AdjustableFreePrecession[3] ;
    output \AdjustableFreePrecession[4] ;
    output \AdjustableFreePrecession[5] ;
    output \AdjustableFreePrecession[6] ;
    output \AdjustableFreePrecession[7] ;
    output \AdjustableFreePrecession[8] ;
    output \AdjustableFreePrecession[9] ;
    output \AdjustableFreePrecession[10] ;
    output \AdjustableFreePrecession[11] ;
    output \AdjustableFreePrecession[12] ;
    output \AdjustableFreePrecession[13] ;
    output \AdjustableFreePrecession[15] ;
    input load_defaults;
    output \AdjustableFreePrecession[14] ;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1782;
    wire [15:0]count_15__N_134;
    wire [13:0]n1279;
    
    wire n1783, n1784, n1785, n1786, n1787, n1699, n1700, n1788, 
        n1703, n1698, n4, n1702, n1701;
    
    CCU2D add_258_310_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(GND_net), .D1(GND_net), .COUT(n1782));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_258_310_add_1_1.INIT0 = 16'hF000;
    defparam add_258_310_add_1_1.INIT1 = 16'hdddd;
    defparam add_258_310_add_1_1.INJECT1_0 = "NO";
    defparam add_258_310_add_1_1.INJECT1_1 = "NO";
    CCU2D add_258_310_add_1_3 (.A0(\AdjustableFreePrecession[2] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[3] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1782), .COUT(n1783), 
          .S0(count_15__N_134[2]), .S1(n1279[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_258_310_add_1_3.INIT0 = 16'h5666;
    defparam add_258_310_add_1_3.INIT1 = 16'h5aaa;
    defparam add_258_310_add_1_3.INJECT1_0 = "NO";
    defparam add_258_310_add_1_3.INJECT1_1 = "NO";
    CCU2D add_258_310_add_1_5 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), 
          .B1(freeprecess_plus), .C1(GND_net), .D1(GND_net), .CIN(n1783), 
          .COUT(n1784), .S0(n1279[2]), .S1(n1279[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_258_310_add_1_5.INIT0 = 16'h5aaa;
    defparam add_258_310_add_1_5.INIT1 = 16'h5666;
    defparam add_258_310_add_1_5.INJECT1_0 = "NO";
    defparam add_258_310_add_1_5.INJECT1_1 = "NO";
    CCU2D add_258_310_add_1_7 (.A0(\AdjustableFreePrecession[6] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1784), .COUT(n1785), 
          .S0(n1279[4]), .S1(n1279[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_258_310_add_1_7.INIT0 = 16'h5666;
    defparam add_258_310_add_1_7.INIT1 = 16'h5aaa;
    defparam add_258_310_add_1_7.INJECT1_0 = "NO";
    defparam add_258_310_add_1_7.INJECT1_1 = "NO";
    CCU2D add_258_310_add_1_9 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1785), .COUT(n1786), 
          .S0(n1279[6]), .S1(n1279[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_258_310_add_1_9.INIT0 = 16'h5aaa;
    defparam add_258_310_add_1_9.INIT1 = 16'h5aaa;
    defparam add_258_310_add_1_9.INJECT1_0 = "NO";
    defparam add_258_310_add_1_9.INJECT1_1 = "NO";
    CCU2D add_258_310_add_1_11 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1786), .COUT(n1787), 
          .S0(n1279[8]), .S1(n1279[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_258_310_add_1_11.INIT0 = 16'h5aaa;
    defparam add_258_310_add_1_11.INIT1 = 16'h5aaa;
    defparam add_258_310_add_1_11.INJECT1_0 = "NO";
    defparam add_258_310_add_1_11.INJECT1_1 = "NO";
    CCU2D add_325_5 (.A0(n1279[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1279[5]), 
          .D1(GND_net), .CIN(n1699), .COUT(n1700), .S0(count_15__N_134[6]), 
          .S1(count_15__N_134[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_325_5.INIT0 = 16'h5aaa;
    defparam add_325_5.INIT1 = 16'hd2d2;
    defparam add_325_5.INJECT1_0 = "NO";
    defparam add_325_5.INJECT1_1 = "NO";
    CCU2D add_258_310_add_1_13 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1787), .COUT(n1788), 
          .S0(n1279[10]), .S1(n1279[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_258_310_add_1_13.INIT0 = 16'h5aaa;
    defparam add_258_310_add_1_13.INIT1 = 16'h5aaa;
    defparam add_258_310_add_1_13.INJECT1_0 = "NO";
    defparam add_258_310_add_1_13.INJECT1_1 = "NO";
    CCU2D add_325_13 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1279[12]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1279[13]), .D1(GND_net), .CIN(n1703), .S0(count_15__N_134[14]), 
          .S1(count_15__N_134[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_325_13.INIT0 = 16'hd2d2;
    defparam add_325_13.INIT1 = 16'hd2d2;
    defparam add_325_13.INJECT1_0 = "NO";
    defparam add_325_13.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_134[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_134[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3JX count_i13 (.D(count_15__N_134[13]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_134[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_134[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3JX count_i10 (.D(count_15__N_134[10]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_134[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_134[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_134[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3IX count_i6 (.D(count_15__N_134[6]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    CCU2D add_258_310_add_1_15 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1788), .S0(n1279[12]), 
          .S1(n1279[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_258_310_add_1_15.INIT0 = 16'h5aaa;
    defparam add_258_310_add_1_15.INIT1 = 16'h5aaa;
    defparam add_258_310_add_1_15.INJECT1_0 = "NO";
    defparam add_258_310_add_1_15.INJECT1_1 = "NO";
    CCU2D add_325_3 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1279[2]), 
          .D0(GND_net), .A1(n1279[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1698), .COUT(n1699), .S0(count_15__N_134[4]), .S1(count_15__N_134[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_325_3.INIT0 = 16'hd2d2;
    defparam add_325_3.INIT1 = 16'h5aaa;
    defparam add_325_3.INJECT1_0 = "NO";
    defparam add_325_3.INJECT1_1 = "NO";
    FD1S3IX count_i5 (.D(count_15__N_134[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_134[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3IX count_i3 (.D(count_15__N_134[3]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_134[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(freeprecess_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_325_11 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1279[10]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1279[11]), .D1(GND_net), .CIN(n1702), .COUT(n1703), .S0(count_15__N_134[12]), 
          .S1(count_15__N_134[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_325_11.INIT0 = 16'hd2d2;
    defparam add_325_11.INIT1 = 16'hd2d2;
    defparam add_325_11.INJECT1_0 = "NO";
    defparam add_325_11.INJECT1_1 = "NO";
    CCU2D add_325_9 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1279[8]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1279[9]), .D1(GND_net), .CIN(n1701), .COUT(n1702), .S0(count_15__N_134[10]), 
          .S1(count_15__N_134[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_325_9.INIT0 = 16'hd2d2;
    defparam add_325_9.INIT1 = 16'hd2d2;
    defparam add_325_9.INJECT1_0 = "NO";
    defparam add_325_9.INJECT1_1 = "NO";
    CCU2D add_325_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1279[1]), 
          .D1(GND_net), .COUT(n1698), .S1(count_15__N_134[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_325_1.INIT0 = 16'hF000;
    defparam add_325_1.INIT1 = 16'hd2d2;
    defparam add_325_1.INJECT1_0 = "NO";
    defparam add_325_1.INJECT1_1 = "NO";
    CCU2D add_325_7 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1279[6]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1279[7]), .D1(GND_net), .CIN(n1700), .COUT(n1701), .S0(count_15__N_134[8]), 
          .S1(count_15__N_134[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_325_7.INIT0 = 16'hd2d2;
    defparam add_325_7.INIT1 = 16'hd2d2;
    defparam add_325_7.INJECT1_0 = "NO";
    defparam add_325_7.INJECT1_1 = "NO";
    single_period_pulse_U3 clean_trigger (.trigger(trigger), .clk_2M5(clk_2M5), 
            .freeprecess_minus(freeprecess_minus), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[22:92])
    
endmodule
//
// Verilog Description of module single_period_pulse_U3
//

module single_period_pulse_U3 (trigger, clk_2M5, freeprecess_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output trigger;
    input clk_2M5;
    input freeprecess_minus;
    input n4;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire Q0, Q1;
    
    LUT4 Q0_I_0_2_lut (.A(Q0), .B(Q1), .Z(trigger)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(55[15:25])
    defparam Q0_I_0_2_lut.init = 16'h2222;
    d_flip_flop_U1 stage1_ff (.Q1(Q1), .clk_2M5(clk_2M5), .Q0(Q0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(52[14:51])
    d_flip_flop_U2 stage0_ff (.Q0(Q0), .clk_2M5(clk_2M5), .freeprecess_minus(freeprecess_minus), 
            .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(51[14:51])
    
endmodule
//
// Verilog Description of module d_flip_flop_U1
//

module d_flip_flop_U1 (Q1, clk_2M5, Q0) /* synthesis syn_module_defined=1 */ ;
    output Q1;
    input clk_2M5;
    input Q0;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3AX Q_5 (.D(Q0), .CK(clk_2M5), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
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
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3JX Q_5 (.D(n4), .CK(clk_2M5), .PD(freeprecess_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module comparator_U9
//

module comparator_U9 (GND_net, n399, \gatedcount[14] , \Endof2ndMWpulse[14] , 
            \gatedcount[15] , \Endof2ndMWpulse[15] , \gatedcount[12] , 
            \Endof2ndMWpulse[12] , \gatedcount[13] , \Endof2ndMWpulse[13] , 
            \gatedcount[10] , \Endof2ndMWpulse[10] , \gatedcount[11] , 
            \Endof2ndMWpulse[11] , \gatedcount[8] , \Endof2ndMWpulse[8] , 
            \gatedcount[9] , \Endof2ndMWpulse[9] , \gatedcount[6] , \Endof2ndMWpulse[6] , 
            \gatedcount[7] , \Endof2ndMWpulse[7] , \gatedcount[4] , \Endof2ndMWpulse[4] , 
            \gatedcount[5] , \Endof2ndMWpulse[5] , \gatedcount[2] , \Endof2ndMWpulse[2] , 
            \gatedcount[3] , \Endof2ndMWpulse[3] , \gatedcount[1] , \Endof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n399;
    input \gatedcount[14] ;
    input \Endof2ndMWpulse[14] ;
    input \gatedcount[15] ;
    input \Endof2ndMWpulse[15] ;
    input \gatedcount[12] ;
    input \Endof2ndMWpulse[12] ;
    input \gatedcount[13] ;
    input \Endof2ndMWpulse[13] ;
    input \gatedcount[10] ;
    input \Endof2ndMWpulse[10] ;
    input \gatedcount[11] ;
    input \Endof2ndMWpulse[11] ;
    input \gatedcount[8] ;
    input \Endof2ndMWpulse[8] ;
    input \gatedcount[9] ;
    input \Endof2ndMWpulse[9] ;
    input \gatedcount[6] ;
    input \Endof2ndMWpulse[6] ;
    input \gatedcount[7] ;
    input \Endof2ndMWpulse[7] ;
    input \gatedcount[4] ;
    input \Endof2ndMWpulse[4] ;
    input \gatedcount[5] ;
    input \Endof2ndMWpulse[5] ;
    input \gatedcount[2] ;
    input \Endof2ndMWpulse[2] ;
    input \gatedcount[3] ;
    input \Endof2ndMWpulse[3] ;
    input \gatedcount[1] ;
    input \Endof2ndMWpulse[1] ;
    
    
    wire n1825, n1824, n1823, n1822, n1821, n1820, n1819, n1818;
    
    CCU2D sub_199_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1825), .S0(n399));
    defparam sub_199_add_2_cout.INIT0 = 16'h0000;
    defparam sub_199_add_2_cout.INIT1 = 16'h0000;
    defparam sub_199_add_2_cout.INJECT1_0 = "NO";
    defparam sub_199_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1824), .COUT(n1825));
    defparam sub_199_add_2_16.INIT0 = 16'h5999;
    defparam sub_199_add_2_16.INIT1 = 16'h5999;
    defparam sub_199_add_2_16.INJECT1_0 = "NO";
    defparam sub_199_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1823), .COUT(n1824));
    defparam sub_199_add_2_14.INIT0 = 16'h5999;
    defparam sub_199_add_2_14.INIT1 = 16'h5999;
    defparam sub_199_add_2_14.INJECT1_0 = "NO";
    defparam sub_199_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1822), .COUT(n1823));
    defparam sub_199_add_2_12.INIT0 = 16'h5999;
    defparam sub_199_add_2_12.INIT1 = 16'h5999;
    defparam sub_199_add_2_12.INJECT1_0 = "NO";
    defparam sub_199_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1821), .COUT(n1822));
    defparam sub_199_add_2_10.INIT0 = 16'h5999;
    defparam sub_199_add_2_10.INIT1 = 16'h5999;
    defparam sub_199_add_2_10.INJECT1_0 = "NO";
    defparam sub_199_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1820), .COUT(n1821));
    defparam sub_199_add_2_8.INIT0 = 16'h5999;
    defparam sub_199_add_2_8.INIT1 = 16'h5999;
    defparam sub_199_add_2_8.INJECT1_0 = "NO";
    defparam sub_199_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_6 (.A0(\gatedcount[4] ), .B0(\Endof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Endof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1819), .COUT(n1820));
    defparam sub_199_add_2_6.INIT0 = 16'h5999;
    defparam sub_199_add_2_6.INIT1 = 16'h5999;
    defparam sub_199_add_2_6.INJECT1_0 = "NO";
    defparam sub_199_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_4 (.A0(\gatedcount[2] ), .B0(\Endof2ndMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Endof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1818), .COUT(n1819));
    defparam sub_199_add_2_4.INIT0 = 16'h5999;
    defparam sub_199_add_2_4.INIT1 = 16'h5999;
    defparam sub_199_add_2_4.INJECT1_0 = "NO";
    defparam sub_199_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Endof2ndMWpulse[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1818));
    defparam sub_199_add_2_2.INIT0 = 16'h0000;
    defparam sub_199_add_2_2.INIT1 = 16'h5999;
    defparam sub_199_add_2_2.INJECT1_0 = "NO";
    defparam sub_199_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U10
//

module comparator_U10 (GND_net, pi2started, gatedcount, \Startof2ndMWpulse[14] , 
            \Startof2ndMWpulse[15] , \Startof2ndMWpulse[12] , \Startof2ndMWpulse[13] , 
            \Startof2ndMWpulse[10] , \Startof2ndMWpulse[11] , \Startof2ndMWpulse[8] , 
            \Startof2ndMWpulse[9] , \Startof2ndMWpulse[6] , \Startof2ndMWpulse[7] , 
            \Startof2ndMWpulse[4] , \Startof2ndMWpulse[5] , \Endof1stMWpulse[2] , 
            \AdjustableFreePrecession[2] , \Startof2ndMWpulse[3] , \Startof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
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
    input \Endof1stMWpulse[2] ;
    input \AdjustableFreePrecession[2] ;
    input \Startof2ndMWpulse[3] ;
    input \Startof2ndMWpulse[1] ;
    
    
    wire n1833, n1832, n1831, n1830, n1829, n1828, n1827, n1826;
    
    CCU2D sub_197_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1833), .S0(pi2started));
    defparam sub_197_add_2_cout.INIT0 = 16'h0000;
    defparam sub_197_add_2_cout.INIT1 = 16'h0000;
    defparam sub_197_add_2_cout.INJECT1_0 = "NO";
    defparam sub_197_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_16 (.A0(gatedcount[14]), .B0(\Startof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Startof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1832), .COUT(n1833));
    defparam sub_197_add_2_16.INIT0 = 16'h5999;
    defparam sub_197_add_2_16.INIT1 = 16'h5999;
    defparam sub_197_add_2_16.INJECT1_0 = "NO";
    defparam sub_197_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_14 (.A0(gatedcount[12]), .B0(\Startof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Startof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1831), .COUT(n1832));
    defparam sub_197_add_2_14.INIT0 = 16'h5999;
    defparam sub_197_add_2_14.INIT1 = 16'h5999;
    defparam sub_197_add_2_14.INJECT1_0 = "NO";
    defparam sub_197_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_12 (.A0(gatedcount[10]), .B0(\Startof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Startof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1830), .COUT(n1831));
    defparam sub_197_add_2_12.INIT0 = 16'h5999;
    defparam sub_197_add_2_12.INIT1 = 16'h5999;
    defparam sub_197_add_2_12.INJECT1_0 = "NO";
    defparam sub_197_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_10 (.A0(gatedcount[8]), .B0(\Startof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Startof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1829), .COUT(n1830));
    defparam sub_197_add_2_10.INIT0 = 16'h5999;
    defparam sub_197_add_2_10.INIT1 = 16'h5999;
    defparam sub_197_add_2_10.INJECT1_0 = "NO";
    defparam sub_197_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_8 (.A0(gatedcount[6]), .B0(\Startof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Startof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1828), .COUT(n1829));
    defparam sub_197_add_2_8.INIT0 = 16'h5999;
    defparam sub_197_add_2_8.INIT1 = 16'h5999;
    defparam sub_197_add_2_8.INJECT1_0 = "NO";
    defparam sub_197_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_6 (.A0(gatedcount[4]), .B0(\Startof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Startof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1827), .COUT(n1828));
    defparam sub_197_add_2_6.INIT0 = 16'h5999;
    defparam sub_197_add_2_6.INIT1 = 16'h5999;
    defparam sub_197_add_2_6.INJECT1_0 = "NO";
    defparam sub_197_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_4 (.A0(\Endof1stMWpulse[2] ), .B0(\AdjustableFreePrecession[2] ), 
          .C0(gatedcount[2]), .D0(GND_net), .A1(gatedcount[3]), .B1(\Startof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1826), .COUT(n1827));
    defparam sub_197_add_2_4.INIT0 = 16'h6969;
    defparam sub_197_add_2_4.INIT1 = 16'h5999;
    defparam sub_197_add_2_4.INJECT1_0 = "NO";
    defparam sub_197_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n1826));
    defparam sub_197_add_2_2.INIT0 = 16'h5000;
    defparam sub_197_add_2_2.INIT1 = 16'h5999;
    defparam sub_197_add_2_2.INJECT1_0 = "NO";
    defparam sub_197_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U11
//

module comparator_U11 (gatedcount, \Endof1stMWpulse[14] , GND_net, \Endof1stMWpulse[15] , 
            n361, \Startof2ndMWpulse[1] , \Endof1stMWpulse[2] , \Endof1stMWpulse[3] , 
            \Endof1stMWpulse[4] , \Endof1stMWpulse[5] , \Endof1stMWpulse[6] , 
            \Endof1stMWpulse[7] , \Endof1stMWpulse[8] , \Endof1stMWpulse[9] , 
            \Endof1stMWpulse[10] , \Endof1stMWpulse[11] , \Endof1stMWpulse[12] , 
            \Endof1stMWpulse[13] ) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input \Endof1stMWpulse[14] ;
    input GND_net;
    input \Endof1stMWpulse[15] ;
    output n361;
    input \Startof2ndMWpulse[1] ;
    input \Endof1stMWpulse[2] ;
    input \Endof1stMWpulse[3] ;
    input \Endof1stMWpulse[4] ;
    input \Endof1stMWpulse[5] ;
    input \Endof1stMWpulse[6] ;
    input \Endof1stMWpulse[7] ;
    input \Endof1stMWpulse[8] ;
    input \Endof1stMWpulse[9] ;
    input \Endof1stMWpulse[10] ;
    input \Endof1stMWpulse[11] ;
    input \Endof1stMWpulse[12] ;
    input \Endof1stMWpulse[13] ;
    
    
    wire n1777, n1778, n1771, n1772, n1773, n1774, n1775, n1776;
    
    CCU2D sub_195_add_2_16 (.A0(gatedcount[14]), .B0(\Endof1stMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof1stMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1777), .COUT(n1778));
    defparam sub_195_add_2_16.INIT0 = 16'h5999;
    defparam sub_195_add_2_16.INIT1 = 16'h5999;
    defparam sub_195_add_2_16.INJECT1_0 = "NO";
    defparam sub_195_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1778), .S0(n361));
    defparam sub_195_add_2_cout.INIT0 = 16'h0000;
    defparam sub_195_add_2_cout.INIT1 = 16'h0000;
    defparam sub_195_add_2_cout.INJECT1_0 = "NO";
    defparam sub_195_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n1771));
    defparam sub_195_add_2_2.INIT0 = 16'h5000;
    defparam sub_195_add_2_2.INIT1 = 16'h5999;
    defparam sub_195_add_2_2.INJECT1_0 = "NO";
    defparam sub_195_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_4 (.A0(gatedcount[2]), .B0(\Endof1stMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof1stMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1771), .COUT(n1772));
    defparam sub_195_add_2_4.INIT0 = 16'h5999;
    defparam sub_195_add_2_4.INIT1 = 16'h5999;
    defparam sub_195_add_2_4.INJECT1_0 = "NO";
    defparam sub_195_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_6 (.A0(gatedcount[4]), .B0(\Endof1stMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof1stMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1772), .COUT(n1773));
    defparam sub_195_add_2_6.INIT0 = 16'h5999;
    defparam sub_195_add_2_6.INIT1 = 16'h5999;
    defparam sub_195_add_2_6.INJECT1_0 = "NO";
    defparam sub_195_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_8 (.A0(gatedcount[6]), .B0(\Endof1stMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof1stMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1773), .COUT(n1774));
    defparam sub_195_add_2_8.INIT0 = 16'h5999;
    defparam sub_195_add_2_8.INIT1 = 16'h5999;
    defparam sub_195_add_2_8.INJECT1_0 = "NO";
    defparam sub_195_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_10 (.A0(gatedcount[8]), .B0(\Endof1stMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof1stMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1774), .COUT(n1775));
    defparam sub_195_add_2_10.INIT0 = 16'h5999;
    defparam sub_195_add_2_10.INIT1 = 16'h5999;
    defparam sub_195_add_2_10.INJECT1_0 = "NO";
    defparam sub_195_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_12 (.A0(gatedcount[10]), .B0(\Endof1stMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof1stMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1775), .COUT(n1776));
    defparam sub_195_add_2_12.INIT0 = 16'h5999;
    defparam sub_195_add_2_12.INIT1 = 16'h5999;
    defparam sub_195_add_2_12.INJECT1_0 = "NO";
    defparam sub_195_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_14 (.A0(gatedcount[12]), .B0(\Endof1stMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof1stMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1776), .COUT(n1777));
    defparam sub_195_add_2_14.INIT0 = 16'h5999;
    defparam sub_195_add_2_14.INIT1 = 16'h5999;
    defparam sub_195_add_2_14.INJECT1_0 = "NO";
    defparam sub_195_add_2_14.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U12
//

module comparator_U12 (\gatedcount[13] , \gatedcount[12] , \gatedcount[11] , 
            n49, \gatedcount[1] , \gatedcount[3] , \gatedcount[2] , 
            n4, \gatedcount[15] , \gatedcount[14] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[13] ;
    input \gatedcount[12] ;
    input \gatedcount[11] ;
    output n49;
    input \gatedcount[1] ;
    input \gatedcount[3] ;
    input \gatedcount[2] ;
    output n4;
    input \gatedcount[15] ;
    input \gatedcount[14] ;
    
    
    wire n6;
    
    LUT4 i4_4_lut (.A(\gatedcount[13] ), .B(\gatedcount[12] ), .C(\gatedcount[11] ), 
         .D(n6), .Z(n49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut (.A(\gatedcount[1] ), .B(\gatedcount[3] ), .C(\gatedcount[2] ), 
         .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut (.A(\gatedcount[15] ), .B(\gatedcount[14] ), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module n_state_machine
//

module n_state_machine (\SMstate[1] , slow_pulse, fast_pulse, pi2started, 
            n361, n399, n49, \SMstate[2] , sampled_modebutton, state_2__N_182, 
            MW_output_N_32, medium_pulse, n1918, LED_output_N_1, LED_output_N_13, 
            n1946, n1885, n1883, n1981, sample_output_N_39, n44, 
            probestarted, n437, n188) /* synthesis syn_module_defined=1 */ ;
    output \SMstate[1] ;
    input slow_pulse;
    input fast_pulse;
    input pi2started;
    input n361;
    input n399;
    input n49;
    output \SMstate[2] ;
    input sampled_modebutton;
    input state_2__N_182;
    output MW_output_N_32;
    input medium_pulse;
    input n1918;
    output LED_output_N_1;
    output LED_output_N_13;
    input n1946;
    output n1885;
    output n1883;
    input n1981;
    output sample_output_N_39;
    output n44;
    input probestarted;
    input n437;
    output n188;
    
    wire sampled_modebutton /* synthesis SET_AS_NETWORK=sampled_modebutton, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[6:24])
    wire [2:0]SMstate;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    
    wire n1975, n1464, n4, n1909;
    wire [2:0]n17;
    
    wire n1456, n1959, n1982, n1960, n1972, n1974, n1973;
    
    LUT4 SMstate_0__bdd_4_lut_792 (.A(SMstate[0]), .B(\SMstate[1] ), .C(slow_pulse), 
         .D(fast_pulse), .Z(n1975)) /* synthesis lut_function=(!(A (B)+!A !(B (D)+!B (C)))) */ ;
    defparam SMstate_0__bdd_4_lut_792.init = 16'h7632;
    LUT4 i469_1_lut (.A(SMstate[0]), .Z(n1464)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i469_1_lut.init = 16'h5555;
    LUT4 i7_3_lut (.A(pi2started), .B(n361), .C(n399), .Z(n4)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i7_3_lut.init = 16'h3b3b;
    LUT4 i1_4_lut (.A(n361), .B(pi2started), .C(n49), .D(n399), .Z(n1909)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[57:67])
    defparam i1_4_lut.init = 16'h50dc;
    LUT4 i680_2_lut (.A(\SMstate[1] ), .B(SMstate[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i680_2_lut.init = 16'h6666;
    LUT4 i687_2_lut_3_lut (.A(\SMstate[1] ), .B(SMstate[0]), .C(\SMstate[2] ), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i687_2_lut_3_lut.init = 16'h7878;
    LUT4 SMstate_0__bdd_2_lut (.A(n1456), .B(\SMstate[2] ), .Z(n1959)) /* synthesis lut_function=(A (B)) */ ;
    defparam SMstate_0__bdd_2_lut.init = 16'h8888;
    FD1S3IX state_264__i2 (.D(n17[2]), .CK(sampled_modebutton), .CD(state_2__N_182), 
            .Q(\SMstate[2] ));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_264__i2.GSR = "ENABLED";
    LUT4 i442_3_lut_rep_8 (.A(\SMstate[1] ), .B(\SMstate[2] ), .C(SMstate[0]), 
         .Z(n1982)) /* synthesis lut_function=(!(A (B)+!A !(B+!(C)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    defparam i442_3_lut_rep_8.init = 16'h6767;
    PFUMX i775 (.BLUT(n1960), .ALUT(n1959), .C0(\SMstate[1] ), .Z(MW_output_N_32));
    FD1S3IX state_264__i1 (.D(n17[1]), .CK(sampled_modebutton), .CD(state_2__N_182), 
            .Q(\SMstate[1] ));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_264__i1.GSR = "ENABLED";
    LUT4 SMstate_0__bdd_3_lut_784 (.A(slow_pulse), .B(medium_pulse), .C(fast_pulse), 
         .Z(n1972)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam SMstate_0__bdd_3_lut_784.init = 16'h8080;
    PFUMX i9 (.BLUT(n1909), .ALUT(n4), .C0(n1918), .Z(n1456));
    LUT4 SMstate_0__bdd_4_lut_787 (.A(SMstate[0]), .B(n1456), .C(\SMstate[2] ), 
         .D(slow_pulse), .Z(n1960)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C)) */ ;
    defparam SMstate_0__bdd_4_lut_787.init = 16'hf858;
    LUT4 n1975_bdd_3_lut (.A(n1975), .B(n1974), .C(\SMstate[2] ), .Z(LED_output_N_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1975_bdd_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_3_lut (.A(\SMstate[1] ), .B(SMstate[0]), .C(\SMstate[2] ), 
         .Z(LED_output_N_13)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i2_2_lut_3_lut.init = 16'h0808;
    LUT4 i770_2_lut_4_lut (.A(\SMstate[1] ), .B(\SMstate[2] ), .C(SMstate[0]), 
         .D(n1946), .Z(n1885)) /* synthesis lut_function=(A (B (D))+!A !(B+!(C (D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    defparam i770_2_lut_4_lut.init = 16'h9800;
    PFUMX i785 (.BLUT(n1973), .ALUT(n1972), .C0(\SMstate[1] ), .Z(n1974));
    LUT4 i767_3_lut (.A(\SMstate[1] ), .B(SMstate[0]), .C(\SMstate[2] ), 
         .Z(n1883)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i767_3_lut.init = 16'h0101;
    FD1S3IX state_264__i0 (.D(n1464), .CK(sampled_modebutton), .CD(state_2__N_182), 
            .Q(SMstate[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_264__i0.GSR = "ENABLED";
    LUT4 SMstate_0__bdd_3_lut_788 (.A(SMstate[0]), .B(slow_pulse), .C(fast_pulse), 
         .Z(n1973)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam SMstate_0__bdd_3_lut_788.init = 16'he8e8;
    LUT4 i2_4_lut (.A(\SMstate[1] ), .B(SMstate[0]), .C(n1981), .D(\SMstate[2] ), 
         .Z(sample_output_N_39)) /* synthesis lut_function=(A ((D)+!B)+!A ((C+(D))+!B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i2_4_lut.init = 16'hff73;
    LUT4 i1_2_lut (.A(\SMstate[1] ), .B(\SMstate[2] ), .Z(n44)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_3_lut (.A(probestarted), .B(n1982), .C(n437), .Z(n188)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    defparam i1_3_lut.init = 16'hcece;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module slow_clock_pulse
//

module slow_clock_pulse (clk_2M5, GND_net, medium_pulse, slow_pulse, 
            fast_pulse, debounce_pulse) /* synthesis syn_module_defined=1 */ ;
    input clk_2M5;
    input GND_net;
    output medium_pulse;
    output slow_pulse;
    output fast_pulse;
    output debounce_pulse;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[7:21])
    wire [22:0]n170;
    wire [22:0]n97;
    
    wire n1790, n1800, n1799, n1798, n1797, n1796, n1795, n1794, 
        n1793, n1792, n1791;
    
    FD1S3AX count_263__i2 (.D(n97[2]), .CK(clk_2M5), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i2.GSR = "ENABLED";
    FD1S3AX count_263__i0 (.D(n97[0]), .CK(clk_2M5), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i0.GSR = "ENABLED";
    CCU2D count_263_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1790), .S1(n97[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_1.INIT0 = 16'hF000;
    defparam count_263_add_4_1.INIT1 = 16'h0555;
    defparam count_263_add_4_1.INJECT1_0 = "NO";
    defparam count_263_add_4_1.INJECT1_1 = "NO";
    CCU2D count_263_add_4_23 (.A0(medium_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1800), .S0(n97[21]), .S1(n97[22]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_23.INIT0 = 16'hfaaa;
    defparam count_263_add_4_23.INIT1 = 16'hfaaa;
    defparam count_263_add_4_23.INJECT1_0 = "NO";
    defparam count_263_add_4_23.INJECT1_1 = "NO";
    CCU2D count_263_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1799), .COUT(n1800), .S0(n97[19]), .S1(n97[20]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_21.INIT0 = 16'hfaaa;
    defparam count_263_add_4_21.INIT1 = 16'hfaaa;
    defparam count_263_add_4_21.INJECT1_0 = "NO";
    defparam count_263_add_4_21.INJECT1_1 = "NO";
    CCU2D count_263_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1798), .COUT(n1799), .S0(n97[17]), .S1(n97[18]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_19.INIT0 = 16'hfaaa;
    defparam count_263_add_4_19.INIT1 = 16'hfaaa;
    defparam count_263_add_4_19.INJECT1_0 = "NO";
    defparam count_263_add_4_19.INJECT1_1 = "NO";
    CCU2D count_263_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1797), .COUT(n1798), .S0(n97[15]), .S1(n97[16]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_17.INIT0 = 16'hfaaa;
    defparam count_263_add_4_17.INIT1 = 16'hfaaa;
    defparam count_263_add_4_17.INJECT1_0 = "NO";
    defparam count_263_add_4_17.INJECT1_1 = "NO";
    CCU2D count_263_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1796), .COUT(n1797), .S0(n97[13]), .S1(n97[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_15.INIT0 = 16'hfaaa;
    defparam count_263_add_4_15.INIT1 = 16'hfaaa;
    defparam count_263_add_4_15.INJECT1_0 = "NO";
    defparam count_263_add_4_15.INJECT1_1 = "NO";
    CCU2D count_263_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1795), .COUT(n1796), .S0(n97[11]), .S1(n97[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_13.INIT0 = 16'hfaaa;
    defparam count_263_add_4_13.INIT1 = 16'hfaaa;
    defparam count_263_add_4_13.INJECT1_0 = "NO";
    defparam count_263_add_4_13.INJECT1_1 = "NO";
    CCU2D count_263_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1794), .COUT(n1795), .S0(n97[9]), .S1(n97[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_11.INIT0 = 16'hfaaa;
    defparam count_263_add_4_11.INIT1 = 16'hfaaa;
    defparam count_263_add_4_11.INJECT1_0 = "NO";
    defparam count_263_add_4_11.INJECT1_1 = "NO";
    CCU2D count_263_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1793), .COUT(n1794), .S0(n97[7]), .S1(n97[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_9.INIT0 = 16'hfaaa;
    defparam count_263_add_4_9.INIT1 = 16'hfaaa;
    defparam count_263_add_4_9.INJECT1_0 = "NO";
    defparam count_263_add_4_9.INJECT1_1 = "NO";
    CCU2D count_263_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1792), .COUT(n1793), .S0(n97[5]), .S1(n97[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_7.INIT0 = 16'hfaaa;
    defparam count_263_add_4_7.INIT1 = 16'hfaaa;
    defparam count_263_add_4_7.INJECT1_0 = "NO";
    defparam count_263_add_4_7.INJECT1_1 = "NO";
    CCU2D count_263_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1791), .COUT(n1792), .S0(n97[3]), .S1(n97[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_5.INIT0 = 16'hfaaa;
    defparam count_263_add_4_5.INIT1 = 16'hfaaa;
    defparam count_263_add_4_5.INJECT1_0 = "NO";
    defparam count_263_add_4_5.INJECT1_1 = "NO";
    CCU2D count_263_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1790), .COUT(n1791), .S0(n97[1]), .S1(n97[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263_add_4_3.INIT0 = 16'hfaaa;
    defparam count_263_add_4_3.INIT1 = 16'hfaaa;
    defparam count_263_add_4_3.INJECT1_0 = "NO";
    defparam count_263_add_4_3.INJECT1_1 = "NO";
    FD1S3AX count_263__i1 (.D(n97[1]), .CK(clk_2M5), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i1.GSR = "ENABLED";
    FD1S3AX count_263__i22 (.D(n97[22]), .CK(clk_2M5), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i22.GSR = "ENABLED";
    FD1S3AX count_263__i21 (.D(n97[21]), .CK(clk_2M5), .Q(medium_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i21.GSR = "ENABLED";
    FD1S3AX count_263__i20 (.D(n97[20]), .CK(clk_2M5), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i20.GSR = "ENABLED";
    FD1S3AX count_263__i19 (.D(n97[19]), .CK(clk_2M5), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i19.GSR = "ENABLED";
    FD1S3AX count_263__i18 (.D(n97[18]), .CK(clk_2M5), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i18.GSR = "ENABLED";
    FD1S3AX count_263__i17 (.D(n97[17]), .CK(clk_2M5), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i17.GSR = "ENABLED";
    FD1S3AX count_263__i16 (.D(n97[16]), .CK(clk_2M5), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i16.GSR = "ENABLED";
    FD1S3AX count_263__i15 (.D(n97[15]), .CK(clk_2M5), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i15.GSR = "ENABLED";
    FD1S3AX count_263__i14 (.D(n97[14]), .CK(clk_2M5), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i14.GSR = "ENABLED";
    FD1S3AX count_263__i13 (.D(n97[13]), .CK(clk_2M5), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i13.GSR = "ENABLED";
    FD1S3AX count_263__i12 (.D(n97[12]), .CK(clk_2M5), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i12.GSR = "ENABLED";
    FD1S3AX count_263__i11 (.D(n97[11]), .CK(clk_2M5), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i11.GSR = "ENABLED";
    FD1S3AX count_263__i10 (.D(n97[10]), .CK(clk_2M5), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i10.GSR = "ENABLED";
    FD1S3AX count_263__i9 (.D(n97[9]), .CK(clk_2M5), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i9.GSR = "ENABLED";
    FD1S3AX count_263__i8 (.D(n97[8]), .CK(clk_2M5), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i8.GSR = "ENABLED";
    FD1S3AX count_263__i7 (.D(n97[7]), .CK(clk_2M5), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i7.GSR = "ENABLED";
    FD1S3AX count_263__i6 (.D(n97[6]), .CK(clk_2M5), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i6.GSR = "ENABLED";
    FD1S3AX count_263__i5 (.D(n97[5]), .CK(clk_2M5), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i5.GSR = "ENABLED";
    FD1S3AX count_263__i4 (.D(n97[4]), .CK(clk_2M5), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i4.GSR = "ENABLED";
    FD1S3AX count_263__i3 (.D(n97[3]), .CK(clk_2M5), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_263__i3.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module clocks
//

module clocks (clk_2M5_N_56, clk_2M5, tenmegclock_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_2M5_N_56;
    output clk_2M5;
    input tenmegclock_c;
    input GND_net;
    
    wire clk_2M5_N_56 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    
    DIV4PLL PLL (.clk_2M5_N_56(clk_2M5_N_56), .clk_2M5(clk_2M5), .tenmegclock_c(tenmegclock_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(42[10:60])
    
endmodule
//
// Verilog Description of module DIV4PLL
//

module DIV4PLL (clk_2M5_N_56, clk_2M5, tenmegclock_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_2M5_N_56;
    output clk_2M5;
    input tenmegclock_c;
    input GND_net;
    
    wire clk_2M5_N_56 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    
    wire CLKFB_t;
    
    INV i807 (.A(clk_2M5), .Z(clk_2M5_N_56));
    EHXPLLJ PLLInst_0 (.CLKI(tenmegclock_c), .CLKFB(CLKFB_t), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_2M5), .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOP="2.500000", FREQUENCY_PIN_CLKI="10.000000", ICP_CURRENT="10", LPF_RESISTOR="76", syn_instantiated=1, LSE_LINE_FILE_ID=8, LSE_LCOL=10, LSE_RCOL=60, LSE_LLINE=42, LSE_RLINE=42 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(42[10:60])
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
