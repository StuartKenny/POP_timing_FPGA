// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Thu Jul 20 14:46:18 2023
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
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(29[18:28])
    
    wire GND_net, VCC_net, LED_output_c, mode_button_c, load_default_button_c, 
        topleft_button_c, topright_button_c, bottomleft_button_c, bottomright_button_c, 
        MW_invalid_c, ADC_sample_c, laser_tuning_c, pump_output_c, probe_output_c, 
        MW_output_c, sample_output_c, slow_pulse, medium_pulse, fast_pulse, 
        load_defaults, pieovertwo_plus, freeprecess_plus, pieovertwo_minus, 
        freeprecess_minus;
    wire [2:0]SMstate;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    
    wire mode_button_N_55, load_default_button_N_57, topleft_button_N_59, 
        topright_button_N_61, bottomleft_button_N_63, bottomright_button_N_65, 
        ADC_sample_N_19, n4, n2124, LED_output_N_1, pump_output_N_22, 
        probe_output_N_32, MW_output_N_40, sample_output_N_48;
    wire [15:0]gatedcount;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(29[18:28])
    
    wire probestarted, n2119, n2118, n2092, MW_N_75, n2091, n2053, 
        n389, n2127, n465, n2054, n2050, n2105, n2104, n2103, 
        n2102, n1700, n2101, n2126, n2059, n2100, n2125;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX load_defaults_83 (.D(load_default_button_N_57), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[8] 66[6])
    defparam load_defaults_83.GSR = "ENABLED";
    FD1S3AX pieovertwo_plus_84 (.D(topleft_button_N_59), .CK(debounce_pulse), 
            .Q(pieovertwo_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[8] 66[6])
    defparam pieovertwo_plus_84.GSR = "ENABLED";
    FD1S3AX freeprecess_plus_85 (.D(topright_button_N_61), .CK(debounce_pulse), 
            .Q(freeprecess_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[8] 66[6])
    defparam freeprecess_plus_85.GSR = "ENABLED";
    FD1S3AX pieovertwo_minus_86 (.D(bottomleft_button_N_63), .CK(debounce_pulse), 
            .Q(pieovertwo_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[8] 66[6])
    defparam pieovertwo_minus_86.GSR = "ENABLED";
    FD1S3AX freeprecess_minus_87 (.D(bottomright_button_N_65), .CK(debounce_pulse), 
            .Q(freeprecess_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[8] 66[6])
    defparam freeprecess_minus_87.GSR = "ENABLED";
    FD1S3AX ADC_sample_88 (.D(ADC_sample_N_19), .CK(clk_2M5), .Q(ADC_sample_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 140[5])
    defparam ADC_sample_88.GSR = "ENABLED";
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_61)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(63[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    IB tenmegclock_pad (.I(tenmegclock), .O(tenmegclock_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    FD1S3AX LED_output_89 (.D(LED_output_N_1), .CK(clk_2M5), .Q(LED_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 140[5])
    defparam LED_output_89.GSR = "ENABLED";
    IB load_default_button_pad (.I(load_default_button), .O(load_default_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    LUT4 i1_4_lut (.A(gatedcount[4]), .B(n2059), .C(n2053), .D(gatedcount[5]), 
         .Z(n2050)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    FD1S3AX pump_output_90 (.D(pump_output_N_22), .CK(clk_2M5), .Q(pump_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 140[5])
    defparam pump_output_90.GSR = "ENABLED";
    FD1S3AX probe_output_91 (.D(probe_output_N_32), .CK(clk_2M5), .Q(probe_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 140[5])
    defparam probe_output_91.GSR = "ENABLED";
    FD1S3AX MW_output_92 (.D(MW_output_N_40), .CK(clk_2M5), .Q(MW_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 140[5])
    defparam MW_output_92.GSR = "ENABLED";
    FD1S3AX sample_output_93 (.D(sample_output_N_48), .CK(clk_2M5), .Q(sample_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 140[5])
    defparam sample_output_93.GSR = "ENABLED";
    FD1S3AX sampled_modebutton_82 (.D(mode_button_N_55), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[8] 66[6])
    defparam sampled_modebutton_82.GSR = "ENABLED";
    LUT4 SMstate_2__bdd_3_lut (.A(SMstate[1]), .B(fast_pulse), .C(slow_pulse), 
         .Z(n2103)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam SMstate_2__bdd_3_lut.init = 16'ha8a8;
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(44[9:13])
    LUT4 SMstate_1__bdd_4_lut_892 (.A(SMstate[2]), .B(SMstate[0]), .C(n1700), 
         .D(laser_tuning_c), .Z(n2119)) /* synthesis lut_function=(A (B)+!A !(B+((D)+!C))) */ ;
    defparam SMstate_1__bdd_4_lut_892.init = 16'h8898;
    LUT4 i1_4_lut_adj_27 (.A(gatedcount[13]), .B(gatedcount[15]), .C(n4), 
         .D(gatedcount[12]), .Z(n2059)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_27.init = 16'hfffe;
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(43[9:16])
    IB mode_button_pad (.I(mode_button), .O(mode_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    OB sample_output_pad (.I(sample_output_c), .O(sample_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    OB MW_output_pad (.I(MW_output_c), .O(MW_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    OB probe_output_pad (.I(probe_output_c), .O(probe_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    L6MUX21 i869 (.D0(n2105), .D1(n2102), .SD(SMstate[0]), .Z(LED_output_N_1));
    OB pump_output_pad (.I(pump_output_c), .O(pump_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    OB ADC_sample_pad (.I(ADC_sample_c), .O(ADC_sample));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[13:23])
    PFUMX i867 (.BLUT(n2104), .ALUT(n2103), .C0(SMstate[2]), .Z(n2105));
    POPtimers POPtimers (.GND_net(GND_net), .clk_2M5_N_67(clk_2M5_N_67), 
            .MW_invalid_c(MW_invalid_c), .load_defaults(load_defaults), 
            .MW_N_75(MW_N_75), .\gatedcount[15] (gatedcount[15]), .\gatedcount[13] (gatedcount[13]), 
            .\gatedcount[12] (gatedcount[12]), .\gatedcount[5] (gatedcount[5]), 
            .\gatedcount[4] (gatedcount[4]), .clk_2M5(clk_2M5), .n2124(n2124), 
            .ADC_sample_N_19(ADC_sample_N_19), .n4(n4), .n2053(n2053), 
            .n2054(n2054), .n465(n465), .probestarted(probestarted), .pieovertwo_minus(pieovertwo_minus), 
            .pieovertwo_plus(pieovertwo_plus), .freeprecess_plus(freeprecess_plus), 
            .freeprecess_minus(freeprecess_minus), .n389(n389)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(50[12:294])
    LUT4 SMstate_2__bdd_2_lut (.A(laser_tuning_c), .B(SMstate[1]), .Z(n2104)) /* synthesis lut_function=(A+(B)) */ ;
    defparam SMstate_2__bdd_2_lut.init = 16'heeee;
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(45[9:19])
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 SMstate_2__bdd_3_lut_866 (.A(SMstate[1]), .B(fast_pulse), .C(slow_pulse), 
         .Z(n2101)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam SMstate_2__bdd_3_lut_866.init = 16'hd8d8;
    LUT4 SMstate_1__bdd_4_lut_878 (.A(SMstate[0]), .B(n2125), .C(SMstate[2]), 
         .D(laser_tuning_c), .Z(n2092)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;
    defparam SMstate_1__bdd_4_lut_878.init = 16'hafae;
    PFUMX i864 (.BLUT(n2101), .ALUT(n2100), .C0(SMstate[2]), .Z(n2102));
    LUT4 SMstate_1__bdd_4_lut_879 (.A(SMstate[2]), .B(SMstate[0]), .C(n1700), 
         .D(slow_pulse), .Z(n2118)) /* synthesis lut_function=(A (B (C)+!B (D))+!A !(B+!(C))) */ ;
    defparam SMstate_1__bdd_4_lut_879.init = 16'hb290;
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_63)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(64[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    PFUMX i884 (.BLUT(n2126), .ALUT(n2127), .C0(n2050), .Z(pump_output_N_22));
    LUT4 i862_then_3_lut (.A(SMstate[1]), .B(SMstate[2]), .C(SMstate[0]), 
         .Z(n2127)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i862_then_3_lut.init = 16'h0404;
    IB topleft_button_pad (.I(topleft_button), .O(topleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_65)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(65[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    LUT4 i862_else_3_lut (.A(SMstate[1]), .B(SMstate[2]), .C(SMstate[0]), 
         .D(laser_tuning_c), .Z(n2126)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i862_else_3_lut.init = 16'h8687;
    LUT4 i1_4_lut_adj_28 (.A(MW_N_75), .B(n389), .C(n2054), .D(n2059), 
         .Z(n1700)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_28.init = 16'hbbba;
    VLO i1 (.Z(GND_net));
    n_state_machine statemachine (.SMstate({SMstate}), .sampled_modebutton(sampled_modebutton), 
            .n2124(n2124), .sample_output_N_48(sample_output_N_48)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(52[18:74])
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_55)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(60[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_57)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(61[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_5 (.A(n465), .B(probestarted), .Z(n2125)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_5.init = 16'h4444;
    LUT4 SMstate_1__bdd_3_lut_4_lut (.A(n465), .B(probestarted), .C(SMstate[2]), 
         .D(SMstate[0]), .Z(n2091)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+!(D))+!B !((D)+!C)))) */ ;
    defparam SMstate_1__bdd_3_lut_4_lut.init = 16'h40f4;
    clocks clocks (.clk_2M5_N_67(clk_2M5_N_67), .clk_2M5(clk_2M5), .tenmegclock_c(tenmegclock_c), 
           .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(48[9:98])
    IB topright_button_pad (.I(topright_button), .O(topright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    IB bottomleft_button_pad (.I(bottomleft_button), .O(bottomleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    IB bottomright_button_pad (.I(bottomright_button), .O(bottomright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    IB MW_invalid_pad (.I(MW_invalid), .O(MW_invalid_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[8:18])
    IB laser_tuning_pad (.I(laser_tuning), .O(laser_tuning_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[8:20])
    PFUMX i880 (.BLUT(n2119), .ALUT(n2118), .C0(SMstate[1]), .Z(MW_output_N_40));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 SMstate_2__bdd_4_lut (.A(SMstate[1]), .B(medium_pulse), .C(fast_pulse), 
         .D(slow_pulse), .Z(n2100)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam SMstate_2__bdd_4_lut.init = 16'hd000;
    PFUMX i856 (.BLUT(n2092), .ALUT(n2091), .C0(SMstate[1]), .Z(probe_output_N_32));
    slow_clock_pulse slowclocks (.clk_2M5(clk_2M5), .medium_pulse(medium_pulse), 
            .GND_net(GND_net), .slow_pulse(slow_pulse), .fast_pulse(fast_pulse), 
            .debounce_pulse(debounce_pulse)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(51[19:157])
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_59)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(62[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module POPtimers
//

module POPtimers (GND_net, clk_2M5_N_67, MW_invalid_c, load_defaults, 
            MW_N_75, \gatedcount[15] , \gatedcount[13] , \gatedcount[12] , 
            \gatedcount[5] , \gatedcount[4] , clk_2M5, n2124, ADC_sample_N_19, 
            n4, n2053, n2054, n465, probestarted, pieovertwo_minus, 
            pieovertwo_plus, freeprecess_plus, freeprecess_minus, n389) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_2M5_N_67;
    input MW_invalid_c;
    input load_defaults;
    output MW_N_75;
    output \gatedcount[15] ;
    output \gatedcount[13] ;
    output \gatedcount[12] ;
    output \gatedcount[5] ;
    output \gatedcount[4] ;
    input clk_2M5;
    output n2124;
    output ADC_sample_N_19;
    output n4;
    output n2053;
    output n2054;
    output n465;
    output probestarted;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input freeprecess_plus;
    input freeprecess_minus;
    output n389;
    
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(29[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1848;
    wire [15:0]Startofprobepulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[19:36])
    wire [15:0]Endofprobepulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[19:34])
    
    wire n1849, n1818;
    wire [15:0]Startopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[19:37])
    
    wire n1819, n1847;
    wire [15:0]Resetandrepeat;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[19:33])
    
    wire n1838;
    wire [15:0]Endofopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[19:37])
    
    wire n1839, n1846, n1817, n1827;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[26:46])
    wire [15:0]Endof1stMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[19:34])
    
    wire n1828, n1836;
    wire [15:0]Endof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[19:34])
    
    wire n1835;
    wire [15:0]gatedcount;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(29[18:28])
    wire [15:0]count;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[19:24])
    
    wire n1834, n1809;
    wire [15:0]AdjustableFreePrecession;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[48:72])
    wire [15:0]Startof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[19:36])
    
    wire n1810, n1816, n1826, n1825;
    wire [15:0]n2;
    
    wire n1833, n1844, n1886, n1832, n1887, n1814, n1888, n1813, 
        n1843, n1889, n1824, n1890, n1823, n1842, n1841, n1840, 
        n1812, n1891, n1892, n1822, n1831, n1821, n1811, n1830, 
        n1857, n1856, n1855, n1820, n1854, n1853, n1852, loop, 
        counterreset, pi2started, n427, n1851, n1850, n1973, n1974, 
        n1975, n1976, n1977, n1978, samplestarted, n4_adj_180;
    
    CCU2D Startofprobepulse_15__I_0_7 (.A0(Startofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1848), .COUT(n1849), .S0(Endofprobepulse[7]), 
          .S1(Endofprobepulse[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[37:65])
    defparam Startofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_29_7 (.A0(Startofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1818), .COUT(n1819), .S0(Startopticalsample[9]), 
          .S1(Startopticalsample[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:69])
    defparam Startofprobepulse_15__I_0_29_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_29_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_29_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_29_7.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_5 (.A0(Startofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1847), .COUT(n1848), .S0(Resetandrepeat[5]), 
          .S1(Endofprobepulse[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[37:65])
    defparam Startofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D add_295_3 (.A0(Startopticalsample[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1838), .COUT(n1839), .S0(Endofopticalsample[2]), 
          .S1(Endofopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[40:71])
    defparam add_295_3.INIT0 = 16'h5aaa;
    defparam add_295_3.INIT1 = 16'h5aaa;
    defparam add_295_3.INJECT1_0 = "NO";
    defparam add_295_3.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_3 (.A0(Startopticalsample[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1846), .COUT(n1847), .S0(Resetandrepeat[3]), 
          .S1(Resetandrepeat[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[37:65])
    defparam Startofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_295_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Resetandrepeat[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1838), .S1(Endofopticalsample[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[40:71])
    defparam add_295_1.INIT0 = 16'hF000;
    defparam add_295_1.INIT1 = 16'h5555;
    defparam add_295_1.INJECT1_0 = "NO";
    defparam add_295_1.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_29_5 (.A0(Startofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1817), .COUT(n1818), .S0(Startopticalsample[7]), 
          .S1(Startopticalsample[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:69])
    defparam Startofprobepulse_15__I_0_29_5.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_29_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_29_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_29_5.INJECT1_1 = "NO";
    CCU2D add_293_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1827), .COUT(n1828), .S0(Endof1stMWpulse[12]), 
          .S1(Endof1stMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_293_13.INIT0 = 16'hfaaa;
    defparam add_293_13.INIT1 = 16'hfaaa;
    defparam add_293_13.INJECT1_0 = "NO";
    defparam add_293_13.INJECT1_1 = "NO";
    CCU2D add_294_15 (.A0(Endof2ndMWpulse[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1836), .S0(Startofprobepulse[14]), .S1(Startofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:65])
    defparam add_294_15.INIT0 = 16'h5aaa;
    defparam add_294_15.INIT1 = 16'h5aaa;
    defparam add_294_15.INJECT1_0 = "NO";
    defparam add_294_15.INJECT1_1 = "NO";
    CCU2D add_294_13 (.A0(Endof2ndMWpulse[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1835), .COUT(n1836), .S0(Startofprobepulse[12]), 
          .S1(Startofprobepulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:65])
    defparam add_294_13.INIT0 = 16'h5aaa;
    defparam add_294_13.INIT1 = 16'h5aaa;
    defparam add_294_13.INJECT1_0 = "NO";
    defparam add_294_13.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clk_2M5_N_67), .Q(gatedcount[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D add_294_11 (.A0(Endof2ndMWpulse[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1834), .COUT(n1835), .S0(Startofprobepulse[10]), 
          .S1(Startofprobepulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:65])
    defparam add_294_11.INIT0 = 16'h5aaa;
    defparam add_294_11.INIT1 = 16'h5aaa;
    defparam add_294_11.INJECT1_0 = "NO";
    defparam add_294_11.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_4 (.A0(Endof1stMWpulse[4]), .B0(AdjustableFreePrecession[4]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[5]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1809), .COUT(n1810), .S0(Startof2ndMWpulse[4]), 
          .S1(Startof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_4.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_4.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_4.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_4.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_29_3 (.A0(Startofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1816), .COUT(n1817), .S0(Startopticalsample[5]), 
          .S1(Startopticalsample[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:69])
    defparam Startofprobepulse_15__I_0_29_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_29_3.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_29_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_29_3.INJECT1_1 = "NO";
    CCU2D add_293_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1826), .COUT(n1827), .S0(Endof1stMWpulse[10]), 
          .S1(Endof1stMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_293_11.INIT0 = 16'h0555;
    defparam add_293_11.INIT1 = 16'hfaaa;
    defparam add_293_11.INJECT1_0 = "NO";
    defparam add_293_11.INJECT1_1 = "NO";
    CCU2D add_293_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1825), .COUT(n1826), .S0(Endof1stMWpulse[8]), 
          .S1(Endof1stMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_293_9.INIT0 = 16'h0555;
    defparam add_293_9.INIT1 = 16'h0555;
    defparam add_293_9.INJECT1_0 = "NO";
    defparam add_293_9.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_2 (.A0(Endof1stMWpulse[2]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[3]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n1809), .S1(Startof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_2.INIT0 = 16'h7000;
    defparam Endof1stMWpulse_15__I_0_2.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_2.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_2.INJECT1_1 = "NO";
    LUT4 i756_2_lut (.A(AdjustableFreePrecession[2]), .B(AdjustablePieOverTwo[2]), 
         .Z(n2[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i756_2_lut.init = 16'h6666;
    CCU2D Startofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1846), .S1(Resetandrepeat[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[37:65])
    defparam Startofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D add_294_9 (.A0(Endof2ndMWpulse[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1833), .COUT(n1834), .S0(Startofprobepulse[8]), 
          .S1(Startofprobepulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:65])
    defparam add_294_9.INIT0 = 16'h5aaa;
    defparam add_294_9.INIT1 = 16'h5aaa;
    defparam add_294_9.INJECT1_0 = "NO";
    defparam add_294_9.INJECT1_1 = "NO";
    CCU2D add_295_15 (.A0(Startopticalsample[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1844), .S0(Endofopticalsample[14]), .S1(Endofopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[40:71])
    defparam add_295_15.INIT0 = 16'h5aaa;
    defparam add_295_15.INIT1 = 16'h5aaa;
    defparam add_295_15.INJECT1_0 = "NO";
    defparam add_295_15.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_29_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1816), .S1(Startopticalsample[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:69])
    defparam Startofprobepulse_15__I_0_29_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__I_0_29_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_29_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_29_1.INJECT1_1 = "NO";
    CCU2D add_356_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(Startof2ndMWpulse[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n1886), .S1(Endof2ndMWpulse[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam add_356_2.INIT0 = 16'h0000;
    defparam add_356_2.INIT1 = 16'h5666;
    defparam add_356_2.INJECT1_0 = "NO";
    defparam add_356_2.INJECT1_1 = "NO";
    CCU2D add_294_7 (.A0(Endof2ndMWpulse[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1832), .COUT(n1833), .S0(Startofprobepulse[6]), 
          .S1(Startofprobepulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:65])
    defparam add_294_7.INIT0 = 16'h5aaa;
    defparam add_294_7.INIT1 = 16'h5aaa;
    defparam add_294_7.INJECT1_0 = "NO";
    defparam add_294_7.INJECT1_1 = "NO";
    CCU2D add_356_4 (.A0(n2[2]), .B0(Endof1stMWpulse[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[3]), .B1(Endof1stMWpulse[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1886), .COUT(n1887), .S0(Endof2ndMWpulse[2]), 
          .S1(Endof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam add_356_4.INIT0 = 16'h5666;
    defparam add_356_4.INIT1 = 16'h5666;
    defparam add_356_4.INJECT1_0 = "NO";
    defparam add_356_4.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_14 (.A0(Endof1stMWpulse[14]), .B0(AdjustableFreePrecession[14]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[15]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1814), .S0(Startof2ndMWpulse[14]), 
          .S1(Startof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_14.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_14.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_14.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_14.INJECT1_1 = "NO";
    CCU2D add_356_6 (.A0(n2[4]), .B0(Endof1stMWpulse[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[5]), .B1(Endof1stMWpulse[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1887), .COUT(n1888), .S0(Endof2ndMWpulse[4]), 
          .S1(Endof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam add_356_6.INIT0 = 16'h5666;
    defparam add_356_6.INIT1 = 16'h5666;
    defparam add_356_6.INJECT1_0 = "NO";
    defparam add_356_6.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_12 (.A0(Endof1stMWpulse[12]), .B0(AdjustableFreePrecession[12]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[13]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1813), .COUT(n1814), .S0(Startof2ndMWpulse[12]), 
          .S1(Startof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_12.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_12.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_12.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_12.INJECT1_1 = "NO";
    CCU2D add_295_13 (.A0(Startopticalsample[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1843), .COUT(n1844), .S0(Endofopticalsample[12]), 
          .S1(Endofopticalsample[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[40:71])
    defparam add_295_13.INIT0 = 16'h5aaa;
    defparam add_295_13.INIT1 = 16'h5aaa;
    defparam add_295_13.INJECT1_0 = "NO";
    defparam add_295_13.INJECT1_1 = "NO";
    CCU2D add_356_8 (.A0(n2[6]), .B0(Endof1stMWpulse[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[7]), .B1(Endof1stMWpulse[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1888), .COUT(n1889), .S0(Endof2ndMWpulse[6]), 
          .S1(Endof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam add_356_8.INIT0 = 16'h5666;
    defparam add_356_8.INIT1 = 16'h5666;
    defparam add_356_8.INJECT1_0 = "NO";
    defparam add_356_8.INJECT1_1 = "NO";
    CCU2D add_293_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1824), .COUT(n1825), .S0(Endof1stMWpulse[6]), 
          .S1(Endof1stMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_293_7.INIT0 = 16'h0555;
    defparam add_293_7.INIT1 = 16'h0555;
    defparam add_293_7.INJECT1_0 = "NO";
    defparam add_293_7.INJECT1_1 = "NO";
    CCU2D add_356_10 (.A0(n2[8]), .B0(Endof1stMWpulse[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[9]), .B1(Endof1stMWpulse[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1889), .COUT(n1890), .S0(Endof2ndMWpulse[8]), 
          .S1(Endof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam add_356_10.INIT0 = 16'h5666;
    defparam add_356_10.INIT1 = 16'h5666;
    defparam add_356_10.INJECT1_0 = "NO";
    defparam add_356_10.INJECT1_1 = "NO";
    CCU2D add_293_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1823), .COUT(n1824), .S0(Endof1stMWpulse[4]), 
          .S1(Endof1stMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_293_5.INIT0 = 16'h0555;
    defparam add_293_5.INIT1 = 16'hfaaa;
    defparam add_293_5.INJECT1_0 = "NO";
    defparam add_293_5.INJECT1_1 = "NO";
    CCU2D add_295_11 (.A0(Startopticalsample[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1842), .COUT(n1843), .S0(Endofopticalsample[10]), 
          .S1(Endofopticalsample[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[40:71])
    defparam add_295_11.INIT0 = 16'h5aaa;
    defparam add_295_11.INIT1 = 16'h5aaa;
    defparam add_295_11.INJECT1_0 = "NO";
    defparam add_295_11.INJECT1_1 = "NO";
    CCU2D add_295_9 (.A0(Startopticalsample[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1841), .COUT(n1842), .S0(Endofopticalsample[8]), 
          .S1(Endofopticalsample[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[40:71])
    defparam add_295_9.INIT0 = 16'h5aaa;
    defparam add_295_9.INIT1 = 16'h5aaa;
    defparam add_295_9.INJECT1_0 = "NO";
    defparam add_295_9.INJECT1_1 = "NO";
    CCU2D add_295_7 (.A0(Startopticalsample[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1840), .COUT(n1841), .S0(Endofopticalsample[6]), 
          .S1(Endofopticalsample[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[40:71])
    defparam add_295_7.INIT0 = 16'h5aaa;
    defparam add_295_7.INIT1 = 16'h5aaa;
    defparam add_295_7.INJECT1_0 = "NO";
    defparam add_295_7.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_10 (.A0(Endof1stMWpulse[10]), .B0(AdjustableFreePrecession[10]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[11]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1812), .COUT(n1813), .S0(Startof2ndMWpulse[10]), 
          .S1(Startof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_10.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_10.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_10.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_10.INJECT1_1 = "NO";
    CCU2D add_356_12 (.A0(n2[10]), .B0(Endof1stMWpulse[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[11]), .B1(Endof1stMWpulse[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1890), .COUT(n1891), .S0(Endof2ndMWpulse[10]), 
          .S1(Endof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam add_356_12.INIT0 = 16'h5666;
    defparam add_356_12.INIT1 = 16'h5666;
    defparam add_356_12.INJECT1_0 = "NO";
    defparam add_356_12.INJECT1_1 = "NO";
    CCU2D add_356_14 (.A0(n2[12]), .B0(Endof1stMWpulse[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[13]), .B1(Endof1stMWpulse[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1891), .COUT(n1892), .S0(Endof2ndMWpulse[12]), 
          .S1(Endof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam add_356_14.INIT0 = 16'h5666;
    defparam add_356_14.INIT1 = 16'h5666;
    defparam add_356_14.INJECT1_0 = "NO";
    defparam add_356_14.INJECT1_1 = "NO";
    CCU2D add_356_16 (.A0(n2[14]), .B0(Endof1stMWpulse[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[15]), .B1(Endof1stMWpulse[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1892), .S0(Endof2ndMWpulse[14]), .S1(Endof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam add_356_16.INIT0 = 16'h5666;
    defparam add_356_16.INIT1 = 16'h5666;
    defparam add_356_16.INJECT1_0 = "NO";
    defparam add_356_16.INJECT1_1 = "NO";
    CCU2D add_293_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1822), .COUT(n1823), .S0(Endof1stMWpulse[2]), 
          .S1(Endof1stMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_293_3.INIT0 = 16'hfaaa;
    defparam add_293_3.INIT1 = 16'h0555;
    defparam add_293_3.INJECT1_0 = "NO";
    defparam add_293_3.INJECT1_1 = "NO";
    CCU2D add_293_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1822), .S1(Startof2ndMWpulse[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_293_1.INIT0 = 16'hF000;
    defparam add_293_1.INIT1 = 16'h0555;
    defparam add_293_1.INJECT1_0 = "NO";
    defparam add_293_1.INJECT1_1 = "NO";
    CCU2D add_294_5 (.A0(Endof2ndMWpulse[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1831), .COUT(n1832), .S0(Startofprobepulse[4]), 
          .S1(Startofprobepulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:65])
    defparam add_294_5.INIT0 = 16'h5aaa;
    defparam add_294_5.INIT1 = 16'h5aaa;
    defparam add_294_5.INJECT1_0 = "NO";
    defparam add_294_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_29_13 (.A0(Startofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1821), .S0(Startopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:69])
    defparam Startofprobepulse_15__I_0_29_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_29_13.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__I_0_29_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_29_13.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_8 (.A0(Endof1stMWpulse[8]), .B0(AdjustableFreePrecession[8]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[9]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1811), .COUT(n1812), .S0(Startof2ndMWpulse[8]), 
          .S1(Startof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_8.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_8.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_8.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_8.INJECT1_1 = "NO";
    CCU2D add_294_3 (.A0(Endof2ndMWpulse[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1830), .COUT(n1831), .S0(Startopticalsample[2]), 
          .S1(Startopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:65])
    defparam add_294_3.INIT0 = 16'h5aaa;
    defparam add_294_3.INIT1 = 16'h5555;
    defparam add_294_3.INJECT1_0 = "NO";
    defparam add_294_3.INJECT1_1 = "NO";
    CCU2D add_294_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Endof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1830), .S1(Resetandrepeat[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:65])
    defparam add_294_1.INIT0 = 16'hF000;
    defparam add_294_1.INIT1 = 16'h5555;
    defparam add_294_1.INJECT1_0 = "NO";
    defparam add_294_1.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_11 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1857), .S0(Resetandrepeat[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_11.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_9 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1856), .COUT(n1857), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_7 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1855), .COUT(n1856), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D add_293_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1828), .S0(Endof1stMWpulse[14]), .S1(Endof1stMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[37:75])
    defparam add_293_15.INIT0 = 16'hfaaa;
    defparam add_293_15.INIT1 = 16'hfaaa;
    defparam add_293_15.INJECT1_0 = "NO";
    defparam add_293_15.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_29_11 (.A0(Startofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1820), .COUT(n1821), .S0(Startopticalsample[13]), 
          .S1(Startopticalsample[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:69])
    defparam Startofprobepulse_15__I_0_29_11.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_29_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_29_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_29_11.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_5 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1854), .COUT(n1855), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_3 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1853), .COUT(n1854), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1853), .S1(Resetandrepeat[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[36:61])
    defparam Endofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_15 (.A0(Startofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1852), .S0(Endofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[37:65])
    defparam Startofprobepulse_15__I_0_15.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D add_295_5 (.A0(Startopticalsample[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1839), .COUT(n1840), .S0(Endofopticalsample[4]), 
          .S1(Endofopticalsample[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[40:71])
    defparam add_295_5.INIT0 = 16'h5555;
    defparam add_295_5.INIT1 = 16'h5555;
    defparam add_295_5.INJECT1_0 = "NO";
    defparam add_295_5.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_6 (.A0(Endof1stMWpulse[6]), .B0(AdjustableFreePrecession[6]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[7]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1810), .COUT(n1811), .S0(Startof2ndMWpulse[6]), 
          .S1(Startof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_6.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_6.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_6.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_6.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(MW_invalid_c), .B(loop), .C(load_defaults), .Z(counterreset)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(65[24:48])
    defparam i2_3_lut.init = 16'hfefe;
    CCU2D Startofprobepulse_15__I_0_29_9 (.A0(Startofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1819), .COUT(n1820), .S0(Startopticalsample[11]), 
          .S1(Startopticalsample[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:69])
    defparam Startofprobepulse_15__I_0_29_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_29_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_29_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_29_9.INJECT1_1 = "NO";
    LUT4 pi2started_I_0_2_lut (.A(pi2started), .B(n427), .Z(MW_N_75)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(75[41:67])
    defparam pi2started_I_0_2_lut.init = 16'h2222;
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clk_2M5_N_67), .Q(\gatedcount[15] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    CCU2D Startofprobepulse_15__I_0_13 (.A0(Startofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1851), .COUT(n1852), .S0(Endofprobepulse[13]), 
          .S1(Endofprobepulse[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[37:65])
    defparam Startofprobepulse_15__I_0_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_13.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_13.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clk_2M5_N_67), .Q(gatedcount[14])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clk_2M5_N_67), .Q(\gatedcount[13] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clk_2M5_N_67), .Q(\gatedcount[12] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clk_2M5_N_67), .Q(gatedcount[11])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clk_2M5_N_67), .Q(gatedcount[10])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clk_2M5_N_67), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clk_2M5_N_67), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clk_2M5_N_67), .Q(gatedcount[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clk_2M5_N_67), .Q(gatedcount[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clk_2M5_N_67), .Q(\gatedcount[5] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clk_2M5_N_67), .Q(\gatedcount[4] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clk_2M5_N_67), .Q(gatedcount[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clk_2M5_N_67), .Q(gatedcount[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clk_2M5_N_67), .Q(gatedcount[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(69[8] 71[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    CCU2D Startofprobepulse_15__I_0_11 (.A0(Startofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1850), .COUT(n1851), .S0(Endofprobepulse[11]), 
          .S1(Endofprobepulse[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[37:65])
    defparam Startofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_9 (.A0(Startofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1849), .COUT(n1850), .S0(Endofprobepulse[9]), 
          .S1(Endofprobepulse[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[37:65])
    defparam Startofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_340_add_1_2 (.A0(AdjustableFreePrecession[2]), 
          .B0(AdjustablePieOverTwo[2]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[3]), 
          .B1(AdjustablePieOverTwo[3]), .C1(GND_net), .D1(GND_net), .COUT(n1973), 
          .S1(n2[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_2.INIT0 = 16'h7000;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_2.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_2.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_2.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_340_add_1_4 (.A0(AdjustableFreePrecession[4]), 
          .B0(AdjustablePieOverTwo[4]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[5]), 
          .B1(AdjustablePieOverTwo[5]), .C1(GND_net), .D1(GND_net), .CIN(n1973), 
          .COUT(n1974), .S0(n2[4]), .S1(n2[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_4.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_4.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_4.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_4.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_340_add_1_6 (.A0(AdjustableFreePrecession[6]), 
          .B0(AdjustablePieOverTwo[6]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[7]), 
          .B1(AdjustablePieOverTwo[7]), .C1(GND_net), .D1(GND_net), .CIN(n1974), 
          .COUT(n1975), .S0(n2[6]), .S1(n2[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_6.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_6.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_6.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_6.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_340_add_1_8 (.A0(AdjustableFreePrecession[8]), 
          .B0(AdjustablePieOverTwo[8]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[9]), 
          .B1(AdjustablePieOverTwo[9]), .C1(GND_net), .D1(GND_net), .CIN(n1975), 
          .COUT(n1976), .S0(n2[8]), .S1(n2[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_8.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_8.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_8.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_8.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_340_add_1_10 (.A0(AdjustableFreePrecession[10]), 
          .B0(AdjustablePieOverTwo[10]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[11]), 
          .B1(AdjustablePieOverTwo[11]), .C1(GND_net), .D1(GND_net), .CIN(n1976), 
          .COUT(n1977), .S0(n2[10]), .S1(n2[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_10.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_10.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_10.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_10.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_340_add_1_12 (.A0(AdjustableFreePrecession[12]), 
          .B0(AdjustablePieOverTwo[12]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[13]), 
          .B1(AdjustablePieOverTwo[13]), .C1(GND_net), .D1(GND_net), .CIN(n1977), 
          .COUT(n1978), .S0(n2[12]), .S1(n2[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_12.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_12.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_12.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_12.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_340_add_1_14 (.A0(AdjustableFreePrecession[14]), 
          .B0(AdjustablePieOverTwo[14]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[15]), 
          .B1(AdjustablePieOverTwo[15]), .C1(GND_net), .D1(GND_net), .CIN(n1978), 
          .S0(n2[14]), .S1(n2[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_14.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_14.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_14.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_340_add_1_14.INJECT1_1 = "NO";
    count_n systemcounter (.GND_net(GND_net), .count({count}), .clk_2M5(clk_2M5), 
            .counterreset(counterreset)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(49[10:92])
    comparator sample2 (.samplestarted(samplestarted), .n2124(n2124), .\gatedcount[10] (gatedcount[10]), 
            .\Endofopticalsample[10] (Endofopticalsample[10]), .GND_net(GND_net), 
            .\gatedcount[11] (gatedcount[11]), .\Endofopticalsample[11] (Endofopticalsample[11]), 
            .\gatedcount[8] (gatedcount[8]), .\Endofopticalsample[8] (Endofopticalsample[8]), 
            .\gatedcount[9] (gatedcount[9]), .\Endofopticalsample[9] (Endofopticalsample[9]), 
            .\gatedcount[6] (gatedcount[6]), .\Endofopticalsample[6] (Endofopticalsample[6]), 
            .\gatedcount[7] (gatedcount[7]), .\Endofopticalsample[7] (Endofopticalsample[7]), 
            .\gatedcount[4] (\gatedcount[4] ), .\Endofopticalsample[4] (Endofopticalsample[4]), 
            .\gatedcount[5] (\gatedcount[5] ), .\Endofopticalsample[5] (Endofopticalsample[5]), 
            .\gatedcount[2] (gatedcount[2]), .\Endofopticalsample[2] (Endofopticalsample[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Endofopticalsample[3] (Endofopticalsample[3]), 
            .\gatedcount[14] (gatedcount[14]), .\Endofopticalsample[14] (Endofopticalsample[14]), 
            .\gatedcount[15] (\gatedcount[15] ), .\Endofopticalsample[15] (Endofopticalsample[15]), 
            .\gatedcount[1] (gatedcount[1]), .\Endofopticalsample[1] (Endofopticalsample[1]), 
            .\gatedcount[12] (\gatedcount[12] ), .\Endofopticalsample[12] (Endofopticalsample[12]), 
            .\gatedcount[13] (\gatedcount[13] ), .\Endofopticalsample[13] (Endofopticalsample[13]), 
            .MW_invalid_c(MW_invalid_c), .ADC_sample_N_19(ADC_sample_N_19)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(59[13:98])
    comparator_U4 sample1 (.GND_net(GND_net), .samplestarted(samplestarted), 
            .\gatedcount[14] (gatedcount[14]), .\Startopticalsample[14] (Startopticalsample[14]), 
            .\gatedcount[15] (\gatedcount[15] ), .\Startopticalsample[15] (Startopticalsample[15]), 
            .\gatedcount[12] (\gatedcount[12] ), .\Startopticalsample[12] (Startopticalsample[12]), 
            .\gatedcount[13] (\gatedcount[13] ), .\Startopticalsample[13] (Startopticalsample[13]), 
            .\gatedcount[10] (gatedcount[10]), .\Startopticalsample[10] (Startopticalsample[10]), 
            .\gatedcount[11] (gatedcount[11]), .\Startopticalsample[11] (Startopticalsample[11]), 
            .\gatedcount[8] (gatedcount[8]), .\Startopticalsample[8] (Startopticalsample[8]), 
            .\gatedcount[9] (gatedcount[9]), .\Startopticalsample[9] (Startopticalsample[9]), 
            .\gatedcount[6] (gatedcount[6]), .\Startopticalsample[6] (Startopticalsample[6]), 
            .\gatedcount[7] (gatedcount[7]), .\Startopticalsample[7] (Startopticalsample[7]), 
            .\gatedcount[4] (\gatedcount[4] ), .\Startopticalsample[4] (Startopticalsample[4]), 
            .\gatedcount[5] (\gatedcount[5] ), .\Startopticalsample[5] (Startopticalsample[5]), 
            .\gatedcount[2] (gatedcount[2]), .\Startopticalsample[2] (Startopticalsample[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Startopticalsample[3] (Startopticalsample[3]), 
            .\gatedcount[1] (gatedcount[1]), .\Resetandrepeat[1] (Resetandrepeat[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(58[13:98])
    comparator_U5 pump2 (.\gatedcount[14] (gatedcount[14]), .\gatedcount[11] (gatedcount[11]), 
            .n4(n4), .\gatedcount[10] (gatedcount[10]), .\gatedcount[9] (gatedcount[9]), 
            .\gatedcount[6] (gatedcount[6]), .n2053(n2053), .\gatedcount[7] (gatedcount[7]), 
            .\gatedcount[8] (gatedcount[8]), .\gatedcount[4] (\gatedcount[4] ), 
            .\gatedcount[5] (\gatedcount[5] ), .n4_adj_1(n4_adj_180), .n2054(n2054)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(51[13:90])
    comparator_U6 probe2 (.GND_net(GND_net), .n465(n465), .\gatedcount[14] (gatedcount[14]), 
            .\Endofprobepulse[14] (Endofprobepulse[14]), .\gatedcount[15] (\gatedcount[15] ), 
            .\Endofprobepulse[15] (Endofprobepulse[15]), .\gatedcount[12] (\gatedcount[12] ), 
            .\Endofprobepulse[12] (Endofprobepulse[12]), .\gatedcount[13] (\gatedcount[13] ), 
            .\Endofprobepulse[13] (Endofprobepulse[13]), .\gatedcount[10] (gatedcount[10]), 
            .\Endofprobepulse[10] (Endofprobepulse[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Endofprobepulse[11] (Endofprobepulse[11]), .\gatedcount[8] (gatedcount[8]), 
            .\Endofprobepulse[8] (Endofprobepulse[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Endofprobepulse[9] (Endofprobepulse[9]), .\gatedcount[6] (gatedcount[6]), 
            .\Endofprobepulse[6] (Endofprobepulse[6]), .\gatedcount[7] (gatedcount[7]), 
            .\Endofprobepulse[7] (Endofprobepulse[7]), .\gatedcount[4] (\gatedcount[4] ), 
            .\Resetandrepeat[4] (Resetandrepeat[4]), .\gatedcount[5] (\gatedcount[5] ), 
            .\Resetandrepeat[5] (Resetandrepeat[5]), .\gatedcount[2] (gatedcount[2]), 
            .\Resetandrepeat[2] (Resetandrepeat[2]), .\gatedcount[3] (gatedcount[3]), 
            .\Resetandrepeat[3] (Resetandrepeat[3]), .\gatedcount[1] (gatedcount[1]), 
            .\Resetandrepeat[1] (Resetandrepeat[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(57[13:93])
    comparator_U7 probe1 (.GND_net(GND_net), .probestarted(probestarted), 
            .\gatedcount[14] (gatedcount[14]), .\Startofprobepulse[14] (Startofprobepulse[14]), 
            .\gatedcount[15] (\gatedcount[15] ), .\Startofprobepulse[15] (Startofprobepulse[15]), 
            .\gatedcount[12] (\gatedcount[12] ), .\Startofprobepulse[12] (Startofprobepulse[12]), 
            .\gatedcount[13] (\gatedcount[13] ), .\Startofprobepulse[13] (Startofprobepulse[13]), 
            .\gatedcount[10] (gatedcount[10]), .\Startofprobepulse[10] (Startofprobepulse[10]), 
            .\gatedcount[11] (gatedcount[11]), .\Startofprobepulse[11] (Startofprobepulse[11]), 
            .\gatedcount[8] (gatedcount[8]), .\Startofprobepulse[8] (Startofprobepulse[8]), 
            .\gatedcount[9] (gatedcount[9]), .\Startofprobepulse[9] (Startofprobepulse[9]), 
            .\gatedcount[6] (gatedcount[6]), .\Startofprobepulse[6] (Startofprobepulse[6]), 
            .\gatedcount[7] (gatedcount[7]), .\Startofprobepulse[7] (Startofprobepulse[7]), 
            .\gatedcount[4] (\gatedcount[4] ), .\Startofprobepulse[4] (Startofprobepulse[4]), 
            .\gatedcount[5] (\gatedcount[5] ), .\Startofprobepulse[5] (Startofprobepulse[5]), 
            .\gatedcount[2] (gatedcount[2]), .\Startopticalsample[2] (Startopticalsample[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Startopticalsample[3] (Startopticalsample[3]), 
            .\gatedcount[1] (gatedcount[1]), .\Resetandrepeat[1] (Resetandrepeat[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(56[13:95])
    countupdownpreload piecounter (.pieovertwo_minus(pieovertwo_minus), .pieovertwo_plus(pieovertwo_plus), 
            .GND_net(GND_net), .\AdjustablePieOverTwo[1] (AdjustablePieOverTwo[1]), 
            .\AdjustablePieOverTwo[2] (AdjustablePieOverTwo[2]), .\AdjustablePieOverTwo[3] (AdjustablePieOverTwo[3]), 
            .\AdjustablePieOverTwo[4] (AdjustablePieOverTwo[4]), .\AdjustablePieOverTwo[5] (AdjustablePieOverTwo[5]), 
            .\AdjustablePieOverTwo[6] (AdjustablePieOverTwo[6]), .\AdjustablePieOverTwo[7] (AdjustablePieOverTwo[7]), 
            .\AdjustablePieOverTwo[8] (AdjustablePieOverTwo[8]), .\AdjustablePieOverTwo[9] (AdjustablePieOverTwo[9]), 
            .\AdjustablePieOverTwo[10] (AdjustablePieOverTwo[10]), .\AdjustablePieOverTwo[15] (AdjustablePieOverTwo[15]), 
            .\AdjustablePieOverTwo[13] (AdjustablePieOverTwo[13]), .\AdjustablePieOverTwo[14] (AdjustablePieOverTwo[14]), 
            .\AdjustablePieOverTwo[11] (AdjustablePieOverTwo[11]), .\AdjustablePieOverTwo[12] (AdjustablePieOverTwo[12]), 
            .load_defaults(load_defaults), .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(62[21:199])
    comparator_U8 loopcounter (.GND_net(GND_net), .loop(loop), .\gatedcount[14] (gatedcount[14]), 
            .\Resetandrepeat[14] (Resetandrepeat[14]), .\gatedcount[15] (\gatedcount[15] ), 
            .\Resetandrepeat[15] (Resetandrepeat[15]), .\gatedcount[12] (\gatedcount[12] ), 
            .\Resetandrepeat[12] (Resetandrepeat[12]), .\gatedcount[13] (\gatedcount[13] ), 
            .\Resetandrepeat[13] (Resetandrepeat[13]), .\gatedcount[10] (gatedcount[10]), 
            .\Resetandrepeat[10] (Resetandrepeat[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Resetandrepeat[11] (Resetandrepeat[11]), .\gatedcount[8] (gatedcount[8]), 
            .\Resetandrepeat[8] (Resetandrepeat[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Resetandrepeat[9] (Resetandrepeat[9]), .\gatedcount[6] (gatedcount[6]), 
            .\Resetandrepeat[6] (Resetandrepeat[6]), .\gatedcount[7] (gatedcount[7]), 
            .\Resetandrepeat[7] (Resetandrepeat[7]), .\gatedcount[4] (\gatedcount[4] ), 
            .\Resetandrepeat[4] (Resetandrepeat[4]), .\gatedcount[5] (\gatedcount[5] ), 
            .\Resetandrepeat[5] (Resetandrepeat[5]), .\gatedcount[2] (gatedcount[2]), 
            .\Resetandrepeat[2] (Resetandrepeat[2]), .\gatedcount[3] (gatedcount[3]), 
            .\Resetandrepeat[3] (Resetandrepeat[3]), .\gatedcount[1] (gatedcount[1]), 
            .\Resetandrepeat[1] (Resetandrepeat[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(60[13:89])
    countupdownpreload_U9 freepcounter (.\AdjustableFreePrecession[14] (AdjustableFreePrecession[14]), 
            .GND_net(GND_net), .\AdjustableFreePrecession[15] (AdjustableFreePrecession[15]), 
            .\AdjustableFreePrecession[12] (AdjustableFreePrecession[12]), 
            .\AdjustableFreePrecession[13] (AdjustableFreePrecession[13]), 
            .\AdjustableFreePrecession[10] (AdjustableFreePrecession[10]), 
            .\AdjustableFreePrecession[11] (AdjustableFreePrecession[11]), 
            .\AdjustableFreePrecession[8] (AdjustableFreePrecession[8]), .\AdjustableFreePrecession[9] (AdjustableFreePrecession[9]), 
            .\AdjustableFreePrecession[6] (AdjustableFreePrecession[6]), .freeprecess_plus(freeprecess_plus), 
            .\AdjustableFreePrecession[7] (AdjustableFreePrecession[7]), .\AdjustableFreePrecession[4] (AdjustableFreePrecession[4]), 
            .\AdjustableFreePrecession[5] (AdjustableFreePrecession[5]), .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), 
            .\AdjustableFreePrecession[3] (AdjustableFreePrecession[3]), .freeprecess_minus(freeprecess_minus), 
            .load_defaults(load_defaults), .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(63[21:212])
    comparator_U10 MW4 (.GND_net(GND_net), .n427(n427), .\gatedcount[14] (gatedcount[14]), 
            .\Endof2ndMWpulse[14] (Endof2ndMWpulse[14]), .\gatedcount[15] (\gatedcount[15] ), 
            .\Endof2ndMWpulse[15] (Endof2ndMWpulse[15]), .\gatedcount[12] (\gatedcount[12] ), 
            .\Endof2ndMWpulse[12] (Endof2ndMWpulse[12]), .\gatedcount[13] (\gatedcount[13] ), 
            .\Endof2ndMWpulse[13] (Endof2ndMWpulse[13]), .\gatedcount[10] (gatedcount[10]), 
            .\Endof2ndMWpulse[10] (Endof2ndMWpulse[10]), .\gatedcount[11] (gatedcount[11]), 
            .\Endof2ndMWpulse[11] (Endof2ndMWpulse[11]), .\gatedcount[8] (gatedcount[8]), 
            .\Endof2ndMWpulse[8] (Endof2ndMWpulse[8]), .\gatedcount[9] (gatedcount[9]), 
            .\Endof2ndMWpulse[9] (Endof2ndMWpulse[9]), .\gatedcount[6] (gatedcount[6]), 
            .\Endof2ndMWpulse[6] (Endof2ndMWpulse[6]), .\gatedcount[7] (gatedcount[7]), 
            .\Endof2ndMWpulse[7] (Endof2ndMWpulse[7]), .\gatedcount[4] (\gatedcount[4] ), 
            .\Endof2ndMWpulse[4] (Endof2ndMWpulse[4]), .\gatedcount[5] (\gatedcount[5] ), 
            .\Endof2ndMWpulse[5] (Endof2ndMWpulse[5]), .\gatedcount[2] (gatedcount[2]), 
            .\Endof2ndMWpulse[2] (Endof2ndMWpulse[2]), .\gatedcount[3] (gatedcount[3]), 
            .\Endof2ndMWpulse[3] (Endof2ndMWpulse[3]), .\gatedcount[1] (gatedcount[1]), 
            .\Endof2ndMWpulse[1] (Endof2ndMWpulse[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(55[13:88])
    comparator_U11 MW3 (.gatedcount({\gatedcount[15] , gatedcount[14], \gatedcount[13] , 
            \gatedcount[12] , gatedcount[11:6], \gatedcount[5] , \gatedcount[4] , 
            gatedcount[3:0]}), .GND_net(GND_net), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1]), 
            .pi2started(pi2started), .\Startof2ndMWpulse[14] (Startof2ndMWpulse[14]), 
            .\Startof2ndMWpulse[15] (Startof2ndMWpulse[15]), .\Startof2ndMWpulse[12] (Startof2ndMWpulse[12]), 
            .\Startof2ndMWpulse[13] (Startof2ndMWpulse[13]), .\Startof2ndMWpulse[10] (Startof2ndMWpulse[10]), 
            .\Startof2ndMWpulse[11] (Startof2ndMWpulse[11]), .\Startof2ndMWpulse[8] (Startof2ndMWpulse[8]), 
            .\Startof2ndMWpulse[9] (Startof2ndMWpulse[9]), .\Startof2ndMWpulse[6] (Startof2ndMWpulse[6]), 
            .\Startof2ndMWpulse[7] (Startof2ndMWpulse[7]), .\Startof2ndMWpulse[4] (Startof2ndMWpulse[4]), 
            .\Startof2ndMWpulse[5] (Startof2ndMWpulse[5]), .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), 
            .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), .\Startof2ndMWpulse[3] (Startof2ndMWpulse[3])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(54[13:90])
    comparator_U12 MW2 (.GND_net(GND_net), .n389(n389), .gatedcount({\gatedcount[15] , 
            gatedcount[14], \gatedcount[13] , \gatedcount[12] , gatedcount[11:6], 
            \gatedcount[5] , \gatedcount[4] , gatedcount[3:0]}), .\Endof1stMWpulse[14] (Endof1stMWpulse[14]), 
            .\Endof1stMWpulse[15] (Endof1stMWpulse[15]), .\Endof1stMWpulse[12] (Endof1stMWpulse[12]), 
            .\Endof1stMWpulse[13] (Endof1stMWpulse[13]), .\Endof1stMWpulse[10] (Endof1stMWpulse[10]), 
            .\Endof1stMWpulse[11] (Endof1stMWpulse[11]), .\Endof1stMWpulse[8] (Endof1stMWpulse[8]), 
            .\Endof1stMWpulse[9] (Endof1stMWpulse[9]), .\Endof1stMWpulse[6] (Endof1stMWpulse[6]), 
            .\Endof1stMWpulse[7] (Endof1stMWpulse[7]), .\Endof1stMWpulse[4] (Endof1stMWpulse[4]), 
            .\Endof1stMWpulse[5] (Endof1stMWpulse[5]), .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), 
            .\Endof1stMWpulse[3] (Endof1stMWpulse[3]), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(53[13:88])
    comparator_U13 MW1 (.\gatedcount[1] (gatedcount[1]), .\gatedcount[3] (gatedcount[3]), 
            .\gatedcount[2] (gatedcount[2]), .n4(n4_adj_180)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(52[13:90])
    
endmodule
//
// Verilog Description of module count_n
//

module count_n (GND_net, count, clk_2M5, counterreset) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [15:0]count;
    input clk_2M5;
    input counterreset;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire [15:0]n69;
    
    wire n1964, n1965, n1966, n1967, n1968, n1969, n1970, n1971;
    
    CCU2D count_298_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1964), .S1(n69[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298_add_4_1.INIT0 = 16'hF000;
    defparam count_298_add_4_1.INIT1 = 16'h0555;
    defparam count_298_add_4_1.INJECT1_0 = "NO";
    defparam count_298_add_4_1.INJECT1_1 = "NO";
    FD1S3IX count_298__i15 (.D(n69[15]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i15.GSR = "ENABLED";
    FD1S3IX count_298__i14 (.D(n69[14]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i14.GSR = "ENABLED";
    FD1S3IX count_298__i13 (.D(n69[13]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i13.GSR = "ENABLED";
    FD1S3IX count_298__i12 (.D(n69[12]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i12.GSR = "ENABLED";
    FD1S3IX count_298__i11 (.D(n69[11]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i11.GSR = "ENABLED";
    FD1S3IX count_298__i10 (.D(n69[10]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i10.GSR = "ENABLED";
    FD1S3IX count_298__i9 (.D(n69[9]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i9.GSR = "ENABLED";
    FD1S3IX count_298__i8 (.D(n69[8]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i8.GSR = "ENABLED";
    FD1S3IX count_298__i7 (.D(n69[7]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i7.GSR = "ENABLED";
    FD1S3IX count_298__i6 (.D(n69[6]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i6.GSR = "ENABLED";
    FD1S3IX count_298__i5 (.D(n69[5]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i5.GSR = "ENABLED";
    FD1S3IX count_298__i4 (.D(n69[4]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i4.GSR = "ENABLED";
    FD1S3IX count_298__i3 (.D(n69[3]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i3.GSR = "ENABLED";
    FD1S3IX count_298__i2 (.D(n69[2]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i2.GSR = "ENABLED";
    FD1S3IX count_298__i1 (.D(n69[1]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i1.GSR = "ENABLED";
    FD1S3IX count_298__i0 (.D(n69[0]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298__i0.GSR = "ENABLED";
    CCU2D count_298_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1964), .COUT(n1965), .S0(n69[1]), .S1(n69[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298_add_4_3.INIT0 = 16'hfaaa;
    defparam count_298_add_4_3.INIT1 = 16'hfaaa;
    defparam count_298_add_4_3.INJECT1_0 = "NO";
    defparam count_298_add_4_3.INJECT1_1 = "NO";
    CCU2D count_298_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1965), .COUT(n1966), .S0(n69[3]), .S1(n69[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298_add_4_5.INIT0 = 16'hfaaa;
    defparam count_298_add_4_5.INIT1 = 16'hfaaa;
    defparam count_298_add_4_5.INJECT1_0 = "NO";
    defparam count_298_add_4_5.INJECT1_1 = "NO";
    CCU2D count_298_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1966), .COUT(n1967), .S0(n69[5]), .S1(n69[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298_add_4_7.INIT0 = 16'hfaaa;
    defparam count_298_add_4_7.INIT1 = 16'hfaaa;
    defparam count_298_add_4_7.INJECT1_0 = "NO";
    defparam count_298_add_4_7.INJECT1_1 = "NO";
    CCU2D count_298_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1967), .COUT(n1968), .S0(n69[7]), .S1(n69[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298_add_4_9.INIT0 = 16'hfaaa;
    defparam count_298_add_4_9.INIT1 = 16'hfaaa;
    defparam count_298_add_4_9.INJECT1_0 = "NO";
    defparam count_298_add_4_9.INJECT1_1 = "NO";
    CCU2D count_298_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1968), .COUT(n1969), .S0(n69[9]), .S1(n69[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298_add_4_11.INIT0 = 16'hfaaa;
    defparam count_298_add_4_11.INIT1 = 16'hfaaa;
    defparam count_298_add_4_11.INJECT1_0 = "NO";
    defparam count_298_add_4_11.INJECT1_1 = "NO";
    CCU2D count_298_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1969), .COUT(n1970), .S0(n69[11]), .S1(n69[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298_add_4_13.INIT0 = 16'hfaaa;
    defparam count_298_add_4_13.INIT1 = 16'hfaaa;
    defparam count_298_add_4_13.INJECT1_0 = "NO";
    defparam count_298_add_4_13.INJECT1_1 = "NO";
    CCU2D count_298_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1970), .COUT(n1971), .S0(n69[13]), .S1(n69[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298_add_4_15.INIT0 = 16'hfaaa;
    defparam count_298_add_4_15.INIT1 = 16'hfaaa;
    defparam count_298_add_4_15.INJECT1_0 = "NO";
    defparam count_298_add_4_15.INJECT1_1 = "NO";
    CCU2D count_298_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1971), .S0(n69[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_298_add_4_17.INIT0 = 16'hfaaa;
    defparam count_298_add_4_17.INIT1 = 16'h0000;
    defparam count_298_add_4_17.INJECT1_0 = "NO";
    defparam count_298_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator
//

module comparator (samplestarted, n2124, \gatedcount[10] , \Endofopticalsample[10] , 
            GND_net, \gatedcount[11] , \Endofopticalsample[11] , \gatedcount[8] , 
            \Endofopticalsample[8] , \gatedcount[9] , \Endofopticalsample[9] , 
            \gatedcount[6] , \Endofopticalsample[6] , \gatedcount[7] , 
            \Endofopticalsample[7] , \gatedcount[4] , \Endofopticalsample[4] , 
            \gatedcount[5] , \Endofopticalsample[5] , \gatedcount[2] , 
            \Endofopticalsample[2] , \gatedcount[3] , \Endofopticalsample[3] , 
            \gatedcount[14] , \Endofopticalsample[14] , \gatedcount[15] , 
            \Endofopticalsample[15] , \gatedcount[1] , \Endofopticalsample[1] , 
            \gatedcount[12] , \Endofopticalsample[12] , \gatedcount[13] , 
            \Endofopticalsample[13] , MW_invalid_c, ADC_sample_N_19) /* synthesis syn_module_defined=1 */ ;
    input samplestarted;
    output n2124;
    input \gatedcount[10] ;
    input \Endofopticalsample[10] ;
    input GND_net;
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
    input \gatedcount[14] ;
    input \Endofopticalsample[14] ;
    input \gatedcount[15] ;
    input \Endofopticalsample[15] ;
    input \gatedcount[1] ;
    input \Endofopticalsample[1] ;
    input \gatedcount[12] ;
    input \Endofopticalsample[12] ;
    input \gatedcount[13] ;
    input \Endofopticalsample[13] ;
    input MW_invalid_c;
    output ADC_sample_N_19;
    
    
    wire n503, n1882, n1883, n1881, n1880, n1879, n1878, n1884, 
        n1885;
    
    LUT4 i1_2_lut_rep_4 (.A(n503), .B(samplestarted), .Z(n2124)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_4.init = 16'h4444;
    CCU2D sub_237_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endofopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endofopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1882), .COUT(n1883));
    defparam sub_237_add_2_12.INIT0 = 16'h5999;
    defparam sub_237_add_2_12.INIT1 = 16'h5999;
    defparam sub_237_add_2_12.INJECT1_0 = "NO";
    defparam sub_237_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endofopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endofopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1881), .COUT(n1882));
    defparam sub_237_add_2_10.INIT0 = 16'h5999;
    defparam sub_237_add_2_10.INIT1 = 16'h5999;
    defparam sub_237_add_2_10.INJECT1_0 = "NO";
    defparam sub_237_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endofopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endofopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1880), .COUT(n1881));
    defparam sub_237_add_2_8.INIT0 = 16'h5999;
    defparam sub_237_add_2_8.INIT1 = 16'h5999;
    defparam sub_237_add_2_8.INJECT1_0 = "NO";
    defparam sub_237_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_6 (.A0(\gatedcount[4] ), .B0(\Endofopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Endofopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1879), .COUT(n1880));
    defparam sub_237_add_2_6.INIT0 = 16'h5999;
    defparam sub_237_add_2_6.INIT1 = 16'h5999;
    defparam sub_237_add_2_6.INJECT1_0 = "NO";
    defparam sub_237_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_4 (.A0(\gatedcount[2] ), .B0(\Endofopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Endofopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1878), .COUT(n1879));
    defparam sub_237_add_2_4.INIT0 = 16'h5999;
    defparam sub_237_add_2_4.INIT1 = 16'h5999;
    defparam sub_237_add_2_4.INJECT1_0 = "NO";
    defparam sub_237_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endofopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endofopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1884), .COUT(n1885));
    defparam sub_237_add_2_16.INIT0 = 16'h5999;
    defparam sub_237_add_2_16.INIT1 = 16'h5999;
    defparam sub_237_add_2_16.INJECT1_0 = "NO";
    defparam sub_237_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1885), .S0(n503));
    defparam sub_237_add_2_cout.INIT0 = 16'h0000;
    defparam sub_237_add_2_cout.INIT1 = 16'h0000;
    defparam sub_237_add_2_cout.INJECT1_0 = "NO";
    defparam sub_237_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Endofopticalsample[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1878));
    defparam sub_237_add_2_2.INIT0 = 16'h0000;
    defparam sub_237_add_2_2.INIT1 = 16'h5999;
    defparam sub_237_add_2_2.INJECT1_0 = "NO";
    defparam sub_237_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endofopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endofopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1883), .COUT(n1884));
    defparam sub_237_add_2_14.INIT0 = 16'h5999;
    defparam sub_237_add_2_14.INIT1 = 16'h5999;
    defparam sub_237_add_2_14.INJECT1_0 = "NO";
    defparam sub_237_add_2_14.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(n503), .B(samplestarted), .C(MW_invalid_c), 
         .Z(ADC_sample_N_19)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
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
    
    
    wire n1936, n1935, n1934, n1933, n1932, n1931, n1930, n1929;
    
    CCU2D sub_235_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1936), .S0(samplestarted));
    defparam sub_235_add_2_cout.INIT0 = 16'h0000;
    defparam sub_235_add_2_cout.INIT1 = 16'h0000;
    defparam sub_235_add_2_cout.INJECT1_0 = "NO";
    defparam sub_235_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1935), .COUT(n1936));
    defparam sub_235_add_2_16.INIT0 = 16'h5999;
    defparam sub_235_add_2_16.INIT1 = 16'h5999;
    defparam sub_235_add_2_16.INJECT1_0 = "NO";
    defparam sub_235_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1934), .COUT(n1935));
    defparam sub_235_add_2_14.INIT0 = 16'h5999;
    defparam sub_235_add_2_14.INIT1 = 16'h5999;
    defparam sub_235_add_2_14.INJECT1_0 = "NO";
    defparam sub_235_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1933), .COUT(n1934));
    defparam sub_235_add_2_12.INIT0 = 16'h5999;
    defparam sub_235_add_2_12.INIT1 = 16'h5999;
    defparam sub_235_add_2_12.INJECT1_0 = "NO";
    defparam sub_235_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1932), .COUT(n1933));
    defparam sub_235_add_2_10.INIT0 = 16'h5999;
    defparam sub_235_add_2_10.INIT1 = 16'h5999;
    defparam sub_235_add_2_10.INJECT1_0 = "NO";
    defparam sub_235_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1931), .COUT(n1932));
    defparam sub_235_add_2_8.INIT0 = 16'h5999;
    defparam sub_235_add_2_8.INIT1 = 16'h5999;
    defparam sub_235_add_2_8.INJECT1_0 = "NO";
    defparam sub_235_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1930), .COUT(n1931));
    defparam sub_235_add_2_6.INIT0 = 16'h5999;
    defparam sub_235_add_2_6.INIT1 = 16'h5999;
    defparam sub_235_add_2_6.INJECT1_0 = "NO";
    defparam sub_235_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_4 (.A0(\gatedcount[2] ), .B0(\Startopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1929), .COUT(n1930));
    defparam sub_235_add_2_4.INIT0 = 16'h5999;
    defparam sub_235_add_2_4.INIT1 = 16'h5999;
    defparam sub_235_add_2_4.INJECT1_0 = "NO";
    defparam sub_235_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1929));
    defparam sub_235_add_2_2.INIT0 = 16'h0000;
    defparam sub_235_add_2_2.INIT1 = 16'h5999;
    defparam sub_235_add_2_2.INJECT1_0 = "NO";
    defparam sub_235_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (\gatedcount[14] , \gatedcount[11] , n4, \gatedcount[10] , 
            \gatedcount[9] , \gatedcount[6] , n2053, \gatedcount[7] , 
            \gatedcount[8] , \gatedcount[4] , \gatedcount[5] , n4_adj_1, 
            n2054) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[14] ;
    input \gatedcount[11] ;
    output n4;
    input \gatedcount[10] ;
    input \gatedcount[9] ;
    input \gatedcount[6] ;
    output n2053;
    input \gatedcount[7] ;
    input \gatedcount[8] ;
    input \gatedcount[4] ;
    input \gatedcount[5] ;
    input n4_adj_1;
    output n2054;
    
    
    wire n6;
    
    LUT4 i1_2_lut (.A(\gatedcount[14] ), .B(\gatedcount[11] ), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4_4_lut (.A(\gatedcount[10] ), .B(\gatedcount[9] ), .C(\gatedcount[6] ), 
         .D(n6), .Z(n2053)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_26 (.A(\gatedcount[7] ), .B(\gatedcount[8] ), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_26.init = 16'h8888;
    LUT4 i1_4_lut (.A(\gatedcount[4] ), .B(n2053), .C(\gatedcount[5] ), 
         .D(n4_adj_1), .Z(n2054)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut.init = 16'hc8c0;
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (GND_net, n465, \gatedcount[14] , \Endofprobepulse[14] , 
            \gatedcount[15] , \Endofprobepulse[15] , \gatedcount[12] , 
            \Endofprobepulse[12] , \gatedcount[13] , \Endofprobepulse[13] , 
            \gatedcount[10] , \Endofprobepulse[10] , \gatedcount[11] , 
            \Endofprobepulse[11] , \gatedcount[8] , \Endofprobepulse[8] , 
            \gatedcount[9] , \Endofprobepulse[9] , \gatedcount[6] , \Endofprobepulse[6] , 
            \gatedcount[7] , \Endofprobepulse[7] , \gatedcount[4] , \Resetandrepeat[4] , 
            \gatedcount[5] , \Resetandrepeat[5] , \gatedcount[2] , \Resetandrepeat[2] , 
            \gatedcount[3] , \Resetandrepeat[3] , \gatedcount[1] , \Resetandrepeat[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n465;
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
    
    
    wire n1928, n1927, n1926, n1925, n1924, n1923, n1922, n1921;
    
    CCU2D sub_233_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1928), .S0(n465));
    defparam sub_233_add_2_cout.INIT0 = 16'h0000;
    defparam sub_233_add_2_cout.INIT1 = 16'h0000;
    defparam sub_233_add_2_cout.INJECT1_0 = "NO";
    defparam sub_233_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1927), .COUT(n1928));
    defparam sub_233_add_2_16.INIT0 = 16'h5999;
    defparam sub_233_add_2_16.INIT1 = 16'h5999;
    defparam sub_233_add_2_16.INJECT1_0 = "NO";
    defparam sub_233_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1926), .COUT(n1927));
    defparam sub_233_add_2_14.INIT0 = 16'h5999;
    defparam sub_233_add_2_14.INIT1 = 16'h5999;
    defparam sub_233_add_2_14.INJECT1_0 = "NO";
    defparam sub_233_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1925), .COUT(n1926));
    defparam sub_233_add_2_12.INIT0 = 16'h5999;
    defparam sub_233_add_2_12.INIT1 = 16'h5999;
    defparam sub_233_add_2_12.INJECT1_0 = "NO";
    defparam sub_233_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1924), .COUT(n1925));
    defparam sub_233_add_2_10.INIT0 = 16'h5999;
    defparam sub_233_add_2_10.INIT1 = 16'h5999;
    defparam sub_233_add_2_10.INJECT1_0 = "NO";
    defparam sub_233_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1923), .COUT(n1924));
    defparam sub_233_add_2_8.INIT0 = 16'h5999;
    defparam sub_233_add_2_8.INIT1 = 16'h5999;
    defparam sub_233_add_2_8.INJECT1_0 = "NO";
    defparam sub_233_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_6 (.A0(\gatedcount[4] ), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1922), .COUT(n1923));
    defparam sub_233_add_2_6.INIT0 = 16'h5999;
    defparam sub_233_add_2_6.INIT1 = 16'h5999;
    defparam sub_233_add_2_6.INJECT1_0 = "NO";
    defparam sub_233_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_4 (.A0(\gatedcount[2] ), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1921), .COUT(n1922));
    defparam sub_233_add_2_4.INIT0 = 16'h5999;
    defparam sub_233_add_2_4.INIT1 = 16'h5999;
    defparam sub_233_add_2_4.INJECT1_0 = "NO";
    defparam sub_233_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1921));
    defparam sub_233_add_2_2.INIT0 = 16'h0000;
    defparam sub_233_add_2_2.INIT1 = 16'h5999;
    defparam sub_233_add_2_2.INJECT1_0 = "NO";
    defparam sub_233_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U7
//

module comparator_U7 (GND_net, probestarted, \gatedcount[14] , \Startofprobepulse[14] , 
            \gatedcount[15] , \Startofprobepulse[15] , \gatedcount[12] , 
            \Startofprobepulse[12] , \gatedcount[13] , \Startofprobepulse[13] , 
            \gatedcount[10] , \Startofprobepulse[10] , \gatedcount[11] , 
            \Startofprobepulse[11] , \gatedcount[8] , \Startofprobepulse[8] , 
            \gatedcount[9] , \Startofprobepulse[9] , \gatedcount[6] , 
            \Startofprobepulse[6] , \gatedcount[7] , \Startofprobepulse[7] , 
            \gatedcount[4] , \Startofprobepulse[4] , \gatedcount[5] , 
            \Startofprobepulse[5] , \gatedcount[2] , \Startopticalsample[2] , 
            \gatedcount[3] , \Startopticalsample[3] , \gatedcount[1] , 
            \Resetandrepeat[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
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
    input \gatedcount[2] ;
    input \Startopticalsample[2] ;
    input \gatedcount[3] ;
    input \Startopticalsample[3] ;
    input \gatedcount[1] ;
    input \Resetandrepeat[1] ;
    
    
    wire n1944, n1943, n1942, n1941, n1940, n1939, n1938, n1937;
    
    CCU2D sub_231_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1944), .S0(probestarted));
    defparam sub_231_add_2_cout.INIT0 = 16'h0000;
    defparam sub_231_add_2_cout.INIT1 = 16'h0000;
    defparam sub_231_add_2_cout.INJECT1_0 = "NO";
    defparam sub_231_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1943), .COUT(n1944));
    defparam sub_231_add_2_16.INIT0 = 16'h5999;
    defparam sub_231_add_2_16.INIT1 = 16'h5999;
    defparam sub_231_add_2_16.INJECT1_0 = "NO";
    defparam sub_231_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1942), .COUT(n1943));
    defparam sub_231_add_2_14.INIT0 = 16'h5999;
    defparam sub_231_add_2_14.INIT1 = 16'h5999;
    defparam sub_231_add_2_14.INJECT1_0 = "NO";
    defparam sub_231_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1941), .COUT(n1942));
    defparam sub_231_add_2_12.INIT0 = 16'h5999;
    defparam sub_231_add_2_12.INIT1 = 16'h5999;
    defparam sub_231_add_2_12.INJECT1_0 = "NO";
    defparam sub_231_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1940), .COUT(n1941));
    defparam sub_231_add_2_10.INIT0 = 16'h5999;
    defparam sub_231_add_2_10.INIT1 = 16'h5999;
    defparam sub_231_add_2_10.INJECT1_0 = "NO";
    defparam sub_231_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1939), .COUT(n1940));
    defparam sub_231_add_2_8.INIT0 = 16'h5999;
    defparam sub_231_add_2_8.INIT1 = 16'h5999;
    defparam sub_231_add_2_8.INJECT1_0 = "NO";
    defparam sub_231_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startofprobepulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startofprobepulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1938), .COUT(n1939));
    defparam sub_231_add_2_6.INIT0 = 16'h5999;
    defparam sub_231_add_2_6.INIT1 = 16'h5999;
    defparam sub_231_add_2_6.INJECT1_0 = "NO";
    defparam sub_231_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_4 (.A0(\gatedcount[2] ), .B0(\Startopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1937), .COUT(n1938));
    defparam sub_231_add_2_4.INIT0 = 16'h5999;
    defparam sub_231_add_2_4.INIT1 = 16'h5999;
    defparam sub_231_add_2_4.INJECT1_0 = "NO";
    defparam sub_231_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1937));
    defparam sub_231_add_2_2.INIT0 = 16'h0000;
    defparam sub_231_add_2_2.INIT1 = 16'h5999;
    defparam sub_231_add_2_2.INJECT1_0 = "NO";
    defparam sub_231_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (pieovertwo_minus, pieovertwo_plus, GND_net, 
            \AdjustablePieOverTwo[1] , \AdjustablePieOverTwo[2] , \AdjustablePieOverTwo[3] , 
            \AdjustablePieOverTwo[4] , \AdjustablePieOverTwo[5] , \AdjustablePieOverTwo[6] , 
            \AdjustablePieOverTwo[7] , \AdjustablePieOverTwo[8] , \AdjustablePieOverTwo[9] , 
            \AdjustablePieOverTwo[10] , \AdjustablePieOverTwo[15] , \AdjustablePieOverTwo[13] , 
            \AdjustablePieOverTwo[14] , \AdjustablePieOverTwo[11] , \AdjustablePieOverTwo[12] , 
            load_defaults, clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input GND_net;
    output \AdjustablePieOverTwo[1] ;
    output \AdjustablePieOverTwo[2] ;
    output \AdjustablePieOverTwo[3] ;
    output \AdjustablePieOverTwo[4] ;
    output \AdjustablePieOverTwo[5] ;
    output \AdjustablePieOverTwo[6] ;
    output \AdjustablePieOverTwo[7] ;
    output \AdjustablePieOverTwo[8] ;
    output \AdjustablePieOverTwo[9] ;
    output \AdjustablePieOverTwo[10] ;
    output \AdjustablePieOverTwo[15] ;
    output \AdjustablePieOverTwo[13] ;
    output \AdjustablePieOverTwo[14] ;
    output \AdjustablePieOverTwo[11] ;
    output \AdjustablePieOverTwo[12] ;
    input load_defaults;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1805;
    wire [14:0]n1349;
    wire [15:0]count_15__N_130;
    
    wire n1806, n1801, n1802, n1807, n1804, n1803, n1897, n1898, 
        n1899, n1900, n1901, n1902, n1904, n1903, n4;
    
    CCU2D add_359_11 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1349[10]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1349[11]), 
          .D1(GND_net), .CIN(n1805), .COUT(n1806), .S0(count_15__N_130[11]), 
          .S1(count_15__N_130[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_359_11.INIT0 = 16'hd2d2;
    defparam add_359_11.INIT1 = 16'hd2d2;
    defparam add_359_11.INJECT1_0 = "NO";
    defparam add_359_11.INJECT1_1 = "NO";
    CCU2D add_359_3 (.A0(n1349[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1349[3]), 
          .D1(GND_net), .CIN(n1801), .COUT(n1802), .S0(count_15__N_130[3]), 
          .S1(count_15__N_130[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_359_3.INIT0 = 16'h5aaa;
    defparam add_359_3.INIT1 = 16'hd2d2;
    defparam add_359_3.INJECT1_0 = "NO";
    defparam add_359_3.INJECT1_1 = "NO";
    CCU2D add_359_13 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1349[12]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1349[13]), 
          .D1(GND_net), .CIN(n1806), .COUT(n1807), .S0(count_15__N_130[13]), 
          .S1(count_15__N_130[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_359_13.INIT0 = 16'hd2d2;
    defparam add_359_13.INIT1 = 16'hd2d2;
    defparam add_359_13.INJECT1_0 = "NO";
    defparam add_359_13.INJECT1_1 = "NO";
    CCU2D add_359_9 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1349[8]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1349[9]), 
          .D1(GND_net), .CIN(n1804), .COUT(n1805), .S0(count_15__N_130[9]), 
          .S1(count_15__N_130[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_359_9.INIT0 = 16'hd2d2;
    defparam add_359_9.INIT1 = 16'hd2d2;
    defparam add_359_9.INJECT1_0 = "NO";
    defparam add_359_9.INJECT1_1 = "NO";
    CCU2D add_359_7 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1349[6]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1349[7]), 
          .D1(GND_net), .CIN(n1803), .COUT(n1804), .S0(count_15__N_130[7]), 
          .S1(count_15__N_130[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_359_7.INIT0 = 16'hd2d2;
    defparam add_359_7.INIT1 = 16'hd2d2;
    defparam add_359_7.INJECT1_0 = "NO";
    defparam add_359_7.INJECT1_1 = "NO";
    CCU2D add_287_338_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(GND_net), 
          .D1(GND_net), .COUT(n1897));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_287_338_add_1_1.INIT0 = 16'hF000;
    defparam add_287_338_add_1_1.INIT1 = 16'hdddd;
    defparam add_287_338_add_1_1.INJECT1_0 = "NO";
    defparam add_287_338_add_1_1.INJECT1_1 = "NO";
    CCU2D add_287_338_add_1_3 (.A0(\AdjustablePieOverTwo[1] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[2] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1897), .COUT(n1898), 
          .S0(count_15__N_130[1]), .S1(n1349[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_287_338_add_1_3.INIT0 = 16'h5666;
    defparam add_287_338_add_1_3.INIT1 = 16'h5aaa;
    defparam add_287_338_add_1_3.INJECT1_0 = "NO";
    defparam add_287_338_add_1_3.INJECT1_1 = "NO";
    CCU2D add_287_338_add_1_5 (.A0(\AdjustablePieOverTwo[3] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[4] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1898), .COUT(n1899), 
          .S0(n1349[2]), .S1(n1349[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_287_338_add_1_5.INIT0 = 16'h5666;
    defparam add_287_338_add_1_5.INIT1 = 16'h5aaa;
    defparam add_287_338_add_1_5.INJECT1_0 = "NO";
    defparam add_287_338_add_1_5.INJECT1_1 = "NO";
    CCU2D add_287_338_add_1_7 (.A0(\AdjustablePieOverTwo[5] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[6] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1899), .COUT(n1900), 
          .S0(n1349[4]), .S1(n1349[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_287_338_add_1_7.INIT0 = 16'h5aaa;
    defparam add_287_338_add_1_7.INIT1 = 16'h5aaa;
    defparam add_287_338_add_1_7.INJECT1_0 = "NO";
    defparam add_287_338_add_1_7.INJECT1_1 = "NO";
    CCU2D add_287_338_add_1_9 (.A0(\AdjustablePieOverTwo[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[8] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1900), .COUT(n1901), 
          .S0(n1349[6]), .S1(n1349[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_287_338_add_1_9.INIT0 = 16'h5aaa;
    defparam add_287_338_add_1_9.INIT1 = 16'h5aaa;
    defparam add_287_338_add_1_9.INJECT1_0 = "NO";
    defparam add_287_338_add_1_9.INJECT1_1 = "NO";
    CCU2D add_287_338_add_1_11 (.A0(\AdjustablePieOverTwo[9] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[10] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1901), .COUT(n1902), 
          .S0(n1349[8]), .S1(n1349[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_287_338_add_1_11.INIT0 = 16'h5aaa;
    defparam add_287_338_add_1_11.INIT1 = 16'h5aaa;
    defparam add_287_338_add_1_11.INJECT1_0 = "NO";
    defparam add_287_338_add_1_11.INJECT1_1 = "NO";
    CCU2D add_287_338_add_1_17 (.A0(\AdjustablePieOverTwo[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1904), .S0(n1349[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_287_338_add_1_17.INIT0 = 16'h5aaa;
    defparam add_287_338_add_1_17.INIT1 = 16'h0000;
    defparam add_287_338_add_1_17.INJECT1_0 = "NO";
    defparam add_287_338_add_1_17.INJECT1_1 = "NO";
    CCU2D add_287_338_add_1_15 (.A0(\AdjustablePieOverTwo[13] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[14] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1903), .COUT(n1904), 
          .S0(n1349[12]), .S1(n1349[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_287_338_add_1_15.INIT0 = 16'h5aaa;
    defparam add_287_338_add_1_15.INIT1 = 16'h5aaa;
    defparam add_287_338_add_1_15.INJECT1_0 = "NO";
    defparam add_287_338_add_1_15.INJECT1_1 = "NO";
    CCU2D add_359_15 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1349[14]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1807), .S0(count_15__N_130[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_359_15.INIT0 = 16'hd2d2;
    defparam add_359_15.INIT1 = 16'h0000;
    defparam add_359_15.INJECT1_0 = "NO";
    defparam add_359_15.INJECT1_1 = "NO";
    CCU2D add_287_338_add_1_13 (.A0(\AdjustablePieOverTwo[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[12] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1902), .COUT(n1903), 
          .S0(n1349[10]), .S1(n1349[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_287_338_add_1_13.INIT0 = 16'h5aaa;
    defparam add_287_338_add_1_13.INIT1 = 16'h5aaa;
    defparam add_287_338_add_1_13.INJECT1_0 = "NO";
    defparam add_287_338_add_1_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(pieovertwo_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_359_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1349[1]), 
          .D1(GND_net), .COUT(n1801), .S1(count_15__N_130[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_359_1.INIT0 = 16'hF000;
    defparam add_359_1.INIT1 = 16'hd2d2;
    defparam add_359_1.INJECT1_0 = "NO";
    defparam add_359_1.INJECT1_1 = "NO";
    CCU2D add_359_5 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1349[4]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1349[5]), 
          .D1(GND_net), .CIN(n1802), .COUT(n1803), .S0(count_15__N_130[5]), 
          .S1(count_15__N_130[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_359_5.INIT0 = 16'hd2d2;
    defparam add_359_5.INIT1 = 16'hd2d2;
    defparam add_359_5.INJECT1_0 = "NO";
    defparam add_359_5.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_130[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_130[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_130[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_130[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_130[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_130[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_130[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_130[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_130[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3IX count_i6 (.D(count_15__N_130[6]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_130[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_130[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_130[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_130[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    FD1S3JX count_i1 (.D(count_15__N_130[1]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i1.GSR = "ENABLED";
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
// Verilog Description of module comparator_U8
//

module comparator_U8 (GND_net, loop, \gatedcount[14] , \Resetandrepeat[14] , 
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
    
    
    wire n1877, n1876, n1875, n1874, n1873, n1872, n1871, n1870;
    
    CCU2D sub_239_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1877), .S0(loop));
    defparam sub_239_add_2_cout.INIT0 = 16'h0000;
    defparam sub_239_add_2_cout.INIT1 = 16'h0000;
    defparam sub_239_add_2_cout.INJECT1_0 = "NO";
    defparam sub_239_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_16 (.A0(\gatedcount[14] ), .B0(\Resetandrepeat[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Resetandrepeat[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1876), .COUT(n1877));
    defparam sub_239_add_2_16.INIT0 = 16'h5999;
    defparam sub_239_add_2_16.INIT1 = 16'h5999;
    defparam sub_239_add_2_16.INJECT1_0 = "NO";
    defparam sub_239_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_14 (.A0(\gatedcount[12] ), .B0(\Resetandrepeat[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Resetandrepeat[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1875), .COUT(n1876));
    defparam sub_239_add_2_14.INIT0 = 16'h5999;
    defparam sub_239_add_2_14.INIT1 = 16'h5999;
    defparam sub_239_add_2_14.INJECT1_0 = "NO";
    defparam sub_239_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_12 (.A0(\gatedcount[10] ), .B0(\Resetandrepeat[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Resetandrepeat[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1874), .COUT(n1875));
    defparam sub_239_add_2_12.INIT0 = 16'h5999;
    defparam sub_239_add_2_12.INIT1 = 16'h5999;
    defparam sub_239_add_2_12.INJECT1_0 = "NO";
    defparam sub_239_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_10 (.A0(\gatedcount[8] ), .B0(\Resetandrepeat[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Resetandrepeat[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1873), .COUT(n1874));
    defparam sub_239_add_2_10.INIT0 = 16'h5999;
    defparam sub_239_add_2_10.INIT1 = 16'h5999;
    defparam sub_239_add_2_10.INJECT1_0 = "NO";
    defparam sub_239_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_8 (.A0(\gatedcount[6] ), .B0(\Resetandrepeat[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Resetandrepeat[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1872), .COUT(n1873));
    defparam sub_239_add_2_8.INIT0 = 16'h5999;
    defparam sub_239_add_2_8.INIT1 = 16'h5999;
    defparam sub_239_add_2_8.INJECT1_0 = "NO";
    defparam sub_239_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_6 (.A0(\gatedcount[4] ), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1871), .COUT(n1872));
    defparam sub_239_add_2_6.INIT0 = 16'h5999;
    defparam sub_239_add_2_6.INIT1 = 16'h5999;
    defparam sub_239_add_2_6.INJECT1_0 = "NO";
    defparam sub_239_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_4 (.A0(\gatedcount[2] ), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1870), .COUT(n1871));
    defparam sub_239_add_2_4.INIT0 = 16'h5999;
    defparam sub_239_add_2_4.INIT1 = 16'h5999;
    defparam sub_239_add_2_4.INJECT1_0 = "NO";
    defparam sub_239_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1870));
    defparam sub_239_add_2_2.INIT0 = 16'h0000;
    defparam sub_239_add_2_2.INIT1 = 16'h5999;
    defparam sub_239_add_2_2.INJECT1_0 = "NO";
    defparam sub_239_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload_U9
//

module countupdownpreload_U9 (\AdjustableFreePrecession[14] , GND_net, \AdjustableFreePrecession[15] , 
            \AdjustableFreePrecession[12] , \AdjustableFreePrecession[13] , 
            \AdjustableFreePrecession[10] , \AdjustableFreePrecession[11] , 
            \AdjustableFreePrecession[8] , \AdjustableFreePrecession[9] , 
            \AdjustableFreePrecession[6] , freeprecess_plus, \AdjustableFreePrecession[7] , 
            \AdjustableFreePrecession[4] , \AdjustableFreePrecession[5] , 
            \AdjustableFreePrecession[2] , \AdjustableFreePrecession[3] , 
            freeprecess_minus, load_defaults, clk_2M5) /* synthesis syn_module_defined=1 */ ;
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
    input freeprecess_plus;
    output \AdjustableFreePrecession[7] ;
    output \AdjustableFreePrecession[4] ;
    output \AdjustableFreePrecession[5] ;
    output \AdjustableFreePrecession[2] ;
    output \AdjustableFreePrecession[3] ;
    input freeprecess_minus;
    input load_defaults;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1962;
    wire [13:0]n1384;
    
    wire n1961, n1960, n1959, n1958, n1957, n1956;
    wire [15:0]count_15__N_130;
    
    wire n4, n1980, n1981, n1982, n1983, n1984, n1985;
    
    CCU2D add_291_342_add_1_15 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1962), .S0(n1384[12]), 
          .S1(n1384[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_291_342_add_1_15.INIT0 = 16'h5aaa;
    defparam add_291_342_add_1_15.INIT1 = 16'h5aaa;
    defparam add_291_342_add_1_15.INJECT1_0 = "NO";
    defparam add_291_342_add_1_15.INJECT1_1 = "NO";
    CCU2D add_291_342_add_1_13 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1961), .COUT(n1962), 
          .S0(n1384[10]), .S1(n1384[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_291_342_add_1_13.INIT0 = 16'h5aaa;
    defparam add_291_342_add_1_13.INIT1 = 16'h5aaa;
    defparam add_291_342_add_1_13.INJECT1_0 = "NO";
    defparam add_291_342_add_1_13.INJECT1_1 = "NO";
    CCU2D add_291_342_add_1_11 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1960), .COUT(n1961), 
          .S0(n1384[8]), .S1(n1384[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_291_342_add_1_11.INIT0 = 16'h5aaa;
    defparam add_291_342_add_1_11.INIT1 = 16'h5aaa;
    defparam add_291_342_add_1_11.INJECT1_0 = "NO";
    defparam add_291_342_add_1_11.INJECT1_1 = "NO";
    CCU2D add_291_342_add_1_9 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1959), .COUT(n1960), 
          .S0(n1384[6]), .S1(n1384[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_291_342_add_1_9.INIT0 = 16'h5aaa;
    defparam add_291_342_add_1_9.INIT1 = 16'h5aaa;
    defparam add_291_342_add_1_9.INJECT1_0 = "NO";
    defparam add_291_342_add_1_9.INJECT1_1 = "NO";
    CCU2D add_291_342_add_1_7 (.A0(\AdjustableFreePrecession[6] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1958), .COUT(n1959), 
          .S0(n1384[4]), .S1(n1384[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_291_342_add_1_7.INIT0 = 16'h5666;
    defparam add_291_342_add_1_7.INIT1 = 16'h5aaa;
    defparam add_291_342_add_1_7.INJECT1_0 = "NO";
    defparam add_291_342_add_1_7.INJECT1_1 = "NO";
    CCU2D add_291_342_add_1_5 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), 
          .B1(freeprecess_plus), .C1(GND_net), .D1(GND_net), .CIN(n1957), 
          .COUT(n1958), .S0(n1384[2]), .S1(n1384[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_291_342_add_1_5.INIT0 = 16'h5aaa;
    defparam add_291_342_add_1_5.INIT1 = 16'h5666;
    defparam add_291_342_add_1_5.INJECT1_0 = "NO";
    defparam add_291_342_add_1_5.INJECT1_1 = "NO";
    CCU2D add_291_342_add_1_3 (.A0(\AdjustableFreePrecession[2] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[3] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1956), .COUT(n1957), 
          .S0(count_15__N_130[2]), .S1(n1384[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_291_342_add_1_3.INIT0 = 16'h5666;
    defparam add_291_342_add_1_3.INIT1 = 16'h5aaa;
    defparam add_291_342_add_1_3.INJECT1_0 = "NO";
    defparam add_291_342_add_1_3.INJECT1_1 = "NO";
    CCU2D add_291_342_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(GND_net), .D1(GND_net), .COUT(n1956));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_291_342_add_1_1.INIT0 = 16'hF000;
    defparam add_291_342_add_1_1.INIT1 = 16'hdddd;
    defparam add_291_342_add_1_1.INJECT1_0 = "NO";
    defparam add_291_342_add_1_1.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_130[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_130[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_130[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3JX count_i12 (.D(count_15__N_130[12]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3JX count_i11 (.D(count_15__N_130[11]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_130[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_130[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3IX count_i8 (.D(count_15__N_130[8]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3JX count_i7 (.D(count_15__N_130[7]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3JX count_i6 (.D(count_15__N_130[6]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3JX count_i5 (.D(count_15__N_130[5]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_130[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3IX count_i3 (.D(count_15__N_130[3]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3JX count_i2 (.D(count_15__N_130[2]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=63, LSE_RLINE=63 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(freeprecess_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_358_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1384[1]), 
          .D1(GND_net), .COUT(n1980), .S1(count_15__N_130[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_358_1.INIT0 = 16'hF000;
    defparam add_358_1.INIT1 = 16'hd2d2;
    defparam add_358_1.INJECT1_0 = "NO";
    defparam add_358_1.INJECT1_1 = "NO";
    CCU2D add_358_3 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1384[2]), 
          .D0(GND_net), .A1(n1384[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1980), .COUT(n1981), .S0(count_15__N_130[4]), .S1(count_15__N_130[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_358_3.INIT0 = 16'hd2d2;
    defparam add_358_3.INIT1 = 16'h5aaa;
    defparam add_358_3.INJECT1_0 = "NO";
    defparam add_358_3.INJECT1_1 = "NO";
    CCU2D add_358_5 (.A0(n1384[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1384[5]), 
          .D1(GND_net), .CIN(n1981), .COUT(n1982), .S0(count_15__N_130[6]), 
          .S1(count_15__N_130[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_358_5.INIT0 = 16'h5aaa;
    defparam add_358_5.INIT1 = 16'hd2d2;
    defparam add_358_5.INJECT1_0 = "NO";
    defparam add_358_5.INJECT1_1 = "NO";
    CCU2D add_358_7 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1384[6]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1384[7]), .D1(GND_net), .CIN(n1982), .COUT(n1983), .S0(count_15__N_130[8]), 
          .S1(count_15__N_130[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_358_7.INIT0 = 16'hd2d2;
    defparam add_358_7.INIT1 = 16'hd2d2;
    defparam add_358_7.INJECT1_0 = "NO";
    defparam add_358_7.INJECT1_1 = "NO";
    CCU2D add_358_9 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1384[8]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1384[9]), .D1(GND_net), .CIN(n1983), .COUT(n1984), .S0(count_15__N_130[10]), 
          .S1(count_15__N_130[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_358_9.INIT0 = 16'hd2d2;
    defparam add_358_9.INIT1 = 16'hd2d2;
    defparam add_358_9.INJECT1_0 = "NO";
    defparam add_358_9.INJECT1_1 = "NO";
    CCU2D add_358_11 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1384[10]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1384[11]), .D1(GND_net), .CIN(n1984), .COUT(n1985), .S0(count_15__N_130[12]), 
          .S1(count_15__N_130[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_358_11.INIT0 = 16'hd2d2;
    defparam add_358_11.INIT1 = 16'hd2d2;
    defparam add_358_11.INJECT1_0 = "NO";
    defparam add_358_11.INJECT1_1 = "NO";
    CCU2D add_358_13 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1384[12]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1384[13]), .D1(GND_net), .CIN(n1985), .S0(count_15__N_130[14]), 
          .S1(count_15__N_130[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_358_13.INIT0 = 16'hd2d2;
    defparam add_358_13.INIT1 = 16'hd2d2;
    defparam add_358_13.INJECT1_0 = "NO";
    defparam add_358_13.INJECT1_1 = "NO";
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
// Verilog Description of module comparator_U10
//

module comparator_U10 (GND_net, n427, \gatedcount[14] , \Endof2ndMWpulse[14] , 
            \gatedcount[15] , \Endof2ndMWpulse[15] , \gatedcount[12] , 
            \Endof2ndMWpulse[12] , \gatedcount[13] , \Endof2ndMWpulse[13] , 
            \gatedcount[10] , \Endof2ndMWpulse[10] , \gatedcount[11] , 
            \Endof2ndMWpulse[11] , \gatedcount[8] , \Endof2ndMWpulse[8] , 
            \gatedcount[9] , \Endof2ndMWpulse[9] , \gatedcount[6] , \Endof2ndMWpulse[6] , 
            \gatedcount[7] , \Endof2ndMWpulse[7] , \gatedcount[4] , \Endof2ndMWpulse[4] , 
            \gatedcount[5] , \Endof2ndMWpulse[5] , \gatedcount[2] , \Endof2ndMWpulse[2] , 
            \gatedcount[3] , \Endof2ndMWpulse[3] , \gatedcount[1] , \Endof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n427;
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
    
    
    wire n1912, n1911, n1910, n1909, n1908, n1907, n1906, n1905;
    
    CCU2D sub_229_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1912), .S0(n427));
    defparam sub_229_add_2_cout.INIT0 = 16'h0000;
    defparam sub_229_add_2_cout.INIT1 = 16'h0000;
    defparam sub_229_add_2_cout.INJECT1_0 = "NO";
    defparam sub_229_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1911), .COUT(n1912));
    defparam sub_229_add_2_16.INIT0 = 16'h5999;
    defparam sub_229_add_2_16.INIT1 = 16'h5999;
    defparam sub_229_add_2_16.INJECT1_0 = "NO";
    defparam sub_229_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1910), .COUT(n1911));
    defparam sub_229_add_2_14.INIT0 = 16'h5999;
    defparam sub_229_add_2_14.INIT1 = 16'h5999;
    defparam sub_229_add_2_14.INJECT1_0 = "NO";
    defparam sub_229_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1909), .COUT(n1910));
    defparam sub_229_add_2_12.INIT0 = 16'h5999;
    defparam sub_229_add_2_12.INIT1 = 16'h5999;
    defparam sub_229_add_2_12.INJECT1_0 = "NO";
    defparam sub_229_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1908), .COUT(n1909));
    defparam sub_229_add_2_10.INIT0 = 16'h5999;
    defparam sub_229_add_2_10.INIT1 = 16'h5999;
    defparam sub_229_add_2_10.INJECT1_0 = "NO";
    defparam sub_229_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1907), .COUT(n1908));
    defparam sub_229_add_2_8.INIT0 = 16'h5999;
    defparam sub_229_add_2_8.INIT1 = 16'h5999;
    defparam sub_229_add_2_8.INJECT1_0 = "NO";
    defparam sub_229_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_6 (.A0(\gatedcount[4] ), .B0(\Endof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Endof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1906), .COUT(n1907));
    defparam sub_229_add_2_6.INIT0 = 16'h5999;
    defparam sub_229_add_2_6.INIT1 = 16'h5999;
    defparam sub_229_add_2_6.INJECT1_0 = "NO";
    defparam sub_229_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_4 (.A0(\gatedcount[2] ), .B0(\Endof2ndMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Endof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1905), .COUT(n1906));
    defparam sub_229_add_2_4.INIT0 = 16'h5999;
    defparam sub_229_add_2_4.INIT1 = 16'h5999;
    defparam sub_229_add_2_4.INJECT1_0 = "NO";
    defparam sub_229_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Endof2ndMWpulse[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1905));
    defparam sub_229_add_2_2.INIT0 = 16'h0000;
    defparam sub_229_add_2_2.INIT1 = 16'h5999;
    defparam sub_229_add_2_2.INJECT1_0 = "NO";
    defparam sub_229_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U11
//

module comparator_U11 (gatedcount, GND_net, \Startof2ndMWpulse[1] , pi2started, 
            \Startof2ndMWpulse[14] , \Startof2ndMWpulse[15] , \Startof2ndMWpulse[12] , 
            \Startof2ndMWpulse[13] , \Startof2ndMWpulse[10] , \Startof2ndMWpulse[11] , 
            \Startof2ndMWpulse[8] , \Startof2ndMWpulse[9] , \Startof2ndMWpulse[6] , 
            \Startof2ndMWpulse[7] , \Startof2ndMWpulse[4] , \Startof2ndMWpulse[5] , 
            \Endof1stMWpulse[2] , \AdjustableFreePrecession[2] , \Startof2ndMWpulse[3] ) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input GND_net;
    input \Startof2ndMWpulse[1] ;
    output pi2started;
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
    
    
    wire n1945, n1952, n1951, n1950, n1949, n1948, n1947, n1946;
    
    CCU2D sub_227_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n1945));
    defparam sub_227_add_2_2.INIT0 = 16'h5000;
    defparam sub_227_add_2_2.INIT1 = 16'h5999;
    defparam sub_227_add_2_2.INJECT1_0 = "NO";
    defparam sub_227_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1952), .S0(pi2started));
    defparam sub_227_add_2_cout.INIT0 = 16'h0000;
    defparam sub_227_add_2_cout.INIT1 = 16'h0000;
    defparam sub_227_add_2_cout.INJECT1_0 = "NO";
    defparam sub_227_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_16 (.A0(gatedcount[14]), .B0(\Startof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Startof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1951), .COUT(n1952));
    defparam sub_227_add_2_16.INIT0 = 16'h5999;
    defparam sub_227_add_2_16.INIT1 = 16'h5999;
    defparam sub_227_add_2_16.INJECT1_0 = "NO";
    defparam sub_227_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_14 (.A0(gatedcount[12]), .B0(\Startof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Startof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1950), .COUT(n1951));
    defparam sub_227_add_2_14.INIT0 = 16'h5999;
    defparam sub_227_add_2_14.INIT1 = 16'h5999;
    defparam sub_227_add_2_14.INJECT1_0 = "NO";
    defparam sub_227_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_12 (.A0(gatedcount[10]), .B0(\Startof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Startof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1949), .COUT(n1950));
    defparam sub_227_add_2_12.INIT0 = 16'h5999;
    defparam sub_227_add_2_12.INIT1 = 16'h5999;
    defparam sub_227_add_2_12.INJECT1_0 = "NO";
    defparam sub_227_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_10 (.A0(gatedcount[8]), .B0(\Startof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Startof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1948), .COUT(n1949));
    defparam sub_227_add_2_10.INIT0 = 16'h5999;
    defparam sub_227_add_2_10.INIT1 = 16'h5999;
    defparam sub_227_add_2_10.INJECT1_0 = "NO";
    defparam sub_227_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_8 (.A0(gatedcount[6]), .B0(\Startof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Startof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1947), .COUT(n1948));
    defparam sub_227_add_2_8.INIT0 = 16'h5999;
    defparam sub_227_add_2_8.INIT1 = 16'h5999;
    defparam sub_227_add_2_8.INJECT1_0 = "NO";
    defparam sub_227_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_6 (.A0(gatedcount[4]), .B0(\Startof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Startof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1946), .COUT(n1947));
    defparam sub_227_add_2_6.INIT0 = 16'h5999;
    defparam sub_227_add_2_6.INIT1 = 16'h5999;
    defparam sub_227_add_2_6.INJECT1_0 = "NO";
    defparam sub_227_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_4 (.A0(\Endof1stMWpulse[2] ), .B0(\AdjustableFreePrecession[2] ), 
          .C0(gatedcount[2]), .D0(GND_net), .A1(gatedcount[3]), .B1(\Startof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1945), .COUT(n1946));
    defparam sub_227_add_2_4.INIT0 = 16'h6969;
    defparam sub_227_add_2_4.INIT1 = 16'h5999;
    defparam sub_227_add_2_4.INJECT1_0 = "NO";
    defparam sub_227_add_2_4.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U12
//

module comparator_U12 (GND_net, n389, gatedcount, \Endof1stMWpulse[14] , 
            \Endof1stMWpulse[15] , \Endof1stMWpulse[12] , \Endof1stMWpulse[13] , 
            \Endof1stMWpulse[10] , \Endof1stMWpulse[11] , \Endof1stMWpulse[8] , 
            \Endof1stMWpulse[9] , \Endof1stMWpulse[6] , \Endof1stMWpulse[7] , 
            \Endof1stMWpulse[4] , \Endof1stMWpulse[5] , \Endof1stMWpulse[2] , 
            \Endof1stMWpulse[3] , \Startof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n389;
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
    
    
    wire n1920, n1919, n1918, n1917, n1916, n1915, n1914, n1913;
    
    CCU2D sub_225_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1920), .S0(n389));
    defparam sub_225_add_2_cout.INIT0 = 16'h0000;
    defparam sub_225_add_2_cout.INIT1 = 16'h0000;
    defparam sub_225_add_2_cout.INJECT1_0 = "NO";
    defparam sub_225_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_16 (.A0(gatedcount[14]), .B0(\Endof1stMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof1stMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1919), .COUT(n1920));
    defparam sub_225_add_2_16.INIT0 = 16'h5999;
    defparam sub_225_add_2_16.INIT1 = 16'h5999;
    defparam sub_225_add_2_16.INJECT1_0 = "NO";
    defparam sub_225_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_14 (.A0(gatedcount[12]), .B0(\Endof1stMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof1stMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1918), .COUT(n1919));
    defparam sub_225_add_2_14.INIT0 = 16'h5999;
    defparam sub_225_add_2_14.INIT1 = 16'h5999;
    defparam sub_225_add_2_14.INJECT1_0 = "NO";
    defparam sub_225_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_12 (.A0(gatedcount[10]), .B0(\Endof1stMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof1stMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1917), .COUT(n1918));
    defparam sub_225_add_2_12.INIT0 = 16'h5999;
    defparam sub_225_add_2_12.INIT1 = 16'h5999;
    defparam sub_225_add_2_12.INJECT1_0 = "NO";
    defparam sub_225_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_10 (.A0(gatedcount[8]), .B0(\Endof1stMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof1stMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1916), .COUT(n1917));
    defparam sub_225_add_2_10.INIT0 = 16'h5999;
    defparam sub_225_add_2_10.INIT1 = 16'h5999;
    defparam sub_225_add_2_10.INJECT1_0 = "NO";
    defparam sub_225_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_8 (.A0(gatedcount[6]), .B0(\Endof1stMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof1stMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1915), .COUT(n1916));
    defparam sub_225_add_2_8.INIT0 = 16'h5999;
    defparam sub_225_add_2_8.INIT1 = 16'h5999;
    defparam sub_225_add_2_8.INJECT1_0 = "NO";
    defparam sub_225_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_6 (.A0(gatedcount[4]), .B0(\Endof1stMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof1stMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1914), .COUT(n1915));
    defparam sub_225_add_2_6.INIT0 = 16'h5999;
    defparam sub_225_add_2_6.INIT1 = 16'h5999;
    defparam sub_225_add_2_6.INJECT1_0 = "NO";
    defparam sub_225_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_4 (.A0(gatedcount[2]), .B0(\Endof1stMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof1stMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1913), .COUT(n1914));
    defparam sub_225_add_2_4.INIT0 = 16'h5999;
    defparam sub_225_add_2_4.INIT1 = 16'h5999;
    defparam sub_225_add_2_4.INJECT1_0 = "NO";
    defparam sub_225_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n1913));
    defparam sub_225_add_2_2.INIT0 = 16'h5000;
    defparam sub_225_add_2_2.INIT1 = 16'h5999;
    defparam sub_225_add_2_2.INJECT1_0 = "NO";
    defparam sub_225_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U13
//

module comparator_U13 (\gatedcount[1] , \gatedcount[3] , \gatedcount[2] , 
            n4) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[1] ;
    input \gatedcount[3] ;
    input \gatedcount[2] ;
    output n4;
    
    
    LUT4 i1_3_lut (.A(\gatedcount[1] ), .B(\gatedcount[3] ), .C(\gatedcount[2] ), 
         .Z(n4)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    
endmodule
//
// Verilog Description of module n_state_machine
//

module n_state_machine (SMstate, sampled_modebutton, n2124, sample_output_N_48) /* synthesis syn_module_defined=1 */ ;
    output [2:0]SMstate;
    input sampled_modebutton;
    input n2124;
    output sample_output_N_48;
    
    wire sampled_modebutton /* synthesis SET_AS_NETWORK=sampled_modebutton, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[6:24])
    
    wire state_2__N_178;
    wire [2:0]n17;
    
    FD1S3IX state_297__i2 (.D(n17[2]), .CK(sampled_modebutton), .CD(state_2__N_178), 
            .Q(SMstate[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_297__i2.GSR = "ENABLED";
    FD1S3IX state_297__i1 (.D(n17[1]), .CK(sampled_modebutton), .CD(state_2__N_178), 
            .Q(SMstate[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_297__i1.GSR = "ENABLED";
    LUT4 i745_2_lut_3_lut (.A(SMstate[1]), .B(SMstate[0]), .C(SMstate[2]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i745_2_lut_3_lut.init = 16'h7878;
    FD1S3IX state_297__i0 (.D(n17[0]), .CK(sampled_modebutton), .CD(state_2__N_178), 
            .Q(SMstate[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_297__i0.GSR = "ENABLED";
    LUT4 i738_2_lut (.A(SMstate[1]), .B(SMstate[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i738_2_lut.init = 16'h6666;
    LUT4 i736_1_lut (.A(SMstate[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i736_1_lut.init = 16'h5555;
    LUT4 i1_4_lut (.A(SMstate[0]), .B(n2124), .C(SMstate[1]), .D(SMstate[2]), 
         .Z(sample_output_N_48)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i1_4_lut.init = 16'hfaee;
    LUT4 i2_2_lut_3_lut (.A(SMstate[1]), .B(SMstate[0]), .C(SMstate[2]), 
         .Z(state_2__N_178)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module clocks
//

module clocks (clk_2M5_N_67, clk_2M5, tenmegclock_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_2M5_N_67;
    output clk_2M5;
    input tenmegclock_c;
    input GND_net;
    
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(29[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    
    DIV4PLL PLL (.clk_2M5_N_67(clk_2M5_N_67), .clk_2M5(clk_2M5), .tenmegclock_c(tenmegclock_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(42[10:60])
    
endmodule
//
// Verilog Description of module DIV4PLL
//

module DIV4PLL (clk_2M5_N_67, clk_2M5, tenmegclock_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_2M5_N_67;
    output clk_2M5;
    input tenmegclock_c;
    input GND_net;
    
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(29[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    
    wire CLKFB_t;
    
    INV i910 (.A(clk_2M5), .Z(clk_2M5_N_67));
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

module slow_clock_pulse (clk_2M5, medium_pulse, GND_net, slow_pulse, 
            fast_pulse, debounce_pulse) /* synthesis syn_module_defined=1 */ ;
    input clk_2M5;
    output medium_pulse;
    input GND_net;
    output slow_pulse;
    output fast_pulse;
    output debounce_pulse;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[7:21])
    wire [22:0]n170;
    wire [22:0]n97;
    
    wire n1868, n1867, n1866, n1865, n1864, n1863, n1862, n1861, 
        n1860, n1859, n1858;
    
    FD1S3AX count_296__i3 (.D(n97[3]), .CK(clk_2M5), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i3.GSR = "ENABLED";
    FD1S3AX count_296__i1 (.D(n97[1]), .CK(clk_2M5), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i1.GSR = "ENABLED";
    FD1S3AX count_296__i0 (.D(n97[0]), .CK(clk_2M5), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i0.GSR = "ENABLED";
    FD1S3AX count_296__i2 (.D(n97[2]), .CK(clk_2M5), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i2.GSR = "ENABLED";
    CCU2D count_296_add_4_23 (.A0(medium_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1868), .S0(n97[21]), .S1(n97[22]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_23.INIT0 = 16'hfaaa;
    defparam count_296_add_4_23.INIT1 = 16'hfaaa;
    defparam count_296_add_4_23.INJECT1_0 = "NO";
    defparam count_296_add_4_23.INJECT1_1 = "NO";
    CCU2D count_296_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1867), .COUT(n1868), .S0(n97[19]), .S1(n97[20]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_21.INIT0 = 16'hfaaa;
    defparam count_296_add_4_21.INIT1 = 16'hfaaa;
    defparam count_296_add_4_21.INJECT1_0 = "NO";
    defparam count_296_add_4_21.INJECT1_1 = "NO";
    CCU2D count_296_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1866), .COUT(n1867), .S0(n97[17]), .S1(n97[18]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_19.INIT0 = 16'hfaaa;
    defparam count_296_add_4_19.INIT1 = 16'hfaaa;
    defparam count_296_add_4_19.INJECT1_0 = "NO";
    defparam count_296_add_4_19.INJECT1_1 = "NO";
    CCU2D count_296_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1865), .COUT(n1866), .S0(n97[15]), .S1(n97[16]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_17.INIT0 = 16'hfaaa;
    defparam count_296_add_4_17.INIT1 = 16'hfaaa;
    defparam count_296_add_4_17.INJECT1_0 = "NO";
    defparam count_296_add_4_17.INJECT1_1 = "NO";
    CCU2D count_296_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1864), .COUT(n1865), .S0(n97[13]), .S1(n97[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_15.INIT0 = 16'hfaaa;
    defparam count_296_add_4_15.INIT1 = 16'hfaaa;
    defparam count_296_add_4_15.INJECT1_0 = "NO";
    defparam count_296_add_4_15.INJECT1_1 = "NO";
    CCU2D count_296_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1863), .COUT(n1864), .S0(n97[11]), .S1(n97[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_13.INIT0 = 16'hfaaa;
    defparam count_296_add_4_13.INIT1 = 16'hfaaa;
    defparam count_296_add_4_13.INJECT1_0 = "NO";
    defparam count_296_add_4_13.INJECT1_1 = "NO";
    CCU2D count_296_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1862), .COUT(n1863), .S0(n97[9]), .S1(n97[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_11.INIT0 = 16'hfaaa;
    defparam count_296_add_4_11.INIT1 = 16'hfaaa;
    defparam count_296_add_4_11.INJECT1_0 = "NO";
    defparam count_296_add_4_11.INJECT1_1 = "NO";
    CCU2D count_296_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1861), .COUT(n1862), .S0(n97[7]), .S1(n97[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_9.INIT0 = 16'hfaaa;
    defparam count_296_add_4_9.INIT1 = 16'hfaaa;
    defparam count_296_add_4_9.INJECT1_0 = "NO";
    defparam count_296_add_4_9.INJECT1_1 = "NO";
    CCU2D count_296_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1860), .COUT(n1861), .S0(n97[5]), .S1(n97[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_7.INIT0 = 16'hfaaa;
    defparam count_296_add_4_7.INIT1 = 16'hfaaa;
    defparam count_296_add_4_7.INJECT1_0 = "NO";
    defparam count_296_add_4_7.INJECT1_1 = "NO";
    CCU2D count_296_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1859), .COUT(n1860), .S0(n97[3]), .S1(n97[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_5.INIT0 = 16'hfaaa;
    defparam count_296_add_4_5.INIT1 = 16'hfaaa;
    defparam count_296_add_4_5.INJECT1_0 = "NO";
    defparam count_296_add_4_5.INJECT1_1 = "NO";
    CCU2D count_296_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1858), .COUT(n1859), .S0(n97[1]), .S1(n97[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_3.INIT0 = 16'hfaaa;
    defparam count_296_add_4_3.INIT1 = 16'hfaaa;
    defparam count_296_add_4_3.INJECT1_0 = "NO";
    defparam count_296_add_4_3.INJECT1_1 = "NO";
    CCU2D count_296_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1858), .S1(n97[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296_add_4_1.INIT0 = 16'hF000;
    defparam count_296_add_4_1.INIT1 = 16'h0555;
    defparam count_296_add_4_1.INJECT1_0 = "NO";
    defparam count_296_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_296__i22 (.D(n97[22]), .CK(clk_2M5), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i22.GSR = "ENABLED";
    FD1S3AX count_296__i21 (.D(n97[21]), .CK(clk_2M5), .Q(medium_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i21.GSR = "ENABLED";
    FD1S3AX count_296__i20 (.D(n97[20]), .CK(clk_2M5), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i20.GSR = "ENABLED";
    FD1S3AX count_296__i19 (.D(n97[19]), .CK(clk_2M5), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i19.GSR = "ENABLED";
    FD1S3AX count_296__i18 (.D(n97[18]), .CK(clk_2M5), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i18.GSR = "ENABLED";
    FD1S3AX count_296__i17 (.D(n97[17]), .CK(clk_2M5), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i17.GSR = "ENABLED";
    FD1S3AX count_296__i16 (.D(n97[16]), .CK(clk_2M5), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i16.GSR = "ENABLED";
    FD1S3AX count_296__i15 (.D(n97[15]), .CK(clk_2M5), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i15.GSR = "ENABLED";
    FD1S3AX count_296__i14 (.D(n97[14]), .CK(clk_2M5), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i14.GSR = "ENABLED";
    FD1S3AX count_296__i13 (.D(n97[13]), .CK(clk_2M5), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i13.GSR = "ENABLED";
    FD1S3AX count_296__i12 (.D(n97[12]), .CK(clk_2M5), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i12.GSR = "ENABLED";
    FD1S3AX count_296__i11 (.D(n97[11]), .CK(clk_2M5), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i11.GSR = "ENABLED";
    FD1S3AX count_296__i10 (.D(n97[10]), .CK(clk_2M5), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i10.GSR = "ENABLED";
    FD1S3AX count_296__i9 (.D(n97[9]), .CK(clk_2M5), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i9.GSR = "ENABLED";
    FD1S3AX count_296__i8 (.D(n97[8]), .CK(clk_2M5), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i8.GSR = "ENABLED";
    FD1S3AX count_296__i7 (.D(n97[7]), .CK(clk_2M5), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i7.GSR = "ENABLED";
    FD1S3AX count_296__i6 (.D(n97[6]), .CK(clk_2M5), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i6.GSR = "ENABLED";
    FD1S3AX count_296__i5 (.D(n97[5]), .CK(clk_2M5), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i5.GSR = "ENABLED";
    FD1S3AX count_296__i4 (.D(n97[4]), .CK(clk_2M5), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_296__i4.GSR = "ENABLED";
    
endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 3.9 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type sdpram -num_rows 4 -data_width 2 -pipe_final_output -memformat bin -n pmi_distributed_dpramXbnoner2248b8a5a7 -pmi -lang verilog  */
/* Sat Jul 29 15:55:33 2023 */


`timescale 1 ns / 1 ps
module pmi_distributed_dpramXbnoner2248b8a5a7 (WrAddress, Data, WrClock, 
    WE, WrClockEn, RdAddress, RdClock, RdClockEn, Reset, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [1:0] WrAddress;
    input wire [1:0] Data;
    input wire WrClock;
    input wire WE;
    input wire WrClockEn;
    input wire [1:0] RdAddress;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    output wire [1:0] Q;

    wire dataout1_ffin;
    wire dataout0_ffin;
    wire dec0_wre3;
    wire scuba_vhi;

    defparam LUT4_0.initval =  16'h8000 ;
    ROM16X1A LUT4_0 (.AD3(WE), .AD2(WrClockEn), .AD1(scuba_vhi), .AD0(scuba_vhi), 
        .DO0(dec0_wre3));

    FD1P3DX FF_1 (.D(dataout1_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[1]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_0 (.D(dataout0_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[0]))
             /* synthesis GSR="ENABLED" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam mem_0_0.initval = "0x0000000000000000" ;
    DPR16X4C mem_0_0 (.DI0(Data[0]), .DI1(Data[1]), .DI2(scuba_vhi), .DI3(scuba_vhi), 
        .WCK(WrClock), .WRE(dec0_wre3), .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), 
        .RAD2(scuba_vhi), .RAD3(scuba_vhi), .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), 
        .WAD2(scuba_vhi), .WAD3(scuba_vhi), .DO0(dataout0_ffin), .DO1(dataout1_ffin), 
        .DO2(), .DO3())
             /* synthesis MEM_INIT_FILE="(0-3)(0-1)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramXbnoner2248b8a5a7__PMI__4__2__2B" */
             /* synthesis COMP="mem_0_0" */;



    // exemplar begin
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar attribute mem_0_0 MEM_INIT_FILE (0-3)(0-1)
    // exemplar attribute mem_0_0 MEM_LPC_FILE pmi_distributed_dpramXbnoner2248b8a5a7__PMI__4__2__2B
    // exemplar attribute mem_0_0 COMP mem_0_0
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 32 -num_rows 16 -rdata_width 32 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr324163241611884d26 -pmi -lang verilog  */
/* Sat Jul 29 15:55:33 2023 */


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
/* Module Version: 3.9 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type sdpram -num_rows 4 -data_width 2 -pipe_final_output -memformat bin -n pmi_distributed_dpramXbnoner2248b8a5a7 -pmi -lang verilog  */
/* Sat Jul 29 16:04:13 2023 */


`timescale 1 ns / 1 ps
module pmi_distributed_dpramXbnoner2248b8a5a7 (WrAddress, Data, WrClock, 
    WE, WrClockEn, RdAddress, RdClock, RdClockEn, Reset, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [1:0] WrAddress;
    input wire [1:0] Data;
    input wire WrClock;
    input wire WE;
    input wire WrClockEn;
    input wire [1:0] RdAddress;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    output wire [1:0] Q;

    wire dataout1_ffin;
    wire dataout0_ffin;
    wire dec0_wre3;
    wire scuba_vhi;

    defparam LUT4_0.initval =  16'h8000 ;
    ROM16X1A LUT4_0 (.AD3(WE), .AD2(WrClockEn), .AD1(scuba_vhi), .AD0(scuba_vhi), 
        .DO0(dec0_wre3));

    FD1P3DX FF_1 (.D(dataout1_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[1]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_0 (.D(dataout0_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[0]))
             /* synthesis GSR="ENABLED" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam mem_0_0.initval = "0x0000000000000000" ;
    DPR16X4C mem_0_0 (.DI0(Data[0]), .DI1(Data[1]), .DI2(scuba_vhi), .DI3(scuba_vhi), 
        .WCK(WrClock), .WRE(dec0_wre3), .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), 
        .RAD2(scuba_vhi), .RAD3(scuba_vhi), .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), 
        .WAD2(scuba_vhi), .WAD3(scuba_vhi), .DO0(dataout0_ffin), .DO1(dataout1_ffin), 
        .DO2(), .DO3())
             /* synthesis MEM_INIT_FILE="(0-3)(0-1)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramXbnoner2248b8a5a7__PMI__4__2__2B" */
             /* synthesis COMP="mem_0_0" */;



    // exemplar begin
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar attribute mem_0_0 MEM_INIT_FILE (0-3)(0-1)
    // exemplar attribute mem_0_0 MEM_LPC_FILE pmi_distributed_dpramXbnoner2248b8a5a7__PMI__4__2__2B
    // exemplar attribute mem_0_0 COMP mem_0_0
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 32 -num_rows 16 -rdata_width 32 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr324163241611884d26 -pmi -lang verilog  */
/* Sat Jul 29 16:04:12 2023 */


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
