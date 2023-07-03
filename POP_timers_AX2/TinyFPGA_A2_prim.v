// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Mon Jul 03 15:50:24 2023
//
// Verilog Description of module TinyFPGA_A2
//

module TinyFPGA_A2 (LED_output, mode_button, pin3_sn, load_default_button, 
            pin5, tenmegclock, topleft_button, topright_button, pin9_jtgnb, 
            bottomleft_button, bottomright_button, debug_16, debug_17, 
            debug_18, pump_output, probe_output, MW_output, sample_output) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(1[8:19])
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
    output debug_16;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    output debug_17;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[9:17])
    output debug_18;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[9:17])
    output pump_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    output probe_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    output MW_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    output sample_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[7:21])
    wire sampled_modebutton /* synthesis SET_AS_NETWORK=sampled_modebutton, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[6:24])
    wire clk_2M5_N_53 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    
    wire GND_net, VCC_net, LED_output_c, mode_button_c, load_default_button_c, 
        topleft_button_c, topright_button_c, bottomleft_button_c, bottomright_button_c, 
        sample_output_c, probe_output_c, pump_output_c, MW_output_c, 
        slow_pulse, medium_pulse, fast_pulse, load_defaults, pieovertwo_plus, 
        freeprecess_plus, pieovertwo_minus, freeprecess_minus;
    wire [2:0]SMstate;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    
    wire mode_button_N_41, load_default_button_N_43, topleft_button_N_45, 
        topright_button_N_47, bottomleft_button_N_49, bottomright_button_N_51, 
        LED_output_N_21, n184, n701, debug_17_N_18, LED_output_N_1, 
        MW_output_N_34, probestarted, samplestarted, n1802, n1801, 
        MW_N_61, state_2__N_179, n1800, n1799, n357, n1745, n1813, 
        n1812, n1811, n1798, n433, n1823, n1810, n1753, n1797, 
        n1796, n471, n1744, n1, n1749, n1750;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX load_defaults_69 (.D(load_default_button_N_43), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam load_defaults_69.GSR = "ENABLED";
    FD1S3AX pieovertwo_plus_70 (.D(topleft_button_N_45), .CK(debounce_pulse), 
            .Q(pieovertwo_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam pieovertwo_plus_70.GSR = "ENABLED";
    FD1S3AX freeprecess_plus_71 (.D(topright_button_N_47), .CK(debounce_pulse), 
            .Q(freeprecess_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam freeprecess_plus_71.GSR = "ENABLED";
    FD1S3AX pieovertwo_minus_72 (.D(bottomleft_button_N_49), .CK(debounce_pulse), 
            .Q(pieovertwo_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam pieovertwo_minus_72.GSR = "ENABLED";
    FD1S3AX freeprecess_minus_73 (.D(bottomright_button_N_51), .CK(debounce_pulse), 
            .Q(freeprecess_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam freeprecess_minus_73.GSR = "ENABLED";
    FD1S3AX LED_output_74 (.D(LED_output_N_1), .CK(debug_16_c), .Q(LED_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam LED_output_74.GSR = "ENABLED";
    FD1S3JX pump_output_75 (.D(n1745), .CK(debug_16_c), .PD(LED_output_N_21), 
            .Q(pump_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam pump_output_75.GSR = "ENABLED";
    LUT4 SMstate_0__bdd_3_lut_618 (.A(slow_pulse), .B(medium_pulse), .C(fast_pulse), 
         .Z(n1810)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam SMstate_0__bdd_3_lut_618.init = 16'h8080;
    FD1S3AX MW_output_77 (.D(MW_output_N_34), .CK(debug_16_c), .Q(MW_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam MW_output_77.GSR = "ENABLED";
    FD1S3AX sampled_modebutton_68 (.D(mode_button_N_41), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam sampled_modebutton_68.GSR = "ENABLED";
    IB mode_button_pad (.I(mode_button), .O(mode_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    PFUMX i610 (.BLUT(n1800), .ALUT(n1798), .C0(SMstate[1]), .Z(n1801));
    OB sample_output_pad (.I(sample_output_c), .O(sample_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    OB MW_output_pad (.I(MW_output_c), .O(MW_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    OB probe_output_pad (.I(probe_output_c), .O(probe_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    LUT4 n1813_bdd_3_lut (.A(n1813), .B(n1812), .C(SMstate[2]), .Z(LED_output_N_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1813_bdd_3_lut.init = 16'hcaca;
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(43[9:13])
    OB pump_output_pad (.I(pump_output_c), .O(pump_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(42[9:16])
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_41)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(56[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
    OB debug_18_pad (.I(probe_output_c), .O(debug_18));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[9:17])
    LUT4 i600_2_lut_rep_7 (.A(SMstate[2]), .B(SMstate[1]), .Z(n1823)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i600_2_lut_rep_7.init = 16'h4444;
    OB debug_17_pad (.I(sample_output_c), .O(debug_17));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[9:17])
    OB debug_16_pad (.I(debug_16_c), .O(debug_16));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    FD1S3JX sample_output_78 (.D(debug_17_N_18), .CK(debug_16_c), .PD(n1753), 
            .Q(sample_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam sample_output_78.GSR = "ENABLED";
    LUT4 i294_1_lut (.A(SMstate[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(84[12:24])
    defparam i294_1_lut.init = 16'h5555;
    POPtimers POPtimers (.GND_net(GND_net), .clk_2M5_N_53(clk_2M5_N_53), 
            .n1744(n1744), .n1745(n1745), .n1749(n1749), .MW_N_61(MW_N_61), 
            .n701(n701), .load_defaults(load_defaults), .debug_16_c(debug_16_c), 
            .n471(n471), .samplestarted(samplestarted), .n433(n433), .probestarted(probestarted), 
            .pieovertwo_minus(pieovertwo_minus), .pieovertwo_plus(pieovertwo_plus), 
            .freeprecess_minus(freeprecess_minus), .freeprecess_plus(freeprecess_plus), 
            .n357(n357)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(50[12:274])
    FD1S3IX probe_output_76 (.D(n184), .CK(debug_16_c), .CD(n1823), .Q(probe_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam probe_output_76.GSR = "ENABLED";
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(44[9:19])
    LUT4 i1_2_lut (.A(SMstate[2]), .B(SMstate[1]), .Z(state_2__N_179)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_49)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(60[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 i12_3_lut (.A(SMstate[1]), .B(SMstate[2]), .C(SMstate[0]), .Z(n701)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam i12_3_lut.init = 16'h9898;
    LUT4 slow_pulse_bdd_3_lut (.A(n1749), .B(n1744), .C(SMstate[2]), .Z(n1798)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam slow_pulse_bdd_3_lut.init = 16'he0e0;
    LUT4 slow_pulse_bdd_4_lut_609 (.A(slow_pulse), .B(SMstate[0]), .C(SMstate[2]), 
         .D(SMstate[1]), .Z(n1797)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam slow_pulse_bdd_4_lut_609.init = 16'h00b0;
    LUT4 n1801_bdd_3_lut (.A(n1801), .B(n1797), .C(n357), .Z(n1802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1801_bdd_3_lut.init = 16'hcaca;
    LUT4 slow_pulse_bdd_4_lut_608 (.A(slow_pulse), .B(SMstate[0]), .C(SMstate[2]), 
         .D(SMstate[1]), .Z(n1796)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B (C (D)+!C !(D))+!B (C))) */ ;
    defparam slow_pulse_bdd_4_lut_608.init = 16'hf0bc;
    LUT4 i595_2_lut_3_lut (.A(SMstate[1]), .B(SMstate[0]), .C(SMstate[2]), 
         .Z(n1753)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(84[12:24])
    defparam i595_2_lut_3_lut.init = 16'h0101;
    LUT4 SMstate_0__bdd_4_lut_634 (.A(SMstate[0]), .B(slow_pulse), .C(SMstate[1]), 
         .D(fast_pulse), .Z(n1813)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam SMstate_0__bdd_4_lut_634.init = 16'h5e0e;
    LUT4 i2_4_lut (.A(SMstate[0]), .B(SMstate[1]), .C(SMstate[2]), .D(n1750), 
         .Z(debug_17_N_18)) /* synthesis lut_function=((B (C)+!B (C+(D)))+!A) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(91[8] 125[7])
    defparam i2_4_lut.init = 16'hf7f5;
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_51)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(61[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_21 (.A(samplestarted), .B(n471), .Z(n1750)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(91[8] 125[7])
    defparam i1_2_lut_adj_21.init = 16'h2222;
    slow_clock_pulse slowclocks (.debug_16_c(debug_16_c), .medium_pulse(medium_pulse), 
            .GND_net(GND_net), .slow_pulse(slow_pulse), .fast_pulse(fast_pulse), 
            .debounce_pulse(debounce_pulse)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(51[19:157])
    IB load_default_button_pad (.I(load_default_button), .O(load_default_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    GSR GSR_INST (.GSR(VCC_net));
    VLO i1 (.Z(GND_net));
    LUT4 slow_pulse_bdd_4_lut (.A(slow_pulse), .B(n1749), .C(n1744), .D(SMstate[2]), 
         .Z(n1799)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam slow_pulse_bdd_4_lut.init = 16'haafc;
    LUT4 i597_2_lut_3_lut (.A(SMstate[2]), .B(SMstate[1]), .C(SMstate[0]), 
         .Z(LED_output_N_21)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i597_2_lut_3_lut.init = 16'h4040;
    n_state_machine statemachine (.SMstate({SMstate}), .sampled_modebutton(sampled_modebutton), 
            .state_2__N_179(state_2__N_179), .n1(n1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(52[18:74])
    LUT4 SMstate_0__bdd_3_lut_630 (.A(SMstate[0]), .B(slow_pulse), .C(fast_pulse), 
         .Z(n1811)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam SMstate_0__bdd_3_lut_630.init = 16'he8e8;
    LUT4 SMstate_2__bdd_3_lut (.A(SMstate[2]), .B(n1799), .C(SMstate[0]), 
         .Z(n1800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam SMstate_2__bdd_3_lut.init = 16'hcaca;
    PFUMX i619 (.BLUT(n1811), .ALUT(n1810), .C0(SMstate[1]), .Z(n1812));
    PFUMX i612 (.BLUT(n1802), .ALUT(n1796), .C0(MW_N_61), .Z(MW_output_N_34));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_43)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_45)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_47)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(59[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    clocks clocks (.clk_2M5_N_53(clk_2M5_N_53), .debug_16_c(debug_16_c), 
           .tenmegclock_c(tenmegclock_c), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(49[9:98])
    IB tenmegclock_pad (.I(tenmegclock), .O(tenmegclock_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    IB topleft_button_pad (.I(topleft_button), .O(topleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    IB topright_button_pad (.I(topright_button), .O(topright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    IB bottomleft_button_pad (.I(bottomleft_button), .O(bottomleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    IB bottomright_button_pad (.I(bottomright_button), .O(bottomright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    LUT4 i456_3_lut (.A(probestarted), .B(n701), .C(n433), .Z(n184)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i456_3_lut.init = 16'h3b3b;
    
endmodule
//
// Verilog Description of module POPtimers
//

module POPtimers (GND_net, clk_2M5_N_53, n1744, n1745, n1749, MW_N_61, 
            n701, load_defaults, debug_16_c, n471, samplestarted, 
            n433, probestarted, pieovertwo_minus, pieovertwo_plus, freeprecess_minus, 
            freeprecess_plus, n357) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_2M5_N_53;
    output n1744;
    output n1745;
    output n1749;
    output MW_N_61;
    input n701;
    input load_defaults;
    input debug_16_c;
    output n471;
    output samplestarted;
    output n433;
    output probestarted;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input freeprecess_minus;
    input freeprecess_plus;
    output n357;
    
    wire clk_2M5_N_53 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    wire [15:0]Startopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[19:37])
    wire [15:0]Resetandrepeat;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[19:33])
    
    wire n1584, n1563;
    wire [15:0]Startofprobepulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[19:36])
    
    wire n1564, n1562, n1566, n1567, n1571;
    wire [15:0]Endof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[19:34])
    
    wire n1572;
    wire [15:0]gatedcount;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire [15:0]count;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[19:24])
    
    wire n1570, n1783, n1569, n1747, n4;
    wire [15:0]Endofopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[19:37])
    
    wire n1576, n1568, n1582, n1578, n1579, n1574, n1581, pi2started, 
        n395, n1580, n1550;
    wire [15:0]Endof1stMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[19:34])
    wire [15:0]AdjustableFreePrecession;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[48:72])
    wire [15:0]Startof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[19:36])
    
    wire n1551, n1577, n1573, n1595;
    wire [15:0]Endofprobepulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[19:34])
    
    wire n1549, n1594, n1593, n1592, n1560;
    wire [15:0]n2;
    
    wire n1591, n1559, n1590, n1589, n1588, n1587, n1586, n1585, 
        n1558, n1557, n1552, n6, n1565;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[26:46])
    
    wire n1548, n1547, loop, counterreset, n1554, n1555, n1556, 
        n1544, n1543, n1542, n1541, n1540, n1539, n1538, n1692, 
        n1693, n1694, n1695, n1696, n1697;
    
    CCU2D Startofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1584), .S1(Resetandrepeat[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_5 (.A0(Startofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1563), .COUT(n1564), .S0(Startopticalsample[7]), 
          .S1(Startopticalsample[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_5.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_3 (.A0(Startofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1562), .COUT(n1563), .S0(Startopticalsample[5]), 
          .S1(Startopticalsample[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_3.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_3.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_11 (.A0(Startofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1566), .COUT(n1567), .S0(Startopticalsample[13]), 
          .S1(Startopticalsample[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_11.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_11.INJECT1_1 = "NO";
    CCU2D add_257_9 (.A0(Endof2ndMWpulse[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1571), .COUT(n1572), .S0(Startofprobepulse[8]), 
          .S1(Startofprobepulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_257_9.INIT0 = 16'h5aaa;
    defparam add_257_9.INIT1 = 16'h5aaa;
    defparam add_257_9.INJECT1_0 = "NO";
    defparam add_257_9.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1562), .S1(Startopticalsample[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__I_0_28_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_1.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clk_2M5_N_53), .Q(gatedcount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D add_257_7 (.A0(Endof2ndMWpulse[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1570), .COUT(n1571), .S0(Startofprobepulse[6]), 
          .S1(Startofprobepulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_257_7.INIT0 = 16'h5aaa;
    defparam add_257_7.INIT1 = 16'h5aaa;
    defparam add_257_7.INJECT1_0 = "NO";
    defparam add_257_7.INJECT1_1 = "NO";
    LUT4 i603_2_lut (.A(n1744), .B(n1783), .Z(n1745)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i603_2_lut.init = 16'h4444;
    CCU2D add_257_5 (.A0(Endof2ndMWpulse[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1569), .COUT(n1570), .S0(Startofprobepulse[4]), 
          .S1(Startofprobepulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_257_5.INIT0 = 16'h5aaa;
    defparam add_257_5.INIT1 = 16'h5aaa;
    defparam add_257_5.INJECT1_0 = "NO";
    defparam add_257_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(gatedcount[4]), .B(n1747), .C(gatedcount[5]), .D(n4), 
         .Z(n1749)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut.init = 16'hc8c0;
    CCU2D add_258_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Resetandrepeat[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1576), .S1(Endofopticalsample[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_258_1.INIT0 = 16'hF000;
    defparam add_258_1.INIT1 = 16'h5555;
    defparam add_258_1.INJECT1_0 = "NO";
    defparam add_258_1.INJECT1_1 = "NO";
    CCU2D add_257_3 (.A0(Endof2ndMWpulse[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1568), .COUT(n1569), .S0(Startopticalsample[2]), 
          .S1(Startopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_257_3.INIT0 = 16'h5aaa;
    defparam add_257_3.INIT1 = 16'h5555;
    defparam add_257_3.INJECT1_0 = "NO";
    defparam add_257_3.INJECT1_1 = "NO";
    CCU2D add_258_15 (.A0(Startopticalsample[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1582), .S0(Endofopticalsample[14]), .S1(Endofopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_258_15.INIT0 = 16'h5aaa;
    defparam add_258_15.INIT1 = 16'h5aaa;
    defparam add_258_15.INJECT1_0 = "NO";
    defparam add_258_15.INJECT1_1 = "NO";
    CCU2D add_258_7 (.A0(Startopticalsample[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1578), .COUT(n1579), .S0(Endofopticalsample[6]), 
          .S1(Endofopticalsample[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_258_7.INIT0 = 16'h5aaa;
    defparam add_258_7.INIT1 = 16'h5aaa;
    defparam add_258_7.INJECT1_0 = "NO";
    defparam add_258_7.INJECT1_1 = "NO";
    CCU2D add_257_15 (.A0(Endof2ndMWpulse[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1574), .S0(Startofprobepulse[14]), .S1(Startofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_257_15.INIT0 = 16'h5aaa;
    defparam add_257_15.INIT1 = 16'h5aaa;
    defparam add_257_15.INJECT1_0 = "NO";
    defparam add_257_15.INJECT1_1 = "NO";
    CCU2D add_258_13 (.A0(Startopticalsample[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1581), .COUT(n1582), .S0(Endofopticalsample[12]), 
          .S1(Endofopticalsample[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_258_13.INIT0 = 16'h5aaa;
    defparam add_258_13.INIT1 = 16'h5aaa;
    defparam add_258_13.INJECT1_0 = "NO";
    defparam add_258_13.INJECT1_1 = "NO";
    LUT4 pi2started_I_0_2_lut (.A(pi2started), .B(n395), .Z(MW_N_61)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(74[41:67])
    defparam pi2started_I_0_2_lut.init = 16'h2222;
    LUT4 i602_4_lut (.A(gatedcount[5]), .B(n701), .C(n1747), .D(gatedcount[4]), 
         .Z(n1783)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;
    defparam i602_4_lut.init = 16'h0c4c;
    CCU2D add_257_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Endof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1568), .S1(Resetandrepeat[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_257_1.INIT0 = 16'hF000;
    defparam add_257_1.INIT1 = 16'h5555;
    defparam add_257_1.INJECT1_0 = "NO";
    defparam add_257_1.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_13 (.A0(Startofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1567), .S0(Startopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_13.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__I_0_28_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_13.INJECT1_1 = "NO";
    CCU2D add_258_11 (.A0(Startopticalsample[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1580), .COUT(n1581), .S0(Endofopticalsample[10]), 
          .S1(Endofopticalsample[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_258_11.INIT0 = 16'h5aaa;
    defparam add_258_11.INIT1 = 16'h5aaa;
    defparam add_258_11.INJECT1_0 = "NO";
    defparam add_258_11.INJECT1_1 = "NO";
    CCU2D add_258_9 (.A0(Startopticalsample[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1579), .COUT(n1580), .S0(Endofopticalsample[8]), 
          .S1(Endofopticalsample[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_258_9.INIT0 = 16'h5aaa;
    defparam add_258_9.INIT1 = 16'h5aaa;
    defparam add_258_9.INJECT1_0 = "NO";
    defparam add_258_9.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_10 (.A0(Endof1stMWpulse[10]), .B0(AdjustableFreePrecession[10]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[11]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1550), .COUT(n1551), .S0(Startof2ndMWpulse[10]), 
          .S1(Startof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_10.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_10.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_10.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_10.INJECT1_1 = "NO";
    CCU2D add_258_5 (.A0(Startopticalsample[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1577), .COUT(n1578), .S0(Endofopticalsample[4]), 
          .S1(Endofopticalsample[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_258_5.INIT0 = 16'h5555;
    defparam add_258_5.INIT1 = 16'h5555;
    defparam add_258_5.INJECT1_0 = "NO";
    defparam add_258_5.INJECT1_1 = "NO";
    CCU2D add_257_13 (.A0(Endof2ndMWpulse[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1573), .COUT(n1574), .S0(Startofprobepulse[12]), 
          .S1(Startofprobepulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_257_13.INIT0 = 16'h5aaa;
    defparam add_257_13.INIT1 = 16'h5aaa;
    defparam add_257_13.INJECT1_0 = "NO";
    defparam add_257_13.INJECT1_1 = "NO";
    CCU2D add_257_11 (.A0(Endof2ndMWpulse[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1572), .COUT(n1573), .S0(Startofprobepulse[10]), 
          .S1(Startofprobepulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_257_11.INIT0 = 16'h5aaa;
    defparam add_257_11.INIT1 = 16'h5aaa;
    defparam add_257_11.INJECT1_0 = "NO";
    defparam add_257_11.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_11 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1595), .S0(Resetandrepeat[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_11.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_8 (.A0(Endof1stMWpulse[8]), .B0(AdjustableFreePrecession[8]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[9]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1549), .COUT(n1550), .S0(Startof2ndMWpulse[8]), 
          .S1(Startof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_8.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_8.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_8.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_8.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_9 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1594), .COUT(n1595), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_7 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1593), .COUT(n1594), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_5 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1592), .COUT(n1593), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D add_317_16 (.A0(n2[14]), .B0(Endof1stMWpulse[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[15]), .B1(Endof1stMWpulse[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1560), .S0(Endof2ndMWpulse[14]), .S1(Endof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_317_16.INIT0 = 16'h5666;
    defparam add_317_16.INIT1 = 16'h5666;
    defparam add_317_16.INJECT1_0 = "NO";
    defparam add_317_16.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_3 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1591), .COUT(n1592), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_317_14 (.A0(n2[12]), .B0(Endof1stMWpulse[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[13]), .B1(Endof1stMWpulse[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1559), .COUT(n1560), .S0(Endof2ndMWpulse[12]), 
          .S1(Endof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_317_14.INIT0 = 16'h5666;
    defparam add_317_14.INIT1 = 16'h5666;
    defparam add_317_14.INJECT1_0 = "NO";
    defparam add_317_14.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1591), .S1(Resetandrepeat[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_15 (.A0(Startofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1590), .S0(Endofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_15.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_13 (.A0(Startofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1589), .COUT(n1590), .S0(Endofprobepulse[13]), 
          .S1(Endofprobepulse[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_13.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D add_258_3 (.A0(Startopticalsample[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1576), .COUT(n1577), .S0(Endofopticalsample[2]), 
          .S1(Endofopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_258_3.INIT0 = 16'h5aaa;
    defparam add_258_3.INIT1 = 16'h5aaa;
    defparam add_258_3.INJECT1_0 = "NO";
    defparam add_258_3.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_11 (.A0(Startofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1588), .COUT(n1589), .S0(Endofprobepulse[11]), 
          .S1(Endofprobepulse[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_9 (.A0(Startofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1587), .COUT(n1588), .S0(Endofprobepulse[9]), 
          .S1(Endofprobepulse[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_7 (.A0(Startofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1586), .COUT(n1587), .S0(Endofprobepulse[7]), 
          .S1(Endofprobepulse[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_5 (.A0(Startofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1585), .COUT(n1586), .S0(Resetandrepeat[5]), 
          .S1(Endofprobepulse[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_3 (.A0(Startopticalsample[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1584), .COUT(n1585), .S0(Resetandrepeat[3]), 
          .S1(Resetandrepeat[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_317_12 (.A0(n2[10]), .B0(Endof1stMWpulse[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[11]), .B1(Endof1stMWpulse[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1558), .COUT(n1559), .S0(Endof2ndMWpulse[10]), 
          .S1(Endof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_317_12.INIT0 = 16'h5666;
    defparam add_317_12.INIT1 = 16'h5666;
    defparam add_317_12.INJECT1_0 = "NO";
    defparam add_317_12.INJECT1_1 = "NO";
    CCU2D add_317_10 (.A0(n2[8]), .B0(Endof1stMWpulse[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[9]), .B1(Endof1stMWpulse[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1557), .COUT(n1558), .S0(Endof2ndMWpulse[8]), 
          .S1(Endof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_317_10.INIT0 = 16'h5666;
    defparam add_317_10.INIT1 = 16'h5666;
    defparam add_317_10.INJECT1_0 = "NO";
    defparam add_317_10.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_12 (.A0(Endof1stMWpulse[12]), .B0(AdjustableFreePrecession[12]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[13]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1551), .COUT(n1552), .S0(Startof2ndMWpulse[12]), 
          .S1(Startof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_12.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_12.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_12.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_12.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(gatedcount[8]), .B(gatedcount[7]), .C(gatedcount[10]), 
         .D(n6), .Z(n1747)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(gatedcount[6]), .B(gatedcount[9]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2D Startofprobepulse_15__I_0_28_9 (.A0(Startofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1565), .COUT(n1566), .S0(Startopticalsample[11]), 
          .S1(Startopticalsample[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_9.INJECT1_1 = "NO";
    LUT4 i528_2_lut (.A(AdjustableFreePrecession[2]), .B(AdjustablePieOverTwo[2]), 
         .Z(n2[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i528_2_lut.init = 16'h6666;
    CCU2D Endof1stMWpulse_15__I_0_6 (.A0(Endof1stMWpulse[6]), .B0(AdjustableFreePrecession[6]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[7]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1548), .COUT(n1549), .S0(Startof2ndMWpulse[6]), 
          .S1(Startof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_6.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_6.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_6.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_6.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_4 (.A0(Endof1stMWpulse[4]), .B0(AdjustableFreePrecession[4]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[5]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1547), .COUT(n1548), .S0(Startof2ndMWpulse[4]), 
          .S1(Startof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_4.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_4.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_4.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_4.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_2 (.A0(Endof1stMWpulse[2]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[3]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n1547), .S1(Startof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_2.INIT0 = 16'h7000;
    defparam Endof1stMWpulse_15__I_0_2.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_2.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_2.INJECT1_1 = "NO";
    LUT4 load_defaults_I_0_2_lut (.A(load_defaults), .B(loop), .Z(counterreset)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(64[24:42])
    defparam load_defaults_I_0_2_lut.init = 16'heeee;
    CCU2D Endof1stMWpulse_15__I_0_14 (.A0(Endof1stMWpulse[14]), .B0(AdjustableFreePrecession[14]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[15]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1552), .S0(Startof2ndMWpulse[14]), 
          .S1(Startof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_14.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_14.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_14.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_14.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clk_2M5_N_53), .Q(gatedcount[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    CCU2D add_317_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(Startof2ndMWpulse[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n1554), .S1(Endof2ndMWpulse[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_317_2.INIT0 = 16'h0000;
    defparam add_317_2.INIT1 = 16'h5666;
    defparam add_317_2.INJECT1_0 = "NO";
    defparam add_317_2.INJECT1_1 = "NO";
    CCU2D add_317_4 (.A0(n2[2]), .B0(Endof1stMWpulse[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[3]), .B1(Endof1stMWpulse[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1554), .COUT(n1555), .S0(Endof2ndMWpulse[2]), 
          .S1(Endof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_317_4.INIT0 = 16'h5666;
    defparam add_317_4.INIT1 = 16'h5666;
    defparam add_317_4.INJECT1_0 = "NO";
    defparam add_317_4.INJECT1_1 = "NO";
    CCU2D add_317_6 (.A0(n2[4]), .B0(Endof1stMWpulse[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[5]), .B1(Endof1stMWpulse[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1555), .COUT(n1556), .S0(Endof2ndMWpulse[4]), 
          .S1(Endof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_317_6.INIT0 = 16'h5666;
    defparam add_317_6.INIT1 = 16'h5666;
    defparam add_317_6.INJECT1_0 = "NO";
    defparam add_317_6.INJECT1_1 = "NO";
    CCU2D add_317_8 (.A0(n2[6]), .B0(Endof1stMWpulse[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[7]), .B1(Endof1stMWpulse[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1556), .COUT(n1557), .S0(Endof2ndMWpulse[6]), 
          .S1(Endof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_317_8.INIT0 = 16'h5666;
    defparam add_317_8.INIT1 = 16'h5666;
    defparam add_317_8.INJECT1_0 = "NO";
    defparam add_317_8.INJECT1_1 = "NO";
    CCU2D add_256_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1544), .S0(Endof1stMWpulse[14]), .S1(Endof1stMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_256_15.INIT0 = 16'hfaaa;
    defparam add_256_15.INIT1 = 16'hfaaa;
    defparam add_256_15.INJECT1_0 = "NO";
    defparam add_256_15.INJECT1_1 = "NO";
    CCU2D add_256_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1543), .COUT(n1544), .S0(Endof1stMWpulse[12]), 
          .S1(Endof1stMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_256_13.INIT0 = 16'hfaaa;
    defparam add_256_13.INIT1 = 16'hfaaa;
    defparam add_256_13.INJECT1_0 = "NO";
    defparam add_256_13.INJECT1_1 = "NO";
    CCU2D add_256_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1542), .COUT(n1543), .S0(Endof1stMWpulse[10]), 
          .S1(Endof1stMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_256_11.INIT0 = 16'h0555;
    defparam add_256_11.INIT1 = 16'hfaaa;
    defparam add_256_11.INJECT1_0 = "NO";
    defparam add_256_11.INJECT1_1 = "NO";
    CCU2D add_256_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1541), .COUT(n1542), .S0(Endof1stMWpulse[8]), 
          .S1(Endof1stMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_256_9.INIT0 = 16'h0555;
    defparam add_256_9.INIT1 = 16'h0555;
    defparam add_256_9.INJECT1_0 = "NO";
    defparam add_256_9.INJECT1_1 = "NO";
    CCU2D add_256_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1540), .COUT(n1541), .S0(Endof1stMWpulse[6]), 
          .S1(Endof1stMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_256_7.INIT0 = 16'h0555;
    defparam add_256_7.INIT1 = 16'h0555;
    defparam add_256_7.INJECT1_0 = "NO";
    defparam add_256_7.INJECT1_1 = "NO";
    CCU2D add_256_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1539), .COUT(n1540), .S0(Endof1stMWpulse[4]), 
          .S1(Endof1stMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_256_5.INIT0 = 16'h0555;
    defparam add_256_5.INIT1 = 16'hfaaa;
    defparam add_256_5.INJECT1_0 = "NO";
    defparam add_256_5.INJECT1_1 = "NO";
    CCU2D add_256_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1538), .COUT(n1539), .S0(Endof1stMWpulse[2]), 
          .S1(Endof1stMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_256_3.INIT0 = 16'hfaaa;
    defparam add_256_3.INIT1 = 16'h0555;
    defparam add_256_3.INJECT1_0 = "NO";
    defparam add_256_3.INJECT1_1 = "NO";
    CCU2D add_256_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1538), .S1(Startof2ndMWpulse[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_256_1.INIT0 = 16'hF000;
    defparam add_256_1.INIT1 = 16'h0555;
    defparam add_256_1.INJECT1_0 = "NO";
    defparam add_256_1.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clk_2M5_N_53), .Q(gatedcount[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clk_2M5_N_53), .Q(gatedcount[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clk_2M5_N_53), .Q(gatedcount[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clk_2M5_N_53), .Q(gatedcount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clk_2M5_N_53), .Q(gatedcount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clk_2M5_N_53), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clk_2M5_N_53), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clk_2M5_N_53), .Q(gatedcount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clk_2M5_N_53), .Q(gatedcount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clk_2M5_N_53), .Q(gatedcount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clk_2M5_N_53), .Q(gatedcount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clk_2M5_N_53), .Q(gatedcount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clk_2M5_N_53), .Q(gatedcount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clk_2M5_N_53), .Q(gatedcount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    CCU2D Startofprobepulse_15__I_0_28_7 (.A0(Startofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1564), .COUT(n1565), .S0(Startopticalsample[9]), 
          .S1(Startopticalsample[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_7.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_304_add_1_2 (.A0(AdjustableFreePrecession[2]), 
          .B0(AdjustablePieOverTwo[2]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[3]), 
          .B1(AdjustablePieOverTwo[3]), .C1(GND_net), .D1(GND_net), .COUT(n1692), 
          .S1(n2[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_2.INIT0 = 16'h7000;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_2.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_2.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_2.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_304_add_1_4 (.A0(AdjustableFreePrecession[4]), 
          .B0(AdjustablePieOverTwo[4]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[5]), 
          .B1(AdjustablePieOverTwo[5]), .C1(GND_net), .D1(GND_net), .CIN(n1692), 
          .COUT(n1693), .S0(n2[4]), .S1(n2[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_4.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_4.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_4.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_4.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_304_add_1_6 (.A0(AdjustableFreePrecession[6]), 
          .B0(AdjustablePieOverTwo[6]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[7]), 
          .B1(AdjustablePieOverTwo[7]), .C1(GND_net), .D1(GND_net), .CIN(n1693), 
          .COUT(n1694), .S0(n2[6]), .S1(n2[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_6.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_6.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_6.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_6.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_304_add_1_8 (.A0(AdjustableFreePrecession[8]), 
          .B0(AdjustablePieOverTwo[8]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[9]), 
          .B1(AdjustablePieOverTwo[9]), .C1(GND_net), .D1(GND_net), .CIN(n1694), 
          .COUT(n1695), .S0(n2[8]), .S1(n2[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_8.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_8.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_8.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_8.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_304_add_1_10 (.A0(AdjustableFreePrecession[10]), 
          .B0(AdjustablePieOverTwo[10]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[11]), 
          .B1(AdjustablePieOverTwo[11]), .C1(GND_net), .D1(GND_net), .CIN(n1695), 
          .COUT(n1696), .S0(n2[10]), .S1(n2[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_10.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_10.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_10.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_10.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_304_add_1_12 (.A0(AdjustableFreePrecession[12]), 
          .B0(AdjustablePieOverTwo[12]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[13]), 
          .B1(AdjustablePieOverTwo[13]), .C1(GND_net), .D1(GND_net), .CIN(n1696), 
          .COUT(n1697), .S0(n2[12]), .S1(n2[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_12.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_12.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_12.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_12.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_304_add_1_14 (.A0(AdjustableFreePrecession[14]), 
          .B0(AdjustablePieOverTwo[14]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[15]), 
          .B1(AdjustablePieOverTwo[15]), .C1(GND_net), .D1(GND_net), .CIN(n1697), 
          .S0(n2[14]), .S1(n2[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_14.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_14.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_14.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_304_add_1_14.INJECT1_1 = "NO";
    count_n systemcounter (.count({count}), .GND_net(GND_net), .debug_16_c(debug_16_c), 
            .counterreset(counterreset)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(48[10:92])
    comparator sample2 (.GND_net(GND_net), .n471(n471), .\gatedcount[14] (gatedcount[14]), 
            .\Endofopticalsample[14] (Endofopticalsample[14]), .\gatedcount[15] (gatedcount[15]), 
            .\Endofopticalsample[15] (Endofopticalsample[15]), .\gatedcount[12] (gatedcount[12]), 
            .\Endofopticalsample[12] (Endofopticalsample[12]), .\gatedcount[13] (gatedcount[13]), 
            .\Endofopticalsample[13] (Endofopticalsample[13]), .\gatedcount[10] (gatedcount[10]), 
            .\Endofopticalsample[10] (Endofopticalsample[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Endofopticalsample[11] (Endofopticalsample[11]), .\gatedcount[8] (gatedcount[8]), 
            .\Endofopticalsample[8] (Endofopticalsample[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Endofopticalsample[9] (Endofopticalsample[9]), .\gatedcount[6] (gatedcount[6]), 
            .\Endofopticalsample[6] (Endofopticalsample[6]), .\gatedcount[7] (gatedcount[7]), 
            .\Endofopticalsample[7] (Endofopticalsample[7]), .\gatedcount[4] (gatedcount[4]), 
            .\Endofopticalsample[4] (Endofopticalsample[4]), .\gatedcount[5] (gatedcount[5]), 
            .\Endofopticalsample[5] (Endofopticalsample[5]), .\gatedcount[2] (gatedcount[2]), 
            .\Endofopticalsample[2] (Endofopticalsample[2]), .\gatedcount[3] (gatedcount[3]), 
            .\Endofopticalsample[3] (Endofopticalsample[3]), .\gatedcount[1] (gatedcount[1]), 
            .\Endofopticalsample[1] (Endofopticalsample[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(58[13:98])
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
    comparator_U5 probe2 (.GND_net(GND_net), .n433(n433), .\gatedcount[14] (gatedcount[14]), 
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
    comparator_U6 probe1 (.\gatedcount[2] (gatedcount[2]), .\Startopticalsample[2] (Startopticalsample[2]), 
            .GND_net(GND_net), .\gatedcount[3] (gatedcount[3]), .\Startopticalsample[3] (Startopticalsample[3]), 
            .\gatedcount[1] (gatedcount[1]), .\Resetandrepeat[1] (Resetandrepeat[1]), 
            .probestarted(probestarted), .\gatedcount[14] (gatedcount[14]), 
            .\Startofprobepulse[14] (Startofprobepulse[14]), .\gatedcount[15] (gatedcount[15]), 
            .\Startofprobepulse[15] (Startofprobepulse[15]), .\gatedcount[12] (gatedcount[12]), 
            .\Startofprobepulse[12] (Startofprobepulse[12]), .\gatedcount[13] (gatedcount[13]), 
            .\Startofprobepulse[13] (Startofprobepulse[13]), .\gatedcount[10] (gatedcount[10]), 
            .\Startofprobepulse[10] (Startofprobepulse[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Startofprobepulse[11] (Startofprobepulse[11]), .\gatedcount[8] (gatedcount[8]), 
            .\Startofprobepulse[8] (Startofprobepulse[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Startofprobepulse[9] (Startofprobepulse[9]), .\gatedcount[6] (gatedcount[6]), 
            .\Startofprobepulse[6] (Startofprobepulse[6]), .\gatedcount[7] (gatedcount[7]), 
            .\Startofprobepulse[7] (Startofprobepulse[7]), .\gatedcount[4] (gatedcount[4]), 
            .\Startofprobepulse[4] (Startofprobepulse[4]), .\gatedcount[5] (gatedcount[5]), 
            .\Startofprobepulse[5] (Startofprobepulse[5])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(55[13:95])
    countupdownpreload piecounter (.GND_net(GND_net), .pieovertwo_minus(pieovertwo_minus), 
            .pieovertwo_plus(pieovertwo_plus), .\AdjustablePieOverTwo[13] (AdjustablePieOverTwo[13]), 
            .\AdjustablePieOverTwo[14] (AdjustablePieOverTwo[14]), .\AdjustablePieOverTwo[9] (AdjustablePieOverTwo[9]), 
            .\AdjustablePieOverTwo[10] (AdjustablePieOverTwo[10]), .\AdjustablePieOverTwo[15] (AdjustablePieOverTwo[15]), 
            .\AdjustablePieOverTwo[11] (AdjustablePieOverTwo[11]), .\AdjustablePieOverTwo[12] (AdjustablePieOverTwo[12]), 
            .\AdjustablePieOverTwo[1] (AdjustablePieOverTwo[1]), .\AdjustablePieOverTwo[2] (AdjustablePieOverTwo[2]), 
            .load_defaults(load_defaults), .\AdjustablePieOverTwo[5] (AdjustablePieOverTwo[5]), 
            .\AdjustablePieOverTwo[6] (AdjustablePieOverTwo[6]), .\AdjustablePieOverTwo[8] (AdjustablePieOverTwo[8]), 
            .\AdjustablePieOverTwo[7] (AdjustablePieOverTwo[7]), .\AdjustablePieOverTwo[4] (AdjustablePieOverTwo[4]), 
            .\AdjustablePieOverTwo[3] (AdjustablePieOverTwo[3]), .debug_16_c(debug_16_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(61[21:199])
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
            .load_defaults(load_defaults), .debug_16_c(debug_16_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(62[21:212])
    comparator_U9 MW4 (.GND_net(GND_net), .n395(n395), .\gatedcount[14] (gatedcount[14]), 
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
    comparator_U11 MW2 (.GND_net(GND_net), .n357(n357), .gatedcount({gatedcount}), 
            .\Endof1stMWpulse[14] (Endof1stMWpulse[14]), .\Endof1stMWpulse[15] (Endof1stMWpulse[15]), 
            .\Endof1stMWpulse[12] (Endof1stMWpulse[12]), .\Endof1stMWpulse[13] (Endof1stMWpulse[13]), 
            .\Endof1stMWpulse[10] (Endof1stMWpulse[10]), .\Endof1stMWpulse[11] (Endof1stMWpulse[11]), 
            .\Endof1stMWpulse[8] (Endof1stMWpulse[8]), .\Endof1stMWpulse[9] (Endof1stMWpulse[9]), 
            .\Endof1stMWpulse[6] (Endof1stMWpulse[6]), .\Endof1stMWpulse[7] (Endof1stMWpulse[7]), 
            .\Endof1stMWpulse[4] (Endof1stMWpulse[4]), .\Endof1stMWpulse[5] (Endof1stMWpulse[5]), 
            .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), .\Endof1stMWpulse[3] (Endof1stMWpulse[3]), 
            .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(52[13:88])
    comparator_U12 MW1 (.\gatedcount[1] (gatedcount[1]), .\gatedcount[3] (gatedcount[3]), 
            .\gatedcount[2] (gatedcount[2]), .n4(n4), .\gatedcount[13] (gatedcount[13]), 
            .\gatedcount[12] (gatedcount[12]), .\gatedcount[11] (gatedcount[11]), 
            .n1744(n1744), .\gatedcount[15] (gatedcount[15]), .\gatedcount[14] (gatedcount[14])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(51[13:90])
    
endmodule
//
// Verilog Description of module count_n
//

module count_n (count, GND_net, debug_16_c, counterreset) /* synthesis syn_module_defined=1 */ ;
    output [15:0]count;
    input GND_net;
    input debug_16_c;
    input counterreset;
    
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    
    wire n1685;
    wire [15:0]n69;
    
    wire n1686, n1684, n1683, n1687, n1688, n1689, n1690;
    
    CCU2D count_261_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1685), .COUT(n1686), .S0(n69[5]), .S1(n69[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261_add_4_7.INIT0 = 16'hfaaa;
    defparam count_261_add_4_7.INIT1 = 16'hfaaa;
    defparam count_261_add_4_7.INJECT1_0 = "NO";
    defparam count_261_add_4_7.INJECT1_1 = "NO";
    CCU2D count_261_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1684), .COUT(n1685), .S0(n69[3]), .S1(n69[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261_add_4_5.INIT0 = 16'hfaaa;
    defparam count_261_add_4_5.INIT1 = 16'hfaaa;
    defparam count_261_add_4_5.INJECT1_0 = "NO";
    defparam count_261_add_4_5.INJECT1_1 = "NO";
    CCU2D count_261_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1683), .COUT(n1684), .S0(n69[1]), .S1(n69[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261_add_4_3.INIT0 = 16'hfaaa;
    defparam count_261_add_4_3.INIT1 = 16'hfaaa;
    defparam count_261_add_4_3.INJECT1_0 = "NO";
    defparam count_261_add_4_3.INJECT1_1 = "NO";
    CCU2D count_261_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1683), .S1(n69[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261_add_4_1.INIT0 = 16'hF000;
    defparam count_261_add_4_1.INIT1 = 16'h0555;
    defparam count_261_add_4_1.INJECT1_0 = "NO";
    defparam count_261_add_4_1.INJECT1_1 = "NO";
    FD1S3DX count_261__i0 (.D(n69[0]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i0.GSR = "ENABLED";
    FD1S3DX count_261__i15 (.D(n69[15]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i15.GSR = "ENABLED";
    FD1S3DX count_261__i14 (.D(n69[14]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i14.GSR = "ENABLED";
    FD1S3DX count_261__i13 (.D(n69[13]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i13.GSR = "ENABLED";
    FD1S3DX count_261__i12 (.D(n69[12]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i12.GSR = "ENABLED";
    FD1S3DX count_261__i11 (.D(n69[11]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i11.GSR = "ENABLED";
    FD1S3DX count_261__i10 (.D(n69[10]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i10.GSR = "ENABLED";
    FD1S3DX count_261__i9 (.D(n69[9]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i9.GSR = "ENABLED";
    FD1S3DX count_261__i8 (.D(n69[8]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i8.GSR = "ENABLED";
    FD1S3DX count_261__i7 (.D(n69[7]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i7.GSR = "ENABLED";
    FD1S3DX count_261__i6 (.D(n69[6]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i6.GSR = "ENABLED";
    FD1S3DX count_261__i5 (.D(n69[5]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i5.GSR = "ENABLED";
    FD1S3DX count_261__i4 (.D(n69[4]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i4.GSR = "ENABLED";
    FD1S3DX count_261__i3 (.D(n69[3]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i3.GSR = "ENABLED";
    FD1S3DX count_261__i2 (.D(n69[2]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i2.GSR = "ENABLED";
    FD1S3DX count_261__i1 (.D(n69[1]), .CK(debug_16_c), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261__i1.GSR = "ENABLED";
    CCU2D count_261_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1686), .COUT(n1687), .S0(n69[7]), .S1(n69[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261_add_4_9.INIT0 = 16'hfaaa;
    defparam count_261_add_4_9.INIT1 = 16'hfaaa;
    defparam count_261_add_4_9.INJECT1_0 = "NO";
    defparam count_261_add_4_9.INJECT1_1 = "NO";
    CCU2D count_261_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1687), .COUT(n1688), .S0(n69[9]), .S1(n69[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261_add_4_11.INIT0 = 16'hfaaa;
    defparam count_261_add_4_11.INIT1 = 16'hfaaa;
    defparam count_261_add_4_11.INJECT1_0 = "NO";
    defparam count_261_add_4_11.INJECT1_1 = "NO";
    CCU2D count_261_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1688), .COUT(n1689), .S0(n69[11]), .S1(n69[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261_add_4_13.INIT0 = 16'hfaaa;
    defparam count_261_add_4_13.INIT1 = 16'hfaaa;
    defparam count_261_add_4_13.INJECT1_0 = "NO";
    defparam count_261_add_4_13.INJECT1_1 = "NO";
    CCU2D count_261_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1689), .COUT(n1690), .S0(n69[13]), .S1(n69[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261_add_4_15.INIT0 = 16'hfaaa;
    defparam count_261_add_4_15.INIT1 = 16'hfaaa;
    defparam count_261_add_4_15.INJECT1_0 = "NO";
    defparam count_261_add_4_15.INJECT1_1 = "NO";
    CCU2D count_261_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1690), .S0(n69[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_261_add_4_17.INIT0 = 16'hfaaa;
    defparam count_261_add_4_17.INIT1 = 16'h0000;
    defparam count_261_add_4_17.INJECT1_0 = "NO";
    defparam count_261_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator
//

module comparator (GND_net, n471, \gatedcount[14] , \Endofopticalsample[14] , 
            \gatedcount[15] , \Endofopticalsample[15] , \gatedcount[12] , 
            \Endofopticalsample[12] , \gatedcount[13] , \Endofopticalsample[13] , 
            \gatedcount[10] , \Endofopticalsample[10] , \gatedcount[11] , 
            \Endofopticalsample[11] , \gatedcount[8] , \Endofopticalsample[8] , 
            \gatedcount[9] , \Endofopticalsample[9] , \gatedcount[6] , 
            \Endofopticalsample[6] , \gatedcount[7] , \Endofopticalsample[7] , 
            \gatedcount[4] , \Endofopticalsample[4] , \gatedcount[5] , 
            \Endofopticalsample[5] , \gatedcount[2] , \Endofopticalsample[2] , 
            \gatedcount[3] , \Endofopticalsample[3] , \gatedcount[1] , 
            \Endofopticalsample[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n471;
    input \gatedcount[14] ;
    input \Endofopticalsample[14] ;
    input \gatedcount[15] ;
    input \Endofopticalsample[15] ;
    input \gatedcount[12] ;
    input \Endofopticalsample[12] ;
    input \gatedcount[13] ;
    input \Endofopticalsample[13] ;
    input \gatedcount[10] ;
    input \Endofopticalsample[10] ;
    input \gatedcount[11] ;
    input \Endofopticalsample[11] ;
    input \gatedcount[8] ;
    input \Endofopticalsample[8] ;
    input \gatedcount[9] ;
    input \Endofopticalsample[9] ;
    input \gatedcount[6] ;
    input \Endofopticalsample[6] ;
    input \gatedcount[7] ;
    input \Endofopticalsample[7] ;
    input \gatedcount[4] ;
    input \Endofopticalsample[4] ;
    input \gatedcount[5] ;
    input \Endofopticalsample[5] ;
    input \gatedcount[2] ;
    input \Endofopticalsample[2] ;
    input \gatedcount[3] ;
    input \Endofopticalsample[3] ;
    input \gatedcount[1] ;
    input \Endofopticalsample[1] ;
    
    
    wire n1603, n1602, n1601, n1600, n1599, n1598, n1597, n1596;
    
    CCU2D sub_203_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1603), .S0(n471));
    defparam sub_203_add_2_cout.INIT0 = 16'h0000;
    defparam sub_203_add_2_cout.INIT1 = 16'h0000;
    defparam sub_203_add_2_cout.INJECT1_0 = "NO";
    defparam sub_203_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endofopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endofopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1602), .COUT(n1603));
    defparam sub_203_add_2_16.INIT0 = 16'h5999;
    defparam sub_203_add_2_16.INIT1 = 16'h5999;
    defparam sub_203_add_2_16.INJECT1_0 = "NO";
    defparam sub_203_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endofopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endofopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1601), .COUT(n1602));
    defparam sub_203_add_2_14.INIT0 = 16'h5999;
    defparam sub_203_add_2_14.INIT1 = 16'h5999;
    defparam sub_203_add_2_14.INJECT1_0 = "NO";
    defparam sub_203_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endofopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endofopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1600), .COUT(n1601));
    defparam sub_203_add_2_12.INIT0 = 16'h5999;
    defparam sub_203_add_2_12.INIT1 = 16'h5999;
    defparam sub_203_add_2_12.INJECT1_0 = "NO";
    defparam sub_203_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endofopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endofopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1599), .COUT(n1600));
    defparam sub_203_add_2_10.INIT0 = 16'h5999;
    defparam sub_203_add_2_10.INIT1 = 16'h5999;
    defparam sub_203_add_2_10.INJECT1_0 = "NO";
    defparam sub_203_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endofopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endofopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1598), .COUT(n1599));
    defparam sub_203_add_2_8.INIT0 = 16'h5999;
    defparam sub_203_add_2_8.INIT1 = 16'h5999;
    defparam sub_203_add_2_8.INJECT1_0 = "NO";
    defparam sub_203_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_6 (.A0(\gatedcount[4] ), .B0(\Endofopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Endofopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1597), .COUT(n1598));
    defparam sub_203_add_2_6.INIT0 = 16'h5999;
    defparam sub_203_add_2_6.INIT1 = 16'h5999;
    defparam sub_203_add_2_6.INJECT1_0 = "NO";
    defparam sub_203_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_4 (.A0(\gatedcount[2] ), .B0(\Endofopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Endofopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1596), .COUT(n1597));
    defparam sub_203_add_2_4.INIT0 = 16'h5999;
    defparam sub_203_add_2_4.INIT1 = 16'h5999;
    defparam sub_203_add_2_4.INJECT1_0 = "NO";
    defparam sub_203_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_203_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Endofopticalsample[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1596));
    defparam sub_203_add_2_2.INIT0 = 16'h0000;
    defparam sub_203_add_2_2.INIT1 = 16'h5999;
    defparam sub_203_add_2_2.INJECT1_0 = "NO";
    defparam sub_203_add_2_2.INJECT1_1 = "NO";
    
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
    
    
    wire n1650, n1649, n1648, n1647, n1646, n1645, n1644, n1643;
    
    CCU2D sub_201_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1650), .S0(samplestarted));
    defparam sub_201_add_2_cout.INIT0 = 16'h0000;
    defparam sub_201_add_2_cout.INIT1 = 16'h0000;
    defparam sub_201_add_2_cout.INJECT1_0 = "NO";
    defparam sub_201_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1649), .COUT(n1650));
    defparam sub_201_add_2_16.INIT0 = 16'h5999;
    defparam sub_201_add_2_16.INIT1 = 16'h5999;
    defparam sub_201_add_2_16.INJECT1_0 = "NO";
    defparam sub_201_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1648), .COUT(n1649));
    defparam sub_201_add_2_14.INIT0 = 16'h5999;
    defparam sub_201_add_2_14.INIT1 = 16'h5999;
    defparam sub_201_add_2_14.INJECT1_0 = "NO";
    defparam sub_201_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1647), .COUT(n1648));
    defparam sub_201_add_2_12.INIT0 = 16'h5999;
    defparam sub_201_add_2_12.INIT1 = 16'h5999;
    defparam sub_201_add_2_12.INJECT1_0 = "NO";
    defparam sub_201_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1646), .COUT(n1647));
    defparam sub_201_add_2_10.INIT0 = 16'h5999;
    defparam sub_201_add_2_10.INIT1 = 16'h5999;
    defparam sub_201_add_2_10.INJECT1_0 = "NO";
    defparam sub_201_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1645), .COUT(n1646));
    defparam sub_201_add_2_8.INIT0 = 16'h5999;
    defparam sub_201_add_2_8.INIT1 = 16'h5999;
    defparam sub_201_add_2_8.INJECT1_0 = "NO";
    defparam sub_201_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1644), .COUT(n1645));
    defparam sub_201_add_2_6.INIT0 = 16'h5999;
    defparam sub_201_add_2_6.INIT1 = 16'h5999;
    defparam sub_201_add_2_6.INJECT1_0 = "NO";
    defparam sub_201_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_4 (.A0(\gatedcount[2] ), .B0(\Startopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1643), .COUT(n1644));
    defparam sub_201_add_2_4.INIT0 = 16'h5999;
    defparam sub_201_add_2_4.INIT1 = 16'h5999;
    defparam sub_201_add_2_4.INJECT1_0 = "NO";
    defparam sub_201_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1643));
    defparam sub_201_add_2_2.INIT0 = 16'h0000;
    defparam sub_201_add_2_2.INIT1 = 16'h5999;
    defparam sub_201_add_2_2.INJECT1_0 = "NO";
    defparam sub_201_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (GND_net, n433, \gatedcount[14] , \Endofprobepulse[14] , 
            \gatedcount[15] , \Endofprobepulse[15] , \gatedcount[12] , 
            \Endofprobepulse[12] , \gatedcount[13] , \Endofprobepulse[13] , 
            \gatedcount[10] , \Endofprobepulse[10] , \gatedcount[11] , 
            \Endofprobepulse[11] , \gatedcount[8] , \Endofprobepulse[8] , 
            \gatedcount[9] , \Endofprobepulse[9] , \gatedcount[6] , \Endofprobepulse[6] , 
            \gatedcount[7] , \Endofprobepulse[7] , \gatedcount[4] , \Resetandrepeat[4] , 
            \gatedcount[5] , \Resetandrepeat[5] , \gatedcount[2] , \Resetandrepeat[2] , 
            \gatedcount[3] , \Resetandrepeat[3] , \gatedcount[1] , \Resetandrepeat[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n433;
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
    
    
    wire n1674, n1673, n1672, n1671, n1670, n1669, n1668, n1667;
    
    CCU2D sub_199_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1674), .S0(n433));
    defparam sub_199_add_2_cout.INIT0 = 16'h0000;
    defparam sub_199_add_2_cout.INIT1 = 16'h0000;
    defparam sub_199_add_2_cout.INJECT1_0 = "NO";
    defparam sub_199_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1673), .COUT(n1674));
    defparam sub_199_add_2_16.INIT0 = 16'h5999;
    defparam sub_199_add_2_16.INIT1 = 16'h5999;
    defparam sub_199_add_2_16.INJECT1_0 = "NO";
    defparam sub_199_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1672), .COUT(n1673));
    defparam sub_199_add_2_14.INIT0 = 16'h5999;
    defparam sub_199_add_2_14.INIT1 = 16'h5999;
    defparam sub_199_add_2_14.INJECT1_0 = "NO";
    defparam sub_199_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1671), .COUT(n1672));
    defparam sub_199_add_2_12.INIT0 = 16'h5999;
    defparam sub_199_add_2_12.INIT1 = 16'h5999;
    defparam sub_199_add_2_12.INJECT1_0 = "NO";
    defparam sub_199_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1670), .COUT(n1671));
    defparam sub_199_add_2_10.INIT0 = 16'h5999;
    defparam sub_199_add_2_10.INIT1 = 16'h5999;
    defparam sub_199_add_2_10.INJECT1_0 = "NO";
    defparam sub_199_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1669), .COUT(n1670));
    defparam sub_199_add_2_8.INIT0 = 16'h5999;
    defparam sub_199_add_2_8.INIT1 = 16'h5999;
    defparam sub_199_add_2_8.INJECT1_0 = "NO";
    defparam sub_199_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_6 (.A0(\gatedcount[4] ), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1668), .COUT(n1669));
    defparam sub_199_add_2_6.INIT0 = 16'h5999;
    defparam sub_199_add_2_6.INIT1 = 16'h5999;
    defparam sub_199_add_2_6.INJECT1_0 = "NO";
    defparam sub_199_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_4 (.A0(\gatedcount[2] ), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1667), .COUT(n1668));
    defparam sub_199_add_2_4.INIT0 = 16'h5999;
    defparam sub_199_add_2_4.INIT1 = 16'h5999;
    defparam sub_199_add_2_4.INJECT1_0 = "NO";
    defparam sub_199_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1667));
    defparam sub_199_add_2_2.INIT0 = 16'h0000;
    defparam sub_199_add_2_2.INIT1 = 16'h5999;
    defparam sub_199_add_2_2.INJECT1_0 = "NO";
    defparam sub_199_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (\gatedcount[2] , \Startopticalsample[2] , GND_net, 
            \gatedcount[3] , \Startopticalsample[3] , \gatedcount[1] , 
            \Resetandrepeat[1] , probestarted, \gatedcount[14] , \Startofprobepulse[14] , 
            \gatedcount[15] , \Startofprobepulse[15] , \gatedcount[12] , 
            \Startofprobepulse[12] , \gatedcount[13] , \Startofprobepulse[13] , 
            \gatedcount[10] , \Startofprobepulse[10] , \gatedcount[11] , 
            \Startofprobepulse[11] , \gatedcount[8] , \Startofprobepulse[8] , 
            \gatedcount[9] , \Startofprobepulse[9] , \gatedcount[6] , 
            \Startofprobepulse[6] , \gatedcount[7] , \Startofprobepulse[7] , 
            \gatedcount[4] , \Startofprobepulse[4] , \gatedcount[5] , 
            \Startofprobepulse[5] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[2] ;
    input \Startopticalsample[2] ;
    input GND_net;
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
    input \gatedcount[6] ;
    input \Startofprobepulse[6] ;
    input \gatedcount[7] ;
    input \Startofprobepulse[7] ;
    input \gatedcount[4] ;
    input \Startofprobepulse[4] ;
    input \gatedcount[5] ;
    input \Startofprobepulse[5] ;
    
    
    wire n1635, n1636, n1642, n1641, n1640, n1639, n1638, n1637;
    
    CCU2D sub_197_add_2_4 (.A0(\gatedcount[2] ), .B0(\Startopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1635), .COUT(n1636));
    defparam sub_197_add_2_4.INIT0 = 16'h5999;
    defparam sub_197_add_2_4.INIT1 = 16'h5999;
    defparam sub_197_add_2_4.INJECT1_0 = "NO";
    defparam sub_197_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1635));
    defparam sub_197_add_2_2.INIT0 = 16'h0000;
    defparam sub_197_add_2_2.INIT1 = 16'h5999;
    defparam sub_197_add_2_2.INJECT1_0 = "NO";
    defparam sub_197_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1642), .S0(probestarted));
    defparam sub_197_add_2_cout.INIT0 = 16'h0000;
    defparam sub_197_add_2_cout.INIT1 = 16'h0000;
    defparam sub_197_add_2_cout.INJECT1_0 = "NO";
    defparam sub_197_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1641), .COUT(n1642));
    defparam sub_197_add_2_16.INIT0 = 16'h5999;
    defparam sub_197_add_2_16.INIT1 = 16'h5999;
    defparam sub_197_add_2_16.INJECT1_0 = "NO";
    defparam sub_197_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1640), .COUT(n1641));
    defparam sub_197_add_2_14.INIT0 = 16'h5999;
    defparam sub_197_add_2_14.INIT1 = 16'h5999;
    defparam sub_197_add_2_14.INJECT1_0 = "NO";
    defparam sub_197_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1639), .COUT(n1640));
    defparam sub_197_add_2_12.INIT0 = 16'h5999;
    defparam sub_197_add_2_12.INIT1 = 16'h5999;
    defparam sub_197_add_2_12.INJECT1_0 = "NO";
    defparam sub_197_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1638), .COUT(n1639));
    defparam sub_197_add_2_10.INIT0 = 16'h5999;
    defparam sub_197_add_2_10.INIT1 = 16'h5999;
    defparam sub_197_add_2_10.INJECT1_0 = "NO";
    defparam sub_197_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1637), .COUT(n1638));
    defparam sub_197_add_2_8.INIT0 = 16'h5999;
    defparam sub_197_add_2_8.INIT1 = 16'h5999;
    defparam sub_197_add_2_8.INJECT1_0 = "NO";
    defparam sub_197_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startofprobepulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startofprobepulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1636), .COUT(n1637));
    defparam sub_197_add_2_6.INIT0 = 16'h5999;
    defparam sub_197_add_2_6.INIT1 = 16'h5999;
    defparam sub_197_add_2_6.INJECT1_0 = "NO";
    defparam sub_197_add_2_6.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (GND_net, pieovertwo_minus, pieovertwo_plus, 
            \AdjustablePieOverTwo[13] , \AdjustablePieOverTwo[14] , \AdjustablePieOverTwo[9] , 
            \AdjustablePieOverTwo[10] , \AdjustablePieOverTwo[15] , \AdjustablePieOverTwo[11] , 
            \AdjustablePieOverTwo[12] , \AdjustablePieOverTwo[1] , \AdjustablePieOverTwo[2] , 
            load_defaults, \AdjustablePieOverTwo[5] , \AdjustablePieOverTwo[6] , 
            \AdjustablePieOverTwo[8] , \AdjustablePieOverTwo[7] , \AdjustablePieOverTwo[4] , 
            \AdjustablePieOverTwo[3] , debug_16_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input pieovertwo_minus;
    input pieovertwo_plus;
    output \AdjustablePieOverTwo[13] ;
    output \AdjustablePieOverTwo[14] ;
    output \AdjustablePieOverTwo[9] ;
    output \AdjustablePieOverTwo[10] ;
    output \AdjustablePieOverTwo[15] ;
    output \AdjustablePieOverTwo[11] ;
    output \AdjustablePieOverTwo[12] ;
    output \AdjustablePieOverTwo[1] ;
    output \AdjustablePieOverTwo[2] ;
    input load_defaults;
    output \AdjustablePieOverTwo[5] ;
    output \AdjustablePieOverTwo[6] ;
    output \AdjustablePieOverTwo[8] ;
    output \AdjustablePieOverTwo[7] ;
    output \AdjustablePieOverTwo[4] ;
    output \AdjustablePieOverTwo[3] ;
    input debug_16_c;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    
    wire n1523, n1529;
    wire [14:0]n1291;
    
    wire n1530, n1527, n1528;
    wire [15:0]count_15__N_131;
    
    wire n1524, n4, n1525, n1526, n1699, n1700, n1701, n1702, 
        n1703, n1704, n1705;
    
    CCU2D add_250_302_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(GND_net), 
          .D1(GND_net), .COUT(n1523));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_302_add_1_1.INIT0 = 16'hF000;
    defparam add_250_302_add_1_1.INIT1 = 16'hdddd;
    defparam add_250_302_add_1_1.INJECT1_0 = "NO";
    defparam add_250_302_add_1_1.INJECT1_1 = "NO";
    CCU2D add_250_302_add_1_15 (.A0(\AdjustablePieOverTwo[13] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[14] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1529), .COUT(n1530), 
          .S0(n1291[12]), .S1(n1291[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_302_add_1_15.INIT0 = 16'h5aaa;
    defparam add_250_302_add_1_15.INIT1 = 16'h5aaa;
    defparam add_250_302_add_1_15.INJECT1_0 = "NO";
    defparam add_250_302_add_1_15.INJECT1_1 = "NO";
    CCU2D add_250_302_add_1_11 (.A0(\AdjustablePieOverTwo[9] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[10] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1527), .COUT(n1528), 
          .S0(n1291[8]), .S1(n1291[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_302_add_1_11.INIT0 = 16'h5aaa;
    defparam add_250_302_add_1_11.INIT1 = 16'h5aaa;
    defparam add_250_302_add_1_11.INJECT1_0 = "NO";
    defparam add_250_302_add_1_11.INJECT1_1 = "NO";
    CCU2D add_250_302_add_1_17 (.A0(\AdjustablePieOverTwo[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1530), .S0(n1291[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_302_add_1_17.INIT0 = 16'h5aaa;
    defparam add_250_302_add_1_17.INIT1 = 16'h0000;
    defparam add_250_302_add_1_17.INJECT1_0 = "NO";
    defparam add_250_302_add_1_17.INJECT1_1 = "NO";
    CCU2D add_250_302_add_1_13 (.A0(\AdjustablePieOverTwo[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[12] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1528), .COUT(n1529), 
          .S0(n1291[10]), .S1(n1291[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_302_add_1_13.INIT0 = 16'h5aaa;
    defparam add_250_302_add_1_13.INIT1 = 16'h5aaa;
    defparam add_250_302_add_1_13.INJECT1_0 = "NO";
    defparam add_250_302_add_1_13.INJECT1_1 = "NO";
    CCU2D add_250_302_add_1_3 (.A0(\AdjustablePieOverTwo[1] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[2] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1523), .COUT(n1524), 
          .S0(count_15__N_131[1]), .S1(n1291[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_302_add_1_3.INIT0 = 16'h5666;
    defparam add_250_302_add_1_3.INIT1 = 16'h5aaa;
    defparam add_250_302_add_1_3.INJECT1_0 = "NO";
    defparam add_250_302_add_1_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(pieovertwo_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX count_i15 (.D(count_15__N_131[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[15] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    CCU2D add_250_302_add_1_7 (.A0(\AdjustablePieOverTwo[5] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[6] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1525), .COUT(n1526), 
          .S0(n1291[4]), .S1(n1291[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_302_add_1_7.INIT0 = 16'h5aaa;
    defparam add_250_302_add_1_7.INIT1 = 16'h5aaa;
    defparam add_250_302_add_1_7.INJECT1_0 = "NO";
    defparam add_250_302_add_1_7.INJECT1_1 = "NO";
    FD1S3IX count_i14 (.D(count_15__N_131[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[14] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_131[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[13] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_131[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[12] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_131[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[11] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_131[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[10] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_131[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_131[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_131[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3IX count_i6 (.D(count_15__N_131[6]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_131[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_131[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_131[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_131[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    FD1S3JX count_i1 (.D(count_15__N_131[1]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i1.GSR = "ENABLED";
    CCU2D add_250_302_add_1_9 (.A0(\AdjustablePieOverTwo[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[8] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1526), .COUT(n1527), 
          .S0(n1291[6]), .S1(n1291[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_302_add_1_9.INIT0 = 16'h5aaa;
    defparam add_250_302_add_1_9.INIT1 = 16'h5aaa;
    defparam add_250_302_add_1_9.INJECT1_0 = "NO";
    defparam add_250_302_add_1_9.INJECT1_1 = "NO";
    CCU2D add_250_302_add_1_5 (.A0(\AdjustablePieOverTwo[3] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[4] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1524), .COUT(n1525), 
          .S0(n1291[2]), .S1(n1291[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_302_add_1_5.INIT0 = 16'h5666;
    defparam add_250_302_add_1_5.INIT1 = 16'h5aaa;
    defparam add_250_302_add_1_5.INJECT1_0 = "NO";
    defparam add_250_302_add_1_5.INJECT1_1 = "NO";
    CCU2D add_320_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1291[1]), 
          .D1(GND_net), .COUT(n1699), .S1(count_15__N_131[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_320_1.INIT0 = 16'hF000;
    defparam add_320_1.INIT1 = 16'hd2d2;
    defparam add_320_1.INJECT1_0 = "NO";
    defparam add_320_1.INJECT1_1 = "NO";
    CCU2D add_320_3 (.A0(n1291[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1291[3]), 
          .D1(GND_net), .CIN(n1699), .COUT(n1700), .S0(count_15__N_131[3]), 
          .S1(count_15__N_131[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_320_3.INIT0 = 16'h5aaa;
    defparam add_320_3.INIT1 = 16'hd2d2;
    defparam add_320_3.INJECT1_0 = "NO";
    defparam add_320_3.INJECT1_1 = "NO";
    CCU2D add_320_5 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1291[4]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1291[5]), 
          .D1(GND_net), .CIN(n1700), .COUT(n1701), .S0(count_15__N_131[5]), 
          .S1(count_15__N_131[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_320_5.INIT0 = 16'hd2d2;
    defparam add_320_5.INIT1 = 16'hd2d2;
    defparam add_320_5.INJECT1_0 = "NO";
    defparam add_320_5.INJECT1_1 = "NO";
    CCU2D add_320_7 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1291[6]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1291[7]), 
          .D1(GND_net), .CIN(n1701), .COUT(n1702), .S0(count_15__N_131[7]), 
          .S1(count_15__N_131[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_320_7.INIT0 = 16'hd2d2;
    defparam add_320_7.INIT1 = 16'hd2d2;
    defparam add_320_7.INJECT1_0 = "NO";
    defparam add_320_7.INJECT1_1 = "NO";
    CCU2D add_320_9 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1291[8]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1291[9]), 
          .D1(GND_net), .CIN(n1702), .COUT(n1703), .S0(count_15__N_131[9]), 
          .S1(count_15__N_131[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_320_9.INIT0 = 16'hd2d2;
    defparam add_320_9.INIT1 = 16'hd2d2;
    defparam add_320_9.INJECT1_0 = "NO";
    defparam add_320_9.INJECT1_1 = "NO";
    CCU2D add_320_11 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1291[10]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1291[11]), 
          .D1(GND_net), .CIN(n1703), .COUT(n1704), .S0(count_15__N_131[11]), 
          .S1(count_15__N_131[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_320_11.INIT0 = 16'hd2d2;
    defparam add_320_11.INIT1 = 16'hd2d2;
    defparam add_320_11.INJECT1_0 = "NO";
    defparam add_320_11.INJECT1_1 = "NO";
    CCU2D add_320_13 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1291[12]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1291[13]), 
          .D1(GND_net), .CIN(n1704), .COUT(n1705), .S0(count_15__N_131[13]), 
          .S1(count_15__N_131[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_320_13.INIT0 = 16'hd2d2;
    defparam add_320_13.INIT1 = 16'hd2d2;
    defparam add_320_13.INJECT1_0 = "NO";
    defparam add_320_13.INJECT1_1 = "NO";
    CCU2D add_320_15 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1291[14]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1705), .S0(count_15__N_131[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_320_15.INIT0 = 16'hd2d2;
    defparam add_320_15.INIT1 = 16'h0000;
    defparam add_320_15.INJECT1_0 = "NO";
    defparam add_320_15.INJECT1_1 = "NO";
    single_period_pulse clean_trigger (.trigger(trigger), .debug_16_c(debug_16_c), 
            .pieovertwo_minus(pieovertwo_minus), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[22:92])
    
endmodule
//
// Verilog Description of module single_period_pulse
//

module single_period_pulse (trigger, debug_16_c, pieovertwo_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output trigger;
    input debug_16_c;
    input pieovertwo_minus;
    input n4;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    
    wire Q0, Q1;
    
    LUT4 Q0_I_0_2_lut (.A(Q0), .B(Q1), .Z(trigger)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(55[15:25])
    defparam Q0_I_0_2_lut.init = 16'h2222;
    d_flip_flop stage1_ff (.Q1(Q1), .debug_16_c(debug_16_c), .Q0(Q0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(52[14:51])
    d_flip_flop_U0 stage0_ff (.Q0(Q0), .debug_16_c(debug_16_c), .pieovertwo_minus(pieovertwo_minus), 
            .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(51[14:51])
    
endmodule
//
// Verilog Description of module d_flip_flop
//

module d_flip_flop (Q1, debug_16_c, Q0) /* synthesis syn_module_defined=1 */ ;
    output Q1;
    input debug_16_c;
    input Q0;
    
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    
    FD1S3AX Q_5 (.D(Q0), .CK(debug_16_c), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module d_flip_flop_U0
//

module d_flip_flop_U0 (Q0, debug_16_c, pieovertwo_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output Q0;
    input debug_16_c;
    input pieovertwo_minus;
    input n4;
    
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    
    FD1S3JX Q_5 (.D(n4), .CK(debug_16_c), .PD(pieovertwo_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
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
    
    
    wire n1682, n1681, n1680, n1679, n1678, n1677, n1676, n1675;
    
    CCU2D sub_205_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1682), .S0(loop));
    defparam sub_205_add_2_cout.INIT0 = 16'h0000;
    defparam sub_205_add_2_cout.INIT1 = 16'h0000;
    defparam sub_205_add_2_cout.INJECT1_0 = "NO";
    defparam sub_205_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_16 (.A0(\gatedcount[14] ), .B0(\Resetandrepeat[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Resetandrepeat[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1681), .COUT(n1682));
    defparam sub_205_add_2_16.INIT0 = 16'h5999;
    defparam sub_205_add_2_16.INIT1 = 16'h5999;
    defparam sub_205_add_2_16.INJECT1_0 = "NO";
    defparam sub_205_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_14 (.A0(\gatedcount[12] ), .B0(\Resetandrepeat[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Resetandrepeat[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1680), .COUT(n1681));
    defparam sub_205_add_2_14.INIT0 = 16'h5999;
    defparam sub_205_add_2_14.INIT1 = 16'h5999;
    defparam sub_205_add_2_14.INJECT1_0 = "NO";
    defparam sub_205_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_12 (.A0(\gatedcount[10] ), .B0(\Resetandrepeat[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Resetandrepeat[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1679), .COUT(n1680));
    defparam sub_205_add_2_12.INIT0 = 16'h5999;
    defparam sub_205_add_2_12.INIT1 = 16'h5999;
    defparam sub_205_add_2_12.INJECT1_0 = "NO";
    defparam sub_205_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_10 (.A0(\gatedcount[8] ), .B0(\Resetandrepeat[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Resetandrepeat[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1678), .COUT(n1679));
    defparam sub_205_add_2_10.INIT0 = 16'h5999;
    defparam sub_205_add_2_10.INIT1 = 16'h5999;
    defparam sub_205_add_2_10.INJECT1_0 = "NO";
    defparam sub_205_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_8 (.A0(\gatedcount[6] ), .B0(\Resetandrepeat[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Resetandrepeat[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1677), .COUT(n1678));
    defparam sub_205_add_2_8.INIT0 = 16'h5999;
    defparam sub_205_add_2_8.INIT1 = 16'h5999;
    defparam sub_205_add_2_8.INJECT1_0 = "NO";
    defparam sub_205_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_6 (.A0(\gatedcount[4] ), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1676), .COUT(n1677));
    defparam sub_205_add_2_6.INIT0 = 16'h5999;
    defparam sub_205_add_2_6.INIT1 = 16'h5999;
    defparam sub_205_add_2_6.INJECT1_0 = "NO";
    defparam sub_205_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_4 (.A0(\gatedcount[2] ), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1675), .COUT(n1676));
    defparam sub_205_add_2_4.INIT0 = 16'h5999;
    defparam sub_205_add_2_4.INIT1 = 16'h5999;
    defparam sub_205_add_2_4.INJECT1_0 = "NO";
    defparam sub_205_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1675));
    defparam sub_205_add_2_2.INIT0 = 16'h0000;
    defparam sub_205_add_2_2.INIT1 = 16'h5999;
    defparam sub_205_add_2_2.INJECT1_0 = "NO";
    defparam sub_205_add_2_2.INJECT1_1 = "NO";
    
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
            load_defaults, debug_16_c) /* synthesis syn_module_defined=1 */ ;
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
    input debug_16_c;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    
    wire n1536;
    wire [13:0]n1275;
    wire [15:0]count_15__N_131;
    
    wire n1535, n1534, n1621, n1533, n1620, n1619, n1618, n1617, 
        n1616, n1532, n1615, n1531, n4;
    
    CCU2D add_321_13 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1275[12]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1275[13]), .D1(GND_net), .CIN(n1536), .S0(count_15__N_131[14]), 
          .S1(count_15__N_131[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_321_13.INIT0 = 16'hd2d2;
    defparam add_321_13.INIT1 = 16'hd2d2;
    defparam add_321_13.INJECT1_0 = "NO";
    defparam add_321_13.INJECT1_1 = "NO";
    CCU2D add_321_11 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1275[10]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1275[11]), .D1(GND_net), .CIN(n1535), .COUT(n1536), .S0(count_15__N_131[12]), 
          .S1(count_15__N_131[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_321_11.INIT0 = 16'hd2d2;
    defparam add_321_11.INIT1 = 16'hd2d2;
    defparam add_321_11.INJECT1_0 = "NO";
    defparam add_321_11.INJECT1_1 = "NO";
    CCU2D add_321_9 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1275[8]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1275[9]), .D1(GND_net), .CIN(n1534), .COUT(n1535), .S0(count_15__N_131[10]), 
          .S1(count_15__N_131[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_321_9.INIT0 = 16'hd2d2;
    defparam add_321_9.INIT1 = 16'hd2d2;
    defparam add_321_9.INJECT1_0 = "NO";
    defparam add_321_9.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_15 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1621), .S0(n1275[12]), 
          .S1(n1275[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_15.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_15.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_15.INJECT1_0 = "NO";
    defparam add_254_306_add_1_15.INJECT1_1 = "NO";
    CCU2D add_321_7 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1275[6]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1275[7]), .D1(GND_net), .CIN(n1533), .COUT(n1534), .S0(count_15__N_131[8]), 
          .S1(count_15__N_131[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_321_7.INIT0 = 16'hd2d2;
    defparam add_321_7.INIT1 = 16'hd2d2;
    defparam add_321_7.INJECT1_0 = "NO";
    defparam add_321_7.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_13 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1620), .COUT(n1621), 
          .S0(n1275[10]), .S1(n1275[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_13.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_13.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_13.INJECT1_0 = "NO";
    defparam add_254_306_add_1_13.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_11 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1619), .COUT(n1620), 
          .S0(n1275[8]), .S1(n1275[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_11.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_11.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_11.INJECT1_0 = "NO";
    defparam add_254_306_add_1_11.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_9 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1618), .COUT(n1619), 
          .S0(n1275[6]), .S1(n1275[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_9.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_9.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_9.INJECT1_0 = "NO";
    defparam add_254_306_add_1_9.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_7 (.A0(\AdjustableFreePrecession[6] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1617), .COUT(n1618), 
          .S0(n1275[4]), .S1(n1275[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_7.INIT0 = 16'h5666;
    defparam add_254_306_add_1_7.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_7.INJECT1_0 = "NO";
    defparam add_254_306_add_1_7.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_5 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), 
          .B1(freeprecess_plus), .C1(GND_net), .D1(GND_net), .CIN(n1616), 
          .COUT(n1617), .S0(n1275[2]), .S1(n1275[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_5.INIT0 = 16'h5aaa;
    defparam add_254_306_add_1_5.INIT1 = 16'h5666;
    defparam add_254_306_add_1_5.INJECT1_0 = "NO";
    defparam add_254_306_add_1_5.INJECT1_1 = "NO";
    CCU2D add_321_5 (.A0(n1275[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1275[5]), 
          .D1(GND_net), .CIN(n1532), .COUT(n1533), .S0(count_15__N_131[6]), 
          .S1(count_15__N_131[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_321_5.INIT0 = 16'h5aaa;
    defparam add_321_5.INIT1 = 16'hd2d2;
    defparam add_321_5.INJECT1_0 = "NO";
    defparam add_321_5.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_3 (.A0(\AdjustableFreePrecession[2] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[3] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1615), .COUT(n1616), 
          .S0(count_15__N_131[2]), .S1(n1275[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_3.INIT0 = 16'h5666;
    defparam add_254_306_add_1_3.INIT1 = 16'h5aaa;
    defparam add_254_306_add_1_3.INJECT1_0 = "NO";
    defparam add_254_306_add_1_3.INJECT1_1 = "NO";
    CCU2D add_321_3 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1275[2]), 
          .D0(GND_net), .A1(n1275[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1531), .COUT(n1532), .S0(count_15__N_131[4]), .S1(count_15__N_131[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_321_3.INIT0 = 16'hd2d2;
    defparam add_321_3.INIT1 = 16'h5aaa;
    defparam add_321_3.INJECT1_0 = "NO";
    defparam add_321_3.INJECT1_1 = "NO";
    CCU2D add_321_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1275[1]), 
          .D1(GND_net), .COUT(n1531), .S1(count_15__N_131[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_321_1.INIT0 = 16'hF000;
    defparam add_321_1.INIT1 = 16'hd2d2;
    defparam add_321_1.INJECT1_0 = "NO";
    defparam add_321_1.INJECT1_1 = "NO";
    CCU2D add_254_306_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(GND_net), .D1(GND_net), .COUT(n1615));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_306_add_1_1.INIT0 = 16'hF000;
    defparam add_254_306_add_1_1.INIT1 = 16'hdddd;
    defparam add_254_306_add_1_1.INJECT1_0 = "NO";
    defparam add_254_306_add_1_1.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_131[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[15] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_131[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[14] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3JX count_i13 (.D(count_15__N_131[13]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[13] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_131[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[12] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_131[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[11] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3JX count_i10 (.D(count_15__N_131[10]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[10] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_131[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_131[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_131[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3IX count_i6 (.D(count_15__N_131[6]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_131[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_131[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3IX count_i3 (.D(count_15__N_131[3]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_131[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(freeprecess_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    single_period_pulse_U3 clean_trigger (.trigger(trigger), .debug_16_c(debug_16_c), 
            .freeprecess_minus(freeprecess_minus), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[22:92])
    
endmodule
//
// Verilog Description of module single_period_pulse_U3
//

module single_period_pulse_U3 (trigger, debug_16_c, freeprecess_minus, 
            n4) /* synthesis syn_module_defined=1 */ ;
    output trigger;
    input debug_16_c;
    input freeprecess_minus;
    input n4;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    
    wire Q0, Q1;
    
    LUT4 Q0_I_0_2_lut (.A(Q0), .B(Q1), .Z(trigger)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(55[15:25])
    defparam Q0_I_0_2_lut.init = 16'h2222;
    d_flip_flop_U1 stage1_ff (.Q1(Q1), .debug_16_c(debug_16_c), .Q0(Q0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(52[14:51])
    d_flip_flop_U2 stage0_ff (.Q0(Q0), .debug_16_c(debug_16_c), .freeprecess_minus(freeprecess_minus), 
            .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(51[14:51])
    
endmodule
//
// Verilog Description of module d_flip_flop_U1
//

module d_flip_flop_U1 (Q1, debug_16_c, Q0) /* synthesis syn_module_defined=1 */ ;
    output Q1;
    input debug_16_c;
    input Q0;
    
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    
    FD1S3AX Q_5 (.D(Q0), .CK(debug_16_c), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module d_flip_flop_U2
//

module d_flip_flop_U2 (Q0, debug_16_c, freeprecess_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output Q0;
    input debug_16_c;
    input freeprecess_minus;
    input n4;
    
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    
    FD1S3JX Q_5 (.D(n4), .CK(debug_16_c), .PD(freeprecess_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module comparator_U9
//

module comparator_U9 (GND_net, n395, \gatedcount[14] , \Endof2ndMWpulse[14] , 
            \gatedcount[15] , \Endof2ndMWpulse[15] , \gatedcount[12] , 
            \Endof2ndMWpulse[12] , \gatedcount[13] , \Endof2ndMWpulse[13] , 
            \gatedcount[10] , \Endof2ndMWpulse[10] , \gatedcount[11] , 
            \Endof2ndMWpulse[11] , \gatedcount[8] , \Endof2ndMWpulse[8] , 
            \gatedcount[9] , \Endof2ndMWpulse[9] , \gatedcount[6] , \Endof2ndMWpulse[6] , 
            \gatedcount[7] , \Endof2ndMWpulse[7] , \gatedcount[4] , \Endof2ndMWpulse[4] , 
            \gatedcount[5] , \Endof2ndMWpulse[5] , \gatedcount[2] , \Endof2ndMWpulse[2] , 
            \gatedcount[3] , \Endof2ndMWpulse[3] , \gatedcount[1] , \Endof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n395;
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
    
    
    wire n1658, n1657, n1656, n1655, n1654, n1653, n1652, n1651;
    
    CCU2D sub_195_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1658), .S0(n395));
    defparam sub_195_add_2_cout.INIT0 = 16'h0000;
    defparam sub_195_add_2_cout.INIT1 = 16'h0000;
    defparam sub_195_add_2_cout.INJECT1_0 = "NO";
    defparam sub_195_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1657), .COUT(n1658));
    defparam sub_195_add_2_16.INIT0 = 16'h5999;
    defparam sub_195_add_2_16.INIT1 = 16'h5999;
    defparam sub_195_add_2_16.INJECT1_0 = "NO";
    defparam sub_195_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1656), .COUT(n1657));
    defparam sub_195_add_2_14.INIT0 = 16'h5999;
    defparam sub_195_add_2_14.INIT1 = 16'h5999;
    defparam sub_195_add_2_14.INJECT1_0 = "NO";
    defparam sub_195_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1655), .COUT(n1656));
    defparam sub_195_add_2_12.INIT0 = 16'h5999;
    defparam sub_195_add_2_12.INIT1 = 16'h5999;
    defparam sub_195_add_2_12.INJECT1_0 = "NO";
    defparam sub_195_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1654), .COUT(n1655));
    defparam sub_195_add_2_10.INIT0 = 16'h5999;
    defparam sub_195_add_2_10.INIT1 = 16'h5999;
    defparam sub_195_add_2_10.INJECT1_0 = "NO";
    defparam sub_195_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1653), .COUT(n1654));
    defparam sub_195_add_2_8.INIT0 = 16'h5999;
    defparam sub_195_add_2_8.INIT1 = 16'h5999;
    defparam sub_195_add_2_8.INJECT1_0 = "NO";
    defparam sub_195_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_6 (.A0(\gatedcount[4] ), .B0(\Endof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Endof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1652), .COUT(n1653));
    defparam sub_195_add_2_6.INIT0 = 16'h5999;
    defparam sub_195_add_2_6.INIT1 = 16'h5999;
    defparam sub_195_add_2_6.INJECT1_0 = "NO";
    defparam sub_195_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_4 (.A0(\gatedcount[2] ), .B0(\Endof2ndMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Endof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1651), .COUT(n1652));
    defparam sub_195_add_2_4.INIT0 = 16'h5999;
    defparam sub_195_add_2_4.INIT1 = 16'h5999;
    defparam sub_195_add_2_4.INJECT1_0 = "NO";
    defparam sub_195_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Endof2ndMWpulse[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1651));
    defparam sub_195_add_2_2.INIT0 = 16'h0000;
    defparam sub_195_add_2_2.INIT1 = 16'h5999;
    defparam sub_195_add_2_2.INJECT1_0 = "NO";
    defparam sub_195_add_2_2.INJECT1_1 = "NO";
    
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
    
    
    wire n1666, n1665, n1664, n1663, n1662, n1661, n1660, n1659;
    
    CCU2D sub_193_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1666), .S0(pi2started));
    defparam sub_193_add_2_cout.INIT0 = 16'h0000;
    defparam sub_193_add_2_cout.INIT1 = 16'h0000;
    defparam sub_193_add_2_cout.INJECT1_0 = "NO";
    defparam sub_193_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_16 (.A0(gatedcount[14]), .B0(\Startof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Startof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1665), .COUT(n1666));
    defparam sub_193_add_2_16.INIT0 = 16'h5999;
    defparam sub_193_add_2_16.INIT1 = 16'h5999;
    defparam sub_193_add_2_16.INJECT1_0 = "NO";
    defparam sub_193_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_14 (.A0(gatedcount[12]), .B0(\Startof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Startof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1664), .COUT(n1665));
    defparam sub_193_add_2_14.INIT0 = 16'h5999;
    defparam sub_193_add_2_14.INIT1 = 16'h5999;
    defparam sub_193_add_2_14.INJECT1_0 = "NO";
    defparam sub_193_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_12 (.A0(gatedcount[10]), .B0(\Startof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Startof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1663), .COUT(n1664));
    defparam sub_193_add_2_12.INIT0 = 16'h5999;
    defparam sub_193_add_2_12.INIT1 = 16'h5999;
    defparam sub_193_add_2_12.INJECT1_0 = "NO";
    defparam sub_193_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_10 (.A0(gatedcount[8]), .B0(\Startof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Startof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1662), .COUT(n1663));
    defparam sub_193_add_2_10.INIT0 = 16'h5999;
    defparam sub_193_add_2_10.INIT1 = 16'h5999;
    defparam sub_193_add_2_10.INJECT1_0 = "NO";
    defparam sub_193_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_8 (.A0(gatedcount[6]), .B0(\Startof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Startof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1661), .COUT(n1662));
    defparam sub_193_add_2_8.INIT0 = 16'h5999;
    defparam sub_193_add_2_8.INIT1 = 16'h5999;
    defparam sub_193_add_2_8.INJECT1_0 = "NO";
    defparam sub_193_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_6 (.A0(gatedcount[4]), .B0(\Startof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Startof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1660), .COUT(n1661));
    defparam sub_193_add_2_6.INIT0 = 16'h5999;
    defparam sub_193_add_2_6.INIT1 = 16'h5999;
    defparam sub_193_add_2_6.INJECT1_0 = "NO";
    defparam sub_193_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_4 (.A0(\Endof1stMWpulse[2] ), .B0(\AdjustableFreePrecession[2] ), 
          .C0(gatedcount[2]), .D0(GND_net), .A1(gatedcount[3]), .B1(\Startof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1659), .COUT(n1660));
    defparam sub_193_add_2_4.INIT0 = 16'h6969;
    defparam sub_193_add_2_4.INIT1 = 16'h5999;
    defparam sub_193_add_2_4.INJECT1_0 = "NO";
    defparam sub_193_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n1659));
    defparam sub_193_add_2_2.INIT0 = 16'h5000;
    defparam sub_193_add_2_2.INIT1 = 16'h5999;
    defparam sub_193_add_2_2.INJECT1_0 = "NO";
    defparam sub_193_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U11
//

module comparator_U11 (GND_net, n357, gatedcount, \Endof1stMWpulse[14] , 
            \Endof1stMWpulse[15] , \Endof1stMWpulse[12] , \Endof1stMWpulse[13] , 
            \Endof1stMWpulse[10] , \Endof1stMWpulse[11] , \Endof1stMWpulse[8] , 
            \Endof1stMWpulse[9] , \Endof1stMWpulse[6] , \Endof1stMWpulse[7] , 
            \Endof1stMWpulse[4] , \Endof1stMWpulse[5] , \Endof1stMWpulse[2] , 
            \Endof1stMWpulse[3] , \Startof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n357;
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
    
    
    wire n1611, n1610, n1609, n1608, n1607, n1606, n1605, n1604;
    
    CCU2D sub_191_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1611), .S0(n357));
    defparam sub_191_add_2_cout.INIT0 = 16'h0000;
    defparam sub_191_add_2_cout.INIT1 = 16'h0000;
    defparam sub_191_add_2_cout.INJECT1_0 = "NO";
    defparam sub_191_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_191_add_2_16 (.A0(gatedcount[14]), .B0(\Endof1stMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof1stMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1610), .COUT(n1611));
    defparam sub_191_add_2_16.INIT0 = 16'h5999;
    defparam sub_191_add_2_16.INIT1 = 16'h5999;
    defparam sub_191_add_2_16.INJECT1_0 = "NO";
    defparam sub_191_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_191_add_2_14 (.A0(gatedcount[12]), .B0(\Endof1stMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof1stMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1609), .COUT(n1610));
    defparam sub_191_add_2_14.INIT0 = 16'h5999;
    defparam sub_191_add_2_14.INIT1 = 16'h5999;
    defparam sub_191_add_2_14.INJECT1_0 = "NO";
    defparam sub_191_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_191_add_2_12 (.A0(gatedcount[10]), .B0(\Endof1stMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof1stMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1608), .COUT(n1609));
    defparam sub_191_add_2_12.INIT0 = 16'h5999;
    defparam sub_191_add_2_12.INIT1 = 16'h5999;
    defparam sub_191_add_2_12.INJECT1_0 = "NO";
    defparam sub_191_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_191_add_2_10 (.A0(gatedcount[8]), .B0(\Endof1stMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof1stMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1607), .COUT(n1608));
    defparam sub_191_add_2_10.INIT0 = 16'h5999;
    defparam sub_191_add_2_10.INIT1 = 16'h5999;
    defparam sub_191_add_2_10.INJECT1_0 = "NO";
    defparam sub_191_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_191_add_2_8 (.A0(gatedcount[6]), .B0(\Endof1stMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof1stMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1606), .COUT(n1607));
    defparam sub_191_add_2_8.INIT0 = 16'h5999;
    defparam sub_191_add_2_8.INIT1 = 16'h5999;
    defparam sub_191_add_2_8.INJECT1_0 = "NO";
    defparam sub_191_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_191_add_2_6 (.A0(gatedcount[4]), .B0(\Endof1stMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof1stMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1605), .COUT(n1606));
    defparam sub_191_add_2_6.INIT0 = 16'h5999;
    defparam sub_191_add_2_6.INIT1 = 16'h5999;
    defparam sub_191_add_2_6.INJECT1_0 = "NO";
    defparam sub_191_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_191_add_2_4 (.A0(gatedcount[2]), .B0(\Endof1stMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof1stMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1604), .COUT(n1605));
    defparam sub_191_add_2_4.INIT0 = 16'h5999;
    defparam sub_191_add_2_4.INIT1 = 16'h5999;
    defparam sub_191_add_2_4.INJECT1_0 = "NO";
    defparam sub_191_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_191_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n1604));
    defparam sub_191_add_2_2.INIT0 = 16'h5000;
    defparam sub_191_add_2_2.INIT1 = 16'h5999;
    defparam sub_191_add_2_2.INJECT1_0 = "NO";
    defparam sub_191_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U12
//

module comparator_U12 (\gatedcount[1] , \gatedcount[3] , \gatedcount[2] , 
            n4, \gatedcount[13] , \gatedcount[12] , \gatedcount[11] , 
            n1744, \gatedcount[15] , \gatedcount[14] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[1] ;
    input \gatedcount[3] ;
    input \gatedcount[2] ;
    output n4;
    input \gatedcount[13] ;
    input \gatedcount[12] ;
    input \gatedcount[11] ;
    output n1744;
    input \gatedcount[15] ;
    input \gatedcount[14] ;
    
    
    wire n6;
    
    LUT4 i1_3_lut (.A(\gatedcount[1] ), .B(\gatedcount[3] ), .C(\gatedcount[2] ), 
         .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i4_4_lut (.A(\gatedcount[13] ), .B(\gatedcount[12] ), .C(\gatedcount[11] ), 
         .D(n6), .Z(n1744)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(\gatedcount[15] ), .B(\gatedcount[14] ), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module slow_clock_pulse
//

module slow_clock_pulse (debug_16_c, medium_pulse, GND_net, slow_pulse, 
            fast_pulse, debounce_pulse) /* synthesis syn_module_defined=1 */ ;
    input debug_16_c;
    output medium_pulse;
    input GND_net;
    output slow_pulse;
    output fast_pulse;
    output debounce_pulse;
    
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[7:21])
    wire [22:0]n170;
    wire [22:0]n97;
    
    wire n1633, n1632, n1631, n1630, n1629, n1628, n1627, n1626, 
        n1625, n1624, n1623;
    
    FD1S3AX count_259__i2 (.D(n97[2]), .CK(debug_16_c), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i2.GSR = "ENABLED";
    FD1S3AX count_259__i0 (.D(n97[0]), .CK(debug_16_c), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i0.GSR = "ENABLED";
    CCU2D count_259_add_4_23 (.A0(medium_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1633), .S0(n97[21]), .S1(n97[22]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_23.INIT0 = 16'hfaaa;
    defparam count_259_add_4_23.INIT1 = 16'hfaaa;
    defparam count_259_add_4_23.INJECT1_0 = "NO";
    defparam count_259_add_4_23.INJECT1_1 = "NO";
    CCU2D count_259_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1632), .COUT(n1633), .S0(n97[19]), .S1(n97[20]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_21.INIT0 = 16'hfaaa;
    defparam count_259_add_4_21.INIT1 = 16'hfaaa;
    defparam count_259_add_4_21.INJECT1_0 = "NO";
    defparam count_259_add_4_21.INJECT1_1 = "NO";
    CCU2D count_259_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1631), .COUT(n1632), .S0(n97[17]), .S1(n97[18]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_19.INIT0 = 16'hfaaa;
    defparam count_259_add_4_19.INIT1 = 16'hfaaa;
    defparam count_259_add_4_19.INJECT1_0 = "NO";
    defparam count_259_add_4_19.INJECT1_1 = "NO";
    CCU2D count_259_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1630), .COUT(n1631), .S0(n97[15]), .S1(n97[16]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_17.INIT0 = 16'hfaaa;
    defparam count_259_add_4_17.INIT1 = 16'hfaaa;
    defparam count_259_add_4_17.INJECT1_0 = "NO";
    defparam count_259_add_4_17.INJECT1_1 = "NO";
    CCU2D count_259_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1629), .COUT(n1630), .S0(n97[13]), .S1(n97[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_15.INIT0 = 16'hfaaa;
    defparam count_259_add_4_15.INIT1 = 16'hfaaa;
    defparam count_259_add_4_15.INJECT1_0 = "NO";
    defparam count_259_add_4_15.INJECT1_1 = "NO";
    CCU2D count_259_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1628), .COUT(n1629), .S0(n97[11]), .S1(n97[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_13.INIT0 = 16'hfaaa;
    defparam count_259_add_4_13.INIT1 = 16'hfaaa;
    defparam count_259_add_4_13.INJECT1_0 = "NO";
    defparam count_259_add_4_13.INJECT1_1 = "NO";
    CCU2D count_259_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1627), .COUT(n1628), .S0(n97[9]), .S1(n97[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_11.INIT0 = 16'hfaaa;
    defparam count_259_add_4_11.INIT1 = 16'hfaaa;
    defparam count_259_add_4_11.INJECT1_0 = "NO";
    defparam count_259_add_4_11.INJECT1_1 = "NO";
    CCU2D count_259_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1626), .COUT(n1627), .S0(n97[7]), .S1(n97[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_9.INIT0 = 16'hfaaa;
    defparam count_259_add_4_9.INIT1 = 16'hfaaa;
    defparam count_259_add_4_9.INJECT1_0 = "NO";
    defparam count_259_add_4_9.INJECT1_1 = "NO";
    CCU2D count_259_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1625), .COUT(n1626), .S0(n97[5]), .S1(n97[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_7.INIT0 = 16'hfaaa;
    defparam count_259_add_4_7.INIT1 = 16'hfaaa;
    defparam count_259_add_4_7.INJECT1_0 = "NO";
    defparam count_259_add_4_7.INJECT1_1 = "NO";
    CCU2D count_259_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1624), .COUT(n1625), .S0(n97[3]), .S1(n97[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_5.INIT0 = 16'hfaaa;
    defparam count_259_add_4_5.INIT1 = 16'hfaaa;
    defparam count_259_add_4_5.INJECT1_0 = "NO";
    defparam count_259_add_4_5.INJECT1_1 = "NO";
    CCU2D count_259_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1623), .COUT(n1624), .S0(n97[1]), .S1(n97[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_3.INIT0 = 16'hfaaa;
    defparam count_259_add_4_3.INIT1 = 16'hfaaa;
    defparam count_259_add_4_3.INJECT1_0 = "NO";
    defparam count_259_add_4_3.INJECT1_1 = "NO";
    CCU2D count_259_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1623), .S1(n97[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259_add_4_1.INIT0 = 16'hF000;
    defparam count_259_add_4_1.INIT1 = 16'h0555;
    defparam count_259_add_4_1.INJECT1_0 = "NO";
    defparam count_259_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_259__i1 (.D(n97[1]), .CK(debug_16_c), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i1.GSR = "ENABLED";
    FD1S3AX count_259__i22 (.D(n97[22]), .CK(debug_16_c), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i22.GSR = "ENABLED";
    FD1S3AX count_259__i21 (.D(n97[21]), .CK(debug_16_c), .Q(medium_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i21.GSR = "ENABLED";
    FD1S3AX count_259__i20 (.D(n97[20]), .CK(debug_16_c), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i20.GSR = "ENABLED";
    FD1S3AX count_259__i19 (.D(n97[19]), .CK(debug_16_c), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i19.GSR = "ENABLED";
    FD1S3AX count_259__i18 (.D(n97[18]), .CK(debug_16_c), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i18.GSR = "ENABLED";
    FD1S3AX count_259__i17 (.D(n97[17]), .CK(debug_16_c), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i17.GSR = "ENABLED";
    FD1S3AX count_259__i16 (.D(n97[16]), .CK(debug_16_c), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i16.GSR = "ENABLED";
    FD1S3AX count_259__i15 (.D(n97[15]), .CK(debug_16_c), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i15.GSR = "ENABLED";
    FD1S3AX count_259__i14 (.D(n97[14]), .CK(debug_16_c), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i14.GSR = "ENABLED";
    FD1S3AX count_259__i13 (.D(n97[13]), .CK(debug_16_c), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i13.GSR = "ENABLED";
    FD1S3AX count_259__i12 (.D(n97[12]), .CK(debug_16_c), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i12.GSR = "ENABLED";
    FD1S3AX count_259__i11 (.D(n97[11]), .CK(debug_16_c), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i11.GSR = "ENABLED";
    FD1S3AX count_259__i10 (.D(n97[10]), .CK(debug_16_c), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i10.GSR = "ENABLED";
    FD1S3AX count_259__i9 (.D(n97[9]), .CK(debug_16_c), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i9.GSR = "ENABLED";
    FD1S3AX count_259__i8 (.D(n97[8]), .CK(debug_16_c), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i8.GSR = "ENABLED";
    FD1S3AX count_259__i7 (.D(n97[7]), .CK(debug_16_c), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i7.GSR = "ENABLED";
    FD1S3AX count_259__i6 (.D(n97[6]), .CK(debug_16_c), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i6.GSR = "ENABLED";
    FD1S3AX count_259__i5 (.D(n97[5]), .CK(debug_16_c), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i5.GSR = "ENABLED";
    FD1S3AX count_259__i4 (.D(n97[4]), .CK(debug_16_c), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i4.GSR = "ENABLED";
    FD1S3AX count_259__i3 (.D(n97[3]), .CK(debug_16_c), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_259__i3.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module n_state_machine
//

module n_state_machine (SMstate, sampled_modebutton, state_2__N_179, n1) /* synthesis syn_module_defined=1 */ ;
    output [2:0]SMstate;
    input sampled_modebutton;
    input state_2__N_179;
    input n1;
    
    wire sampled_modebutton /* synthesis SET_AS_NETWORK=sampled_modebutton, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[6:24])
    wire [2:0]n17;
    
    FD1S3IX state_260__i2 (.D(n17[2]), .CK(sampled_modebutton), .CD(state_2__N_179), 
            .Q(SMstate[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_260__i2.GSR = "ENABLED";
    LUT4 i510_2_lut (.A(SMstate[1]), .B(SMstate[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i510_2_lut.init = 16'h6666;
    LUT4 i517_3_lut (.A(SMstate[2]), .B(SMstate[1]), .C(SMstate[0]), .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i517_3_lut.init = 16'h6a6a;
    FD1S3IX state_260__i1 (.D(n17[1]), .CK(sampled_modebutton), .CD(state_2__N_179), 
            .Q(SMstate[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_260__i1.GSR = "ENABLED";
    FD1S3IX state_260__i0 (.D(n1), .CK(sampled_modebutton), .CD(state_2__N_179), 
            .Q(SMstate[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_260__i0.GSR = "ENABLED";
    
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
// Verilog Description of module clocks
//

module clocks (clk_2M5_N_53, debug_16_c, tenmegclock_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_2M5_N_53;
    output debug_16_c;
    input tenmegclock_c;
    input GND_net;
    
    wire clk_2M5_N_53 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    
    DIV4PLL PLL (.clk_2M5_N_53(clk_2M5_N_53), .debug_16_c(debug_16_c), .tenmegclock_c(tenmegclock_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(42[10:60])
    
endmodule
//
// Verilog Description of module DIV4PLL
//

module DIV4PLL (clk_2M5_N_53, debug_16_c, tenmegclock_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_2M5_N_53;
    output debug_16_c;
    input tenmegclock_c;
    input GND_net;
    
    wire clk_2M5_N_53 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire debug_16_c /* synthesis SET_AS_NETWORK=debug_16_c, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:17])
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    
    wire CLKFB_t;
    
    INV i639 (.A(debug_16_c), .Z(clk_2M5_N_53));
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
            .PLLADDR4(GND_net), .CLKOP(debug_16_c), .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOP="2.500000", FREQUENCY_PIN_CLKI="10.000000", ICP_CURRENT="10", LPF_RESISTOR="76", syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=60, LSE_LLINE=42, LSE_RLINE=42 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(42[10:60])
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
