// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Thu Mar 03 13:58:23 2022
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
    wire clk_2M5_N_36 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    
    wire GND_net, VCC_net, LED_output_c, mode_button_c, load_default_button_c, 
        topleft_button_c, topright_button_c, bottomleft_button_c, bottomright_button_c, 
        debug_2_c, pump_output_c, probe_output_c, MW_output_c, sample_output_c, 
        slow_pulse, fast_pulse, load_defaults, pieovertwo_plus, freeprecess_plus, 
        pieovertwo_minus, freeprecess_minus, mode_button_N_24, load_default_button_N_26, 
        topleft_button_N_28, topright_button_N_30, bottomleft_button_N_32, 
        bottomright_button_N_34, LED_output_N_9, LED_output_N_8, LED_output_N_7, 
        LED_output_N_6, n5, n2372, pump_output_N_11, probe_output_N_14, 
        MW_output_N_19, sample_output_N_21, LED_output_N_1, probestarted, 
        debug_1_c, n2370, n2369, n394, n432;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX load_defaults_58 (.D(load_default_button_N_26), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[8] 84[6])
    defparam load_defaults_58.GSR = "ENABLED";
    FD1S3AX pieovertwo_plus_59 (.D(topleft_button_N_28), .CK(debounce_pulse), 
            .Q(pieovertwo_plus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[8] 84[6])
    defparam pieovertwo_plus_59.GSR = "ENABLED";
    FD1S3AX freeprecess_plus_60 (.D(topright_button_N_30), .CK(debounce_pulse), 
            .Q(freeprecess_plus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[8] 84[6])
    defparam freeprecess_plus_60.GSR = "ENABLED";
    FD1S3AX pieovertwo_minus_61 (.D(bottomleft_button_N_32), .CK(debounce_pulse), 
            .Q(pieovertwo_minus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[8] 84[6])
    defparam pieovertwo_minus_61.GSR = "ENABLED";
    FD1S3AX freeprecess_minus_62 (.D(bottomright_button_N_34), .CK(debounce_pulse), 
            .Q(freeprecess_minus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[8] 84[6])
    defparam freeprecess_minus_62.GSR = "ENABLED";
    FD1S3AX LED_output_63 (.D(LED_output_N_1), .CK(clk_2M5), .Q(LED_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(95[8] 132[5])
    defparam LED_output_63.GSR = "ENABLED";
    FD1S3JX probe_output_65 (.D(probe_output_N_14), .CK(clk_2M5), .PD(LED_output_N_9), 
            .Q(probe_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(95[8] 132[5])
    defparam probe_output_65.GSR = "ENABLED";
    LUT4 LED_output_I_0_4_lut (.A(LED_output_N_8), .B(slow_pulse), .C(LED_output_N_9), 
         .D(n5), .Z(LED_output_N_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(104[8] 131[7])
    defparam LED_output_I_0_4_lut.init = 16'hcfca;
    LUT4 i1_4_lut (.A(fast_pulse), .B(LED_output_N_7), .C(slow_pulse), 
         .D(LED_output_N_6), .Z(n5)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(111[8] 131[7])
    defparam i1_4_lut.init = 16'h88a8;
    OB probe_output_pad (.I(probe_output_c), .O(probe_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    FD1S3JX sample_output_67 (.D(sample_output_N_21), .CK(clk_2M5), .PD(LED_output_N_9), 
            .Q(sample_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(95[8] 132[5])
    defparam sample_output_67.GSR = "ENABLED";
    FD1S3AX sampled_modebutton_57 (.D(mode_button_N_24), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[8] 84[6])
    defparam sampled_modebutton_57.GSR = "ENABLED";
    LUT4 LED_output_N_6_bdd_2_lut (.A(LED_output_N_6), .B(LED_output_N_7), 
         .Z(n2370)) /* synthesis lut_function=((B)+!A) */ ;
    defparam LED_output_N_6_bdd_2_lut.init = 16'hdddd;
    OB MW_output_pad (.I(MW_output_c), .O(MW_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    LUT4 probe_output_I_5_4_lut (.A(n2372), .B(probestarted), .C(LED_output_N_8), 
         .D(n394), .Z(probe_output_N_14)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(111[8] 131[7])
    defparam probe_output_I_5_4_lut.init = 16'h05c5;
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_24)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(78[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
    FD1S3IX MW_output_66 (.D(MW_output_N_19), .CK(clk_2M5), .CD(LED_output_N_9), 
            .Q(MW_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(95[8] 132[5])
    defparam MW_output_66.GSR = "ENABLED";
    OB pump_output_pad (.I(pump_output_c), .O(pump_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    OB debug_2_pad (.I(debug_2_c), .O(debug_2));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[9:16])
    OB debug_1_pad (.I(debug_1_c), .O(debug_1));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[9:16])
    OB debug_0_pad (.I(debug_0_c), .O(debug_0));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(50[9:19])
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(46[9:13])
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(80[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(44[9:16])
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    FD1S3IX pump_output_64 (.D(pump_output_N_11), .CK(clk_2M5), .CD(LED_output_N_9), 
            .Q(pump_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(95[8] 132[5])
    defparam pump_output_64.GSR = "ENABLED";
    PFUMX i542 (.BLUT(n2370), .ALUT(n2369), .C0(LED_output_N_8), .Z(sample_output_N_21));
    POPtimers POPtimers (.GND_net(GND_net), .clk_2M5_N_36(clk_2M5_N_36), 
            .debug_2_c(debug_2_c), .load_defaults(load_defaults), .clk_2M5(clk_2M5), 
            .n432(n432), .debug_1_c(debug_1_c), .n394(n394), .probestarted(probestarted), 
            .pieovertwo_plus(pieovertwo_plus), .pieovertwo_minus(pieovertwo_minus), 
            .freeprecess_plus(freeprecess_plus), .freeprecess_minus(freeprecess_minus)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(71[12:274])
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_26)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(79[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    LUT4 pump_output_I_4_4_lut (.A(LED_output_N_6), .B(debug_1_c), .C(LED_output_N_8), 
         .D(LED_output_N_7), .Z(pump_output_N_11)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(111[8] 131[7])
    defparam pump_output_I_4_4_lut.init = 16'hc0ca;
    VLO i1 (.Z(GND_net));
    five_state_machine statemachine (.LED_output_N_9(LED_output_N_9), .sampled_modebutton(sampled_modebutton), 
            .LED_output_N_6(LED_output_N_6), .LED_output_N_7(LED_output_N_7), 
            .LED_output_N_8(LED_output_N_8)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(74[21:77])
    LUT4 i442_2_lut_rep_17 (.A(LED_output_N_6), .B(LED_output_N_7), .Z(n2372)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i442_2_lut_rep_17.init = 16'heeee;
    LUT4 LED_output_N_6_bdd_2_lut_541 (.A(probestarted), .B(n432), .Z(n2369)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam LED_output_N_6_bdd_2_lut_541.init = 16'h2222;
    LUT4 probe_output_N_15_I_0_3_lut_4_lut (.A(LED_output_N_6), .B(LED_output_N_7), 
         .C(LED_output_N_8), .D(debug_2_c), .Z(MW_output_N_19)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam probe_output_N_15_I_0_3_lut_4_lut.init = 16'hf101;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_30)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(81[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_32)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(82[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    slow_clock_pulse slowclocks (.clk_2M5(clk_2M5), .slow_pulse(slow_pulse), 
            .fast_pulse(fast_pulse), .debounce_pulse(debounce_pulse), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(72[19:128])
    OB sample_output_pad (.I(sample_output_c), .O(sample_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    IB mode_button_pad (.I(mode_button), .O(mode_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    IB load_default_button_pad (.I(load_default_button), .O(load_default_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    IB topleft_button_pad (.I(topleft_button), .O(topleft_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    IB topright_button_pad (.I(topright_button), .O(topright_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    IB bottomleft_button_pad (.I(bottomleft_button), .O(bottomleft_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    IB bottomright_button_pad (.I(bottomright_button), .O(bottomright_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    clocks clocks (.GND_net(GND_net), .debug_0_c(debug_0_c), .clk_2M5_N_36(clk_2M5_N_36), 
           .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(69[9:98])
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_34)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(83[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module POPtimers
//

module POPtimers (GND_net, clk_2M5_N_36, debug_2_c, load_defaults, clk_2M5, 
            n432, debug_1_c, n394, probestarted, pieovertwo_plus, 
            pieovertwo_minus, freeprecess_plus, freeprecess_minus) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_2M5_N_36;
    output debug_2_c;
    input load_defaults;
    input clk_2M5;
    output n432;
    output debug_1_c;
    output n394;
    output probestarted;
    input pieovertwo_plus;
    input pieovertwo_minus;
    input freeprecess_plus;
    input freeprecess_minus;
    
    wire clk_2M5_N_36 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n2167;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[26:46])
    wire [13:0]n2;
    
    wire n2168, n2077;
    wire [13:0]n2_adj_219;
    wire [13:0]n18;
    wire [15:0]Startopticalsample;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[19:37])
    
    wire n2078;
    wire [15:0]gatedcount;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire [15:0]count;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[19:24])
    
    wire n2115;
    wire [15:0]AdjustableFreePrecession;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[48:72])
    wire [15:0]Startof2ndMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[19:36])
    
    wire n2116, n2114, n2166, n2113, n2165, n2164, n2163, n2162;
    wire [13:0]n2_adj_220;
    wire [15:0]Endof2ndMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[19:34])
    
    wire n2082, n1832, MW_N_44, n318, n2323, n2160;
    wire [13:0]n2026;
    wire [15:0]Endofprobepulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[19:34])
    
    wire n2159, n2158, n2098;
    wire [15:0]Endof1stMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[19:34])
    
    wire n2157, n2097, n2156, n2155;
    wire [15:0]Resetandrepeat;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[19:33])
    
    wire n2096, pi2started, n356, n2095, n2205, n2204, n2094, 
        n2093, loop, counterreset, n2203, n2202, n2201, n2200, 
        n2199, n2198, n2197, n2196, n2195, n2194, n2193, n2192, 
        n2190, n2189, n2188, n2187, n2186, n2185, n2182;
    wire [13:0]n2_adj_221;
    wire [13:0]n18_adj_222;
    
    wire n2181, n2180, n2179, n2178, n2177, n2174;
    wire [15:0]n1478;
    
    wire n2173, n2172, n2171, n2170, n2169, n2118, n2092, n2117, 
        n2111, n2110, n2109, n2108, n2107;
    wire [13:0]n2_adj_223;
    wire [15:0]Endofopticalsample;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[19:37])
    
    wire n2081, n2080, n2079, n2267, n2268, n2269, n2270, n2271, 
        n2272, n2273, n2274, n2275, n2276, n2277, n2278, n2279, 
        n2280, n2281, n2282, n2283, n2284, n2285, n2286, n2287, 
        n2288, n2289, n2290, n2291, n2292, n2293, n2294, n2296, 
        n2297, n2298, n2299, n2300, n2301, n2326;
    
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13 (.A0(AdjustablePieOverTwo[13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2167), .COUT(n2168), 
          .S0(n2[11]), .S1(n2[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INJECT1_1 = "NO";
    CCU2D add_477_4 (.A0(n2_adj_219[2]), .B0(n18[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_219[3]), .B1(n18[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2077), .COUT(n2078), .S0(Startopticalsample[4]), .S1(Startopticalsample[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_477_4.INIT0 = 16'h5666;
    defparam add_477_4.INIT1 = 16'h5666;
    defparam add_477_4.INJECT1_0 = "NO";
    defparam add_477_4.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clk_2M5_N_36), .Q(gatedcount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    CCU2D add_478_8 (.A0(n2[6]), .B0(AdjustableFreePrecession[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[7]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2115), .COUT(n2116), .S0(Startof2ndMWpulse[8]), 
          .S1(Startof2ndMWpulse[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_478_8.INIT0 = 16'h5666;
    defparam add_478_8.INIT1 = 16'h5666;
    defparam add_478_8.INJECT1_0 = "NO";
    defparam add_478_8.INJECT1_1 = "NO";
    CCU2D add_478_6 (.A0(n2[4]), .B0(AdjustableFreePrecession[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[5]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2114), .COUT(n2115), .S0(Startof2ndMWpulse[6]), 
          .S1(Startof2ndMWpulse[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_478_6.INIT0 = 16'h5666;
    defparam add_478_6.INIT1 = 16'h5666;
    defparam add_478_6.INJECT1_0 = "NO";
    defparam add_478_6.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11 (.A0(AdjustablePieOverTwo[11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2166), .COUT(n2167), 
          .S0(n2[9]), .S1(n2[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INJECT1_1 = "NO";
    CCU2D add_478_4 (.A0(n2[2]), .B0(AdjustableFreePrecession[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[3]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2113), .COUT(n2114), .S0(Startof2ndMWpulse[4]), 
          .S1(Startof2ndMWpulse[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_478_4.INIT0 = 16'h5666;
    defparam add_478_4.INIT1 = 16'h5666;
    defparam add_478_4.INJECT1_0 = "NO";
    defparam add_478_4.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9 (.A0(AdjustablePieOverTwo[9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2165), .COUT(n2166), 
          .S0(n2[7]), .S1(n2[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7 (.A0(AdjustablePieOverTwo[7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2164), .COUT(n2165), 
          .S0(n2[5]), .S1(n2[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5 (.A0(AdjustablePieOverTwo[5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2163), .COUT(n2164), 
          .S0(n2[3]), .S1(n2[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3 (.A0(AdjustablePieOverTwo[3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2162), .COUT(n2163), 
          .S0(n2[1]), .S1(n2[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2162), .S1(n2[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INJECT1_1 = "NO";
    LUT4 i488_2_lut (.A(n2_adj_220[0]), .B(AdjustableFreePrecession[2]), 
         .Z(Endof2ndMWpulse[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i488_2_lut.init = 16'h6666;
    CCU2D add_477_14 (.A0(n2_adj_219[12]), .B0(n18[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_219[13]), .B1(n18[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2082), .S0(Startopticalsample[14]), .S1(Startopticalsample[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_477_14.INIT0 = 16'h5666;
    defparam add_477_14.INIT1 = 16'h5666;
    defparam add_477_14.INJECT1_0 = "NO";
    defparam add_477_14.INJECT1_1 = "NO";
    LUT4 MW_I_0_4_lut (.A(n1832), .B(MW_N_44), .C(n318), .D(n2323), 
         .Z(debug_2_c)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(108[14:67])
    defparam MW_I_0_4_lut.init = 16'hcfce;
    CCU2D add_269_13 (.A0(n2026[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2026[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2160), .S0(Endofprobepulse[14]), .S1(Endofprobepulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_269_13.INIT0 = 16'h5aaa;
    defparam add_269_13.INIT1 = 16'h5aaa;
    defparam add_269_13.INJECT1_0 = "NO";
    defparam add_269_13.INJECT1_1 = "NO";
    CCU2D add_269_11 (.A0(n2026[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2026[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2159), .COUT(n2160), .S0(Endofprobepulse[12]), .S1(Endofprobepulse[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_269_11.INIT0 = 16'h5aaa;
    defparam add_269_11.INIT1 = 16'h5aaa;
    defparam add_269_11.INJECT1_0 = "NO";
    defparam add_269_11.INJECT1_1 = "NO";
    CCU2D add_269_9 (.A0(n2026[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2026[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2158), 
          .COUT(n2159), .S0(Endofprobepulse[10]), .S1(Endofprobepulse[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_269_9.INIT0 = 16'h5aaa;
    defparam add_269_9.INIT1 = 16'h5aaa;
    defparam add_269_9.INJECT1_0 = "NO";
    defparam add_269_9.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clk_2M5_N_36), .Q(gatedcount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    CCU2D Startof1stMWpulse_15__I_0_15 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2098), .S0(Endof1stMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D add_269_7 (.A0(n2026[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2026[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2157), 
          .COUT(n2158), .S0(Endofprobepulse[8]), .S1(Endofprobepulse[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_269_7.INIT0 = 16'h5555;
    defparam add_269_7.INIT1 = 16'h5aaa;
    defparam add_269_7.INJECT1_0 = "NO";
    defparam add_269_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_13 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2097), .COUT(n2098), .S0(Endof1stMWpulse[13]), 
          .S1(Endof1stMWpulse[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D add_269_5 (.A0(n2026[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2026[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2156), 
          .COUT(n2157), .S0(Endofprobepulse[6]), .S1(Endofprobepulse[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_269_5.INIT0 = 16'h5555;
    defparam add_269_5.INIT1 = 16'h5aaa;
    defparam add_269_5.INJECT1_0 = "NO";
    defparam add_269_5.INJECT1_1 = "NO";
    CCU2D add_269_3 (.A0(n2026[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2026[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2155), 
          .COUT(n2156), .S0(Resetandrepeat[4]), .S1(Resetandrepeat[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_269_3.INIT0 = 16'h5555;
    defparam add_269_3.INIT1 = 16'h5555;
    defparam add_269_3.INJECT1_0 = "NO";
    defparam add_269_3.INJECT1_1 = "NO";
    CCU2D add_269_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2026[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2155), 
          .S1(Resetandrepeat[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_269_1.INIT0 = 16'hF000;
    defparam add_269_1.INIT1 = 16'h5555;
    defparam add_269_1.INJECT1_0 = "NO";
    defparam add_269_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_11 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2096), .COUT(n2097), .S0(Endof1stMWpulse[11]), 
          .S1(Endof1stMWpulse[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_1 = "NO";
    LUT4 pi2started_I_0_2_lut (.A(pi2started), .B(n356), .Z(MW_N_44)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(108[41:67])
    defparam pi2started_I_0_2_lut.init = 16'h2222;
    CCU2D add_478_2 (.A0(n2[0]), .B0(AdjustableFreePrecession[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[1]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2113), .S1(Startof2ndMWpulse[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_478_2.INIT0 = 16'h7000;
    defparam add_478_2.INIT1 = 16'h5666;
    defparam add_478_2.INJECT1_0 = "NO";
    defparam add_478_2.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_9 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2095), .COUT(n2096), .S0(Endof1stMWpulse[9]), 
          .S1(Endof1stMWpulse[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_9.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D add_271_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2205), .S0(n2_adj_219[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_1_15.INIT0 = 16'hfaaa;
    defparam add_271_add_1_15.INIT1 = 16'h0000;
    defparam add_271_add_1_15.INJECT1_0 = "NO";
    defparam add_271_add_1_15.INJECT1_1 = "NO";
    CCU2D add_271_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2204), .COUT(n2205), .S0(n2_adj_219[11]), 
          .S1(n2_adj_219[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_1_13.INIT0 = 16'hfaaa;
    defparam add_271_add_1_13.INIT1 = 16'hfaaa;
    defparam add_271_add_1_13.INJECT1_0 = "NO";
    defparam add_271_add_1_13.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_7 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2094), .COUT(n2095), .S0(Endof1stMWpulse[7]), 
          .S1(Endof1stMWpulse[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_7.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_7.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_1 = "NO";
    LUT4 i484_2_lut (.A(n2[0]), .B(AdjustableFreePrecession[2]), .Z(Startof2ndMWpulse[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i484_2_lut.init = 16'h6666;
    CCU2D Startof1stMWpulse_15__I_0_5 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2093), .COUT(n2094), .S0(Endof1stMWpulse[5]), 
          .S1(Endof1stMWpulse[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_5.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_5.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_1 = "NO";
    LUT4 load_defaults_I_0_2_lut (.A(load_defaults), .B(loop), .Z(counterreset)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(90[24:42])
    defparam load_defaults_I_0_2_lut.init = 16'heeee;
    CCU2D add_271_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2203), .COUT(n2204), .S0(n2_adj_219[9]), 
          .S1(n2_adj_219[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_1_11.INIT0 = 16'hfaaa;
    defparam add_271_add_1_11.INIT1 = 16'hfaaa;
    defparam add_271_add_1_11.INJECT1_0 = "NO";
    defparam add_271_add_1_11.INJECT1_1 = "NO";
    CCU2D add_271_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2202), .COUT(n2203), .S0(n2_adj_219[7]), 
          .S1(n2_adj_219[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_1_9.INIT0 = 16'hfaaa;
    defparam add_271_add_1_9.INIT1 = 16'h0555;
    defparam add_271_add_1_9.INJECT1_0 = "NO";
    defparam add_271_add_1_9.INJECT1_1 = "NO";
    CCU2D add_271_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2201), .COUT(n2202), .S0(n2_adj_219[5]), 
          .S1(n2_adj_219[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_1_7.INIT0 = 16'hfaaa;
    defparam add_271_add_1_7.INIT1 = 16'hfaaa;
    defparam add_271_add_1_7.INJECT1_0 = "NO";
    defparam add_271_add_1_7.INJECT1_1 = "NO";
    CCU2D add_271_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2200), .COUT(n2201), .S0(n2_adj_219[3]), 
          .S1(n2_adj_219[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_1_5.INIT0 = 16'h0555;
    defparam add_271_add_1_5.INIT1 = 16'h0555;
    defparam add_271_add_1_5.INJECT1_0 = "NO";
    defparam add_271_add_1_5.INJECT1_1 = "NO";
    CCU2D add_271_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2199), .COUT(n2200), .S0(n2_adj_219[1]), 
          .S1(n2_adj_219[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_1_3.INIT0 = 16'hfaaa;
    defparam add_271_add_1_3.INIT1 = 16'hfaaa;
    defparam add_271_add_1_3.INJECT1_0 = "NO";
    defparam add_271_add_1_3.INJECT1_1 = "NO";
    CCU2D add_271_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2199), .S1(n2_adj_219[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_1_1.INIT0 = 16'hF000;
    defparam add_271_add_1_1.INIT1 = 16'h0555;
    defparam add_271_add_1_1.INJECT1_0 = "NO";
    defparam add_271_add_1_1.INJECT1_1 = "NO";
    CCU2D add_271_add_2_15 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2198), .S0(n18[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_2_15.INIT0 = 16'h5aaa;
    defparam add_271_add_2_15.INIT1 = 16'h0000;
    defparam add_271_add_2_15.INJECT1_0 = "NO";
    defparam add_271_add_2_15.INJECT1_1 = "NO";
    CCU2D add_271_add_2_13 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2197), .COUT(n2198), 
          .S0(n18[11]), .S1(n18[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_2_13.INIT0 = 16'h5aaa;
    defparam add_271_add_2_13.INIT1 = 16'h5aaa;
    defparam add_271_add_2_13.INJECT1_0 = "NO";
    defparam add_271_add_2_13.INJECT1_1 = "NO";
    CCU2D add_271_add_2_11 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2196), .COUT(n2197), 
          .S0(n18[9]), .S1(n18[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_2_11.INIT0 = 16'h5aaa;
    defparam add_271_add_2_11.INIT1 = 16'h5aaa;
    defparam add_271_add_2_11.INJECT1_0 = "NO";
    defparam add_271_add_2_11.INJECT1_1 = "NO";
    CCU2D add_271_add_2_9 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2195), .COUT(n2196), 
          .S0(n18[7]), .S1(n18[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_2_9.INIT0 = 16'h5aaa;
    defparam add_271_add_2_9.INIT1 = 16'h5aaa;
    defparam add_271_add_2_9.INJECT1_0 = "NO";
    defparam add_271_add_2_9.INJECT1_1 = "NO";
    CCU2D add_271_add_2_7 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2194), .COUT(n2195), 
          .S0(n18[5]), .S1(n18[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_2_7.INIT0 = 16'h5aaa;
    defparam add_271_add_2_7.INIT1 = 16'h5aaa;
    defparam add_271_add_2_7.INJECT1_0 = "NO";
    defparam add_271_add_2_7.INJECT1_1 = "NO";
    CCU2D add_271_add_2_5 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2193), .COUT(n2194), 
          .S0(n18[3]), .S1(n18[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_2_5.INIT0 = 16'h5555;
    defparam add_271_add_2_5.INIT1 = 16'h5555;
    defparam add_271_add_2_5.INJECT1_0 = "NO";
    defparam add_271_add_2_5.INJECT1_1 = "NO";
    CCU2D add_271_add_2_3 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2192), .COUT(n2193), 
          .S0(n18[1]), .S1(n18[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_2_3.INIT0 = 16'h5555;
    defparam add_271_add_2_3.INIT1 = 16'h5555;
    defparam add_271_add_2_3.INJECT1_0 = "NO";
    defparam add_271_add_2_3.INJECT1_1 = "NO";
    CCU2D add_271_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustableFreePrecession[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2192), .S1(n18[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_271_add_2_1.INIT0 = 16'hF000;
    defparam add_271_add_2_1.INIT1 = 16'h5555;
    defparam add_271_add_2_1.INJECT1_0 = "NO";
    defparam add_271_add_2_1.INJECT1_1 = "NO";
    CCU2D add_480_14 (.A0(n2_adj_220[12]), .B0(AdjustableFreePrecession[14]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_220[13]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2190), .S0(Endof2ndMWpulse[14]), 
          .S1(Endof2ndMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_480_14.INIT0 = 16'h5666;
    defparam add_480_14.INIT1 = 16'h5666;
    defparam add_480_14.INJECT1_0 = "NO";
    defparam add_480_14.INJECT1_1 = "NO";
    CCU2D add_480_12 (.A0(n2_adj_220[10]), .B0(AdjustableFreePrecession[12]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_220[11]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2189), .COUT(n2190), .S0(Endof2ndMWpulse[12]), 
          .S1(Endof2ndMWpulse[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_480_12.INIT0 = 16'h5666;
    defparam add_480_12.INIT1 = 16'h5666;
    defparam add_480_12.INJECT1_0 = "NO";
    defparam add_480_12.INJECT1_1 = "NO";
    CCU2D add_480_10 (.A0(n2_adj_220[8]), .B0(AdjustableFreePrecession[10]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_220[9]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2188), .COUT(n2189), .S0(Endof2ndMWpulse[10]), 
          .S1(Endof2ndMWpulse[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_480_10.INIT0 = 16'h5666;
    defparam add_480_10.INIT1 = 16'h5666;
    defparam add_480_10.INJECT1_0 = "NO";
    defparam add_480_10.INJECT1_1 = "NO";
    CCU2D add_480_8 (.A0(n2_adj_220[6]), .B0(AdjustableFreePrecession[8]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_220[7]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2187), .COUT(n2188), .S0(Endof2ndMWpulse[8]), 
          .S1(Endof2ndMWpulse[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_480_8.INIT0 = 16'h5666;
    defparam add_480_8.INIT1 = 16'h5666;
    defparam add_480_8.INJECT1_0 = "NO";
    defparam add_480_8.INJECT1_1 = "NO";
    CCU2D add_480_6 (.A0(n2_adj_220[4]), .B0(AdjustableFreePrecession[6]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_220[5]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2186), .COUT(n2187), .S0(Endof2ndMWpulse[6]), 
          .S1(Endof2ndMWpulse[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_480_6.INIT0 = 16'h5666;
    defparam add_480_6.INIT1 = 16'h5666;
    defparam add_480_6.INJECT1_0 = "NO";
    defparam add_480_6.INJECT1_1 = "NO";
    CCU2D add_480_4 (.A0(n2_adj_220[2]), .B0(AdjustableFreePrecession[4]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_220[3]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2185), .COUT(n2186), .S0(Endof2ndMWpulse[4]), 
          .S1(Endof2ndMWpulse[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_480_4.INIT0 = 16'h5666;
    defparam add_480_4.INIT1 = 16'h5666;
    defparam add_480_4.INJECT1_0 = "NO";
    defparam add_480_4.INJECT1_1 = "NO";
    CCU2D add_480_2 (.A0(n2_adj_220[0]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_220[1]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2185), .S1(Endof2ndMWpulse[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_480_2.INIT0 = 16'h7000;
    defparam add_480_2.INIT1 = 16'h5666;
    defparam add_480_2.INJECT1_0 = "NO";
    defparam add_480_2.INJECT1_1 = "NO";
    CCU2D add_479_14 (.A0(n2_adj_221[12]), .B0(n18_adj_222[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_221[13]), .B1(n18_adj_222[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2182), .S0(n2026[12]), .S1(n2026[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_479_14.INIT0 = 16'h5666;
    defparam add_479_14.INIT1 = 16'h5666;
    defparam add_479_14.INJECT1_0 = "NO";
    defparam add_479_14.INJECT1_1 = "NO";
    CCU2D add_479_12 (.A0(n2_adj_221[10]), .B0(n18_adj_222[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_221[11]), .B1(n18_adj_222[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2181), .COUT(n2182), .S0(n2026[10]), .S1(n2026[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_479_12.INIT0 = 16'h5666;
    defparam add_479_12.INIT1 = 16'h5666;
    defparam add_479_12.INJECT1_0 = "NO";
    defparam add_479_12.INJECT1_1 = "NO";
    CCU2D add_479_10 (.A0(n2_adj_221[8]), .B0(n18_adj_222[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_221[9]), .B1(n18_adj_222[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2180), .COUT(n2181), .S0(n2026[8]), .S1(n2026[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_479_10.INIT0 = 16'h5666;
    defparam add_479_10.INIT1 = 16'h5666;
    defparam add_479_10.INJECT1_0 = "NO";
    defparam add_479_10.INJECT1_1 = "NO";
    CCU2D add_479_8 (.A0(n2_adj_221[6]), .B0(n18_adj_222[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_221[7]), .B1(n18_adj_222[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2179), .COUT(n2180), .S0(n2026[6]), .S1(n2026[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_479_8.INIT0 = 16'h5666;
    defparam add_479_8.INIT1 = 16'h5666;
    defparam add_479_8.INJECT1_0 = "NO";
    defparam add_479_8.INJECT1_1 = "NO";
    CCU2D add_479_6 (.A0(n2_adj_221[4]), .B0(n18_adj_222[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_221[5]), .B1(n18_adj_222[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2178), .COUT(n2179), .S0(n2026[4]), .S1(n2026[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_479_6.INIT0 = 16'h5666;
    defparam add_479_6.INIT1 = 16'h5666;
    defparam add_479_6.INJECT1_0 = "NO";
    defparam add_479_6.INJECT1_1 = "NO";
    CCU2D add_479_4 (.A0(n2_adj_221[2]), .B0(n18_adj_222[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_221[3]), .B1(n18_adj_222[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2177), .COUT(n2178), .S0(n2026[2]), .S1(n2026[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_479_4.INIT0 = 16'h5666;
    defparam add_479_4.INIT1 = 16'h5666;
    defparam add_479_4.INJECT1_0 = "NO";
    defparam add_479_4.INJECT1_1 = "NO";
    CCU2D add_479_2 (.A0(n2_adj_221[0]), .B0(n18_adj_222[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_221[1]), .B1(n18_adj_222[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2177), .S1(n2026[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_479_2.INIT0 = 16'h7000;
    defparam add_479_2.INIT1 = 16'h5666;
    defparam add_479_2.INJECT1_0 = "NO";
    defparam add_479_2.INJECT1_1 = "NO";
    CCU2D add_280_13 (.A0(AdjustableFreePrecession[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[15]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2174), .S0(n1478[14]), .S1(n1478[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_280_13.INIT0 = 16'h5aaa;
    defparam add_280_13.INIT1 = 16'h5aaa;
    defparam add_280_13.INJECT1_0 = "NO";
    defparam add_280_13.INJECT1_1 = "NO";
    CCU2D add_280_11 (.A0(AdjustableFreePrecession[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2173), .COUT(n2174), .S0(n1478[12]), 
          .S1(n1478[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_280_11.INIT0 = 16'h5aaa;
    defparam add_280_11.INIT1 = 16'h5aaa;
    defparam add_280_11.INJECT1_0 = "NO";
    defparam add_280_11.INJECT1_1 = "NO";
    CCU2D add_280_9 (.A0(AdjustableFreePrecession[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2172), .COUT(n2173), .S0(n1478[10]), 
          .S1(n1478[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_280_9.INIT0 = 16'h5aaa;
    defparam add_280_9.INIT1 = 16'h5aaa;
    defparam add_280_9.INJECT1_0 = "NO";
    defparam add_280_9.INJECT1_1 = "NO";
    CCU2D add_280_7 (.A0(AdjustableFreePrecession[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2171), .COUT(n2172), .S0(n1478[8]), 
          .S1(n1478[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_280_7.INIT0 = 16'h5aaa;
    defparam add_280_7.INIT1 = 16'h5aaa;
    defparam add_280_7.INJECT1_0 = "NO";
    defparam add_280_7.INJECT1_1 = "NO";
    CCU2D add_280_5 (.A0(AdjustableFreePrecession[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2170), .COUT(n2171), .S0(n1478[6]), 
          .S1(n1478[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_280_5.INIT0 = 16'h5555;
    defparam add_280_5.INIT1 = 16'h5555;
    defparam add_280_5.INJECT1_0 = "NO";
    defparam add_280_5.INJECT1_1 = "NO";
    CCU2D add_280_3 (.A0(AdjustableFreePrecession[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2169), .COUT(n2170), .S0(n1478[4]), 
          .S1(n1478[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_280_3.INIT0 = 16'h5555;
    defparam add_280_3.INIT1 = 16'h5555;
    defparam add_280_3.INJECT1_0 = "NO";
    defparam add_280_3.INJECT1_1 = "NO";
    CCU2D add_280_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustableFreePrecession[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2169), .S1(n1478[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_280_1.INIT0 = 16'hF000;
    defparam add_280_1.INIT1 = 16'h5555;
    defparam add_280_1.INJECT1_0 = "NO";
    defparam add_280_1.INJECT1_1 = "NO";
    CCU2D add_478_14 (.A0(n2[12]), .B0(AdjustableFreePrecession[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[13]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2118), .S0(Startof2ndMWpulse[14]), 
          .S1(Startof2ndMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_478_14.INIT0 = 16'h5666;
    defparam add_478_14.INIT1 = 16'h5666;
    defparam add_478_14.INJECT1_0 = "NO";
    defparam add_478_14.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_3 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2092), .COUT(n2093), .S0(Endof1stMWpulse[3]), 
          .S1(Endof1stMWpulse[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2092), .S1(Endof1stMWpulse[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D add_478_12 (.A0(n2[10]), .B0(AdjustableFreePrecession[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[11]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2117), .COUT(n2118), .S0(Startof2ndMWpulse[12]), 
          .S1(Startof2ndMWpulse[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_478_12.INIT0 = 16'h5666;
    defparam add_478_12.INIT1 = 16'h5666;
    defparam add_478_12.INJECT1_0 = "NO";
    defparam add_478_12.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clk_2M5_N_36), .Q(gatedcount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15 (.A0(AdjustablePieOverTwo[15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2168), .S0(n2[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_11 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2111), .S0(Resetandrepeat[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_11.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_9 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2110), .COUT(n2111), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_7 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2109), .COUT(n2110), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_5 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2108), .COUT(n2109), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_3 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2107), .COUT(n2108), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2107), .S1(Resetandrepeat[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    LUT4 i487_2_lut (.A(n2_adj_221[0]), .B(n18_adj_222[0]), .Z(Resetandrepeat[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i487_2_lut.init = 16'h6666;
    LUT4 i491_2_lut (.A(n2_adj_223[0]), .B(AdjustableFreePrecession[2]), 
         .Z(Endofopticalsample[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i491_2_lut.init = 16'h6666;
    CCU2D add_477_12 (.A0(n2_adj_219[10]), .B0(n18[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_219[11]), .B1(n18[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2081), .COUT(n2082), .S0(Startopticalsample[12]), 
          .S1(Startopticalsample[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_477_12.INIT0 = 16'h5666;
    defparam add_477_12.INIT1 = 16'h5666;
    defparam add_477_12.INJECT1_0 = "NO";
    defparam add_477_12.INJECT1_1 = "NO";
    CCU2D add_477_2 (.A0(n2_adj_219[0]), .B0(n18[0]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_219[1]), .B1(n18[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2077), .S1(Startopticalsample[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_477_2.INIT0 = 16'h7000;
    defparam add_477_2.INIT1 = 16'h5666;
    defparam add_477_2.INJECT1_0 = "NO";
    defparam add_477_2.INJECT1_1 = "NO";
    CCU2D add_477_10 (.A0(n2_adj_219[8]), .B0(n18[8]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_219[9]), .B1(n18[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2080), .COUT(n2081), .S0(Startopticalsample[10]), .S1(Startopticalsample[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_477_10.INIT0 = 16'h5666;
    defparam add_477_10.INIT1 = 16'h5666;
    defparam add_477_10.INJECT1_0 = "NO";
    defparam add_477_10.INJECT1_1 = "NO";
    CCU2D add_477_8 (.A0(n2_adj_219[6]), .B0(n18[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_219[7]), .B1(n18[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2079), .COUT(n2080), .S0(Startopticalsample[8]), .S1(Startopticalsample[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_477_8.INIT0 = 16'h5666;
    defparam add_477_8.INIT1 = 16'h5666;
    defparam add_477_8.INJECT1_0 = "NO";
    defparam add_477_8.INJECT1_1 = "NO";
    CCU2D add_477_6 (.A0(n2_adj_219[4]), .B0(n18[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_219[5]), .B1(n18[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2078), .COUT(n2079), .S0(Startopticalsample[6]), .S1(Startopticalsample[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_477_6.INIT0 = 16'h5666;
    defparam add_477_6.INIT1 = 16'h5666;
    defparam add_477_6.INJECT1_0 = "NO";
    defparam add_477_6.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clk_2M5_N_36), .Q(gatedcount[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clk_2M5_N_36), .Q(gatedcount[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clk_2M5_N_36), .Q(gatedcount[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clk_2M5_N_36), .Q(gatedcount[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clk_2M5_N_36), .Q(gatedcount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clk_2M5_N_36), .Q(gatedcount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clk_2M5_N_36), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clk_2M5_N_36), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clk_2M5_N_36), .Q(gatedcount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clk_2M5_N_36), .Q(gatedcount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clk_2M5_N_36), .Q(gatedcount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clk_2M5_N_36), .Q(gatedcount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clk_2M5_N_36), .Q(gatedcount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(94[8] 96[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    CCU2D add_478_10 (.A0(n2[8]), .B0(AdjustableFreePrecession[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[9]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2116), .COUT(n2117), .S0(Startof2ndMWpulse[10]), 
          .S1(Startof2ndMWpulse[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_478_10.INIT0 = 16'h5666;
    defparam add_478_10.INIT1 = 16'h5666;
    defparam add_478_10.INJECT1_0 = "NO";
    defparam add_478_10.INJECT1_1 = "NO";
    CCU2D add_261_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2267), .S1(n2_adj_220[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_261_add_1_1.INIT0 = 16'hF000;
    defparam add_261_add_1_1.INIT1 = 16'h0555;
    defparam add_261_add_1_1.INJECT1_0 = "NO";
    defparam add_261_add_1_1.INJECT1_1 = "NO";
    CCU2D add_261_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2267), .COUT(n2268), .S0(n2_adj_220[1]), 
          .S1(n2_adj_220[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_261_add_1_3.INIT0 = 16'hfaaa;
    defparam add_261_add_1_3.INIT1 = 16'hfaaa;
    defparam add_261_add_1_3.INJECT1_0 = "NO";
    defparam add_261_add_1_3.INJECT1_1 = "NO";
    CCU2D add_261_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2268), .COUT(n2269), .S0(n2_adj_220[3]), 
          .S1(n2_adj_220[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_261_add_1_5.INIT0 = 16'h0555;
    defparam add_261_add_1_5.INIT1 = 16'h0555;
    defparam add_261_add_1_5.INJECT1_0 = "NO";
    defparam add_261_add_1_5.INJECT1_1 = "NO";
    CCU2D add_261_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2269), .COUT(n2270), .S0(n2_adj_220[5]), 
          .S1(n2_adj_220[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_261_add_1_7.INIT0 = 16'hfaaa;
    defparam add_261_add_1_7.INIT1 = 16'hfaaa;
    defparam add_261_add_1_7.INJECT1_0 = "NO";
    defparam add_261_add_1_7.INJECT1_1 = "NO";
    CCU2D add_261_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2270), .COUT(n2271), .S0(n2_adj_220[7]), 
          .S1(n2_adj_220[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_261_add_1_9.INIT0 = 16'hfaaa;
    defparam add_261_add_1_9.INIT1 = 16'h0555;
    defparam add_261_add_1_9.INJECT1_0 = "NO";
    defparam add_261_add_1_9.INJECT1_1 = "NO";
    CCU2D add_261_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2271), .COUT(n2272), .S0(n2_adj_220[9]), 
          .S1(n2_adj_220[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_261_add_1_11.INIT0 = 16'hfaaa;
    defparam add_261_add_1_11.INIT1 = 16'hfaaa;
    defparam add_261_add_1_11.INJECT1_0 = "NO";
    defparam add_261_add_1_11.INJECT1_1 = "NO";
    CCU2D add_261_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2272), .COUT(n2273), .S0(n2_adj_220[11]), 
          .S1(n2_adj_220[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_261_add_1_13.INIT0 = 16'hfaaa;
    defparam add_261_add_1_13.INIT1 = 16'hfaaa;
    defparam add_261_add_1_13.INJECT1_0 = "NO";
    defparam add_261_add_1_13.INJECT1_1 = "NO";
    CCU2D add_261_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2273), .S0(n2_adj_220[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_261_add_1_15.INIT0 = 16'hfaaa;
    defparam add_261_add_1_15.INIT1 = 16'h0000;
    defparam add_261_add_1_15.INJECT1_0 = "NO";
    defparam add_261_add_1_15.INJECT1_1 = "NO";
    CCU2D add_268_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2274), .S1(n18_adj_222[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_2_1.INIT0 = 16'hF000;
    defparam add_268_add_2_1.INIT1 = 16'h0555;
    defparam add_268_add_2_1.INJECT1_0 = "NO";
    defparam add_268_add_2_1.INJECT1_1 = "NO";
    CCU2D add_268_add_2_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2274), .COUT(n2275), .S0(n18_adj_222[1]), 
          .S1(n18_adj_222[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_2_3.INIT0 = 16'hfaaa;
    defparam add_268_add_2_3.INIT1 = 16'hfaaa;
    defparam add_268_add_2_3.INJECT1_0 = "NO";
    defparam add_268_add_2_3.INJECT1_1 = "NO";
    CCU2D add_268_add_2_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2275), .COUT(n2276), .S0(n18_adj_222[3]), 
          .S1(n18_adj_222[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_2_5.INIT0 = 16'h0555;
    defparam add_268_add_2_5.INIT1 = 16'h0555;
    defparam add_268_add_2_5.INJECT1_0 = "NO";
    defparam add_268_add_2_5.INJECT1_1 = "NO";
    CCU2D add_268_add_2_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2276), .COUT(n2277), .S0(n18_adj_222[5]), 
          .S1(n18_adj_222[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_2_7.INIT0 = 16'hfaaa;
    defparam add_268_add_2_7.INIT1 = 16'hfaaa;
    defparam add_268_add_2_7.INJECT1_0 = "NO";
    defparam add_268_add_2_7.INJECT1_1 = "NO";
    CCU2D add_268_add_2_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2277), .COUT(n2278), .S0(n18_adj_222[7]), 
          .S1(n18_adj_222[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_2_9.INIT0 = 16'hfaaa;
    defparam add_268_add_2_9.INIT1 = 16'h0555;
    defparam add_268_add_2_9.INJECT1_0 = "NO";
    defparam add_268_add_2_9.INJECT1_1 = "NO";
    CCU2D add_268_add_2_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2278), .COUT(n2279), .S0(n18_adj_222[9]), 
          .S1(n18_adj_222[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_2_11.INIT0 = 16'hfaaa;
    defparam add_268_add_2_11.INIT1 = 16'hfaaa;
    defparam add_268_add_2_11.INJECT1_0 = "NO";
    defparam add_268_add_2_11.INJECT1_1 = "NO";
    CCU2D add_268_add_2_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2279), .COUT(n2280), .S0(n18_adj_222[11]), 
          .S1(n18_adj_222[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_2_13.INIT0 = 16'hfaaa;
    defparam add_268_add_2_13.INIT1 = 16'hfaaa;
    defparam add_268_add_2_13.INJECT1_0 = "NO";
    defparam add_268_add_2_13.INJECT1_1 = "NO";
    CCU2D add_268_add_2_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2280), .S0(n18_adj_222[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_2_15.INIT0 = 16'hfaaa;
    defparam add_268_add_2_15.INIT1 = 16'h0000;
    defparam add_268_add_2_15.INJECT1_0 = "NO";
    defparam add_268_add_2_15.INJECT1_1 = "NO";
    CCU2D add_268_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustableFreePrecession[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2281), .S1(n2_adj_221[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_1_1.INIT0 = 16'hF000;
    defparam add_268_add_1_1.INIT1 = 16'h5555;
    defparam add_268_add_1_1.INJECT1_0 = "NO";
    defparam add_268_add_1_1.INJECT1_1 = "NO";
    CCU2D add_268_add_1_3 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2281), .COUT(n2282), 
          .S0(n2_adj_221[1]), .S1(n2_adj_221[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_1_3.INIT0 = 16'h5555;
    defparam add_268_add_1_3.INIT1 = 16'h5555;
    defparam add_268_add_1_3.INJECT1_0 = "NO";
    defparam add_268_add_1_3.INJECT1_1 = "NO";
    CCU2D add_268_add_1_5 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2282), .COUT(n2283), 
          .S0(n2_adj_221[3]), .S1(n2_adj_221[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_1_5.INIT0 = 16'h5555;
    defparam add_268_add_1_5.INIT1 = 16'h5555;
    defparam add_268_add_1_5.INJECT1_0 = "NO";
    defparam add_268_add_1_5.INJECT1_1 = "NO";
    CCU2D add_268_add_1_7 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2283), .COUT(n2284), 
          .S0(n2_adj_221[5]), .S1(n2_adj_221[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_1_7.INIT0 = 16'h5aaa;
    defparam add_268_add_1_7.INIT1 = 16'h5aaa;
    defparam add_268_add_1_7.INJECT1_0 = "NO";
    defparam add_268_add_1_7.INJECT1_1 = "NO";
    CCU2D add_268_add_1_9 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2284), .COUT(n2285), 
          .S0(n2_adj_221[7]), .S1(n2_adj_221[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_1_9.INIT0 = 16'h5aaa;
    defparam add_268_add_1_9.INIT1 = 16'h5aaa;
    defparam add_268_add_1_9.INJECT1_0 = "NO";
    defparam add_268_add_1_9.INJECT1_1 = "NO";
    CCU2D add_268_add_1_11 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2285), .COUT(n2286), 
          .S0(n2_adj_221[9]), .S1(n2_adj_221[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_1_11.INIT0 = 16'h5aaa;
    defparam add_268_add_1_11.INIT1 = 16'h5aaa;
    defparam add_268_add_1_11.INJECT1_0 = "NO";
    defparam add_268_add_1_11.INJECT1_1 = "NO";
    CCU2D add_268_add_1_13 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2286), .COUT(n2287), 
          .S0(n2_adj_221[11]), .S1(n2_adj_221[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_1_13.INIT0 = 16'h5aaa;
    defparam add_268_add_1_13.INIT1 = 16'h5aaa;
    defparam add_268_add_1_13.INJECT1_0 = "NO";
    defparam add_268_add_1_13.INJECT1_1 = "NO";
    CCU2D add_268_add_1_15 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2287), .S0(n2_adj_221[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_268_add_1_15.INIT0 = 16'h5aaa;
    defparam add_268_add_1_15.INIT1 = 16'h0000;
    defparam add_268_add_1_15.INJECT1_0 = "NO";
    defparam add_268_add_1_15.INJECT1_1 = "NO";
    CCU2D add_274_477_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2288), .S1(n2_adj_223[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_274_477_add_1_1.INIT0 = 16'hF000;
    defparam add_274_477_add_1_1.INIT1 = 16'h0555;
    defparam add_274_477_add_1_1.INJECT1_0 = "NO";
    defparam add_274_477_add_1_1.INJECT1_1 = "NO";
    CCU2D add_274_477_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2288), .COUT(n2289), .S0(n2_adj_223[1]), 
          .S1(n2_adj_223[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_274_477_add_1_3.INIT0 = 16'hfaaa;
    defparam add_274_477_add_1_3.INIT1 = 16'hfaaa;
    defparam add_274_477_add_1_3.INJECT1_0 = "NO";
    defparam add_274_477_add_1_3.INJECT1_1 = "NO";
    CCU2D add_274_477_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2289), .COUT(n2290), .S0(n2_adj_223[3]), 
          .S1(n2_adj_223[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_274_477_add_1_5.INIT0 = 16'h0555;
    defparam add_274_477_add_1_5.INIT1 = 16'h0555;
    defparam add_274_477_add_1_5.INJECT1_0 = "NO";
    defparam add_274_477_add_1_5.INJECT1_1 = "NO";
    CCU2D add_274_477_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2290), .COUT(n2291), .S0(n2_adj_223[5]), 
          .S1(n2_adj_223[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_274_477_add_1_7.INIT0 = 16'hfaaa;
    defparam add_274_477_add_1_7.INIT1 = 16'hfaaa;
    defparam add_274_477_add_1_7.INJECT1_0 = "NO";
    defparam add_274_477_add_1_7.INJECT1_1 = "NO";
    CCU2D add_274_477_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2291), .COUT(n2292), .S0(n2_adj_223[7]), 
          .S1(n2_adj_223[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_274_477_add_1_9.INIT0 = 16'hfaaa;
    defparam add_274_477_add_1_9.INIT1 = 16'h0555;
    defparam add_274_477_add_1_9.INJECT1_0 = "NO";
    defparam add_274_477_add_1_9.INJECT1_1 = "NO";
    CCU2D add_274_477_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2292), .COUT(n2293), .S0(n2_adj_223[9]), 
          .S1(n2_adj_223[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_274_477_add_1_11.INIT0 = 16'hfaaa;
    defparam add_274_477_add_1_11.INIT1 = 16'hfaaa;
    defparam add_274_477_add_1_11.INJECT1_0 = "NO";
    defparam add_274_477_add_1_11.INJECT1_1 = "NO";
    CCU2D add_274_477_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2293), .COUT(n2294), .S0(n2_adj_223[11]), 
          .S1(n2_adj_223[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_274_477_add_1_13.INIT0 = 16'hfaaa;
    defparam add_274_477_add_1_13.INIT1 = 16'hfaaa;
    defparam add_274_477_add_1_13.INJECT1_0 = "NO";
    defparam add_274_477_add_1_13.INJECT1_1 = "NO";
    CCU2D add_274_477_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2294), .S0(n2_adj_223[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_274_477_add_1_15.INIT0 = 16'hfaaa;
    defparam add_274_477_add_1_15.INIT1 = 16'h0000;
    defparam add_274_477_add_1_15.INJECT1_0 = "NO";
    defparam add_274_477_add_1_15.INJECT1_1 = "NO";
    CCU2D add_481_2 (.A0(n2_adj_223[0]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_223[1]), .B1(n1478[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2296), .S1(Endofopticalsample[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_481_2.INIT0 = 16'h7000;
    defparam add_481_2.INIT1 = 16'h5666;
    defparam add_481_2.INJECT1_0 = "NO";
    defparam add_481_2.INJECT1_1 = "NO";
    CCU2D add_481_4 (.A0(n2_adj_223[2]), .B0(n1478[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_223[3]), .B1(n1478[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2296), .COUT(n2297), .S0(Endofopticalsample[4]), 
          .S1(Endofopticalsample[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_481_4.INIT0 = 16'h5666;
    defparam add_481_4.INIT1 = 16'h5666;
    defparam add_481_4.INJECT1_0 = "NO";
    defparam add_481_4.INJECT1_1 = "NO";
    CCU2D add_481_6 (.A0(n2_adj_223[4]), .B0(n1478[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_223[5]), .B1(n1478[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2297), .COUT(n2298), .S0(Endofopticalsample[6]), 
          .S1(Endofopticalsample[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_481_6.INIT0 = 16'h5666;
    defparam add_481_6.INIT1 = 16'h5666;
    defparam add_481_6.INJECT1_0 = "NO";
    defparam add_481_6.INJECT1_1 = "NO";
    CCU2D add_481_8 (.A0(n2_adj_223[6]), .B0(n1478[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_223[7]), .B1(n1478[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2298), .COUT(n2299), .S0(Endofopticalsample[8]), 
          .S1(Endofopticalsample[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_481_8.INIT0 = 16'h5666;
    defparam add_481_8.INIT1 = 16'h5666;
    defparam add_481_8.INJECT1_0 = "NO";
    defparam add_481_8.INJECT1_1 = "NO";
    CCU2D add_481_10 (.A0(n2_adj_223[8]), .B0(n1478[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_223[9]), .B1(n1478[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2299), .COUT(n2300), .S0(Endofopticalsample[10]), 
          .S1(Endofopticalsample[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_481_10.INIT0 = 16'h5666;
    defparam add_481_10.INIT1 = 16'h5666;
    defparam add_481_10.INJECT1_0 = "NO";
    defparam add_481_10.INJECT1_1 = "NO";
    CCU2D add_481_12 (.A0(n2_adj_223[10]), .B0(n1478[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_223[11]), .B1(n1478[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2300), .COUT(n2301), .S0(Endofopticalsample[12]), 
          .S1(Endofopticalsample[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_481_12.INIT0 = 16'h5666;
    defparam add_481_12.INIT1 = 16'h5666;
    defparam add_481_12.INJECT1_0 = "NO";
    defparam add_481_12.INJECT1_1 = "NO";
    CCU2D add_481_14 (.A0(n2_adj_223[12]), .B0(n1478[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_223[13]), .B1(n1478[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2301), .S0(Endofopticalsample[14]), .S1(Endofopticalsample[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_481_14.INIT0 = 16'h5666;
    defparam add_481_14.INIT1 = 16'h5666;
    defparam add_481_14.INJECT1_0 = "NO";
    defparam add_481_14.INJECT1_1 = "NO";
    count_n systemcounter (.count({count}), .clk_2M5(clk_2M5), .counterreset(counterreset), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[10:92])
    comparator sample2 (.GND_net(GND_net), .n432(n432), .gatedcount({gatedcount}), 
            .\Endofopticalsample[14] (Endofopticalsample[14]), .\Endofopticalsample[15] (Endofopticalsample[15]), 
            .\Endofopticalsample[12] (Endofopticalsample[12]), .\Endofopticalsample[13] (Endofopticalsample[13]), 
            .\Endofopticalsample[10] (Endofopticalsample[10]), .\Endofopticalsample[11] (Endofopticalsample[11]), 
            .\Endofopticalsample[8] (Endofopticalsample[8]), .\Endofopticalsample[9] (Endofopticalsample[9]), 
            .\Endofopticalsample[6] (Endofopticalsample[6]), .\Endofopticalsample[7] (Endofopticalsample[7]), 
            .\Endofopticalsample[4] (Endofopticalsample[4]), .\Endofopticalsample[5] (Endofopticalsample[5]), 
            .\Endofopticalsample[2] (Endofopticalsample[2]), .\Endofopticalsample[3] (Endofopticalsample[3])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(77[13:98])
    comparator_U4 pump2 (.\gatedcount[5] (gatedcount[5]), .\gatedcount[6] (gatedcount[6]), 
            .n2326(n2326), .\gatedcount[7] (gatedcount[7]), .\gatedcount[9] (gatedcount[9]), 
            .n2323(n2323), .\gatedcount[10] (gatedcount[10]), .debug_1_c(debug_1_c), 
            .\gatedcount[3] (gatedcount[3]), .\gatedcount[8] (gatedcount[8]), 
            .\gatedcount[4] (gatedcount[4])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[13:90])
    comparator_U5 probe2 (.gatedcount({gatedcount}), .GND_net(GND_net), 
            .n16(n2_adj_221[0]), .n32(n18_adj_222[0]), .\Resetandrepeat[3] (Resetandrepeat[3]), 
            .\Resetandrepeat[4] (Resetandrepeat[4]), .\Resetandrepeat[5] (Resetandrepeat[5]), 
            .\Endofprobepulse[6] (Endofprobepulse[6]), .\Endofprobepulse[7] (Endofprobepulse[7]), 
            .\Endofprobepulse[8] (Endofprobepulse[8]), .\Endofprobepulse[9] (Endofprobepulse[9]), 
            .\Endofprobepulse[10] (Endofprobepulse[10]), .\Endofprobepulse[11] (Endofprobepulse[11]), 
            .\Endofprobepulse[12] (Endofprobepulse[12]), .\Endofprobepulse[13] (Endofprobepulse[13]), 
            .\Endofprobepulse[14] (Endofprobepulse[14]), .\Endofprobepulse[15] (Endofprobepulse[15]), 
            .n394(n394)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(75[13:93])
    comparator_U6 probe1 (.GND_net(GND_net), .probestarted(probestarted), 
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
            .n16(n2_adj_219[0]), .n32(n18[0]), .\gatedcount[2] (gatedcount[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Startopticalsample[3] (Startopticalsample[3]), 
            .\gatedcount[1] (gatedcount[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(74[13:95])
    countupdownpreload piecounter (.pieovertwo_plus(pieovertwo_plus), .load_defaults(load_defaults), 
            .pieovertwo_minus(pieovertwo_minus), .GND_net(GND_net), .\AdjustablePieOverTwo[15] (AdjustablePieOverTwo[15]), 
            .\AdjustablePieOverTwo[14] (AdjustablePieOverTwo[14]), .\AdjustablePieOverTwo[13] (AdjustablePieOverTwo[13]), 
            .\AdjustablePieOverTwo[12] (AdjustablePieOverTwo[12]), .\AdjustablePieOverTwo[11] (AdjustablePieOverTwo[11]), 
            .\AdjustablePieOverTwo[10] (AdjustablePieOverTwo[10]), .\AdjustablePieOverTwo[9] (AdjustablePieOverTwo[9]), 
            .\AdjustablePieOverTwo[8] (AdjustablePieOverTwo[8]), .\AdjustablePieOverTwo[7] (AdjustablePieOverTwo[7]), 
            .\AdjustablePieOverTwo[6] (AdjustablePieOverTwo[6]), .\AdjustablePieOverTwo[5] (AdjustablePieOverTwo[5]), 
            .\AdjustablePieOverTwo[4] (AdjustablePieOverTwo[4]), .\AdjustablePieOverTwo[3] (AdjustablePieOverTwo[3]), 
            .\AdjustablePieOverTwo[2] (AdjustablePieOverTwo[2]), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1]), 
            .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(80[21:199])
    comparator_U7 loopcounter (.gatedcount({gatedcount}), .\Resetandrepeat[12] (Resetandrepeat[12]), 
            .GND_net(GND_net), .\Resetandrepeat[13] (Resetandrepeat[13]), 
            .\Resetandrepeat[6] (Resetandrepeat[6]), .\Resetandrepeat[7] (Resetandrepeat[7]), 
            .\Resetandrepeat[10] (Resetandrepeat[10]), .\Resetandrepeat[11] (Resetandrepeat[11]), 
            .\Resetandrepeat[4] (Resetandrepeat[4]), .\Resetandrepeat[5] (Resetandrepeat[5]), 
            .\Resetandrepeat[2] (Resetandrepeat[2]), .\Resetandrepeat[3] (Resetandrepeat[3]), 
            .loop(loop), .\Resetandrepeat[8] (Resetandrepeat[8]), .\Resetandrepeat[9] (Resetandrepeat[9]), 
            .\Resetandrepeat[14] (Resetandrepeat[14]), .\Resetandrepeat[15] (Resetandrepeat[15])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(78[13:89])
    countupdownpreload_U8 freepcounter (.freeprecess_plus(freeprecess_plus), 
            .load_defaults(load_defaults), .\AdjustableFreePrecession[14] (AdjustableFreePrecession[14]), 
            .GND_net(GND_net), .\AdjustableFreePrecession[15] (AdjustableFreePrecession[15]), 
            .\AdjustableFreePrecession[12] (AdjustableFreePrecession[12]), 
            .\AdjustableFreePrecession[13] (AdjustableFreePrecession[13]), 
            .\AdjustableFreePrecession[10] (AdjustableFreePrecession[10]), 
            .\AdjustableFreePrecession[11] (AdjustableFreePrecession[11]), 
            .\AdjustableFreePrecession[8] (AdjustableFreePrecession[8]), .\AdjustableFreePrecession[9] (AdjustableFreePrecession[9]), 
            .\AdjustableFreePrecession[6] (AdjustableFreePrecession[6]), .\AdjustableFreePrecession[7] (AdjustableFreePrecession[7]), 
            .\AdjustableFreePrecession[4] (AdjustableFreePrecession[4]), .\AdjustableFreePrecession[5] (AdjustableFreePrecession[5]), 
            .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), .\AdjustableFreePrecession[3] (AdjustableFreePrecession[3]), 
            .freeprecess_minus(freeprecess_minus), .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(81[21:212])
    comparator_U9 MW4 (.gatedcount({gatedcount}), .\Endof2ndMWpulse[4] (Endof2ndMWpulse[4]), 
            .GND_net(GND_net), .\Endof2ndMWpulse[5] (Endof2ndMWpulse[5]), 
            .\Endof2ndMWpulse[2] (Endof2ndMWpulse[2]), .\Endof2ndMWpulse[3] (Endof2ndMWpulse[3]), 
            .n356(n356), .\Endof2ndMWpulse[14] (Endof2ndMWpulse[14]), .\Endof2ndMWpulse[15] (Endof2ndMWpulse[15]), 
            .\Endof2ndMWpulse[12] (Endof2ndMWpulse[12]), .\Endof2ndMWpulse[13] (Endof2ndMWpulse[13]), 
            .\Endof2ndMWpulse[10] (Endof2ndMWpulse[10]), .\Endof2ndMWpulse[11] (Endof2ndMWpulse[11]), 
            .\Endof2ndMWpulse[8] (Endof2ndMWpulse[8]), .\Endof2ndMWpulse[9] (Endof2ndMWpulse[9]), 
            .\Endof2ndMWpulse[6] (Endof2ndMWpulse[6]), .\Endof2ndMWpulse[7] (Endof2ndMWpulse[7])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(73[13:88])
    comparator_U10 MW3 (.gatedcount({gatedcount}), .\Startof2ndMWpulse[12] (Startof2ndMWpulse[12]), 
            .GND_net(GND_net), .\Startof2ndMWpulse[13] (Startof2ndMWpulse[13]), 
            .\Startof2ndMWpulse[10] (Startof2ndMWpulse[10]), .\Startof2ndMWpulse[11] (Startof2ndMWpulse[11]), 
            .\Startof2ndMWpulse[8] (Startof2ndMWpulse[8]), .\Startof2ndMWpulse[9] (Startof2ndMWpulse[9]), 
            .\Startof2ndMWpulse[6] (Startof2ndMWpulse[6]), .\Startof2ndMWpulse[7] (Startof2ndMWpulse[7]), 
            .\Startof2ndMWpulse[14] (Startof2ndMWpulse[14]), .\Startof2ndMWpulse[15] (Startof2ndMWpulse[15]), 
            .\Startof2ndMWpulse[4] (Startof2ndMWpulse[4]), .\Startof2ndMWpulse[5] (Startof2ndMWpulse[5]), 
            .\Startof2ndMWpulse[2] (Startof2ndMWpulse[2]), .\Startof2ndMWpulse[3] (Startof2ndMWpulse[3]), 
            .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1]), .pi2started(pi2started)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[13:90])
    comparator_U11 MW2 (.gatedcount({gatedcount}), .\Endof1stMWpulse[10] (Endof1stMWpulse[10]), 
            .GND_net(GND_net), .\Endof1stMWpulse[11] (Endof1stMWpulse[11]), 
            .\Endof1stMWpulse[8] (Endof1stMWpulse[8]), .\Endof1stMWpulse[9] (Endof1stMWpulse[9]), 
            .\Endof1stMWpulse[6] (Endof1stMWpulse[6]), .\Endof1stMWpulse[7] (Endof1stMWpulse[7]), 
            .\Endof1stMWpulse[4] (Endof1stMWpulse[4]), .\Endof1stMWpulse[5] (Endof1stMWpulse[5]), 
            .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), .\Endof1stMWpulse[3] (Endof1stMWpulse[3]), 
            .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1]), .\Endof1stMWpulse[12] (Endof1stMWpulse[12]), 
            .\Endof1stMWpulse[13] (Endof1stMWpulse[13]), .\Endof1stMWpulse[14] (Endof1stMWpulse[14]), 
            .\Endof1stMWpulse[15] (Endof1stMWpulse[15]), .n318(n318)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(71[13:88])
    comparator_U12 MW1 (.\gatedcount[10] (gatedcount[10]), .\gatedcount[7] (gatedcount[7]), 
            .\gatedcount[9] (gatedcount[9]), .n1832(n1832), .\gatedcount[4] (gatedcount[4]), 
            .\gatedcount[8] (gatedcount[8]), .n2326(n2326), .\gatedcount[0] (gatedcount[0]), 
            .\gatedcount[3] (gatedcount[3]), .\gatedcount[2] (gatedcount[2]), 
            .\gatedcount[1] (gatedcount[1]), .\gatedcount[11] (gatedcount[11]), 
            .\gatedcount[13] (gatedcount[13]), .\gatedcount[15] (gatedcount[15]), 
            .n2323(n2323), .\gatedcount[12] (gatedcount[12]), .\gatedcount[14] (gatedcount[14])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[13:90])
    
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
    
    wire n2259, n2260, n2261, n2262, n2263, n2264, n2265, n2266;
    
    FD1S3DX count_205__i0 (.D(n69[0]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i0.GSR = "ENABLED";
    FD1S3DX count_205__i15 (.D(n69[15]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i15.GSR = "ENABLED";
    FD1S3DX count_205__i14 (.D(n69[14]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i14.GSR = "ENABLED";
    FD1S3DX count_205__i13 (.D(n69[13]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i13.GSR = "ENABLED";
    FD1S3DX count_205__i12 (.D(n69[12]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i12.GSR = "ENABLED";
    FD1S3DX count_205__i11 (.D(n69[11]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i11.GSR = "ENABLED";
    FD1S3DX count_205__i10 (.D(n69[10]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i10.GSR = "ENABLED";
    FD1S3DX count_205__i9 (.D(n69[9]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i9.GSR = "ENABLED";
    FD1S3DX count_205__i8 (.D(n69[8]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i8.GSR = "ENABLED";
    FD1S3DX count_205__i7 (.D(n69[7]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i7.GSR = "ENABLED";
    FD1S3DX count_205__i6 (.D(n69[6]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i6.GSR = "ENABLED";
    FD1S3DX count_205__i5 (.D(n69[5]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i5.GSR = "ENABLED";
    FD1S3DX count_205__i4 (.D(n69[4]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i4.GSR = "ENABLED";
    FD1S3DX count_205__i3 (.D(n69[3]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i3.GSR = "ENABLED";
    FD1S3DX count_205__i2 (.D(n69[2]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i2.GSR = "ENABLED";
    FD1S3DX count_205__i1 (.D(n69[1]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205__i1.GSR = "ENABLED";
    CCU2D count_205_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2259), .S1(n69[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205_add_4_1.INIT0 = 16'hF000;
    defparam count_205_add_4_1.INIT1 = 16'h0555;
    defparam count_205_add_4_1.INJECT1_0 = "NO";
    defparam count_205_add_4_1.INJECT1_1 = "NO";
    CCU2D count_205_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2259), .COUT(n2260), .S0(n69[1]), .S1(n69[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205_add_4_3.INIT0 = 16'hfaaa;
    defparam count_205_add_4_3.INIT1 = 16'hfaaa;
    defparam count_205_add_4_3.INJECT1_0 = "NO";
    defparam count_205_add_4_3.INJECT1_1 = "NO";
    CCU2D count_205_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2260), .COUT(n2261), .S0(n69[3]), .S1(n69[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205_add_4_5.INIT0 = 16'hfaaa;
    defparam count_205_add_4_5.INIT1 = 16'hfaaa;
    defparam count_205_add_4_5.INJECT1_0 = "NO";
    defparam count_205_add_4_5.INJECT1_1 = "NO";
    CCU2D count_205_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2261), .COUT(n2262), .S0(n69[5]), .S1(n69[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205_add_4_7.INIT0 = 16'hfaaa;
    defparam count_205_add_4_7.INIT1 = 16'hfaaa;
    defparam count_205_add_4_7.INJECT1_0 = "NO";
    defparam count_205_add_4_7.INJECT1_1 = "NO";
    CCU2D count_205_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2262), .COUT(n2263), .S0(n69[7]), .S1(n69[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205_add_4_9.INIT0 = 16'hfaaa;
    defparam count_205_add_4_9.INIT1 = 16'hfaaa;
    defparam count_205_add_4_9.INJECT1_0 = "NO";
    defparam count_205_add_4_9.INJECT1_1 = "NO";
    CCU2D count_205_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2263), .COUT(n2264), .S0(n69[9]), .S1(n69[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205_add_4_11.INIT0 = 16'hfaaa;
    defparam count_205_add_4_11.INIT1 = 16'hfaaa;
    defparam count_205_add_4_11.INJECT1_0 = "NO";
    defparam count_205_add_4_11.INJECT1_1 = "NO";
    CCU2D count_205_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2264), .COUT(n2265), .S0(n69[11]), .S1(n69[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205_add_4_13.INIT0 = 16'hfaaa;
    defparam count_205_add_4_13.INIT1 = 16'hfaaa;
    defparam count_205_add_4_13.INJECT1_0 = "NO";
    defparam count_205_add_4_13.INJECT1_1 = "NO";
    CCU2D count_205_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2265), .COUT(n2266), .S0(n69[13]), .S1(n69[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205_add_4_15.INIT0 = 16'hfaaa;
    defparam count_205_add_4_15.INIT1 = 16'hfaaa;
    defparam count_205_add_4_15.INJECT1_0 = "NO";
    defparam count_205_add_4_15.INJECT1_1 = "NO";
    CCU2D count_205_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2266), .S0(n69[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_205_add_4_17.INIT0 = 16'hfaaa;
    defparam count_205_add_4_17.INIT1 = 16'h0000;
    defparam count_205_add_4_17.INJECT1_0 = "NO";
    defparam count_205_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator
//

module comparator (GND_net, n432, gatedcount, \Endofopticalsample[14] , 
            \Endofopticalsample[15] , \Endofopticalsample[12] , \Endofopticalsample[13] , 
            \Endofopticalsample[10] , \Endofopticalsample[11] , \Endofopticalsample[8] , 
            \Endofopticalsample[9] , \Endofopticalsample[6] , \Endofopticalsample[7] , 
            \Endofopticalsample[4] , \Endofopticalsample[5] , \Endofopticalsample[2] , 
            \Endofopticalsample[3] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n432;
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
    
    
    wire n2146, n2145, n2144, n2143, n2142, n2141, n2140, n2139;
    
    CCU2D sub_157_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2146), .S0(n432));
    defparam sub_157_add_2_cout.INIT0 = 16'h0000;
    defparam sub_157_add_2_cout.INIT1 = 16'h0000;
    defparam sub_157_add_2_cout.INJECT1_0 = "NO";
    defparam sub_157_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_157_add_2_16 (.A0(gatedcount[14]), .B0(\Endofopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endofopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2145), .COUT(n2146));
    defparam sub_157_add_2_16.INIT0 = 16'h5999;
    defparam sub_157_add_2_16.INIT1 = 16'h5999;
    defparam sub_157_add_2_16.INJECT1_0 = "NO";
    defparam sub_157_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_157_add_2_14 (.A0(gatedcount[12]), .B0(\Endofopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endofopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2144), .COUT(n2145));
    defparam sub_157_add_2_14.INIT0 = 16'h5999;
    defparam sub_157_add_2_14.INIT1 = 16'h5999;
    defparam sub_157_add_2_14.INJECT1_0 = "NO";
    defparam sub_157_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_157_add_2_12 (.A0(gatedcount[10]), .B0(\Endofopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endofopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2143), .COUT(n2144));
    defparam sub_157_add_2_12.INIT0 = 16'h5999;
    defparam sub_157_add_2_12.INIT1 = 16'h5999;
    defparam sub_157_add_2_12.INJECT1_0 = "NO";
    defparam sub_157_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_157_add_2_10 (.A0(gatedcount[8]), .B0(\Endofopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endofopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2142), .COUT(n2143));
    defparam sub_157_add_2_10.INIT0 = 16'h5999;
    defparam sub_157_add_2_10.INIT1 = 16'h5999;
    defparam sub_157_add_2_10.INJECT1_0 = "NO";
    defparam sub_157_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_157_add_2_8 (.A0(gatedcount[6]), .B0(\Endofopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endofopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2141), .COUT(n2142));
    defparam sub_157_add_2_8.INIT0 = 16'h5999;
    defparam sub_157_add_2_8.INIT1 = 16'h5999;
    defparam sub_157_add_2_8.INJECT1_0 = "NO";
    defparam sub_157_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_157_add_2_6 (.A0(gatedcount[4]), .B0(\Endofopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endofopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2140), .COUT(n2141));
    defparam sub_157_add_2_6.INIT0 = 16'h5999;
    defparam sub_157_add_2_6.INIT1 = 16'h5999;
    defparam sub_157_add_2_6.INJECT1_0 = "NO";
    defparam sub_157_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_157_add_2_4 (.A0(gatedcount[2]), .B0(\Endofopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endofopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2139), .COUT(n2140));
    defparam sub_157_add_2_4.INIT0 = 16'h5999;
    defparam sub_157_add_2_4.INIT1 = 16'h5999;
    defparam sub_157_add_2_4.INJECT1_0 = "NO";
    defparam sub_157_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_157_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2139));
    defparam sub_157_add_2_2.INIT0 = 16'h5000;
    defparam sub_157_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_157_add_2_2.INJECT1_0 = "NO";
    defparam sub_157_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U4
//

module comparator_U4 (\gatedcount[5] , \gatedcount[6] , n2326, \gatedcount[7] , 
            \gatedcount[9] , n2323, \gatedcount[10] , debug_1_c, \gatedcount[3] , 
            \gatedcount[8] , \gatedcount[4] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[5] ;
    input \gatedcount[6] ;
    output n2326;
    input \gatedcount[7] ;
    input \gatedcount[9] ;
    input n2323;
    input \gatedcount[10] ;
    output debug_1_c;
    input \gatedcount[3] ;
    input \gatedcount[8] ;
    input \gatedcount[4] ;
    
    
    wire n7, n8;
    
    LUT4 i1_2_lut (.A(\gatedcount[5] ), .B(\gatedcount[6] ), .Z(n2326)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2_2_lut (.A(\gatedcount[7] ), .B(\gatedcount[9] ), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i529_4_lut (.A(n2323), .B(n7), .C(\gatedcount[10] ), .D(n8), 
         .Z(debug_1_c)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C)))) */ ;
    defparam i529_4_lut.init = 16'h0105;
    LUT4 i3_4_lut (.A(n2326), .B(\gatedcount[3] ), .C(\gatedcount[8] ), 
         .D(\gatedcount[4] ), .Z(n8)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'ha080;
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (gatedcount, GND_net, n16, n32, \Resetandrepeat[3] , 
            \Resetandrepeat[4] , \Resetandrepeat[5] , \Endofprobepulse[6] , 
            \Endofprobepulse[7] , \Endofprobepulse[8] , \Endofprobepulse[9] , 
            \Endofprobepulse[10] , \Endofprobepulse[11] , \Endofprobepulse[12] , 
            \Endofprobepulse[13] , \Endofprobepulse[14] , \Endofprobepulse[15] , 
            n394) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input GND_net;
    input n16;
    input n32;
    input \Resetandrepeat[3] ;
    input \Resetandrepeat[4] ;
    input \Resetandrepeat[5] ;
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
    output n394;
    
    
    wire n2221, n2222, n2223, n2224, n2225, n2226, n2227, n2228;
    
    CCU2D sub_153_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2221));
    defparam sub_153_add_2_2.INIT0 = 16'h5000;
    defparam sub_153_add_2_2.INIT1 = 16'h5555;
    defparam sub_153_add_2_2.INJECT1_0 = "NO";
    defparam sub_153_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_153_add_2_4 (.A0(n16), .B0(n32), .C0(gatedcount[2]), .D0(GND_net), 
          .A1(gatedcount[3]), .B1(\Resetandrepeat[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2221), .COUT(n2222));
    defparam sub_153_add_2_4.INIT0 = 16'h6969;
    defparam sub_153_add_2_4.INIT1 = 16'h5999;
    defparam sub_153_add_2_4.INJECT1_0 = "NO";
    defparam sub_153_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_153_add_2_6 (.A0(gatedcount[4]), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2222), .COUT(n2223));
    defparam sub_153_add_2_6.INIT0 = 16'h5999;
    defparam sub_153_add_2_6.INIT1 = 16'h5999;
    defparam sub_153_add_2_6.INJECT1_0 = "NO";
    defparam sub_153_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_153_add_2_8 (.A0(gatedcount[6]), .B0(\Endofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2223), .COUT(n2224));
    defparam sub_153_add_2_8.INIT0 = 16'h5999;
    defparam sub_153_add_2_8.INIT1 = 16'h5999;
    defparam sub_153_add_2_8.INJECT1_0 = "NO";
    defparam sub_153_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_153_add_2_10 (.A0(gatedcount[8]), .B0(\Endofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2224), .COUT(n2225));
    defparam sub_153_add_2_10.INIT0 = 16'h5999;
    defparam sub_153_add_2_10.INIT1 = 16'h5999;
    defparam sub_153_add_2_10.INJECT1_0 = "NO";
    defparam sub_153_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_153_add_2_12 (.A0(gatedcount[10]), .B0(\Endofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2225), .COUT(n2226));
    defparam sub_153_add_2_12.INIT0 = 16'h5999;
    defparam sub_153_add_2_12.INIT1 = 16'h5999;
    defparam sub_153_add_2_12.INJECT1_0 = "NO";
    defparam sub_153_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_153_add_2_14 (.A0(gatedcount[12]), .B0(\Endofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2226), .COUT(n2227));
    defparam sub_153_add_2_14.INIT0 = 16'h5999;
    defparam sub_153_add_2_14.INIT1 = 16'h5999;
    defparam sub_153_add_2_14.INJECT1_0 = "NO";
    defparam sub_153_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_153_add_2_16 (.A0(gatedcount[14]), .B0(\Endofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2227), .COUT(n2228));
    defparam sub_153_add_2_16.INIT0 = 16'h5999;
    defparam sub_153_add_2_16.INIT1 = 16'h5999;
    defparam sub_153_add_2_16.INJECT1_0 = "NO";
    defparam sub_153_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_153_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2228), .S0(n394));
    defparam sub_153_add_2_cout.INIT0 = 16'h0000;
    defparam sub_153_add_2_cout.INIT1 = 16'h0000;
    defparam sub_153_add_2_cout.INJECT1_0 = "NO";
    defparam sub_153_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (GND_net, probestarted, \gatedcount[14] , \Startopticalsample[14] , 
            \gatedcount[15] , \Startopticalsample[15] , \gatedcount[12] , 
            \Startopticalsample[12] , \gatedcount[13] , \Startopticalsample[13] , 
            \gatedcount[10] , \Startopticalsample[10] , \gatedcount[11] , 
            \Startopticalsample[11] , \gatedcount[8] , \Startopticalsample[8] , 
            \gatedcount[9] , \Startopticalsample[9] , \gatedcount[6] , 
            \Startopticalsample[6] , \gatedcount[7] , \Startopticalsample[7] , 
            \gatedcount[4] , \Startopticalsample[4] , \gatedcount[5] , 
            \Startopticalsample[5] , n16, n32, \gatedcount[2] , \gatedcount[3] , 
            \Startopticalsample[3] , \gatedcount[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output probestarted;
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
    input n16;
    input n32;
    input \gatedcount[2] ;
    input \gatedcount[3] ;
    input \Startopticalsample[3] ;
    input \gatedcount[1] ;
    
    
    wire n2154, n2153, n2152, n2151, n2150, n2149, n2148, n2147;
    
    CCU2D sub_151_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2154), .S0(probestarted));
    defparam sub_151_add_2_cout.INIT0 = 16'h0000;
    defparam sub_151_add_2_cout.INIT1 = 16'h0000;
    defparam sub_151_add_2_cout.INJECT1_0 = "NO";
    defparam sub_151_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_151_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2153), .COUT(n2154));
    defparam sub_151_add_2_16.INIT0 = 16'h5999;
    defparam sub_151_add_2_16.INIT1 = 16'h5999;
    defparam sub_151_add_2_16.INJECT1_0 = "NO";
    defparam sub_151_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_151_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2152), .COUT(n2153));
    defparam sub_151_add_2_14.INIT0 = 16'h5999;
    defparam sub_151_add_2_14.INIT1 = 16'h5999;
    defparam sub_151_add_2_14.INJECT1_0 = "NO";
    defparam sub_151_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_151_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2151), .COUT(n2152));
    defparam sub_151_add_2_12.INIT0 = 16'h5999;
    defparam sub_151_add_2_12.INIT1 = 16'h5999;
    defparam sub_151_add_2_12.INJECT1_0 = "NO";
    defparam sub_151_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_151_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2150), .COUT(n2151));
    defparam sub_151_add_2_10.INIT0 = 16'h5999;
    defparam sub_151_add_2_10.INIT1 = 16'h5999;
    defparam sub_151_add_2_10.INJECT1_0 = "NO";
    defparam sub_151_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_151_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2149), .COUT(n2150));
    defparam sub_151_add_2_8.INIT0 = 16'h5999;
    defparam sub_151_add_2_8.INIT1 = 16'h5999;
    defparam sub_151_add_2_8.INJECT1_0 = "NO";
    defparam sub_151_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_151_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2148), .COUT(n2149));
    defparam sub_151_add_2_6.INIT0 = 16'h5999;
    defparam sub_151_add_2_6.INIT1 = 16'h5999;
    defparam sub_151_add_2_6.INJECT1_0 = "NO";
    defparam sub_151_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_151_add_2_4 (.A0(n16), .B0(n32), .C0(\gatedcount[2] ), .D0(GND_net), 
          .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2147), .COUT(n2148));
    defparam sub_151_add_2_4.INIT0 = 16'h6969;
    defparam sub_151_add_2_4.INIT1 = 16'h5999;
    defparam sub_151_add_2_4.INJECT1_0 = "NO";
    defparam sub_151_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_151_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2147));
    defparam sub_151_add_2_2.INIT0 = 16'h0000;
    defparam sub_151_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_151_add_2_2.INJECT1_0 = "NO";
    defparam sub_151_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (pieovertwo_plus, load_defaults, pieovertwo_minus, 
            GND_net, \AdjustablePieOverTwo[15] , \AdjustablePieOverTwo[14] , 
            \AdjustablePieOverTwo[13] , \AdjustablePieOverTwo[12] , \AdjustablePieOverTwo[11] , 
            \AdjustablePieOverTwo[10] , \AdjustablePieOverTwo[9] , \AdjustablePieOverTwo[8] , 
            \AdjustablePieOverTwo[7] , \AdjustablePieOverTwo[6] , \AdjustablePieOverTwo[5] , 
            \AdjustablePieOverTwo[4] , \AdjustablePieOverTwo[3] , \AdjustablePieOverTwo[2] , 
            \Startof2ndMWpulse[1] , clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input pieovertwo_plus;
    input load_defaults;
    input pieovertwo_minus;
    input GND_net;
    output \AdjustablePieOverTwo[15] ;
    output \AdjustablePieOverTwo[14] ;
    output \AdjustablePieOverTwo[13] ;
    output \AdjustablePieOverTwo[12] ;
    output \AdjustablePieOverTwo[11] ;
    output \AdjustablePieOverTwo[10] ;
    output \AdjustablePieOverTwo[9] ;
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
    
    wire n4, n2212;
    wire [14:0]n1632;
    wire [15:0]count_15__N_114;
    
    wire n2211, n2210, n2209, n2208, n2207, n2206, n2239, n2240, 
        n2241, n2242, n2243, n2244, n2245, n2246;
    
    LUT4 i1_2_lut (.A(pieovertwo_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_281_15 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1632[14]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2212), .S0(count_15__N_114[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_281_15.INIT0 = 16'hd2d2;
    defparam add_281_15.INIT1 = 16'h0000;
    defparam add_281_15.INJECT1_0 = "NO";
    defparam add_281_15.INJECT1_1 = "NO";
    CCU2D add_281_13 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1632[12]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1632[13]), 
          .D1(GND_net), .CIN(n2211), .COUT(n2212), .S0(count_15__N_114[13]), 
          .S1(count_15__N_114[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_281_13.INIT0 = 16'hd2d2;
    defparam add_281_13.INIT1 = 16'hd2d2;
    defparam add_281_13.INJECT1_0 = "NO";
    defparam add_281_13.INJECT1_1 = "NO";
    CCU2D add_281_11 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1632[10]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1632[11]), 
          .D1(GND_net), .CIN(n2210), .COUT(n2211), .S0(count_15__N_114[11]), 
          .S1(count_15__N_114[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_281_11.INIT0 = 16'hd2d2;
    defparam add_281_11.INIT1 = 16'hd2d2;
    defparam add_281_11.INJECT1_0 = "NO";
    defparam add_281_11.INJECT1_1 = "NO";
    CCU2D add_281_9 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1632[8]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1632[9]), 
          .D1(GND_net), .CIN(n2209), .COUT(n2210), .S0(count_15__N_114[9]), 
          .S1(count_15__N_114[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_281_9.INIT0 = 16'hd2d2;
    defparam add_281_9.INIT1 = 16'hd2d2;
    defparam add_281_9.INJECT1_0 = "NO";
    defparam add_281_9.INJECT1_1 = "NO";
    CCU2D add_281_7 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1632[6]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1632[7]), 
          .D1(GND_net), .CIN(n2208), .COUT(n2209), .S0(count_15__N_114[7]), 
          .S1(count_15__N_114[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_281_7.INIT0 = 16'hd2d2;
    defparam add_281_7.INIT1 = 16'hd2d2;
    defparam add_281_7.INJECT1_0 = "NO";
    defparam add_281_7.INJECT1_1 = "NO";
    CCU2D add_281_5 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1632[4]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1632[5]), 
          .D1(GND_net), .CIN(n2207), .COUT(n2208), .S0(count_15__N_114[5]), 
          .S1(count_15__N_114[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_281_5.INIT0 = 16'hd2d2;
    defparam add_281_5.INIT1 = 16'hd2d2;
    defparam add_281_5.INJECT1_0 = "NO";
    defparam add_281_5.INJECT1_1 = "NO";
    CCU2D add_281_3 (.A0(n1632[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1632[3]), 
          .D1(GND_net), .CIN(n2206), .COUT(n2207), .S0(count_15__N_114[3]), 
          .S1(count_15__N_114[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_281_3.INIT0 = 16'h5aaa;
    defparam add_281_3.INIT1 = 16'hd2d2;
    defparam add_281_3.INJECT1_0 = "NO";
    defparam add_281_3.INJECT1_1 = "NO";
    CCU2D add_281_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1632[1]), 
          .D1(GND_net), .COUT(n2206), .S1(count_15__N_114[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_281_1.INIT0 = 16'hF000;
    defparam add_281_1.INIT1 = 16'hd2d2;
    defparam add_281_1.INJECT1_0 = "NO";
    defparam add_281_1.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_114[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[15] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_114[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[14] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_114[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[13] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_114[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[12] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_114[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[11] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_114[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[10] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_114[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_114[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3JX count_i7 (.D(count_15__N_114[7]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3JX count_i6 (.D(count_15__N_114[6]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3JX count_i5 (.D(count_15__N_114[5]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3IX count_i4 (.D(count_15__N_114[4]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_114[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_114[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    FD1S3IX count_i1 (.D(count_15__N_114[1]), .CK(trigger), .CD(load_defaults), 
            .Q(\Startof2ndMWpulse[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=80, LSE_RLINE=80 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i1.GSR = "ENABLED";
    CCU2D add_198_243_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(GND_net), 
          .D1(GND_net), .COUT(n2239));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_198_243_add_1_1.INIT0 = 16'hF000;
    defparam add_198_243_add_1_1.INIT1 = 16'hdddd;
    defparam add_198_243_add_1_1.INJECT1_0 = "NO";
    defparam add_198_243_add_1_1.INJECT1_1 = "NO";
    CCU2D add_198_243_add_1_3 (.A0(\Startof2ndMWpulse[1] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[2] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2239), .COUT(n2240), 
          .S0(count_15__N_114[1]), .S1(n1632[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_198_243_add_1_3.INIT0 = 16'h5666;
    defparam add_198_243_add_1_3.INIT1 = 16'h5aaa;
    defparam add_198_243_add_1_3.INJECT1_0 = "NO";
    defparam add_198_243_add_1_3.INJECT1_1 = "NO";
    CCU2D add_198_243_add_1_5 (.A0(\AdjustablePieOverTwo[3] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[4] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2240), .COUT(n2241), 
          .S0(n1632[2]), .S1(n1632[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_198_243_add_1_5.INIT0 = 16'h5666;
    defparam add_198_243_add_1_5.INIT1 = 16'h5aaa;
    defparam add_198_243_add_1_5.INJECT1_0 = "NO";
    defparam add_198_243_add_1_5.INJECT1_1 = "NO";
    CCU2D add_198_243_add_1_7 (.A0(\AdjustablePieOverTwo[5] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[6] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2241), .COUT(n2242), 
          .S0(n1632[4]), .S1(n1632[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_198_243_add_1_7.INIT0 = 16'h5aaa;
    defparam add_198_243_add_1_7.INIT1 = 16'h5aaa;
    defparam add_198_243_add_1_7.INJECT1_0 = "NO";
    defparam add_198_243_add_1_7.INJECT1_1 = "NO";
    CCU2D add_198_243_add_1_9 (.A0(\AdjustablePieOverTwo[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[8] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2242), .COUT(n2243), 
          .S0(n1632[6]), .S1(n1632[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_198_243_add_1_9.INIT0 = 16'h5aaa;
    defparam add_198_243_add_1_9.INIT1 = 16'h5aaa;
    defparam add_198_243_add_1_9.INJECT1_0 = "NO";
    defparam add_198_243_add_1_9.INJECT1_1 = "NO";
    CCU2D add_198_243_add_1_11 (.A0(\AdjustablePieOverTwo[9] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[10] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2243), .COUT(n2244), 
          .S0(n1632[8]), .S1(n1632[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_198_243_add_1_11.INIT0 = 16'h5aaa;
    defparam add_198_243_add_1_11.INIT1 = 16'h5aaa;
    defparam add_198_243_add_1_11.INJECT1_0 = "NO";
    defparam add_198_243_add_1_11.INJECT1_1 = "NO";
    CCU2D add_198_243_add_1_13 (.A0(\AdjustablePieOverTwo[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[12] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2244), .COUT(n2245), 
          .S0(n1632[10]), .S1(n1632[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_198_243_add_1_13.INIT0 = 16'h5aaa;
    defparam add_198_243_add_1_13.INIT1 = 16'h5aaa;
    defparam add_198_243_add_1_13.INJECT1_0 = "NO";
    defparam add_198_243_add_1_13.INJECT1_1 = "NO";
    CCU2D add_198_243_add_1_15 (.A0(\AdjustablePieOverTwo[13] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[14] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2245), .COUT(n2246), 
          .S0(n1632[12]), .S1(n1632[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_198_243_add_1_15.INIT0 = 16'h5aaa;
    defparam add_198_243_add_1_15.INIT1 = 16'h5aaa;
    defparam add_198_243_add_1_15.INJECT1_0 = "NO";
    defparam add_198_243_add_1_15.INJECT1_1 = "NO";
    CCU2D add_198_243_add_1_17 (.A0(\AdjustablePieOverTwo[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2246), .S0(n1632[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_198_243_add_1_17.INIT0 = 16'h5aaa;
    defparam add_198_243_add_1_17.INIT1 = 16'h0000;
    defparam add_198_243_add_1_17.INJECT1_0 = "NO";
    defparam add_198_243_add_1_17.INJECT1_1 = "NO";
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
    
    FD1S3AX Q_5 (.D(Q0), .CK(clk_2M5), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
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
    
    FD1S3JX Q_5 (.D(n4), .CK(clk_2M5), .PD(pieovertwo_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module comparator_U7
//

module comparator_U7 (gatedcount, \Resetandrepeat[12] , GND_net, \Resetandrepeat[13] , 
            \Resetandrepeat[6] , \Resetandrepeat[7] , \Resetandrepeat[10] , 
            \Resetandrepeat[11] , \Resetandrepeat[4] , \Resetandrepeat[5] , 
            \Resetandrepeat[2] , \Resetandrepeat[3] , loop, \Resetandrepeat[8] , 
            \Resetandrepeat[9] , \Resetandrepeat[14] , \Resetandrepeat[15] ) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input \Resetandrepeat[12] ;
    input GND_net;
    input \Resetandrepeat[13] ;
    input \Resetandrepeat[6] ;
    input \Resetandrepeat[7] ;
    input \Resetandrepeat[10] ;
    input \Resetandrepeat[11] ;
    input \Resetandrepeat[4] ;
    input \Resetandrepeat[5] ;
    input \Resetandrepeat[2] ;
    input \Resetandrepeat[3] ;
    output loop;
    input \Resetandrepeat[8] ;
    input \Resetandrepeat[9] ;
    input \Resetandrepeat[14] ;
    input \Resetandrepeat[15] ;
    
    
    wire n2125, n2126, n2122, n2123, n2124, n2121, n2120, n2127;
    
    CCU2D sub_159_add_2_14 (.A0(gatedcount[12]), .B0(\Resetandrepeat[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Resetandrepeat[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2125), .COUT(n2126));
    defparam sub_159_add_2_14.INIT0 = 16'h5999;
    defparam sub_159_add_2_14.INIT1 = 16'h5999;
    defparam sub_159_add_2_14.INJECT1_0 = "NO";
    defparam sub_159_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_159_add_2_8 (.A0(gatedcount[6]), .B0(\Resetandrepeat[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Resetandrepeat[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2122), .COUT(n2123));
    defparam sub_159_add_2_8.INIT0 = 16'h5999;
    defparam sub_159_add_2_8.INIT1 = 16'h5999;
    defparam sub_159_add_2_8.INJECT1_0 = "NO";
    defparam sub_159_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_159_add_2_12 (.A0(gatedcount[10]), .B0(\Resetandrepeat[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Resetandrepeat[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2124), .COUT(n2125));
    defparam sub_159_add_2_12.INIT0 = 16'h5999;
    defparam sub_159_add_2_12.INIT1 = 16'h5999;
    defparam sub_159_add_2_12.INJECT1_0 = "NO";
    defparam sub_159_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_159_add_2_6 (.A0(gatedcount[4]), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2121), .COUT(n2122));
    defparam sub_159_add_2_6.INIT0 = 16'h5999;
    defparam sub_159_add_2_6.INIT1 = 16'h5999;
    defparam sub_159_add_2_6.INJECT1_0 = "NO";
    defparam sub_159_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_159_add_2_4 (.A0(gatedcount[2]), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2120), .COUT(n2121));
    defparam sub_159_add_2_4.INIT0 = 16'h5999;
    defparam sub_159_add_2_4.INIT1 = 16'h5999;
    defparam sub_159_add_2_4.INJECT1_0 = "NO";
    defparam sub_159_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_159_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2120));
    defparam sub_159_add_2_2.INIT0 = 16'h5000;
    defparam sub_159_add_2_2.INIT1 = 16'h5555;
    defparam sub_159_add_2_2.INJECT1_0 = "NO";
    defparam sub_159_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_159_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2127), .S0(loop));
    defparam sub_159_add_2_cout.INIT0 = 16'h0000;
    defparam sub_159_add_2_cout.INIT1 = 16'h0000;
    defparam sub_159_add_2_cout.INJECT1_0 = "NO";
    defparam sub_159_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_159_add_2_10 (.A0(gatedcount[8]), .B0(\Resetandrepeat[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Resetandrepeat[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2123), .COUT(n2124));
    defparam sub_159_add_2_10.INIT0 = 16'h5999;
    defparam sub_159_add_2_10.INIT1 = 16'h5999;
    defparam sub_159_add_2_10.INJECT1_0 = "NO";
    defparam sub_159_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_159_add_2_16 (.A0(gatedcount[14]), .B0(\Resetandrepeat[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Resetandrepeat[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2126), .COUT(n2127));
    defparam sub_159_add_2_16.INIT0 = 16'h5999;
    defparam sub_159_add_2_16.INIT1 = 16'h5999;
    defparam sub_159_add_2_16.INJECT1_0 = "NO";
    defparam sub_159_add_2_16.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload_U8
//

module countupdownpreload_U8 (freeprecess_plus, load_defaults, \AdjustableFreePrecession[14] , 
            GND_net, \AdjustableFreePrecession[15] , \AdjustableFreePrecession[12] , 
            \AdjustableFreePrecession[13] , \AdjustableFreePrecession[10] , 
            \AdjustableFreePrecession[11] , \AdjustableFreePrecession[8] , 
            \AdjustableFreePrecession[9] , \AdjustableFreePrecession[6] , 
            \AdjustableFreePrecession[7] , \AdjustableFreePrecession[4] , 
            \AdjustableFreePrecession[5] , \AdjustableFreePrecession[2] , 
            \AdjustableFreePrecession[3] , freeprecess_minus, clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input freeprecess_plus;
    input load_defaults;
    output \AdjustableFreePrecession[14] ;
    input GND_net;
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
    input freeprecess_minus;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n4, n2137;
    wire [13:0]n1565;
    
    wire n2136, n2135, n2134, n2133, n2132, n2131;
    wire [15:0]count_15__N_114;
    
    wire n2229, n2230, n2231, n2232, n2233, n2234;
    
    LUT4 i1_2_lut (.A(freeprecess_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_202_245_add_1_15 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2137), .S0(n1565[12]), 
          .S1(n1565[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_202_245_add_1_15.INIT0 = 16'h5aaa;
    defparam add_202_245_add_1_15.INIT1 = 16'h5aaa;
    defparam add_202_245_add_1_15.INJECT1_0 = "NO";
    defparam add_202_245_add_1_15.INJECT1_1 = "NO";
    CCU2D add_202_245_add_1_13 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2136), .COUT(n2137), 
          .S0(n1565[10]), .S1(n1565[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_202_245_add_1_13.INIT0 = 16'h5aaa;
    defparam add_202_245_add_1_13.INIT1 = 16'h5aaa;
    defparam add_202_245_add_1_13.INJECT1_0 = "NO";
    defparam add_202_245_add_1_13.INJECT1_1 = "NO";
    CCU2D add_202_245_add_1_11 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2135), .COUT(n2136), 
          .S0(n1565[8]), .S1(n1565[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_202_245_add_1_11.INIT0 = 16'h5aaa;
    defparam add_202_245_add_1_11.INIT1 = 16'h5aaa;
    defparam add_202_245_add_1_11.INJECT1_0 = "NO";
    defparam add_202_245_add_1_11.INJECT1_1 = "NO";
    CCU2D add_202_245_add_1_9 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2134), .COUT(n2135), 
          .S0(n1565[6]), .S1(n1565[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_202_245_add_1_9.INIT0 = 16'h5aaa;
    defparam add_202_245_add_1_9.INIT1 = 16'h5aaa;
    defparam add_202_245_add_1_9.INJECT1_0 = "NO";
    defparam add_202_245_add_1_9.INJECT1_1 = "NO";
    CCU2D add_202_245_add_1_7 (.A0(\AdjustableFreePrecession[6] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2133), .COUT(n2134), 
          .S0(n1565[4]), .S1(n1565[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_202_245_add_1_7.INIT0 = 16'h5666;
    defparam add_202_245_add_1_7.INIT1 = 16'h5aaa;
    defparam add_202_245_add_1_7.INJECT1_0 = "NO";
    defparam add_202_245_add_1_7.INJECT1_1 = "NO";
    CCU2D add_202_245_add_1_5 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), 
          .B1(freeprecess_plus), .C1(GND_net), .D1(GND_net), .CIN(n2132), 
          .COUT(n2133), .S0(n1565[2]), .S1(n1565[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_202_245_add_1_5.INIT0 = 16'h5aaa;
    defparam add_202_245_add_1_5.INIT1 = 16'h5666;
    defparam add_202_245_add_1_5.INJECT1_0 = "NO";
    defparam add_202_245_add_1_5.INJECT1_1 = "NO";
    CCU2D add_202_245_add_1_3 (.A0(\AdjustableFreePrecession[2] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[3] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2131), .COUT(n2132), 
          .S0(count_15__N_114[2]), .S1(n1565[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_202_245_add_1_3.INIT0 = 16'h5666;
    defparam add_202_245_add_1_3.INIT1 = 16'h5aaa;
    defparam add_202_245_add_1_3.INJECT1_0 = "NO";
    defparam add_202_245_add_1_3.INJECT1_1 = "NO";
    CCU2D add_202_245_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(GND_net), .D1(GND_net), .COUT(n2131));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_202_245_add_1_1.INIT0 = 16'hF000;
    defparam add_202_245_add_1_1.INIT1 = 16'hdddd;
    defparam add_202_245_add_1_1.INJECT1_0 = "NO";
    defparam add_202_245_add_1_1.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_114[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[15] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_114[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[14] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_114[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[13] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3JX count_i12 (.D(count_15__N_114[12]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[12] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3JX count_i11 (.D(count_15__N_114[11]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[11] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3JX count_i10 (.D(count_15__N_114[10]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[10] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3IX count_i9 (.D(count_15__N_114[9]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_114[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_114[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3JX count_i6 (.D(count_15__N_114[6]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_114[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3IX count_i4 (.D(count_15__N_114[4]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_114[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3JX count_i2 (.D(count_15__N_114[2]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    CCU2D add_279_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1565[1]), 
          .D1(GND_net), .COUT(n2229), .S1(count_15__N_114[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_1.INIT0 = 16'hF000;
    defparam add_279_1.INIT1 = 16'hd2d2;
    defparam add_279_1.INJECT1_0 = "NO";
    defparam add_279_1.INJECT1_1 = "NO";
    CCU2D add_279_3 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1565[2]), 
          .D0(GND_net), .A1(n1565[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2229), .COUT(n2230), .S0(count_15__N_114[4]), .S1(count_15__N_114[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_3.INIT0 = 16'hd2d2;
    defparam add_279_3.INIT1 = 16'h5aaa;
    defparam add_279_3.INJECT1_0 = "NO";
    defparam add_279_3.INJECT1_1 = "NO";
    CCU2D add_279_5 (.A0(n1565[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1565[5]), 
          .D1(GND_net), .CIN(n2230), .COUT(n2231), .S0(count_15__N_114[6]), 
          .S1(count_15__N_114[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_5.INIT0 = 16'h5aaa;
    defparam add_279_5.INIT1 = 16'hd2d2;
    defparam add_279_5.INJECT1_0 = "NO";
    defparam add_279_5.INJECT1_1 = "NO";
    CCU2D add_279_7 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1565[6]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1565[7]), .D1(GND_net), .CIN(n2231), .COUT(n2232), .S0(count_15__N_114[8]), 
          .S1(count_15__N_114[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_7.INIT0 = 16'hd2d2;
    defparam add_279_7.INIT1 = 16'hd2d2;
    defparam add_279_7.INJECT1_0 = "NO";
    defparam add_279_7.INJECT1_1 = "NO";
    CCU2D add_279_9 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1565[8]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1565[9]), .D1(GND_net), .CIN(n2232), .COUT(n2233), .S0(count_15__N_114[10]), 
          .S1(count_15__N_114[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_9.INIT0 = 16'hd2d2;
    defparam add_279_9.INIT1 = 16'hd2d2;
    defparam add_279_9.INJECT1_0 = "NO";
    defparam add_279_9.INJECT1_1 = "NO";
    CCU2D add_279_11 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1565[10]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1565[11]), .D1(GND_net), .CIN(n2233), .COUT(n2234), .S0(count_15__N_114[12]), 
          .S1(count_15__N_114[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_11.INIT0 = 16'hd2d2;
    defparam add_279_11.INIT1 = 16'hd2d2;
    defparam add_279_11.INJECT1_0 = "NO";
    defparam add_279_11.INJECT1_1 = "NO";
    CCU2D add_279_13 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1565[12]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1565[13]), .D1(GND_net), .CIN(n2234), .S0(count_15__N_114[14]), 
          .S1(count_15__N_114[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_13.INIT0 = 16'hd2d2;
    defparam add_279_13.INIT1 = 16'hd2d2;
    defparam add_279_13.INJECT1_0 = "NO";
    defparam add_279_13.INJECT1_1 = "NO";
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
    
    FD1S3AX Q_5 (.D(Q0), .CK(clk_2M5), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
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
    
    FD1S3JX Q_5 (.D(n4), .CK(clk_2M5), .PD(freeprecess_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module comparator_U9
//

module comparator_U9 (gatedcount, \Endof2ndMWpulse[4] , GND_net, \Endof2ndMWpulse[5] , 
            \Endof2ndMWpulse[2] , \Endof2ndMWpulse[3] , n356, \Endof2ndMWpulse[14] , 
            \Endof2ndMWpulse[15] , \Endof2ndMWpulse[12] , \Endof2ndMWpulse[13] , 
            \Endof2ndMWpulse[10] , \Endof2ndMWpulse[11] , \Endof2ndMWpulse[8] , 
            \Endof2ndMWpulse[9] , \Endof2ndMWpulse[6] , \Endof2ndMWpulse[7] ) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input \Endof2ndMWpulse[4] ;
    input GND_net;
    input \Endof2ndMWpulse[5] ;
    input \Endof2ndMWpulse[2] ;
    input \Endof2ndMWpulse[3] ;
    output n356;
    input \Endof2ndMWpulse[14] ;
    input \Endof2ndMWpulse[15] ;
    input \Endof2ndMWpulse[12] ;
    input \Endof2ndMWpulse[13] ;
    input \Endof2ndMWpulse[10] ;
    input \Endof2ndMWpulse[11] ;
    input \Endof2ndMWpulse[8] ;
    input \Endof2ndMWpulse[9] ;
    input \Endof2ndMWpulse[6] ;
    input \Endof2ndMWpulse[7] ;
    
    
    wire n2085, n2086, n2084, n2091, n2090, n2089, n2088, n2087;
    
    CCU2D sub_149_add_2_6 (.A0(gatedcount[4]), .B0(\Endof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2085), .COUT(n2086));
    defparam sub_149_add_2_6.INIT0 = 16'h5999;
    defparam sub_149_add_2_6.INIT1 = 16'h5999;
    defparam sub_149_add_2_6.INJECT1_0 = "NO";
    defparam sub_149_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_149_add_2_4 (.A0(gatedcount[2]), .B0(\Endof2ndMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2084), .COUT(n2085));
    defparam sub_149_add_2_4.INIT0 = 16'h5999;
    defparam sub_149_add_2_4.INIT1 = 16'h5999;
    defparam sub_149_add_2_4.INJECT1_0 = "NO";
    defparam sub_149_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_149_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2084));
    defparam sub_149_add_2_2.INIT0 = 16'h5000;
    defparam sub_149_add_2_2.INIT1 = 16'h5555;
    defparam sub_149_add_2_2.INJECT1_0 = "NO";
    defparam sub_149_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_149_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2091), .S0(n356));
    defparam sub_149_add_2_cout.INIT0 = 16'h0000;
    defparam sub_149_add_2_cout.INIT1 = 16'h0000;
    defparam sub_149_add_2_cout.INJECT1_0 = "NO";
    defparam sub_149_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_149_add_2_16 (.A0(gatedcount[14]), .B0(\Endof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2090), .COUT(n2091));
    defparam sub_149_add_2_16.INIT0 = 16'h5999;
    defparam sub_149_add_2_16.INIT1 = 16'h5999;
    defparam sub_149_add_2_16.INJECT1_0 = "NO";
    defparam sub_149_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_149_add_2_14 (.A0(gatedcount[12]), .B0(\Endof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2089), .COUT(n2090));
    defparam sub_149_add_2_14.INIT0 = 16'h5999;
    defparam sub_149_add_2_14.INIT1 = 16'h5999;
    defparam sub_149_add_2_14.INJECT1_0 = "NO";
    defparam sub_149_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_149_add_2_12 (.A0(gatedcount[10]), .B0(\Endof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2088), .COUT(n2089));
    defparam sub_149_add_2_12.INIT0 = 16'h5999;
    defparam sub_149_add_2_12.INIT1 = 16'h5999;
    defparam sub_149_add_2_12.INJECT1_0 = "NO";
    defparam sub_149_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_149_add_2_10 (.A0(gatedcount[8]), .B0(\Endof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2087), .COUT(n2088));
    defparam sub_149_add_2_10.INIT0 = 16'h5999;
    defparam sub_149_add_2_10.INIT1 = 16'h5999;
    defparam sub_149_add_2_10.INJECT1_0 = "NO";
    defparam sub_149_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_149_add_2_8 (.A0(gatedcount[6]), .B0(\Endof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2086), .COUT(n2087));
    defparam sub_149_add_2_8.INIT0 = 16'h5999;
    defparam sub_149_add_2_8.INIT1 = 16'h5999;
    defparam sub_149_add_2_8.INJECT1_0 = "NO";
    defparam sub_149_add_2_8.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U10
//

module comparator_U10 (gatedcount, \Startof2ndMWpulse[12] , GND_net, \Startof2ndMWpulse[13] , 
            \Startof2ndMWpulse[10] , \Startof2ndMWpulse[11] , \Startof2ndMWpulse[8] , 
            \Startof2ndMWpulse[9] , \Startof2ndMWpulse[6] , \Startof2ndMWpulse[7] , 
            \Startof2ndMWpulse[14] , \Startof2ndMWpulse[15] , \Startof2ndMWpulse[4] , 
            \Startof2ndMWpulse[5] , \Startof2ndMWpulse[2] , \Startof2ndMWpulse[3] , 
            \Startof2ndMWpulse[1] , pi2started) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input \Startof2ndMWpulse[12] ;
    input GND_net;
    input \Startof2ndMWpulse[13] ;
    input \Startof2ndMWpulse[10] ;
    input \Startof2ndMWpulse[11] ;
    input \Startof2ndMWpulse[8] ;
    input \Startof2ndMWpulse[9] ;
    input \Startof2ndMWpulse[6] ;
    input \Startof2ndMWpulse[7] ;
    input \Startof2ndMWpulse[14] ;
    input \Startof2ndMWpulse[15] ;
    input \Startof2ndMWpulse[4] ;
    input \Startof2ndMWpulse[5] ;
    input \Startof2ndMWpulse[2] ;
    input \Startof2ndMWpulse[3] ;
    input \Startof2ndMWpulse[1] ;
    output pi2started;
    
    
    wire n2104, n2105, n2103, n2102, n2101, n2106, n2100, n2099;
    
    CCU2D sub_147_add_2_14 (.A0(gatedcount[12]), .B0(\Startof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Startof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2104), .COUT(n2105));
    defparam sub_147_add_2_14.INIT0 = 16'h5999;
    defparam sub_147_add_2_14.INIT1 = 16'h5999;
    defparam sub_147_add_2_14.INJECT1_0 = "NO";
    defparam sub_147_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_147_add_2_12 (.A0(gatedcount[10]), .B0(\Startof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Startof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2103), .COUT(n2104));
    defparam sub_147_add_2_12.INIT0 = 16'h5999;
    defparam sub_147_add_2_12.INIT1 = 16'h5999;
    defparam sub_147_add_2_12.INJECT1_0 = "NO";
    defparam sub_147_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_147_add_2_10 (.A0(gatedcount[8]), .B0(\Startof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Startof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2102), .COUT(n2103));
    defparam sub_147_add_2_10.INIT0 = 16'h5999;
    defparam sub_147_add_2_10.INIT1 = 16'h5999;
    defparam sub_147_add_2_10.INJECT1_0 = "NO";
    defparam sub_147_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_147_add_2_8 (.A0(gatedcount[6]), .B0(\Startof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Startof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2101), .COUT(n2102));
    defparam sub_147_add_2_8.INIT0 = 16'h5999;
    defparam sub_147_add_2_8.INIT1 = 16'h5999;
    defparam sub_147_add_2_8.INJECT1_0 = "NO";
    defparam sub_147_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_147_add_2_16 (.A0(gatedcount[14]), .B0(\Startof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Startof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2105), .COUT(n2106));
    defparam sub_147_add_2_16.INIT0 = 16'h5999;
    defparam sub_147_add_2_16.INIT1 = 16'h5999;
    defparam sub_147_add_2_16.INJECT1_0 = "NO";
    defparam sub_147_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_147_add_2_6 (.A0(gatedcount[4]), .B0(\Startof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Startof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2100), .COUT(n2101));
    defparam sub_147_add_2_6.INIT0 = 16'h5999;
    defparam sub_147_add_2_6.INIT1 = 16'h5999;
    defparam sub_147_add_2_6.INJECT1_0 = "NO";
    defparam sub_147_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_147_add_2_4 (.A0(gatedcount[2]), .B0(\Startof2ndMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Startof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2099), .COUT(n2100));
    defparam sub_147_add_2_4.INIT0 = 16'h5999;
    defparam sub_147_add_2_4.INIT1 = 16'h5999;
    defparam sub_147_add_2_4.INJECT1_0 = "NO";
    defparam sub_147_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_147_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2099));
    defparam sub_147_add_2_2.INIT0 = 16'h5000;
    defparam sub_147_add_2_2.INIT1 = 16'h5999;
    defparam sub_147_add_2_2.INJECT1_0 = "NO";
    defparam sub_147_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_147_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2106), .S0(pi2started));
    defparam sub_147_add_2_cout.INIT0 = 16'h0000;
    defparam sub_147_add_2_cout.INIT1 = 16'h0000;
    defparam sub_147_add_2_cout.INJECT1_0 = "NO";
    defparam sub_147_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U11
//

module comparator_U11 (gatedcount, \Endof1stMWpulse[10] , GND_net, \Endof1stMWpulse[11] , 
            \Endof1stMWpulse[8] , \Endof1stMWpulse[9] , \Endof1stMWpulse[6] , 
            \Endof1stMWpulse[7] , \Endof1stMWpulse[4] , \Endof1stMWpulse[5] , 
            \Endof1stMWpulse[2] , \Endof1stMWpulse[3] , \Startof2ndMWpulse[1] , 
            \Endof1stMWpulse[12] , \Endof1stMWpulse[13] , \Endof1stMWpulse[14] , 
            \Endof1stMWpulse[15] , n318) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input \Endof1stMWpulse[10] ;
    input GND_net;
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
    input \Endof1stMWpulse[12] ;
    input \Endof1stMWpulse[13] ;
    input \Endof1stMWpulse[14] ;
    input \Endof1stMWpulse[15] ;
    output n318;
    
    
    wire n2217, n2218, n2216, n2215, n2214, n2213, n2219, n2220;
    
    CCU2D sub_145_add_2_12 (.A0(gatedcount[10]), .B0(\Endof1stMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof1stMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2217), .COUT(n2218));
    defparam sub_145_add_2_12.INIT0 = 16'h5999;
    defparam sub_145_add_2_12.INIT1 = 16'h5999;
    defparam sub_145_add_2_12.INJECT1_0 = "NO";
    defparam sub_145_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_145_add_2_10 (.A0(gatedcount[8]), .B0(\Endof1stMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof1stMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2216), .COUT(n2217));
    defparam sub_145_add_2_10.INIT0 = 16'h5999;
    defparam sub_145_add_2_10.INIT1 = 16'h5999;
    defparam sub_145_add_2_10.INJECT1_0 = "NO";
    defparam sub_145_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_145_add_2_8 (.A0(gatedcount[6]), .B0(\Endof1stMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof1stMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2215), .COUT(n2216));
    defparam sub_145_add_2_8.INIT0 = 16'h5999;
    defparam sub_145_add_2_8.INIT1 = 16'h5999;
    defparam sub_145_add_2_8.INJECT1_0 = "NO";
    defparam sub_145_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_145_add_2_6 (.A0(gatedcount[4]), .B0(\Endof1stMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof1stMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2214), .COUT(n2215));
    defparam sub_145_add_2_6.INIT0 = 16'h5999;
    defparam sub_145_add_2_6.INIT1 = 16'h5999;
    defparam sub_145_add_2_6.INJECT1_0 = "NO";
    defparam sub_145_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_145_add_2_4 (.A0(gatedcount[2]), .B0(\Endof1stMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof1stMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2213), .COUT(n2214));
    defparam sub_145_add_2_4.INIT0 = 16'h5999;
    defparam sub_145_add_2_4.INIT1 = 16'h5999;
    defparam sub_145_add_2_4.INJECT1_0 = "NO";
    defparam sub_145_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_145_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2213));
    defparam sub_145_add_2_2.INIT0 = 16'h5000;
    defparam sub_145_add_2_2.INIT1 = 16'h5999;
    defparam sub_145_add_2_2.INJECT1_0 = "NO";
    defparam sub_145_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_145_add_2_14 (.A0(gatedcount[12]), .B0(\Endof1stMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof1stMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2218), .COUT(n2219));
    defparam sub_145_add_2_14.INIT0 = 16'h5999;
    defparam sub_145_add_2_14.INIT1 = 16'h5999;
    defparam sub_145_add_2_14.INJECT1_0 = "NO";
    defparam sub_145_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_145_add_2_16 (.A0(gatedcount[14]), .B0(\Endof1stMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof1stMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2219), .COUT(n2220));
    defparam sub_145_add_2_16.INIT0 = 16'h5999;
    defparam sub_145_add_2_16.INIT1 = 16'h5999;
    defparam sub_145_add_2_16.INJECT1_0 = "NO";
    defparam sub_145_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_145_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2220), .S0(n318));
    defparam sub_145_add_2_cout.INIT0 = 16'h0000;
    defparam sub_145_add_2_cout.INIT1 = 16'h0000;
    defparam sub_145_add_2_cout.INJECT1_0 = "NO";
    defparam sub_145_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U12
//

module comparator_U12 (\gatedcount[10] , \gatedcount[7] , \gatedcount[9] , 
            n1832, \gatedcount[4] , \gatedcount[8] , n2326, \gatedcount[0] , 
            \gatedcount[3] , \gatedcount[2] , \gatedcount[1] , \gatedcount[11] , 
            \gatedcount[13] , \gatedcount[15] , n2323, \gatedcount[12] , 
            \gatedcount[14] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[10] ;
    input \gatedcount[7] ;
    input \gatedcount[9] ;
    output n1832;
    input \gatedcount[4] ;
    input \gatedcount[8] ;
    input n2326;
    input \gatedcount[0] ;
    input \gatedcount[3] ;
    input \gatedcount[2] ;
    input \gatedcount[1] ;
    input \gatedcount[11] ;
    input \gatedcount[13] ;
    input \gatedcount[15] ;
    output n2323;
    input \gatedcount[12] ;
    input \gatedcount[14] ;
    
    
    wire n5, n4, n6;
    
    LUT4 i454_4_lut (.A(n5), .B(\gatedcount[10] ), .C(\gatedcount[7] ), 
         .D(\gatedcount[9] ), .Z(n1832)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i454_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut (.A(\gatedcount[4] ), .B(\gatedcount[8] ), .C(n2326), 
         .D(n4), .Z(n5)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i1_4_lut_adj_8 (.A(\gatedcount[0] ), .B(\gatedcount[3] ), .C(\gatedcount[2] ), 
         .D(\gatedcount[1] ), .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_8.init = 16'hfcec;
    LUT4 i4_4_lut (.A(\gatedcount[11] ), .B(\gatedcount[13] ), .C(\gatedcount[15] ), 
         .D(n6), .Z(n2323)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(\gatedcount[12] ), .B(\gatedcount[14] ), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module five_state_machine
//

module five_state_machine (LED_output_N_9, sampled_modebutton, LED_output_N_6, 
            LED_output_N_7, LED_output_N_8) /* synthesis syn_module_defined=1 */ ;
    output LED_output_N_9;
    input sampled_modebutton;
    output LED_output_N_6;
    output LED_output_N_7;
    output LED_output_N_8;
    
    wire sampled_modebutton /* synthesis is_clock=1, SET_AS_NETWORK=sampled_modebutton */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[6:24])
    
    wire state_2__N_162;
    
    FD1S3AX state_FSM_i1 (.D(state_2__N_162), .CK(sampled_modebutton), .Q(LED_output_N_9));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(57[18:30])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX state_FSM_i5 (.D(LED_output_N_6), .CK(sampled_modebutton), .CD(state_2__N_162), 
            .Q(state_2__N_162));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(57[18:30])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3IX state_FSM_i4 (.D(LED_output_N_7), .CK(sampled_modebutton), .CD(state_2__N_162), 
            .Q(LED_output_N_6));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(57[18:30])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3IX state_FSM_i3 (.D(LED_output_N_8), .CK(sampled_modebutton), .CD(state_2__N_162), 
            .Q(LED_output_N_7));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(57[18:30])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3IX state_FSM_i2 (.D(LED_output_N_9), .CK(sampled_modebutton), .CD(state_2__N_162), 
            .Q(LED_output_N_8));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(57[18:30])
    defparam state_FSM_i2.GSR = "ENABLED";
    
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

module slow_clock_pulse (clk_2M5, slow_pulse, fast_pulse, debounce_pulse, 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    input clk_2M5;
    output slow_pulse;
    output fast_pulse;
    output debounce_pulse;
    input GND_net;
    
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(35[7:21])
    wire [22:0]n170;
    wire [22:0]n97;
    
    wire n2247, n2248, n2249, n2250, n2251, n2252, n2253, n2254, 
        n2255, n2256, n2257;
    
    FD1S3AX count_204__i0 (.D(n97[0]), .CK(clk_2M5), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i0.GSR = "ENABLED";
    FD1S3AX count_204__i22 (.D(n97[22]), .CK(clk_2M5), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i22.GSR = "ENABLED";
    FD1S3AX count_204__i21 (.D(n97[21]), .CK(clk_2M5), .Q(n170[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i21.GSR = "ENABLED";
    FD1S3AX count_204__i20 (.D(n97[20]), .CK(clk_2M5), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i20.GSR = "ENABLED";
    FD1S3AX count_204__i19 (.D(n97[19]), .CK(clk_2M5), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i19.GSR = "ENABLED";
    FD1S3AX count_204__i18 (.D(n97[18]), .CK(clk_2M5), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i18.GSR = "ENABLED";
    FD1S3AX count_204__i17 (.D(n97[17]), .CK(clk_2M5), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i17.GSR = "ENABLED";
    FD1S3AX count_204__i16 (.D(n97[16]), .CK(clk_2M5), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i16.GSR = "ENABLED";
    FD1S3AX count_204__i15 (.D(n97[15]), .CK(clk_2M5), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i15.GSR = "ENABLED";
    FD1S3AX count_204__i14 (.D(n97[14]), .CK(clk_2M5), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i14.GSR = "ENABLED";
    FD1S3AX count_204__i13 (.D(n97[13]), .CK(clk_2M5), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i13.GSR = "ENABLED";
    FD1S3AX count_204__i12 (.D(n97[12]), .CK(clk_2M5), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i12.GSR = "ENABLED";
    FD1S3AX count_204__i11 (.D(n97[11]), .CK(clk_2M5), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i11.GSR = "ENABLED";
    FD1S3AX count_204__i10 (.D(n97[10]), .CK(clk_2M5), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i10.GSR = "ENABLED";
    FD1S3AX count_204__i9 (.D(n97[9]), .CK(clk_2M5), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i9.GSR = "ENABLED";
    FD1S3AX count_204__i8 (.D(n97[8]), .CK(clk_2M5), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i8.GSR = "ENABLED";
    FD1S3AX count_204__i7 (.D(n97[7]), .CK(clk_2M5), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i7.GSR = "ENABLED";
    FD1S3AX count_204__i6 (.D(n97[6]), .CK(clk_2M5), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i6.GSR = "ENABLED";
    FD1S3AX count_204__i5 (.D(n97[5]), .CK(clk_2M5), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i5.GSR = "ENABLED";
    FD1S3AX count_204__i4 (.D(n97[4]), .CK(clk_2M5), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i4.GSR = "ENABLED";
    FD1S3AX count_204__i3 (.D(n97[3]), .CK(clk_2M5), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i3.GSR = "ENABLED";
    FD1S3AX count_204__i2 (.D(n97[2]), .CK(clk_2M5), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i2.GSR = "ENABLED";
    FD1S3AX count_204__i1 (.D(n97[1]), .CK(clk_2M5), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204__i1.GSR = "ENABLED";
    CCU2D count_204_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2247), .S1(n97[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_1.INIT0 = 16'hF000;
    defparam count_204_add_4_1.INIT1 = 16'h0555;
    defparam count_204_add_4_1.INJECT1_0 = "NO";
    defparam count_204_add_4_1.INJECT1_1 = "NO";
    CCU2D count_204_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2247), .COUT(n2248), .S0(n97[1]), .S1(n97[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_3.INIT0 = 16'hfaaa;
    defparam count_204_add_4_3.INIT1 = 16'hfaaa;
    defparam count_204_add_4_3.INJECT1_0 = "NO";
    defparam count_204_add_4_3.INJECT1_1 = "NO";
    CCU2D count_204_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2248), .COUT(n2249), .S0(n97[3]), .S1(n97[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_5.INIT0 = 16'hfaaa;
    defparam count_204_add_4_5.INIT1 = 16'hfaaa;
    defparam count_204_add_4_5.INJECT1_0 = "NO";
    defparam count_204_add_4_5.INJECT1_1 = "NO";
    CCU2D count_204_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2249), .COUT(n2250), .S0(n97[5]), .S1(n97[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_7.INIT0 = 16'hfaaa;
    defparam count_204_add_4_7.INIT1 = 16'hfaaa;
    defparam count_204_add_4_7.INJECT1_0 = "NO";
    defparam count_204_add_4_7.INJECT1_1 = "NO";
    CCU2D count_204_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2250), .COUT(n2251), .S0(n97[7]), .S1(n97[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_9.INIT0 = 16'hfaaa;
    defparam count_204_add_4_9.INIT1 = 16'hfaaa;
    defparam count_204_add_4_9.INJECT1_0 = "NO";
    defparam count_204_add_4_9.INJECT1_1 = "NO";
    CCU2D count_204_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2251), .COUT(n2252), .S0(n97[9]), .S1(n97[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_11.INIT0 = 16'hfaaa;
    defparam count_204_add_4_11.INIT1 = 16'hfaaa;
    defparam count_204_add_4_11.INJECT1_0 = "NO";
    defparam count_204_add_4_11.INJECT1_1 = "NO";
    CCU2D count_204_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2252), .COUT(n2253), .S0(n97[11]), .S1(n97[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_13.INIT0 = 16'hfaaa;
    defparam count_204_add_4_13.INIT1 = 16'hfaaa;
    defparam count_204_add_4_13.INJECT1_0 = "NO";
    defparam count_204_add_4_13.INJECT1_1 = "NO";
    CCU2D count_204_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2253), .COUT(n2254), .S0(n97[13]), .S1(n97[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_15.INIT0 = 16'hfaaa;
    defparam count_204_add_4_15.INIT1 = 16'hfaaa;
    defparam count_204_add_4_15.INJECT1_0 = "NO";
    defparam count_204_add_4_15.INJECT1_1 = "NO";
    CCU2D count_204_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2254), .COUT(n2255), .S0(n97[15]), .S1(n97[16]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_17.INIT0 = 16'hfaaa;
    defparam count_204_add_4_17.INIT1 = 16'hfaaa;
    defparam count_204_add_4_17.INJECT1_0 = "NO";
    defparam count_204_add_4_17.INJECT1_1 = "NO";
    CCU2D count_204_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2255), .COUT(n2256), .S0(n97[17]), .S1(n97[18]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_19.INIT0 = 16'hfaaa;
    defparam count_204_add_4_19.INIT1 = 16'hfaaa;
    defparam count_204_add_4_19.INJECT1_0 = "NO";
    defparam count_204_add_4_19.INJECT1_1 = "NO";
    CCU2D count_204_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2256), .COUT(n2257), .S0(n97[19]), .S1(n97[20]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_21.INIT0 = 16'hfaaa;
    defparam count_204_add_4_21.INIT1 = 16'hfaaa;
    defparam count_204_add_4_21.INJECT1_0 = "NO";
    defparam count_204_add_4_21.INJECT1_1 = "NO";
    CCU2D count_204_add_4_23 (.A0(n170[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2257), .S0(n97[21]), .S1(n97[22]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_204_add_4_23.INIT0 = 16'hfaaa;
    defparam count_204_add_4_23.INIT1 = 16'hfaaa;
    defparam count_204_add_4_23.INJECT1_0 = "NO";
    defparam count_204_add_4_23.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module clocks
//

module clocks (GND_net, debug_0_c, clk_2M5_N_36, clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output debug_0_c;
    output clk_2M5_N_36;
    output clk_2M5;
    
    wire debug_0_c /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    wire clk_2M5_N_36 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(debug_0_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=98, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(69[9:98])
    defparam OSCinst0.NOM_FREQ = "9.85";
    DIV4PLL PLL (.clk_2M5_N_36(clk_2M5_N_36), .clk_2M5(clk_2M5), .debug_0_c(debug_0_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(33[10:58])
    
endmodule
//
// Verilog Description of module DIV4PLL
//

module DIV4PLL (clk_2M5_N_36, clk_2M5, debug_0_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_2M5_N_36;
    output clk_2M5;
    input debug_0_c;
    input GND_net;
    
    wire clk_2M5_N_36 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debug_0_c /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    
    wire CLKFB_t;
    
    INV i557 (.A(clk_2M5), .Z(clk_2M5_N_36));
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
            .PLLADDR4(GND_net), .CLKOP(clk_2M5), .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOP="2.500000", FREQUENCY_PIN_CLKI="10.000000", ICP_CURRENT="10", LPF_RESISTOR="76", syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=58, LSE_LLINE=33, LSE_RLINE=33 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(33[10:58])
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
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211401afe -pmi -lang verilog  */
/* Thu Mar 03 13:59:29 2022 */


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
/* Thu Mar 03 13:59:29 2022 */


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
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211401afe -pmi -lang verilog  */
/* Thu Mar 03 14:05:16 2022 */


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
/* Thu Mar 03 14:05:16 2022 */


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
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211401afe -pmi -lang verilog  */
/* Thu Mar 03 14:06:17 2022 */


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
/* Thu Mar 03 14:06:16 2022 */


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
