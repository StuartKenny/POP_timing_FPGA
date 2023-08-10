// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Sat Jul 29 20:07:48 2023
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
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[18:28])
    
    wire GND_net, VCC_net, LED_output_c, mode_button_c, load_default_button_c, 
        topleft_button_c, topright_button_c, bottomleft_button_c, bottomright_button_c, 
        MW_invalid_c, ADC_sample_c, laser_tuning_c, pump_output_c, probe_output_c, 
        MW_output_c, sample_output_c, slow_pulse, medium_pulse, fast_pulse, 
        load_defaults, pieovertwo_plus, freeprecess_plus, pieovertwo_minus, 
        freeprecess_minus, n1606, mode_button_N_55, load_default_button_N_57, 
        topleft_button_N_59, topright_button_N_61, bottomleft_button_N_63, 
        bottomright_button_N_65, n1605, ADC_sample_N_19, n1604, n1298, 
        LED_output_N_1, pump_output_N_22, probe_output_N_32, MW_output_N_40, 
        sample_output_N_48;
    wire [15:0]gatedcount;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[18:28])
    
    wire probestarted, n401, n1443, n496, n1838, n1837, n1607;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX load_defaults_83 (.D(load_default_button_N_57), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[8] 66[6])
    defparam load_defaults_83.GSR = "ENABLED";
    IB load_default_button_pad (.I(load_default_button), .O(load_default_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
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
    FD1S3AX ADC_sample_88 (.D(ADC_sample_N_19), .CK(clk_2M5), .Q(ADC_sample_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 141[5])
    defparam ADC_sample_88.GSR = "ENABLED";
    FD1S3AX LED_output_89 (.D(LED_output_N_1), .CK(clk_2M5), .Q(LED_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 141[5])
    defparam LED_output_89.GSR = "ENABLED";
    IB mode_button_pad (.I(mode_button), .O(mode_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    FD1S3AX pump_output_90 (.D(pump_output_N_22), .CK(clk_2M5), .Q(pump_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 141[5])
    defparam pump_output_90.GSR = "ENABLED";
    FD1S3AX probe_output_91 (.D(probe_output_N_32), .CK(clk_2M5), .Q(probe_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 141[5])
    defparam probe_output_91.GSR = "ENABLED";
    FD1S3AX MW_output_92 (.D(MW_output_N_40), .CK(clk_2M5), .Q(MW_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 141[5])
    defparam MW_output_92.GSR = "ENABLED";
    FD1S3AX sample_output_93 (.D(sample_output_N_48), .CK(clk_2M5), .Q(sample_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[8] 141[5])
    defparam sample_output_93.GSR = "ENABLED";
    FD1S3AX sampled_modebutton_82 (.D(mode_button_N_55), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[8] 66[6])
    defparam sampled_modebutton_82.GSR = "ENABLED";
    OB sample_output_pad (.I(sample_output_c), .O(sample_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(44[9:13])
    OB MW_output_pad (.I(MW_output_c), .O(MW_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    OB probe_output_pad (.I(probe_output_c), .O(probe_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    OB pump_output_pad (.I(pump_output_c), .O(pump_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    OB ADC_sample_pad (.I(ADC_sample_c), .O(ADC_sample));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[13:23])
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(45[9:19])
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(43[9:16])
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    POPtimers POPtimers (.GND_net(GND_net), .gatedcount({Open_0, Open_1, 
            Open_2, Open_3, Open_4, Open_5, gatedcount[9:8], Open_6, 
            Open_7, Open_8, Open_9, Open_10, Open_11, Open_12, Open_13}), 
            .clk_2M5_N_67(clk_2M5_N_67), .VCC_net(VCC_net), .\gatedcount[4] (gatedcount[4]), 
            .\gatedcount[7] (gatedcount[7]), .\gatedcount[5] (gatedcount[5]), 
            .\gatedcount[10] (gatedcount[10]), .\gatedcount[6] (gatedcount[6]), 
            .MW_invalid_c(MW_invalid_c), .load_defaults(load_defaults), 
            .n401(n401), .n1298(n1298), .\gatedcount[11] (gatedcount[11]), 
            .\gatedcount[3] (gatedcount[3]), .\gatedcount[2] (gatedcount[2]), 
            .n1443(n1443), .clk_2M5(clk_2M5), .ADC_sample_N_19(ADC_sample_N_19), 
            .n1837(n1837), .n496(n496), .probestarted(probestarted), .n1838(n1838), 
            .pieovertwo_plus(pieovertwo_plus), .pieovertwo_minus(pieovertwo_minus), 
            .freeprecess_minus(freeprecess_minus), .freeprecess_plus(freeprecess_plus)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(50[12:294])
    n_state_machine statemachine (.n1443(n1443), .pump_output_N_22(pump_output_N_22), 
            .probestarted(probestarted), .n496(n496), .n1298(n1298), .slow_pulse(slow_pulse), 
            .laser_tuning_c(laser_tuning_c), .fast_pulse(fast_pulse), .sampled_modebutton(sampled_modebutton), 
            .LED_output_N_1(LED_output_N_1), .n1838(n1838), .probe_output_N_32(probe_output_N_32), 
            .n1837(n1837), .sample_output_N_48(sample_output_N_48), .medium_pulse(medium_pulse), 
            .MW_output_N_40(MW_output_N_40)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(52[18:74])
    CCU2D add_680_10 (.A0(gatedcount[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1607), .S1(n401));
    defparam add_680_10.INIT0 = 16'h5555;
    defparam add_680_10.INIT1 = 16'h0000;
    defparam add_680_10.INJECT1_0 = "NO";
    defparam add_680_10.INJECT1_1 = "NO";
    CCU2D add_680_8 (.A0(gatedcount[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1606), .COUT(n1607));
    defparam add_680_8.INIT0 = 16'h5aaa;
    defparam add_680_8.INIT1 = 16'h5aaa;
    defparam add_680_8.INJECT1_0 = "NO";
    defparam add_680_8.INJECT1_1 = "NO";
    CCU2D add_680_6 (.A0(gatedcount[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1605), .COUT(n1606));
    defparam add_680_6.INIT0 = 16'h5aaa;
    defparam add_680_6.INIT1 = 16'h5aaa;
    defparam add_680_6.INJECT1_0 = "NO";
    defparam add_680_6.INJECT1_1 = "NO";
    CCU2D add_680_4 (.A0(gatedcount[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1604), .COUT(n1605));
    defparam add_680_4.INIT0 = 16'h5aaa;
    defparam add_680_4.INIT1 = 16'h5aaa;
    defparam add_680_4.INJECT1_0 = "NO";
    defparam add_680_4.INJECT1_1 = "NO";
    CCU2D add_680_2 (.A0(gatedcount[3]), .B0(gatedcount[2]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1604));
    defparam add_680_2.INIT0 = 16'h1000;
    defparam add_680_2.INIT1 = 16'h5555;
    defparam add_680_2.INJECT1_0 = "NO";
    defparam add_680_2.INJECT1_1 = "NO";
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_61)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(63[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    IB tenmegclock_pad (.I(tenmegclock), .O(tenmegclock_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    IB topleft_button_pad (.I(topleft_button), .O(topleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    IB topright_button_pad (.I(topright_button), .O(topright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    IB bottomleft_button_pad (.I(bottomleft_button), .O(bottomleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    IB bottomright_button_pad (.I(bottomright_button), .O(bottomright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    IB MW_invalid_pad (.I(MW_invalid), .O(MW_invalid_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[8:18])
    IB laser_tuning_pad (.I(laser_tuning), .O(laser_tuning_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[8:20])
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_63)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(64[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    clocks clocks (.clk_2M5_N_67(clk_2M5_N_67), .clk_2M5(clk_2M5), .tenmegclock_c(tenmegclock_c), 
           .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(48[9:98])
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_59)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(62[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_55)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(60[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_65)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(65[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    slow_clock_pulse slowclocks (.clk_2M5(clk_2M5), .GND_net(GND_net), .debounce_pulse(debounce_pulse), 
            .slow_pulse(slow_pulse), .medium_pulse(medium_pulse), .fast_pulse(fast_pulse)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(51[19:157])
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_57)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(61[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module POPtimers
//

module POPtimers (GND_net, gatedcount, clk_2M5_N_67, VCC_net, \gatedcount[4] , 
            \gatedcount[7] , \gatedcount[5] , \gatedcount[10] , \gatedcount[6] , 
            MW_invalid_c, load_defaults, n401, n1298, \gatedcount[11] , 
            \gatedcount[3] , \gatedcount[2] , n1443, clk_2M5, ADC_sample_N_19, 
            n1837, n496, probestarted, n1838, pieovertwo_plus, pieovertwo_minus, 
            freeprecess_minus, freeprecess_plus) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [15:0]gatedcount;
    input clk_2M5_N_67;
    input VCC_net;
    output \gatedcount[4] ;
    output \gatedcount[7] ;
    output \gatedcount[5] ;
    output \gatedcount[10] ;
    output \gatedcount[6] ;
    input MW_invalid_c;
    input load_defaults;
    input n401;
    output n1298;
    output \gatedcount[11] ;
    output \gatedcount[3] ;
    output \gatedcount[2] ;
    output n1443;
    input clk_2M5;
    output ADC_sample_N_19;
    output n1837;
    output n496;
    output probestarted;
    output n1838;
    input pieovertwo_plus;
    input pieovertwo_minus;
    input freeprecess_minus;
    input freeprecess_plus;
    
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1559;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(29[26:46])
    wire [15:0]Endof2ndMWpulse;
    
    wire n1573;
    wire [15:0]Endofprobepulse;
    
    wire n1574;
    wire [15:0]AdjustableFreePrecession;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(29[48:72])
    wire [15:0]Startof2ndMWpulse;
    
    wire n1572, n1571, n1570, n1558, n1557, n1569;
    wire [15:0]Startopticalsample;
    
    wire n1546, n7, n1545;
    wire [15:0]Endof1stMWpulse;
    
    wire n1556, n1544, n1568, n1555;
    wire [15:0]gatedcount_c;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[18:28])
    wire [15:0]count;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(29[19:24])
    
    wire n1554, n1543, n1542, n1553, n1552, n1541, n1540, n1539;
    wire [15:0]Startofprobepulse;
    wire [15:0]Endofopticalsample;
    wire [15:0]Resetandrepeat;
    
    wire n1537, n1536, n1551, n1535, n1534, n1566, n1533, n1532, 
        n1550, n1549, n84, n8, n1548, n1565, n1564, n1531, n1563, 
        n1562, n1692, loop, counterreset, n1547, n1561, n1776, 
        n1560, n9, n420, n1372, n1774, n1579, n1578, n1577, 
        n1576, n1575, n1669, n1670, n1671, n1672, n1673, n1674, 
        n1780, n534, n458;
    
    CCU2D Startof2ndMWpulse_15__keep_I_0_17 (.A0(Startof2ndMWpulse[15]), .B0(AdjustablePieOverTwo[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1559), .S0(Endof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[37:75])
    defparam Startof2ndMWpulse_15__keep_I_0_17.INIT0 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_17.INIT1 = 16'h0000;
    defparam Startof2ndMWpulse_15__keep_I_0_17.INJECT1_0 = "NO";
    defparam Startof2ndMWpulse_15__keep_I_0_17.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_13 (.A0(Startofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1573), .COUT(n1574), .S0(Endofprobepulse[13]), 
          .S1(Endofprobepulse[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[37:65])
    defparam Startofprobepulse_15__keep_I_0_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_13.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_13.INJECT1_1 = "NO";
    LUT4 i710_2_lut (.A(Endof1stMWpulse[2]), .B(AdjustableFreePrecession[2]), 
         .Z(Startof2ndMWpulse[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i710_2_lut.init = 16'h6666;
    CCU2D Startofprobepulse_15__keep_I_0_11 (.A0(Startofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1572), .COUT(n1573), .S0(Endofprobepulse[11]), 
          .S1(Endofprobepulse[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[37:65])
    defparam Startofprobepulse_15__keep_I_0_11.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_11.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_9 (.A0(Startofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1571), .COUT(n1572), .S0(Endofprobepulse[9]), 
          .S1(Endofprobepulse[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[37:65])
    defparam Startofprobepulse_15__keep_I_0_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_9.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_7 (.A0(Startofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1570), .COUT(n1571), .S0(Endofprobepulse[7]), 
          .S1(Endofprobepulse[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[37:65])
    defparam Startofprobepulse_15__keep_I_0_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_7.INJECT1_1 = "NO";
    CCU2D Startof2ndMWpulse_15__keep_I_0_15 (.A0(Startof2ndMWpulse[13]), .B0(AdjustablePieOverTwo[13]), 
          .C0(GND_net), .D0(GND_net), .A1(Startof2ndMWpulse[14]), .B1(AdjustablePieOverTwo[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1558), .COUT(n1559), .S0(Endof2ndMWpulse[13]), 
          .S1(Endof2ndMWpulse[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[37:75])
    defparam Startof2ndMWpulse_15__keep_I_0_15.INIT0 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_15.INIT1 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_15.INJECT1_0 = "NO";
    defparam Startof2ndMWpulse_15__keep_I_0_15.INJECT1_1 = "NO";
    CCU2D Startof2ndMWpulse_15__keep_I_0_13 (.A0(Startof2ndMWpulse[11]), .B0(AdjustablePieOverTwo[11]), 
          .C0(GND_net), .D0(GND_net), .A1(Startof2ndMWpulse[12]), .B1(AdjustablePieOverTwo[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1557), .COUT(n1558), .S0(Endof2ndMWpulse[11]), 
          .S1(Endof2ndMWpulse[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[37:75])
    defparam Startof2ndMWpulse_15__keep_I_0_13.INIT0 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_13.INIT1 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_13.INJECT1_0 = "NO";
    defparam Startof2ndMWpulse_15__keep_I_0_13.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_5 (.A0(Startofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1569), .COUT(n1570), .S0(Endofprobepulse[5]), 
          .S1(Endofprobepulse[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[37:65])
    defparam Startofprobepulse_15__keep_I_0_5.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_30_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n1546), .S1(Startopticalsample[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[40:69])
    defparam Startofprobepulse_15__keep_I_0_30_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__keep_I_0_30_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_30_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_30_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(gatedcount[9]), .B(gatedcount[8]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2D Startof1stMWpulse_15__I_0_15 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1545), .S0(Endof1stMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[37:75])
    defparam Startof1stMWpulse_15__I_0_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D Startof2ndMWpulse_15__keep_I_0_11 (.A0(Startof2ndMWpulse[9]), .B0(AdjustablePieOverTwo[9]), 
          .C0(GND_net), .D0(GND_net), .A1(Startof2ndMWpulse[10]), .B1(AdjustablePieOverTwo[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1556), .COUT(n1557), .S0(Endof2ndMWpulse[9]), 
          .S1(Endof2ndMWpulse[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[37:75])
    defparam Startof2ndMWpulse_15__keep_I_0_11.INIT0 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_11.INIT1 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_11.INJECT1_0 = "NO";
    defparam Startof2ndMWpulse_15__keep_I_0_11.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_13 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1544), .COUT(n1545), .S0(Endof1stMWpulse[13]), 
          .S1(Endof1stMWpulse[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[37:75])
    defparam Startof1stMWpulse_15__I_0_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_3 (.A0(Startofprobepulse[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1568), .COUT(n1569), .S0(Endofprobepulse[3]), 
          .S1(Endofprobepulse[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[37:65])
    defparam Startofprobepulse_15__keep_I_0_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_3.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_3.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n1568), .S1(Endofprobepulse[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[37:65])
    defparam Startofprobepulse_15__keep_I_0_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__keep_I_0_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_1.INJECT1_1 = "NO";
    CCU2D Startof2ndMWpulse_15__keep_I_0_9 (.A0(Startof2ndMWpulse[7]), .B0(AdjustablePieOverTwo[7]), 
          .C0(GND_net), .D0(GND_net), .A1(Startof2ndMWpulse[8]), .B1(AdjustablePieOverTwo[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1555), .COUT(n1556), .S0(Endof2ndMWpulse[7]), 
          .S1(Endof2ndMWpulse[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[37:75])
    defparam Startof2ndMWpulse_15__keep_I_0_9.INIT0 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_9.INIT1 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_9.INJECT1_0 = "NO";
    defparam Startof2ndMWpulse_15__keep_I_0_9.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clk_2M5_N_67), .Q(gatedcount_c[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D Startof2ndMWpulse_15__keep_I_0_7 (.A0(Startof2ndMWpulse[5]), .B0(AdjustablePieOverTwo[5]), 
          .C0(GND_net), .D0(GND_net), .A1(Startof2ndMWpulse[6]), .B1(AdjustablePieOverTwo[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1554), .COUT(n1555), .S0(Endof2ndMWpulse[5]), 
          .S1(Endof2ndMWpulse[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[37:75])
    defparam Startof2ndMWpulse_15__keep_I_0_7.INIT0 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_7.INIT1 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_7.INJECT1_0 = "NO";
    defparam Startof2ndMWpulse_15__keep_I_0_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_11 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1543), .COUT(n1544), .S0(Endof1stMWpulse[11]), 
          .S1(Endof1stMWpulse[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[37:75])
    defparam Startof1stMWpulse_15__I_0_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_9 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1542), .COUT(n1543), .S0(Endof1stMWpulse[9]), 
          .S1(Endof1stMWpulse[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[37:75])
    defparam Startof1stMWpulse_15__I_0_9.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_9.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Startof2ndMWpulse_15__keep_I_0_5 (.A0(Startof2ndMWpulse[3]), .B0(AdjustablePieOverTwo[3]), 
          .C0(GND_net), .D0(GND_net), .A1(Startof2ndMWpulse[4]), .B1(AdjustablePieOverTwo[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1553), .COUT(n1554), .S0(Endof2ndMWpulse[3]), 
          .S1(Endof2ndMWpulse[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[37:75])
    defparam Startof2ndMWpulse_15__keep_I_0_5.INIT0 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_5.INIT1 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_5.INJECT1_0 = "NO";
    defparam Startof2ndMWpulse_15__keep_I_0_5.INJECT1_1 = "NO";
    CCU2D Startof2ndMWpulse_15__keep_I_0_3 (.A0(Endof1stMWpulse[1]), .B0(Endof1stMWpulse[1]), 
          .C0(GND_net), .D0(GND_net), .A1(Startof2ndMWpulse[2]), .B1(AdjustablePieOverTwo[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1552), .COUT(n1553), .S0(Endof2ndMWpulse[1]), 
          .S1(Endof2ndMWpulse[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[37:75])
    defparam Startof2ndMWpulse_15__keep_I_0_3.INIT0 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_3.INIT1 = 16'h5666;
    defparam Startof2ndMWpulse_15__keep_I_0_3.INJECT1_0 = "NO";
    defparam Startof2ndMWpulse_15__keep_I_0_3.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_7 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1541), .COUT(n1542), .S0(Endof1stMWpulse[7]), 
          .S1(Endof1stMWpulse[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[37:75])
    defparam Startof1stMWpulse_15__I_0_7.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_7.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_5 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1540), .COUT(n1541), .S0(Endof1stMWpulse[5]), 
          .S1(Endof1stMWpulse[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[37:75])
    defparam Startof1stMWpulse_15__I_0_5.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_5.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_3 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1539), .COUT(n1540), .S0(Endof1stMWpulse[3]), 
          .S1(Endof1stMWpulse[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[37:75])
    defparam Startof1stMWpulse_15__I_0_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1539), .S1(Endof1stMWpulse[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[37:75])
    defparam Startof1stMWpulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Startof2ndMWpulse_15__keep_I_0_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(VCC_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1552), .S1(Endof2ndMWpulse[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[37:75])
    defparam Startof2ndMWpulse_15__keep_I_0_1.INIT0 = 16'hF000;
    defparam Startof2ndMWpulse_15__keep_I_0_1.INIT1 = 16'h5555;
    defparam Startof2ndMWpulse_15__keep_I_0_1.INJECT1_0 = "NO";
    defparam Startof2ndMWpulse_15__keep_I_0_1.INJECT1_1 = "NO";
    CCU2D add_303_15 (.A0(Endof2ndMWpulse[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1537), .S0(Startofprobepulse[14]), .S1(Startofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[39:65])
    defparam add_303_15.INIT0 = 16'h5aaa;
    defparam add_303_15.INIT1 = 16'h5aaa;
    defparam add_303_15.INJECT1_0 = "NO";
    defparam add_303_15.INJECT1_1 = "NO";
    CCU2D add_303_13 (.A0(Endof2ndMWpulse[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1536), .COUT(n1537), .S0(Startofprobepulse[12]), 
          .S1(Startofprobepulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[39:65])
    defparam add_303_13.INIT0 = 16'h5aaa;
    defparam add_303_13.INIT1 = 16'h5aaa;
    defparam add_303_13.INJECT1_0 = "NO";
    defparam add_303_13.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_30_13 (.A0(Startofprobepulse[15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1551), .S0(Startopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[40:69])
    defparam Startofprobepulse_15__keep_I_0_30_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_30_13.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__keep_I_0_30_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_30_13.INJECT1_1 = "NO";
    CCU2D add_303_11 (.A0(Endof2ndMWpulse[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1535), .COUT(n1536), .S0(Startofprobepulse[10]), 
          .S1(Startofprobepulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[39:65])
    defparam add_303_11.INIT0 = 16'h5aaa;
    defparam add_303_11.INIT1 = 16'h5aaa;
    defparam add_303_11.INJECT1_0 = "NO";
    defparam add_303_11.INJECT1_1 = "NO";
    CCU2D add_303_9 (.A0(Endof2ndMWpulse[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1534), .COUT(n1535), .S0(Startofprobepulse[8]), 
          .S1(Startofprobepulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[39:65])
    defparam add_303_9.INIT0 = 16'h5aaa;
    defparam add_303_9.INIT1 = 16'h5aaa;
    defparam add_303_9.INJECT1_0 = "NO";
    defparam add_303_9.INJECT1_1 = "NO";
    CCU2D add_304_15 (.A0(Startopticalsample[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1566), .S0(Endofopticalsample[14]), .S1(Endofopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[40:71])
    defparam add_304_15.INIT0 = 16'h5aaa;
    defparam add_304_15.INIT1 = 16'h5aaa;
    defparam add_304_15.INJECT1_0 = "NO";
    defparam add_304_15.INJECT1_1 = "NO";
    CCU2D add_303_7 (.A0(Endof2ndMWpulse[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1533), .COUT(n1534), .S0(Startofprobepulse[6]), 
          .S1(Startofprobepulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[39:65])
    defparam add_303_7.INIT0 = 16'h5aaa;
    defparam add_303_7.INIT1 = 16'h5aaa;
    defparam add_303_7.INJECT1_0 = "NO";
    defparam add_303_7.INJECT1_1 = "NO";
    CCU2D add_303_5 (.A0(Endof2ndMWpulse[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1532), .COUT(n1533), .S0(Startofprobepulse[4]), 
          .S1(Startofprobepulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[39:65])
    defparam add_303_5.INIT0 = 16'h5aaa;
    defparam add_303_5.INIT1 = 16'h5aaa;
    defparam add_303_5.INJECT1_0 = "NO";
    defparam add_303_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_30_11 (.A0(Startofprobepulse[13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1550), .COUT(n1551), 
          .S0(Startopticalsample[13]), .S1(Startopticalsample[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[40:69])
    defparam Startofprobepulse_15__keep_I_0_30_11.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_30_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_30_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_30_11.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_30_9 (.A0(Startofprobepulse[11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1549), .COUT(n1550), 
          .S0(Startopticalsample[11]), .S1(Startopticalsample[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[40:69])
    defparam Startofprobepulse_15__keep_I_0_30_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_30_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_30_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_30_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(\gatedcount[4] ), .B(\gatedcount[7] ), .C(\gatedcount[5] ), 
         .D(n84), .Z(n8)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i2_4_lut.init = 16'hc8c0;
    CCU2D Startofprobepulse_15__keep_I_0_30_7 (.A0(Startofprobepulse[9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1548), .COUT(n1549), 
          .S0(Startopticalsample[9]), .S1(Startopticalsample[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[40:69])
    defparam Startofprobepulse_15__keep_I_0_30_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_30_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_30_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_30_7.INJECT1_1 = "NO";
    CCU2D add_304_13 (.A0(Startopticalsample[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1565), .COUT(n1566), .S0(Endofopticalsample[12]), 
          .S1(Endofopticalsample[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[40:71])
    defparam add_304_13.INIT0 = 16'h5aaa;
    defparam add_304_13.INIT1 = 16'h5aaa;
    defparam add_304_13.INJECT1_0 = "NO";
    defparam add_304_13.INJECT1_1 = "NO";
    CCU2D add_304_11 (.A0(Startopticalsample[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1564), .COUT(n1565), .S0(Endofopticalsample[10]), 
          .S1(Endofopticalsample[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[40:71])
    defparam add_304_11.INIT0 = 16'h5aaa;
    defparam add_304_11.INIT1 = 16'h5aaa;
    defparam add_304_11.INJECT1_0 = "NO";
    defparam add_304_11.INJECT1_1 = "NO";
    CCU2D add_303_3 (.A0(Endof2ndMWpulse[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1531), .COUT(n1532), .S0(Startofprobepulse[2]), 
          .S1(Startofprobepulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[39:65])
    defparam add_303_3.INIT0 = 16'h5aaa;
    defparam add_303_3.INIT1 = 16'h5555;
    defparam add_303_3.INJECT1_0 = "NO";
    defparam add_303_3.INJECT1_1 = "NO";
    CCU2D add_304_9 (.A0(Startopticalsample[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1563), .COUT(n1564), .S0(Endofopticalsample[8]), 
          .S1(Endofopticalsample[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[40:71])
    defparam add_304_9.INIT0 = 16'h5aaa;
    defparam add_304_9.INIT1 = 16'h5aaa;
    defparam add_304_9.INJECT1_0 = "NO";
    defparam add_304_9.INJECT1_1 = "NO";
    CCU2D add_304_7 (.A0(Startopticalsample[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1562), .COUT(n1563), .S0(Endofopticalsample[6]), 
          .S1(Endofopticalsample[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[40:71])
    defparam add_304_7.INIT0 = 16'h5aaa;
    defparam add_304_7.INIT1 = 16'h5aaa;
    defparam add_304_7.INJECT1_0 = "NO";
    defparam add_304_7.INJECT1_1 = "NO";
    CCU2D add_303_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Endof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1531), .S1(Startofprobepulse[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[39:65])
    defparam add_303_1.INIT0 = 16'hF000;
    defparam add_303_1.INIT1 = 16'h5555;
    defparam add_303_1.INJECT1_0 = "NO";
    defparam add_303_1.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(\gatedcount[10] ), .B(n7), .C(\gatedcount[6] ), 
         .D(n8), .Z(n1692)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i2_3_lut (.A(MW_invalid_c), .B(loop), .C(load_defaults), .Z(counterreset)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[24:48])
    defparam i2_3_lut.init = 16'hfefe;
    CCU2D Startofprobepulse_15__keep_I_0_30_5 (.A0(Startofprobepulse[7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1547), .COUT(n1548), 
          .S0(Startopticalsample[7]), .S1(Startopticalsample[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[40:69])
    defparam Startofprobepulse_15__keep_I_0_30_5.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_30_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_30_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_30_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_30_3 (.A0(Startofprobepulse[5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1546), .COUT(n1547), 
          .S0(Startopticalsample[5]), .S1(Startopticalsample[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[40:69])
    defparam Startofprobepulse_15__keep_I_0_30_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_30_3.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__keep_I_0_30_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_30_3.INJECT1_1 = "NO";
    CCU2D add_304_5 (.A0(Startopticalsample[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1561), .COUT(n1562), .S0(Endofopticalsample[4]), 
          .S1(Endofopticalsample[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[40:71])
    defparam add_304_5.INIT0 = 16'h5555;
    defparam add_304_5.INIT1 = 16'h5555;
    defparam add_304_5.INJECT1_0 = "NO";
    defparam add_304_5.INJECT1_1 = "NO";
    LUT4 i801_4_lut (.A(\gatedcount[4] ), .B(\gatedcount[6] ), .C(\gatedcount[5] ), 
         .D(n84), .Z(n1776)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i801_4_lut.init = 16'hfffe;
    CCU2D add_304_3 (.A0(Startofprobepulse[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startofprobepulse[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1560), .COUT(n1561), .S0(Endofopticalsample[2]), 
          .S1(Endofopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[40:71])
    defparam add_304_3.INIT0 = 16'h5aaa;
    defparam add_304_3.INIT1 = 16'h5aaa;
    defparam add_304_3.INJECT1_0 = "NO";
    defparam add_304_3.INJECT1_1 = "NO";
    CCU2D add_304_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startofprobepulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1560), .S1(Endofopticalsample[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[40:71])
    defparam add_304_1.INIT0 = 16'hF000;
    defparam add_304_1.INIT1 = 16'h5555;
    defparam add_304_1.INJECT1_0 = "NO";
    defparam add_304_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n401), .B(n9), .C(n420), .D(n1372), .Z(n1298)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(78[14:40])
    defparam i1_4_lut.init = 16'hcfce;
    LUT4 i799_2_lut (.A(\gatedcount[7] ), .B(\gatedcount[10] ), .Z(n1774)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i799_2_lut.init = 16'heeee;
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clk_2M5_N_67), .Q(gatedcount_c[15])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    CCU2D Endofprobepulse_15__keep_I_0_11 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1579), .S0(Resetandrepeat[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(45[36:61])
    defparam Endofprobepulse_15__keep_I_0_11.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__keep_I_0_11.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__keep_I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__keep_I_0_11.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clk_2M5_N_67), .Q(gatedcount_c[14])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clk_2M5_N_67), .Q(gatedcount_c[13])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clk_2M5_N_67), .Q(gatedcount_c[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clk_2M5_N_67), .Q(\gatedcount[11] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clk_2M5_N_67), .Q(\gatedcount[10] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clk_2M5_N_67), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clk_2M5_N_67), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clk_2M5_N_67), .Q(\gatedcount[7] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clk_2M5_N_67), .Q(\gatedcount[6] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clk_2M5_N_67), .Q(\gatedcount[5] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clk_2M5_N_67), .Q(\gatedcount[4] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clk_2M5_N_67), .Q(\gatedcount[3] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clk_2M5_N_67), .Q(\gatedcount[2] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clk_2M5_N_67), .Q(gatedcount_c[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=294, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    LUT4 i96_3_lut (.A(\gatedcount[3] ), .B(gatedcount_c[1]), .C(\gatedcount[2] ), 
         .Z(n84)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[18:28])
    defparam i96_3_lut.init = 16'ha8a8;
    CCU2D Endofprobepulse_15__keep_I_0_9 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1578), .COUT(n1579), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(45[36:61])
    defparam Endofprobepulse_15__keep_I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__keep_I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__keep_I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__keep_I_0_9.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__keep_I_0_7 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1577), .COUT(n1578), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(45[36:61])
    defparam Endofprobepulse_15__keep_I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__keep_I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__keep_I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__keep_I_0_7.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__keep_I_0_5 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1576), .COUT(n1577), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(45[36:61])
    defparam Endofprobepulse_15__keep_I_0_5.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__keep_I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__keep_I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__keep_I_0_5.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__keep_I_0_3 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1575), .COUT(n1576), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(45[36:61])
    defparam Endofprobepulse_15__keep_I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__keep_I_0_3.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__keep_I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__keep_I_0_3.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__keep_I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1575), .S1(Resetandrepeat[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(45[36:61])
    defparam Endofprobepulse_15__keep_I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__keep_I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__keep_I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__keep_I_0_1.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__keep_I_0_15 (.A0(Startofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1574), .S0(Endofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[37:65])
    defparam Startofprobepulse_15__keep_I_0_15.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__keep_I_0_15.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__keep_I_0_15.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__keep_I_0_15.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(gatedcount_c[12]), .B(gatedcount_c[15]), .C(gatedcount_c[14]), 
         .D(gatedcount_c[13]), .Z(n1372)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(72[8] 74[5])
    defparam i3_4_lut.init = 16'hfffe;
    CCU2D Endof1stMWpulse_15__keep_I_0_2 (.A0(Endof1stMWpulse[2]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[3]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n1669), .S1(Startof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:79])
    defparam Endof1stMWpulse_15__keep_I_0_2.INIT0 = 16'h7000;
    defparam Endof1stMWpulse_15__keep_I_0_2.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_2.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__keep_I_0_2.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__keep_I_0_4 (.A0(Endof1stMWpulse[4]), .B0(AdjustableFreePrecession[4]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[5]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1669), .COUT(n1670), .S0(Startof2ndMWpulse[4]), 
          .S1(Startof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:79])
    defparam Endof1stMWpulse_15__keep_I_0_4.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_4.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_4.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__keep_I_0_4.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__keep_I_0_6 (.A0(Endof1stMWpulse[6]), .B0(AdjustableFreePrecession[6]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[7]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1670), .COUT(n1671), .S0(Startof2ndMWpulse[6]), 
          .S1(Startof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:79])
    defparam Endof1stMWpulse_15__keep_I_0_6.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_6.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_6.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__keep_I_0_6.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__keep_I_0_8 (.A0(Endof1stMWpulse[8]), .B0(AdjustableFreePrecession[8]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[9]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1671), .COUT(n1672), .S0(Startof2ndMWpulse[8]), 
          .S1(Startof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:79])
    defparam Endof1stMWpulse_15__keep_I_0_8.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_8.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_8.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__keep_I_0_8.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__keep_I_0_10 (.A0(Endof1stMWpulse[10]), .B0(AdjustableFreePrecession[10]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[11]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1672), .COUT(n1673), .S0(Startof2ndMWpulse[10]), 
          .S1(Startof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:79])
    defparam Endof1stMWpulse_15__keep_I_0_10.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_10.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_10.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__keep_I_0_10.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__keep_I_0_12 (.A0(Endof1stMWpulse[12]), .B0(AdjustableFreePrecession[12]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[13]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1673), .COUT(n1674), .S0(Startof2ndMWpulse[12]), 
          .S1(Startof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:79])
    defparam Endof1stMWpulse_15__keep_I_0_12.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_12.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_12.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__keep_I_0_12.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__keep_I_0_14 (.A0(Endof1stMWpulse[14]), .B0(AdjustableFreePrecession[14]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[15]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1674), .S0(Startof2ndMWpulse[14]), 
          .S1(Startof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[39:79])
    defparam Endof1stMWpulse_15__keep_I_0_14.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_14.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__keep_I_0_14.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__keep_I_0_14.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_26 (.A(n1692), .B(n1372), .C(n1780), .D(\gatedcount[11] ), 
         .Z(n1443)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_4_lut_adj_26.init = 16'hffef;
    LUT4 i805_4_lut (.A(gatedcount[8]), .B(n1776), .C(n1774), .D(gatedcount[9]), 
         .Z(n1780)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i805_4_lut.init = 16'hfffe;
    count_n systemcounter (.count({count}), .clk_2M5(clk_2M5), .counterreset(counterreset), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(51[10:92])
    comparator sample2 (.GND_net(GND_net), .gatedcount({gatedcount_c[15:12], 
            \gatedcount[11] , \gatedcount[10] , gatedcount[9:8], \gatedcount[7] , 
            \gatedcount[6] , \gatedcount[5] , \gatedcount[4] , \gatedcount[3] , 
            \gatedcount[2] , gatedcount_c[1:0]}), .b({Endofopticalsample[15:1], 
            Endof2ndMWpulse[0]}), .n534(n534)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(61[13:98])
    comparator_U4 sample1 (.n534(n534), .MW_invalid_c(MW_invalid_c), .ADC_sample_N_19(ADC_sample_N_19), 
            .gatedcount({gatedcount_c[15:12], \gatedcount[11] , \gatedcount[10] , 
            gatedcount[9:8], \gatedcount[7] , \gatedcount[6] , \gatedcount[5] , 
            \gatedcount[4] , \gatedcount[3] , \gatedcount[2] , gatedcount_c[1:0]}), 
            .b({Startopticalsample[15:4], Startofprobepulse[3:1], Endof2ndMWpulse[0]}), 
            .GND_net(GND_net), .n1837(n1837)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(60[13:98])
    comparator_U5 probe2 (.gatedcount({gatedcount_c[15:12], \gatedcount[11] , 
            \gatedcount[10] , gatedcount[9:8], \gatedcount[7] , \gatedcount[6] , 
            \gatedcount[5] , \gatedcount[4] , \gatedcount[3] , \gatedcount[2] , 
            gatedcount_c[1:0]}), .b({Endofprobepulse[15:2], Startofprobepulse[1], 
            Endof2ndMWpulse[0]}), .GND_net(GND_net), .n496(n496), .probestarted(probestarted), 
            .n1838(n1838)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(59[13:93])
    comparator_U6 probe1 (.gatedcount({gatedcount_c[15:12], \gatedcount[11] , 
            \gatedcount[10] , gatedcount[9:8], \gatedcount[7] , \gatedcount[6] , 
            \gatedcount[5] , \gatedcount[4] , \gatedcount[3] , \gatedcount[2] , 
            gatedcount_c[1:0]}), .b({Startofprobepulse[15:1], Endof2ndMWpulse[0]}), 
            .GND_net(GND_net), .probestarted(probestarted)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(58[13:95])
    countupdownpreload piecounter (.\AdjustablePieOverTwo[9] (AdjustablePieOverTwo[9]), 
            .GND_net(GND_net), .\AdjustablePieOverTwo[10] (AdjustablePieOverTwo[10]), 
            .\AdjustablePieOverTwo[7] (AdjustablePieOverTwo[7]), .\AdjustablePieOverTwo[8] (AdjustablePieOverTwo[8]), 
            .\AdjustablePieOverTwo[5] (AdjustablePieOverTwo[5]), .\AdjustablePieOverTwo[6] (AdjustablePieOverTwo[6]), 
            .\AdjustablePieOverTwo[3] (AdjustablePieOverTwo[3]), .pieovertwo_plus(pieovertwo_plus), 
            .\AdjustablePieOverTwo[4] (AdjustablePieOverTwo[4]), .\Endof1stMWpulse[1] (Endof1stMWpulse[1]), 
            .\AdjustablePieOverTwo[2] (AdjustablePieOverTwo[2]), .pieovertwo_minus(pieovertwo_minus), 
            .\AdjustablePieOverTwo[15] (AdjustablePieOverTwo[15]), .\AdjustablePieOverTwo[13] (AdjustablePieOverTwo[13]), 
            .\AdjustablePieOverTwo[14] (AdjustablePieOverTwo[14]), .\AdjustablePieOverTwo[11] (AdjustablePieOverTwo[11]), 
            .\AdjustablePieOverTwo[12] (AdjustablePieOverTwo[12]), .load_defaults(load_defaults), 
            .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(64[21:199])
    comparator_U7 loopcounter (.gatedcount({gatedcount_c[15:12], \gatedcount[11] , 
            \gatedcount[10] , gatedcount[9:8], \gatedcount[7] , \gatedcount[6] , 
            \gatedcount[5] , \gatedcount[4] , \gatedcount[3] , \gatedcount[2] , 
            gatedcount_c[1:0]}), .b({Resetandrepeat[15:6], Endofprobepulse[5:2], 
            Startofprobepulse[1], Endof2ndMWpulse[0]}), .GND_net(GND_net), 
            .loop(loop)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(62[13:89])
    countupdownpreload_U8 freepcounter (.GND_net(GND_net), .freeprecess_minus(freeprecess_minus), 
            .freeprecess_plus(freeprecess_plus), .\AdjustableFreePrecession[14] (AdjustableFreePrecession[14]), 
            .\AdjustableFreePrecession[15] (AdjustableFreePrecession[15]), 
            .\AdjustableFreePrecession[12] (AdjustableFreePrecession[12]), 
            .\AdjustableFreePrecession[13] (AdjustableFreePrecession[13]), 
            .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), .\AdjustableFreePrecession[3] (AdjustableFreePrecession[3]), 
            .\AdjustableFreePrecession[6] (AdjustableFreePrecession[6]), .\AdjustableFreePrecession[7] (AdjustableFreePrecession[7]), 
            .load_defaults(load_defaults), .\AdjustableFreePrecession[11] (AdjustableFreePrecession[11]), 
            .\AdjustableFreePrecession[10] (AdjustableFreePrecession[10]), 
            .\AdjustableFreePrecession[9] (AdjustableFreePrecession[9]), .\AdjustableFreePrecession[8] (AdjustableFreePrecession[8]), 
            .\AdjustableFreePrecession[5] (AdjustableFreePrecession[5]), .\AdjustableFreePrecession[4] (AdjustableFreePrecession[4]), 
            .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(65[21:212])
    comparator_U9 MW4 (.GND_net(GND_net), .gatedcount({gatedcount_c[15:12], 
            \gatedcount[11] , \gatedcount[10] , gatedcount[9:8], \gatedcount[7] , 
            \gatedcount[6] , \gatedcount[5] , \gatedcount[4] , \gatedcount[3] , 
            \gatedcount[2] , gatedcount_c[1:0]}), .b({Endof2ndMWpulse}), 
            .n458(n458)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(57[13:88])
    comparator_U10 MW3 (.n458(n458), .n9(n9), .gatedcount({gatedcount_c[15:12], 
            \gatedcount[11] , \gatedcount[10] , gatedcount[9:8], \gatedcount[7] , 
            \gatedcount[6] , \gatedcount[5] , \gatedcount[4] , \gatedcount[3] , 
            \gatedcount[2] , gatedcount_c[1:0]}), .b({Startof2ndMWpulse[15:2], 
            Endof1stMWpulse[1], VCC_net}), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(56[13:90])
    comparator_U11 MW2 (.GND_net(GND_net), .gatedcount({gatedcount_c[15:12], 
            \gatedcount[11] , \gatedcount[10] , gatedcount[9:8], \gatedcount[7] , 
            \gatedcount[6] , \gatedcount[5] , \gatedcount[4] , \gatedcount[3] , 
            \gatedcount[2] , gatedcount_c[1:0]}), .b({Endof1stMWpulse[15:1], 
            VCC_net}), .n420(n420)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(55[13:88])
    
endmodule
//
// Verilog Description of module count_n
//

module count_n (count, clk_2M5, counterreset, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [15:0]count;
    input clk_2M5;
    input counterreset;
    input GND_net;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire [15:0]n69;
    
    wire n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667;
    
    FD1S3IX count_307__i0 (.D(n69[0]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i0.GSR = "ENABLED";
    FD1S3IX count_307__i15 (.D(n69[15]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i15.GSR = "ENABLED";
    FD1S3IX count_307__i14 (.D(n69[14]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i14.GSR = "ENABLED";
    FD1S3IX count_307__i13 (.D(n69[13]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i13.GSR = "ENABLED";
    FD1S3IX count_307__i12 (.D(n69[12]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i12.GSR = "ENABLED";
    FD1S3IX count_307__i11 (.D(n69[11]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i11.GSR = "ENABLED";
    FD1S3IX count_307__i10 (.D(n69[10]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i10.GSR = "ENABLED";
    FD1S3IX count_307__i9 (.D(n69[9]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i9.GSR = "ENABLED";
    FD1S3IX count_307__i8 (.D(n69[8]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i8.GSR = "ENABLED";
    FD1S3IX count_307__i7 (.D(n69[7]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i7.GSR = "ENABLED";
    FD1S3IX count_307__i6 (.D(n69[6]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i6.GSR = "ENABLED";
    FD1S3IX count_307__i5 (.D(n69[5]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i5.GSR = "ENABLED";
    FD1S3IX count_307__i4 (.D(n69[4]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i4.GSR = "ENABLED";
    FD1S3IX count_307__i3 (.D(n69[3]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i3.GSR = "ENABLED";
    FD1S3IX count_307__i2 (.D(n69[2]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i2.GSR = "ENABLED";
    FD1S3IX count_307__i1 (.D(n69[1]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307__i1.GSR = "ENABLED";
    CCU2D count_307_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1660), .S1(n69[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307_add_4_1.INIT0 = 16'hF000;
    defparam count_307_add_4_1.INIT1 = 16'h0555;
    defparam count_307_add_4_1.INJECT1_0 = "NO";
    defparam count_307_add_4_1.INJECT1_1 = "NO";
    CCU2D count_307_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1660), .COUT(n1661), .S0(n69[1]), .S1(n69[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307_add_4_3.INIT0 = 16'hfaaa;
    defparam count_307_add_4_3.INIT1 = 16'hfaaa;
    defparam count_307_add_4_3.INJECT1_0 = "NO";
    defparam count_307_add_4_3.INJECT1_1 = "NO";
    CCU2D count_307_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1661), .COUT(n1662), .S0(n69[3]), .S1(n69[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307_add_4_5.INIT0 = 16'hfaaa;
    defparam count_307_add_4_5.INIT1 = 16'hfaaa;
    defparam count_307_add_4_5.INJECT1_0 = "NO";
    defparam count_307_add_4_5.INJECT1_1 = "NO";
    CCU2D count_307_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1662), .COUT(n1663), .S0(n69[5]), .S1(n69[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307_add_4_7.INIT0 = 16'hfaaa;
    defparam count_307_add_4_7.INIT1 = 16'hfaaa;
    defparam count_307_add_4_7.INJECT1_0 = "NO";
    defparam count_307_add_4_7.INJECT1_1 = "NO";
    CCU2D count_307_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1663), .COUT(n1664), .S0(n69[7]), .S1(n69[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307_add_4_9.INIT0 = 16'hfaaa;
    defparam count_307_add_4_9.INIT1 = 16'hfaaa;
    defparam count_307_add_4_9.INJECT1_0 = "NO";
    defparam count_307_add_4_9.INJECT1_1 = "NO";
    CCU2D count_307_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1664), .COUT(n1665), .S0(n69[9]), .S1(n69[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307_add_4_11.INIT0 = 16'hfaaa;
    defparam count_307_add_4_11.INIT1 = 16'hfaaa;
    defparam count_307_add_4_11.INJECT1_0 = "NO";
    defparam count_307_add_4_11.INJECT1_1 = "NO";
    CCU2D count_307_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1665), .COUT(n1666), .S0(n69[11]), .S1(n69[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307_add_4_13.INIT0 = 16'hfaaa;
    defparam count_307_add_4_13.INIT1 = 16'hfaaa;
    defparam count_307_add_4_13.INJECT1_0 = "NO";
    defparam count_307_add_4_13.INJECT1_1 = "NO";
    CCU2D count_307_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1666), .COUT(n1667), .S0(n69[13]), .S1(n69[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307_add_4_15.INIT0 = 16'hfaaa;
    defparam count_307_add_4_15.INIT1 = 16'hfaaa;
    defparam count_307_add_4_15.INJECT1_0 = "NO";
    defparam count_307_add_4_15.INJECT1_1 = "NO";
    CCU2D count_307_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1667), .S0(n69[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(20[27:39])
    defparam count_307_add_4_17.INIT0 = 16'hfaaa;
    defparam count_307_add_4_17.INIT1 = 16'h0000;
    defparam count_307_add_4_17.INJECT1_0 = "NO";
    defparam count_307_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator
//

module comparator (GND_net, gatedcount, b, n534) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]b;
    output n534;
    
    
    wire n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647;
    
    CCU2D sub_243_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(b[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1640));
    defparam sub_243_add_2_1.INIT0 = 16'h0000;
    defparam sub_243_add_2_1.INIT1 = 16'h5999;
    defparam sub_243_add_2_1.INJECT1_0 = "NO";
    defparam sub_243_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_243_add_2_3 (.A0(gatedcount[1]), .B0(b[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(b[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1640), .COUT(n1641));
    defparam sub_243_add_2_3.INIT0 = 16'h5999;
    defparam sub_243_add_2_3.INIT1 = 16'h5999;
    defparam sub_243_add_2_3.INJECT1_0 = "NO";
    defparam sub_243_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_243_add_2_5 (.A0(gatedcount[3]), .B0(b[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(b[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1641), .COUT(n1642));
    defparam sub_243_add_2_5.INIT0 = 16'h5999;
    defparam sub_243_add_2_5.INIT1 = 16'h5999;
    defparam sub_243_add_2_5.INJECT1_0 = "NO";
    defparam sub_243_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_243_add_2_7 (.A0(gatedcount[5]), .B0(b[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(b[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1642), .COUT(n1643));
    defparam sub_243_add_2_7.INIT0 = 16'h5999;
    defparam sub_243_add_2_7.INIT1 = 16'h5999;
    defparam sub_243_add_2_7.INJECT1_0 = "NO";
    defparam sub_243_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_243_add_2_9 (.A0(gatedcount[7]), .B0(b[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(b[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1643), .COUT(n1644));
    defparam sub_243_add_2_9.INIT0 = 16'h5999;
    defparam sub_243_add_2_9.INIT1 = 16'h5999;
    defparam sub_243_add_2_9.INJECT1_0 = "NO";
    defparam sub_243_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_243_add_2_11 (.A0(gatedcount[9]), .B0(b[9]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[10]), .B1(b[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1644), .COUT(n1645));
    defparam sub_243_add_2_11.INIT0 = 16'h5999;
    defparam sub_243_add_2_11.INIT1 = 16'h5999;
    defparam sub_243_add_2_11.INJECT1_0 = "NO";
    defparam sub_243_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_243_add_2_13 (.A0(gatedcount[11]), .B0(b[11]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[12]), .B1(b[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1645), .COUT(n1646));
    defparam sub_243_add_2_13.INIT0 = 16'h5999;
    defparam sub_243_add_2_13.INIT1 = 16'h5999;
    defparam sub_243_add_2_13.INJECT1_0 = "NO";
    defparam sub_243_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_243_add_2_15 (.A0(gatedcount[13]), .B0(b[13]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[14]), .B1(b[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1646), .COUT(n1647));
    defparam sub_243_add_2_15.INIT0 = 16'h5999;
    defparam sub_243_add_2_15.INIT1 = 16'h5999;
    defparam sub_243_add_2_15.INJECT1_0 = "NO";
    defparam sub_243_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_243_add_2_17 (.A0(gatedcount[15]), .B0(b[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1647), .S1(n534));
    defparam sub_243_add_2_17.INIT0 = 16'h5999;
    defparam sub_243_add_2_17.INIT1 = 16'h0000;
    defparam sub_243_add_2_17.INJECT1_0 = "NO";
    defparam sub_243_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U4
//

module comparator_U4 (n534, MW_invalid_c, ADC_sample_N_19, gatedcount, 
            b, GND_net, n1837) /* synthesis syn_module_defined=1 */ ;
    input n534;
    input MW_invalid_c;
    output ADC_sample_N_19;
    input [15:0]gatedcount;
    input [15:0]b;
    input GND_net;
    output n1837;
    
    
    wire samplestarted, n1587, n1586, n1585, n1584, n1583, n1582, 
        n1581, n1580;
    
    LUT4 i1_2_lut_3_lut (.A(samplestarted), .B(n534), .C(MW_invalid_c), 
         .Z(ADC_sample_N_19)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0202;
    CCU2D sub_241_add_2_17 (.A0(gatedcount[15]), .B0(b[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1587), .S1(samplestarted));
    defparam sub_241_add_2_17.INIT0 = 16'h5999;
    defparam sub_241_add_2_17.INIT1 = 16'h0000;
    defparam sub_241_add_2_17.INJECT1_0 = "NO";
    defparam sub_241_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_241_add_2_15 (.A0(gatedcount[13]), .B0(b[13]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[14]), .B1(b[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1586), .COUT(n1587));
    defparam sub_241_add_2_15.INIT0 = 16'h5999;
    defparam sub_241_add_2_15.INIT1 = 16'h5999;
    defparam sub_241_add_2_15.INJECT1_0 = "NO";
    defparam sub_241_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_241_add_2_13 (.A0(gatedcount[11]), .B0(b[11]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[12]), .B1(b[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1585), .COUT(n1586));
    defparam sub_241_add_2_13.INIT0 = 16'h5999;
    defparam sub_241_add_2_13.INIT1 = 16'h5999;
    defparam sub_241_add_2_13.INJECT1_0 = "NO";
    defparam sub_241_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_241_add_2_11 (.A0(gatedcount[9]), .B0(b[9]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[10]), .B1(b[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1584), .COUT(n1585));
    defparam sub_241_add_2_11.INIT0 = 16'h5999;
    defparam sub_241_add_2_11.INIT1 = 16'h5999;
    defparam sub_241_add_2_11.INJECT1_0 = "NO";
    defparam sub_241_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_241_add_2_9 (.A0(gatedcount[7]), .B0(b[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(b[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1583), .COUT(n1584));
    defparam sub_241_add_2_9.INIT0 = 16'h5999;
    defparam sub_241_add_2_9.INIT1 = 16'h5999;
    defparam sub_241_add_2_9.INJECT1_0 = "NO";
    defparam sub_241_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_241_add_2_7 (.A0(gatedcount[5]), .B0(b[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(b[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1582), .COUT(n1583));
    defparam sub_241_add_2_7.INIT0 = 16'h5999;
    defparam sub_241_add_2_7.INIT1 = 16'h5999;
    defparam sub_241_add_2_7.INJECT1_0 = "NO";
    defparam sub_241_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_241_add_2_5 (.A0(gatedcount[3]), .B0(b[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(b[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1581), .COUT(n1582));
    defparam sub_241_add_2_5.INIT0 = 16'h5999;
    defparam sub_241_add_2_5.INIT1 = 16'h5999;
    defparam sub_241_add_2_5.INJECT1_0 = "NO";
    defparam sub_241_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_241_add_2_3 (.A0(gatedcount[1]), .B0(b[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(b[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1580), .COUT(n1581));
    defparam sub_241_add_2_3.INIT0 = 16'h5999;
    defparam sub_241_add_2_3.INIT1 = 16'h5999;
    defparam sub_241_add_2_3.INJECT1_0 = "NO";
    defparam sub_241_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_241_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(b[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1580));
    defparam sub_241_add_2_1.INIT0 = 16'h0000;
    defparam sub_241_add_2_1.INIT1 = 16'h5999;
    defparam sub_241_add_2_1.INJECT1_0 = "NO";
    defparam sub_241_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_1 (.A(samplestarted), .B(n534), .Z(n1837)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_1.init = 16'h2222;
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (gatedcount, b, GND_net, n496, probestarted, 
            n1838) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input [15:0]b;
    input GND_net;
    output n496;
    input probestarted;
    output n1838;
    
    
    wire n1619, n1620, n1618, n1617, n1616, n1621, n1622, n1623;
    
    CCU2D sub_239_add_2_9 (.A0(gatedcount[7]), .B0(b[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(b[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1619), .COUT(n1620));
    defparam sub_239_add_2_9.INIT0 = 16'h5999;
    defparam sub_239_add_2_9.INIT1 = 16'h5999;
    defparam sub_239_add_2_9.INJECT1_0 = "NO";
    defparam sub_239_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_7 (.A0(gatedcount[5]), .B0(b[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(b[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1618), .COUT(n1619));
    defparam sub_239_add_2_7.INIT0 = 16'h5999;
    defparam sub_239_add_2_7.INIT1 = 16'h5999;
    defparam sub_239_add_2_7.INJECT1_0 = "NO";
    defparam sub_239_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_5 (.A0(gatedcount[3]), .B0(b[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(b[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1617), .COUT(n1618));
    defparam sub_239_add_2_5.INIT0 = 16'h5999;
    defparam sub_239_add_2_5.INIT1 = 16'h5999;
    defparam sub_239_add_2_5.INJECT1_0 = "NO";
    defparam sub_239_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_3 (.A0(gatedcount[1]), .B0(b[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(b[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1616), .COUT(n1617));
    defparam sub_239_add_2_3.INIT0 = 16'h5999;
    defparam sub_239_add_2_3.INIT1 = 16'h5999;
    defparam sub_239_add_2_3.INJECT1_0 = "NO";
    defparam sub_239_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(b[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1616));
    defparam sub_239_add_2_1.INIT0 = 16'h0000;
    defparam sub_239_add_2_1.INIT1 = 16'h5999;
    defparam sub_239_add_2_1.INJECT1_0 = "NO";
    defparam sub_239_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_13 (.A0(gatedcount[11]), .B0(b[11]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[12]), .B1(b[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1621), .COUT(n1622));
    defparam sub_239_add_2_13.INIT0 = 16'h5999;
    defparam sub_239_add_2_13.INIT1 = 16'h5999;
    defparam sub_239_add_2_13.INJECT1_0 = "NO";
    defparam sub_239_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_15 (.A0(gatedcount[13]), .B0(b[13]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[14]), .B1(b[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1622), .COUT(n1623));
    defparam sub_239_add_2_15.INIT0 = 16'h5999;
    defparam sub_239_add_2_15.INIT1 = 16'h5999;
    defparam sub_239_add_2_15.INJECT1_0 = "NO";
    defparam sub_239_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_239_add_2_17 (.A0(gatedcount[15]), .B0(b[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1623), .S1(n496));
    defparam sub_239_add_2_17.INIT0 = 16'h5999;
    defparam sub_239_add_2_17.INIT1 = 16'h0000;
    defparam sub_239_add_2_17.INJECT1_0 = "NO";
    defparam sub_239_add_2_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_2 (.A(n496), .B(probestarted), .Z(n1838)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_2.init = 16'h4444;
    CCU2D sub_239_add_2_11 (.A0(gatedcount[9]), .B0(b[9]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[10]), .B1(b[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1620), .COUT(n1621));
    defparam sub_239_add_2_11.INIT0 = 16'h5999;
    defparam sub_239_add_2_11.INIT1 = 16'h5999;
    defparam sub_239_add_2_11.INJECT1_0 = "NO";
    defparam sub_239_add_2_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (gatedcount, b, GND_net, probestarted) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input [15:0]b;
    input GND_net;
    output probestarted;
    
    
    wire n1615, n1614, n1613, n1612, n1611, n1610, n1609, n1608;
    
    CCU2D sub_237_add_2_17 (.A0(gatedcount[15]), .B0(b[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1615), .S1(probestarted));
    defparam sub_237_add_2_17.INIT0 = 16'h5999;
    defparam sub_237_add_2_17.INIT1 = 16'h0000;
    defparam sub_237_add_2_17.INJECT1_0 = "NO";
    defparam sub_237_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_15 (.A0(gatedcount[13]), .B0(b[13]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[14]), .B1(b[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1614), .COUT(n1615));
    defparam sub_237_add_2_15.INIT0 = 16'h5999;
    defparam sub_237_add_2_15.INIT1 = 16'h5999;
    defparam sub_237_add_2_15.INJECT1_0 = "NO";
    defparam sub_237_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_13 (.A0(gatedcount[11]), .B0(b[11]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[12]), .B1(b[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1613), .COUT(n1614));
    defparam sub_237_add_2_13.INIT0 = 16'h5999;
    defparam sub_237_add_2_13.INIT1 = 16'h5999;
    defparam sub_237_add_2_13.INJECT1_0 = "NO";
    defparam sub_237_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_11 (.A0(gatedcount[9]), .B0(b[9]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[10]), .B1(b[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1612), .COUT(n1613));
    defparam sub_237_add_2_11.INIT0 = 16'h5999;
    defparam sub_237_add_2_11.INIT1 = 16'h5999;
    defparam sub_237_add_2_11.INJECT1_0 = "NO";
    defparam sub_237_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_9 (.A0(gatedcount[7]), .B0(b[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(b[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1611), .COUT(n1612));
    defparam sub_237_add_2_9.INIT0 = 16'h5999;
    defparam sub_237_add_2_9.INIT1 = 16'h5999;
    defparam sub_237_add_2_9.INJECT1_0 = "NO";
    defparam sub_237_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_7 (.A0(gatedcount[5]), .B0(b[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(b[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1610), .COUT(n1611));
    defparam sub_237_add_2_7.INIT0 = 16'h5999;
    defparam sub_237_add_2_7.INIT1 = 16'h5999;
    defparam sub_237_add_2_7.INJECT1_0 = "NO";
    defparam sub_237_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_5 (.A0(gatedcount[3]), .B0(b[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(b[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1609), .COUT(n1610));
    defparam sub_237_add_2_5.INIT0 = 16'h5999;
    defparam sub_237_add_2_5.INIT1 = 16'h5999;
    defparam sub_237_add_2_5.INJECT1_0 = "NO";
    defparam sub_237_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_3 (.A0(gatedcount[1]), .B0(b[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(b[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1608), .COUT(n1609));
    defparam sub_237_add_2_3.INIT0 = 16'h5999;
    defparam sub_237_add_2_3.INIT1 = 16'h5999;
    defparam sub_237_add_2_3.INJECT1_0 = "NO";
    defparam sub_237_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_237_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(b[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1608));
    defparam sub_237_add_2_1.INIT0 = 16'h0000;
    defparam sub_237_add_2_1.INIT1 = 16'h5999;
    defparam sub_237_add_2_1.INJECT1_0 = "NO";
    defparam sub_237_add_2_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (\AdjustablePieOverTwo[9] , GND_net, \AdjustablePieOverTwo[10] , 
            \AdjustablePieOverTwo[7] , \AdjustablePieOverTwo[8] , \AdjustablePieOverTwo[5] , 
            \AdjustablePieOverTwo[6] , \AdjustablePieOverTwo[3] , pieovertwo_plus, 
            \AdjustablePieOverTwo[4] , \Endof1stMWpulse[1] , \AdjustablePieOverTwo[2] , 
            pieovertwo_minus, \AdjustablePieOverTwo[15] , \AdjustablePieOverTwo[13] , 
            \AdjustablePieOverTwo[14] , \AdjustablePieOverTwo[11] , \AdjustablePieOverTwo[12] , 
            load_defaults, clk_2M5) /* synthesis syn_module_defined=1 */ ;
    output \AdjustablePieOverTwo[9] ;
    input GND_net;
    output \AdjustablePieOverTwo[10] ;
    output \AdjustablePieOverTwo[7] ;
    output \AdjustablePieOverTwo[8] ;
    output \AdjustablePieOverTwo[5] ;
    output \AdjustablePieOverTwo[6] ;
    output \AdjustablePieOverTwo[3] ;
    input pieovertwo_plus;
    output \AdjustablePieOverTwo[4] ;
    output \Endof1stMWpulse[1] ;
    output \AdjustablePieOverTwo[2] ;
    input pieovertwo_minus;
    output \AdjustablePieOverTwo[15] ;
    output \AdjustablePieOverTwo[13] ;
    output \AdjustablePieOverTwo[14] ;
    output \AdjustablePieOverTwo[11] ;
    output \AdjustablePieOverTwo[12] ;
    input load_defaults;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1527;
    wire [14:0]n1124;
    
    wire n1528, n1526, n1525, n1524, n1523;
    wire [15:0]count_15__N_130;
    
    wire n1530, n1529, n1676, n1677, n1678, n1679, n1680, n1681, 
        n1682, n4;
    
    CCU2D add_297_348_add_1_11 (.A0(\AdjustablePieOverTwo[9] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[10] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1527), .COUT(n1528), 
          .S0(n1124[8]), .S1(n1124[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_297_348_add_1_11.INIT0 = 16'h5aaa;
    defparam add_297_348_add_1_11.INIT1 = 16'h5aaa;
    defparam add_297_348_add_1_11.INJECT1_0 = "NO";
    defparam add_297_348_add_1_11.INJECT1_1 = "NO";
    CCU2D add_297_348_add_1_9 (.A0(\AdjustablePieOverTwo[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[8] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1526), .COUT(n1527), 
          .S0(n1124[6]), .S1(n1124[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_297_348_add_1_9.INIT0 = 16'h5aaa;
    defparam add_297_348_add_1_9.INIT1 = 16'h5aaa;
    defparam add_297_348_add_1_9.INJECT1_0 = "NO";
    defparam add_297_348_add_1_9.INJECT1_1 = "NO";
    CCU2D add_297_348_add_1_7 (.A0(\AdjustablePieOverTwo[5] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[6] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1525), .COUT(n1526), 
          .S0(n1124[4]), .S1(n1124[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_297_348_add_1_7.INIT0 = 16'h5aaa;
    defparam add_297_348_add_1_7.INIT1 = 16'h5aaa;
    defparam add_297_348_add_1_7.INJECT1_0 = "NO";
    defparam add_297_348_add_1_7.INJECT1_1 = "NO";
    CCU2D add_297_348_add_1_5 (.A0(\AdjustablePieOverTwo[3] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[4] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1524), .COUT(n1525), 
          .S0(n1124[2]), .S1(n1124[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_297_348_add_1_5.INIT0 = 16'h5666;
    defparam add_297_348_add_1_5.INIT1 = 16'h5aaa;
    defparam add_297_348_add_1_5.INJECT1_0 = "NO";
    defparam add_297_348_add_1_5.INJECT1_1 = "NO";
    CCU2D add_297_348_add_1_3 (.A0(\Endof1stMWpulse[1] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[2] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1523), .COUT(n1524), 
          .S0(count_15__N_130[1]), .S1(n1124[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_297_348_add_1_3.INIT0 = 16'h5666;
    defparam add_297_348_add_1_3.INIT1 = 16'h5aaa;
    defparam add_297_348_add_1_3.INJECT1_0 = "NO";
    defparam add_297_348_add_1_3.INJECT1_1 = "NO";
    CCU2D add_297_348_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(GND_net), 
          .D1(GND_net), .COUT(n1523));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_297_348_add_1_1.INIT0 = 16'hF000;
    defparam add_297_348_add_1_1.INIT1 = 16'hdddd;
    defparam add_297_348_add_1_1.INJECT1_0 = "NO";
    defparam add_297_348_add_1_1.INJECT1_1 = "NO";
    CCU2D add_297_348_add_1_17 (.A0(\AdjustablePieOverTwo[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1530), .S0(n1124[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_297_348_add_1_17.INIT0 = 16'h5aaa;
    defparam add_297_348_add_1_17.INIT1 = 16'h0000;
    defparam add_297_348_add_1_17.INJECT1_0 = "NO";
    defparam add_297_348_add_1_17.INJECT1_1 = "NO";
    CCU2D add_297_348_add_1_15 (.A0(\AdjustablePieOverTwo[13] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[14] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1529), .COUT(n1530), 
          .S0(n1124[12]), .S1(n1124[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_297_348_add_1_15.INIT0 = 16'h5aaa;
    defparam add_297_348_add_1_15.INIT1 = 16'h5aaa;
    defparam add_297_348_add_1_15.INJECT1_0 = "NO";
    defparam add_297_348_add_1_15.INJECT1_1 = "NO";
    CCU2D add_297_348_add_1_13 (.A0(\AdjustablePieOverTwo[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[12] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1528), .COUT(n1529), 
          .S0(n1124[10]), .S1(n1124[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_297_348_add_1_13.INIT0 = 16'h5aaa;
    defparam add_297_348_add_1_13.INIT1 = 16'h5aaa;
    defparam add_297_348_add_1_13.INJECT1_0 = "NO";
    defparam add_297_348_add_1_13.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_130[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_130[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_130[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_130[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_130[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_130[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_130[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_130[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_130[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3IX count_i6 (.D(count_15__N_130[6]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_130[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_130[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_130[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_130[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    FD1S3JX count_i1 (.D(count_15__N_130[1]), .CK(trigger), .PD(load_defaults), 
            .Q(\Endof1stMWpulse[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=64, LSE_RLINE=64 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i1.GSR = "ENABLED";
    CCU2D add_364_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1124[1]), 
          .D1(GND_net), .COUT(n1676), .S1(count_15__N_130[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_364_1.INIT0 = 16'hF000;
    defparam add_364_1.INIT1 = 16'hd2d2;
    defparam add_364_1.INJECT1_0 = "NO";
    defparam add_364_1.INJECT1_1 = "NO";
    CCU2D add_364_3 (.A0(n1124[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1124[3]), 
          .D1(GND_net), .CIN(n1676), .COUT(n1677), .S0(count_15__N_130[3]), 
          .S1(count_15__N_130[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_364_3.INIT0 = 16'h5aaa;
    defparam add_364_3.INIT1 = 16'hd2d2;
    defparam add_364_3.INJECT1_0 = "NO";
    defparam add_364_3.INJECT1_1 = "NO";
    CCU2D add_364_5 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1124[4]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1124[5]), 
          .D1(GND_net), .CIN(n1677), .COUT(n1678), .S0(count_15__N_130[5]), 
          .S1(count_15__N_130[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_364_5.INIT0 = 16'hd2d2;
    defparam add_364_5.INIT1 = 16'hd2d2;
    defparam add_364_5.INJECT1_0 = "NO";
    defparam add_364_5.INJECT1_1 = "NO";
    CCU2D add_364_7 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1124[6]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1124[7]), 
          .D1(GND_net), .CIN(n1678), .COUT(n1679), .S0(count_15__N_130[7]), 
          .S1(count_15__N_130[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_364_7.INIT0 = 16'hd2d2;
    defparam add_364_7.INIT1 = 16'hd2d2;
    defparam add_364_7.INJECT1_0 = "NO";
    defparam add_364_7.INJECT1_1 = "NO";
    CCU2D add_364_9 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1124[8]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1124[9]), 
          .D1(GND_net), .CIN(n1679), .COUT(n1680), .S0(count_15__N_130[9]), 
          .S1(count_15__N_130[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_364_9.INIT0 = 16'hd2d2;
    defparam add_364_9.INIT1 = 16'hd2d2;
    defparam add_364_9.INJECT1_0 = "NO";
    defparam add_364_9.INJECT1_1 = "NO";
    CCU2D add_364_11 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1124[10]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1124[11]), 
          .D1(GND_net), .CIN(n1680), .COUT(n1681), .S0(count_15__N_130[11]), 
          .S1(count_15__N_130[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_364_11.INIT0 = 16'hd2d2;
    defparam add_364_11.INIT1 = 16'hd2d2;
    defparam add_364_11.INJECT1_0 = "NO";
    defparam add_364_11.INJECT1_1 = "NO";
    CCU2D add_364_13 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1124[12]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1124[13]), 
          .D1(GND_net), .CIN(n1681), .COUT(n1682), .S0(count_15__N_130[13]), 
          .S1(count_15__N_130[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_364_13.INIT0 = 16'hd2d2;
    defparam add_364_13.INIT1 = 16'hd2d2;
    defparam add_364_13.INJECT1_0 = "NO";
    defparam add_364_13.INJECT1_1 = "NO";
    CCU2D add_364_15 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1124[14]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1682), .S0(count_15__N_130[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_364_15.INIT0 = 16'hd2d2;
    defparam add_364_15.INIT1 = 16'h0000;
    defparam add_364_15.INJECT1_0 = "NO";
    defparam add_364_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(pieovertwo_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
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

module comparator_U7 (gatedcount, b, GND_net, loop) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input [15:0]b;
    input GND_net;
    output loop;
    
    
    wire n1603, n1602, n1601, n1600, n1599, n1598, n1597, n1596;
    
    CCU2D sub_245_add_2_17 (.A0(gatedcount[15]), .B0(b[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1603), .S1(loop));
    defparam sub_245_add_2_17.INIT0 = 16'h5999;
    defparam sub_245_add_2_17.INIT1 = 16'h0000;
    defparam sub_245_add_2_17.INJECT1_0 = "NO";
    defparam sub_245_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_245_add_2_15 (.A0(gatedcount[13]), .B0(b[13]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[14]), .B1(b[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1602), .COUT(n1603));
    defparam sub_245_add_2_15.INIT0 = 16'h5999;
    defparam sub_245_add_2_15.INIT1 = 16'h5999;
    defparam sub_245_add_2_15.INJECT1_0 = "NO";
    defparam sub_245_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_245_add_2_13 (.A0(gatedcount[11]), .B0(b[11]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[12]), .B1(b[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1601), .COUT(n1602));
    defparam sub_245_add_2_13.INIT0 = 16'h5999;
    defparam sub_245_add_2_13.INIT1 = 16'h5999;
    defparam sub_245_add_2_13.INJECT1_0 = "NO";
    defparam sub_245_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_245_add_2_11 (.A0(gatedcount[9]), .B0(b[9]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[10]), .B1(b[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1600), .COUT(n1601));
    defparam sub_245_add_2_11.INIT0 = 16'h5999;
    defparam sub_245_add_2_11.INIT1 = 16'h5999;
    defparam sub_245_add_2_11.INJECT1_0 = "NO";
    defparam sub_245_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_245_add_2_9 (.A0(gatedcount[7]), .B0(b[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(b[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1599), .COUT(n1600));
    defparam sub_245_add_2_9.INIT0 = 16'h5999;
    defparam sub_245_add_2_9.INIT1 = 16'h5999;
    defparam sub_245_add_2_9.INJECT1_0 = "NO";
    defparam sub_245_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_245_add_2_7 (.A0(gatedcount[5]), .B0(b[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(b[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1598), .COUT(n1599));
    defparam sub_245_add_2_7.INIT0 = 16'h5999;
    defparam sub_245_add_2_7.INIT1 = 16'h5999;
    defparam sub_245_add_2_7.INJECT1_0 = "NO";
    defparam sub_245_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_245_add_2_5 (.A0(gatedcount[3]), .B0(b[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(b[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1597), .COUT(n1598));
    defparam sub_245_add_2_5.INIT0 = 16'h5999;
    defparam sub_245_add_2_5.INIT1 = 16'h5999;
    defparam sub_245_add_2_5.INJECT1_0 = "NO";
    defparam sub_245_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_245_add_2_3 (.A0(gatedcount[1]), .B0(b[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(b[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1596), .COUT(n1597));
    defparam sub_245_add_2_3.INIT0 = 16'h5999;
    defparam sub_245_add_2_3.INIT1 = 16'h5999;
    defparam sub_245_add_2_3.INJECT1_0 = "NO";
    defparam sub_245_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_245_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(b[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1596));
    defparam sub_245_add_2_1.INIT0 = 16'h0000;
    defparam sub_245_add_2_1.INIT1 = 16'h5999;
    defparam sub_245_add_2_1.INJECT1_0 = "NO";
    defparam sub_245_add_2_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload_U8
//

module countupdownpreload_U8 (GND_net, freeprecess_minus, freeprecess_plus, 
            \AdjustableFreePrecession[14] , \AdjustableFreePrecession[15] , 
            \AdjustableFreePrecession[12] , \AdjustableFreePrecession[13] , 
            \AdjustableFreePrecession[2] , \AdjustableFreePrecession[3] , 
            \AdjustableFreePrecession[6] , \AdjustableFreePrecession[7] , 
            load_defaults, \AdjustableFreePrecession[11] , \AdjustableFreePrecession[10] , 
            \AdjustableFreePrecession[9] , \AdjustableFreePrecession[8] , 
            \AdjustableFreePrecession[5] , \AdjustableFreePrecession[4] , 
            clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input freeprecess_minus;
    input freeprecess_plus;
    output \AdjustableFreePrecession[14] ;
    output \AdjustableFreePrecession[15] ;
    output \AdjustableFreePrecession[12] ;
    output \AdjustableFreePrecession[13] ;
    output \AdjustableFreePrecession[2] ;
    output \AdjustableFreePrecession[3] ;
    output \AdjustableFreePrecession[6] ;
    output \AdjustableFreePrecession[7] ;
    input load_defaults;
    output \AdjustableFreePrecession[11] ;
    output \AdjustableFreePrecession[10] ;
    output \AdjustableFreePrecession[9] ;
    output \AdjustableFreePrecession[8] ;
    output \AdjustableFreePrecession[5] ;
    output \AdjustableFreePrecession[4] ;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire [13:0]n1108;
    wire [15:0]count_15__N_130;
    
    wire n1513, n1511, n1505, n1510, n1518, n1517, n1516, n1515, 
        n1514, n1506, n1507, n1508, n4, n1509;
    
    CCU2D add_363_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1108[1]), 
          .D1(GND_net), .COUT(n1513), .S1(count_15__N_130[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_363_1.INIT0 = 16'hF000;
    defparam add_363_1.INIT1 = 16'hd2d2;
    defparam add_363_1.INJECT1_0 = "NO";
    defparam add_363_1.INJECT1_1 = "NO";
    CCU2D add_301_346_add_1_15 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1511), .S0(n1108[12]), 
          .S1(n1108[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_301_346_add_1_15.INIT0 = 16'h5aaa;
    defparam add_301_346_add_1_15.INIT1 = 16'h5aaa;
    defparam add_301_346_add_1_15.INJECT1_0 = "NO";
    defparam add_301_346_add_1_15.INJECT1_1 = "NO";
    CCU2D add_301_346_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(GND_net), .D1(GND_net), .COUT(n1505));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_301_346_add_1_1.INIT0 = 16'hF000;
    defparam add_301_346_add_1_1.INIT1 = 16'hdddd;
    defparam add_301_346_add_1_1.INJECT1_0 = "NO";
    defparam add_301_346_add_1_1.INJECT1_1 = "NO";
    CCU2D add_301_346_add_1_13 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1510), .COUT(n1511), 
          .S0(n1108[10]), .S1(n1108[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_301_346_add_1_13.INIT0 = 16'h5aaa;
    defparam add_301_346_add_1_13.INIT1 = 16'h5aaa;
    defparam add_301_346_add_1_13.INJECT1_0 = "NO";
    defparam add_301_346_add_1_13.INJECT1_1 = "NO";
    CCU2D add_363_13 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1108[12]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1108[13]), .D1(GND_net), .CIN(n1518), .S0(count_15__N_130[14]), 
          .S1(count_15__N_130[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_363_13.INIT0 = 16'hd2d2;
    defparam add_363_13.INIT1 = 16'hd2d2;
    defparam add_363_13.INJECT1_0 = "NO";
    defparam add_363_13.INJECT1_1 = "NO";
    CCU2D add_363_11 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1108[10]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1108[11]), .D1(GND_net), .CIN(n1517), .COUT(n1518), .S0(count_15__N_130[12]), 
          .S1(count_15__N_130[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_363_11.INIT0 = 16'hd2d2;
    defparam add_363_11.INIT1 = 16'hd2d2;
    defparam add_363_11.INJECT1_0 = "NO";
    defparam add_363_11.INJECT1_1 = "NO";
    CCU2D add_363_9 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1108[8]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1108[9]), .D1(GND_net), .CIN(n1516), .COUT(n1517), .S0(count_15__N_130[10]), 
          .S1(count_15__N_130[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_363_9.INIT0 = 16'hd2d2;
    defparam add_363_9.INIT1 = 16'hd2d2;
    defparam add_363_9.INJECT1_0 = "NO";
    defparam add_363_9.INJECT1_1 = "NO";
    CCU2D add_363_7 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1108[6]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1108[7]), .D1(GND_net), .CIN(n1515), .COUT(n1516), .S0(count_15__N_130[8]), 
          .S1(count_15__N_130[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_363_7.INIT0 = 16'hd2d2;
    defparam add_363_7.INIT1 = 16'hd2d2;
    defparam add_363_7.INJECT1_0 = "NO";
    defparam add_363_7.INJECT1_1 = "NO";
    CCU2D add_363_5 (.A0(n1108[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1108[5]), 
          .D1(GND_net), .CIN(n1514), .COUT(n1515), .S0(count_15__N_130[6]), 
          .S1(count_15__N_130[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_363_5.INIT0 = 16'h5aaa;
    defparam add_363_5.INIT1 = 16'hd2d2;
    defparam add_363_5.INJECT1_0 = "NO";
    defparam add_363_5.INJECT1_1 = "NO";
    CCU2D add_301_346_add_1_3 (.A0(\AdjustableFreePrecession[2] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[3] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1505), .COUT(n1506), 
          .S0(count_15__N_130[2]), .S1(n1108[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_301_346_add_1_3.INIT0 = 16'h5666;
    defparam add_301_346_add_1_3.INIT1 = 16'h5aaa;
    defparam add_301_346_add_1_3.INJECT1_0 = "NO";
    defparam add_301_346_add_1_3.INJECT1_1 = "NO";
    CCU2D add_363_3 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1108[2]), 
          .D0(GND_net), .A1(n1108[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1513), .COUT(n1514), .S0(count_15__N_130[4]), .S1(count_15__N_130[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_363_3.INIT0 = 16'hd2d2;
    defparam add_363_3.INIT1 = 16'h5aaa;
    defparam add_363_3.INJECT1_0 = "NO";
    defparam add_363_3.INJECT1_1 = "NO";
    CCU2D add_301_346_add_1_7 (.A0(\AdjustableFreePrecession[6] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1507), .COUT(n1508), 
          .S0(n1108[4]), .S1(n1108[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_301_346_add_1_7.INIT0 = 16'h5666;
    defparam add_301_346_add_1_7.INIT1 = 16'h5aaa;
    defparam add_301_346_add_1_7.INJECT1_0 = "NO";
    defparam add_301_346_add_1_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(freeprecess_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX count_i15 (.D(count_15__N_130[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_130[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_130[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3JX count_i12 (.D(count_15__N_130[12]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3JX count_i11 (.D(count_15__N_130[11]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_130[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_130[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3IX count_i8 (.D(count_15__N_130[8]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3JX count_i7 (.D(count_15__N_130[7]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3JX count_i6 (.D(count_15__N_130[6]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3JX count_i5 (.D(count_15__N_130[5]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_130[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3IX count_i3 (.D(count_15__N_130[3]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3JX count_i2 (.D(count_15__N_130[2]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=65, LSE_RLINE=65 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    CCU2D add_301_346_add_1_11 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1509), .COUT(n1510), 
          .S0(n1108[8]), .S1(n1108[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_301_346_add_1_11.INIT0 = 16'h5aaa;
    defparam add_301_346_add_1_11.INIT1 = 16'h5aaa;
    defparam add_301_346_add_1_11.INJECT1_0 = "NO";
    defparam add_301_346_add_1_11.INJECT1_1 = "NO";
    CCU2D add_301_346_add_1_9 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1508), .COUT(n1509), 
          .S0(n1108[6]), .S1(n1108[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_301_346_add_1_9.INIT0 = 16'h5aaa;
    defparam add_301_346_add_1_9.INIT1 = 16'h5aaa;
    defparam add_301_346_add_1_9.INJECT1_0 = "NO";
    defparam add_301_346_add_1_9.INJECT1_1 = "NO";
    CCU2D add_301_346_add_1_5 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), 
          .B1(freeprecess_plus), .C1(GND_net), .D1(GND_net), .CIN(n1506), 
          .COUT(n1507), .S0(n1108[2]), .S1(n1108[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_301_346_add_1_5.INIT0 = 16'h5aaa;
    defparam add_301_346_add_1_5.INIT1 = 16'h5666;
    defparam add_301_346_add_1_5.INJECT1_0 = "NO";
    defparam add_301_346_add_1_5.INJECT1_1 = "NO";
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

module comparator_U9 (GND_net, gatedcount, b, n458) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]b;
    output n458;
    
    
    wire n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631;
    
    CCU2D sub_235_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(b[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1624));
    defparam sub_235_add_2_1.INIT0 = 16'h0000;
    defparam sub_235_add_2_1.INIT1 = 16'h5999;
    defparam sub_235_add_2_1.INJECT1_0 = "NO";
    defparam sub_235_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_3 (.A0(gatedcount[1]), .B0(b[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(b[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1624), .COUT(n1625));
    defparam sub_235_add_2_3.INIT0 = 16'h5999;
    defparam sub_235_add_2_3.INIT1 = 16'h5999;
    defparam sub_235_add_2_3.INJECT1_0 = "NO";
    defparam sub_235_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_5 (.A0(gatedcount[3]), .B0(b[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(b[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1625), .COUT(n1626));
    defparam sub_235_add_2_5.INIT0 = 16'h5999;
    defparam sub_235_add_2_5.INIT1 = 16'h5999;
    defparam sub_235_add_2_5.INJECT1_0 = "NO";
    defparam sub_235_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_7 (.A0(gatedcount[5]), .B0(b[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(b[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1626), .COUT(n1627));
    defparam sub_235_add_2_7.INIT0 = 16'h5999;
    defparam sub_235_add_2_7.INIT1 = 16'h5999;
    defparam sub_235_add_2_7.INJECT1_0 = "NO";
    defparam sub_235_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_9 (.A0(gatedcount[7]), .B0(b[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(b[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1627), .COUT(n1628));
    defparam sub_235_add_2_9.INIT0 = 16'h5999;
    defparam sub_235_add_2_9.INIT1 = 16'h5999;
    defparam sub_235_add_2_9.INJECT1_0 = "NO";
    defparam sub_235_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_11 (.A0(gatedcount[9]), .B0(b[9]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[10]), .B1(b[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1628), .COUT(n1629));
    defparam sub_235_add_2_11.INIT0 = 16'h5999;
    defparam sub_235_add_2_11.INIT1 = 16'h5999;
    defparam sub_235_add_2_11.INJECT1_0 = "NO";
    defparam sub_235_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_13 (.A0(gatedcount[11]), .B0(b[11]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[12]), .B1(b[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1629), .COUT(n1630));
    defparam sub_235_add_2_13.INIT0 = 16'h5999;
    defparam sub_235_add_2_13.INIT1 = 16'h5999;
    defparam sub_235_add_2_13.INJECT1_0 = "NO";
    defparam sub_235_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_15 (.A0(gatedcount[13]), .B0(b[13]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[14]), .B1(b[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1630), .COUT(n1631));
    defparam sub_235_add_2_15.INIT0 = 16'h5999;
    defparam sub_235_add_2_15.INIT1 = 16'h5999;
    defparam sub_235_add_2_15.INJECT1_0 = "NO";
    defparam sub_235_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_17 (.A0(gatedcount[15]), .B0(b[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1631), .S1(n458));
    defparam sub_235_add_2_17.INIT0 = 16'h5999;
    defparam sub_235_add_2_17.INIT1 = 16'h0000;
    defparam sub_235_add_2_17.INJECT1_0 = "NO";
    defparam sub_235_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U10
//

module comparator_U10 (n458, n9, gatedcount, b, GND_net) /* synthesis syn_module_defined=1 */ ;
    input n458;
    output n9;
    input [15:0]gatedcount;
    input [15:0]b;
    input GND_net;
    
    
    wire pi2started, n1595, n1594, n1593, n1592, n1591, n1590, 
        n1589, n1588;
    
    LUT4 i1_2_lut (.A(pi2started), .B(n458), .Z(n9)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    CCU2D sub_233_add_2_17 (.A0(gatedcount[15]), .B0(b[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1595), .S1(pi2started));
    defparam sub_233_add_2_17.INIT0 = 16'h5999;
    defparam sub_233_add_2_17.INIT1 = 16'h0000;
    defparam sub_233_add_2_17.INJECT1_0 = "NO";
    defparam sub_233_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_15 (.A0(gatedcount[13]), .B0(b[13]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[14]), .B1(b[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1594), .COUT(n1595));
    defparam sub_233_add_2_15.INIT0 = 16'h5999;
    defparam sub_233_add_2_15.INIT1 = 16'h5999;
    defparam sub_233_add_2_15.INJECT1_0 = "NO";
    defparam sub_233_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_13 (.A0(gatedcount[11]), .B0(b[11]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[12]), .B1(b[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1593), .COUT(n1594));
    defparam sub_233_add_2_13.INIT0 = 16'h5999;
    defparam sub_233_add_2_13.INIT1 = 16'h5999;
    defparam sub_233_add_2_13.INJECT1_0 = "NO";
    defparam sub_233_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_11 (.A0(gatedcount[9]), .B0(b[9]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[10]), .B1(b[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1592), .COUT(n1593));
    defparam sub_233_add_2_11.INIT0 = 16'h5999;
    defparam sub_233_add_2_11.INIT1 = 16'h5999;
    defparam sub_233_add_2_11.INJECT1_0 = "NO";
    defparam sub_233_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_9 (.A0(gatedcount[7]), .B0(b[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(b[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1591), .COUT(n1592));
    defparam sub_233_add_2_9.INIT0 = 16'h5999;
    defparam sub_233_add_2_9.INIT1 = 16'h5999;
    defparam sub_233_add_2_9.INJECT1_0 = "NO";
    defparam sub_233_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_7 (.A0(gatedcount[5]), .B0(b[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(b[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1590), .COUT(n1591));
    defparam sub_233_add_2_7.INIT0 = 16'h5999;
    defparam sub_233_add_2_7.INIT1 = 16'h5999;
    defparam sub_233_add_2_7.INJECT1_0 = "NO";
    defparam sub_233_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_5 (.A0(gatedcount[3]), .B0(b[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(b[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1589), .COUT(n1590));
    defparam sub_233_add_2_5.INIT0 = 16'h5999;
    defparam sub_233_add_2_5.INIT1 = 16'h5999;
    defparam sub_233_add_2_5.INJECT1_0 = "NO";
    defparam sub_233_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_3 (.A0(gatedcount[1]), .B0(b[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(b[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1588), .COUT(n1589));
    defparam sub_233_add_2_3.INIT0 = 16'h5999;
    defparam sub_233_add_2_3.INIT1 = 16'h5999;
    defparam sub_233_add_2_3.INJECT1_0 = "NO";
    defparam sub_233_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(b[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1588));
    defparam sub_233_add_2_1.INIT0 = 16'h0000;
    defparam sub_233_add_2_1.INIT1 = 16'h5999;
    defparam sub_233_add_2_1.INJECT1_0 = "NO";
    defparam sub_233_add_2_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U11
//

module comparator_U11 (GND_net, gatedcount, b, n420) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]b;
    output n420;
    
    
    wire n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639;
    
    CCU2D sub_231_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(b[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1632));
    defparam sub_231_add_2_1.INIT0 = 16'h0000;
    defparam sub_231_add_2_1.INIT1 = 16'h5999;
    defparam sub_231_add_2_1.INJECT1_0 = "NO";
    defparam sub_231_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_3 (.A0(gatedcount[1]), .B0(b[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(b[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1632), .COUT(n1633));
    defparam sub_231_add_2_3.INIT0 = 16'h5999;
    defparam sub_231_add_2_3.INIT1 = 16'h5999;
    defparam sub_231_add_2_3.INJECT1_0 = "NO";
    defparam sub_231_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_5 (.A0(gatedcount[3]), .B0(b[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(b[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1633), .COUT(n1634));
    defparam sub_231_add_2_5.INIT0 = 16'h5999;
    defparam sub_231_add_2_5.INIT1 = 16'h5999;
    defparam sub_231_add_2_5.INJECT1_0 = "NO";
    defparam sub_231_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_7 (.A0(gatedcount[5]), .B0(b[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(b[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1634), .COUT(n1635));
    defparam sub_231_add_2_7.INIT0 = 16'h5999;
    defparam sub_231_add_2_7.INIT1 = 16'h5999;
    defparam sub_231_add_2_7.INJECT1_0 = "NO";
    defparam sub_231_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_9 (.A0(gatedcount[7]), .B0(b[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(b[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1635), .COUT(n1636));
    defparam sub_231_add_2_9.INIT0 = 16'h5999;
    defparam sub_231_add_2_9.INIT1 = 16'h5999;
    defparam sub_231_add_2_9.INJECT1_0 = "NO";
    defparam sub_231_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_11 (.A0(gatedcount[9]), .B0(b[9]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[10]), .B1(b[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1636), .COUT(n1637));
    defparam sub_231_add_2_11.INIT0 = 16'h5999;
    defparam sub_231_add_2_11.INIT1 = 16'h5999;
    defparam sub_231_add_2_11.INJECT1_0 = "NO";
    defparam sub_231_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_13 (.A0(gatedcount[11]), .B0(b[11]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[12]), .B1(b[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1637), .COUT(n1638));
    defparam sub_231_add_2_13.INIT0 = 16'h5999;
    defparam sub_231_add_2_13.INIT1 = 16'h5999;
    defparam sub_231_add_2_13.INJECT1_0 = "NO";
    defparam sub_231_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_15 (.A0(gatedcount[13]), .B0(b[13]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[14]), .B1(b[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1638), .COUT(n1639));
    defparam sub_231_add_2_15.INIT0 = 16'h5999;
    defparam sub_231_add_2_15.INIT1 = 16'h5999;
    defparam sub_231_add_2_15.INJECT1_0 = "NO";
    defparam sub_231_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_17 (.A0(gatedcount[15]), .B0(b[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1639), .S1(n420));
    defparam sub_231_add_2_17.INIT0 = 16'h5999;
    defparam sub_231_add_2_17.INIT1 = 16'h0000;
    defparam sub_231_add_2_17.INJECT1_0 = "NO";
    defparam sub_231_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module n_state_machine
//

module n_state_machine (n1443, pump_output_N_22, probestarted, n496, 
            n1298, slow_pulse, laser_tuning_c, fast_pulse, sampled_modebutton, 
            LED_output_N_1, n1838, probe_output_N_32, n1837, sample_output_N_48, 
            medium_pulse, MW_output_N_40) /* synthesis syn_module_defined=1 */ ;
    input n1443;
    output pump_output_N_22;
    input probestarted;
    input n496;
    input n1298;
    input slow_pulse;
    input laser_tuning_c;
    input fast_pulse;
    input sampled_modebutton;
    output LED_output_N_1;
    input n1838;
    output probe_output_N_32;
    input n1837;
    output sample_output_N_48;
    input medium_pulse;
    output MW_output_N_40;
    
    wire sampled_modebutton /* synthesis SET_AS_NETWORK=sampled_modebutton, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[6:24])
    
    wire n1835, n1834;
    wire [2:0]SMstate;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    wire [2:0]n17;
    
    wire n28, n16, n1805, n1839, n14, state_2__N_178, n1807, n1808, 
        n1809, n1806, n1331, n1804;
    
    PFUMX i846 (.BLUT(n1835), .ALUT(n1834), .C0(n1443), .Z(pump_output_N_22));
    LUT4 i693_2_lut (.A(SMstate[1]), .B(SMstate[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i693_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_4_lut (.A(SMstate[1]), .B(SMstate[2]), .C(probestarted), 
         .D(n496), .Z(n28)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h55d5;
    LUT4 n1443_bdd_3_lut (.A(SMstate[0]), .B(SMstate[2]), .C(SMstate[1]), 
         .Z(n1834)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam n1443_bdd_3_lut.init = 16'h0404;
    LUT4 i32_4_lut_4_lut (.A(SMstate[1]), .B(n1298), .C(SMstate[0]), .D(slow_pulse), 
         .Z(n16)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    defparam i32_4_lut_4_lut.init = 16'hdad0;
    LUT4 n1443_bdd_4_lut (.A(SMstate[0]), .B(SMstate[2]), .C(SMstate[1]), 
         .D(laser_tuning_c), .Z(n1835)) /* synthesis lut_function=(A (B (C))+!A !(B (C)+!B !(C+!(D)))) */ ;
    defparam n1443_bdd_4_lut.init = 16'h9495;
    LUT4 SMstate_2__bdd_3_lut_831 (.A(SMstate[1]), .B(fast_pulse), .C(slow_pulse), 
         .Z(n1805)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam SMstate_2__bdd_3_lut_831.init = 16'hd8d8;
    LUT4 i691_1_lut_rep_3 (.A(SMstate[0]), .Z(n1839)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i691_1_lut_rep_3.init = 16'h5555;
    LUT4 i2_4_lut_4_lut (.A(SMstate[0]), .B(n1298), .C(laser_tuning_c), 
         .D(SMstate[1]), .Z(n14)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i2_4_lut_4_lut.init = 16'h4404;
    FD1S3IX state_306__i0 (.D(n1839), .CK(sampled_modebutton), .CD(state_2__N_178), 
            .Q(SMstate[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_306__i0.GSR = "ENABLED";
    FD1S3IX state_306__i2 (.D(n17[2]), .CK(sampled_modebutton), .CD(state_2__N_178), 
            .Q(SMstate[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_306__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(SMstate[1]), .B(SMstate[2]), .C(SMstate[0]), 
         .Z(state_2__N_178)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 SMstate_2__bdd_3_lut (.A(SMstate[1]), .B(fast_pulse), .C(slow_pulse), 
         .Z(n1807)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam SMstate_2__bdd_3_lut.init = 16'ha8a8;
    FD1S3IX state_306__i1 (.D(n17[1]), .CK(sampled_modebutton), .CD(state_2__N_178), 
            .Q(SMstate[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_306__i1.GSR = "ENABLED";
    LUT4 SMstate_2__bdd_2_lut (.A(laser_tuning_c), .B(SMstate[1]), .Z(n1808)) /* synthesis lut_function=(A+(B)) */ ;
    defparam SMstate_2__bdd_2_lut.init = 16'heeee;
    L6MUX21 i834 (.D0(n1809), .D1(n1806), .SD(SMstate[0]), .Z(LED_output_N_1));
    LUT4 i544_4_lut (.A(SMstate[2]), .B(n1838), .C(SMstate[1]), .D(laser_tuning_c), 
         .Z(n1331)) /* synthesis lut_function=(A (C)+!A (B+!(C+!(D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    defparam i544_4_lut.init = 16'he5e4;
    PFUMX i832 (.BLUT(n1808), .ALUT(n1807), .C0(SMstate[2]), .Z(n1809));
    LUT4 i700_3_lut (.A(SMstate[2]), .B(SMstate[1]), .C(SMstate[0]), .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i700_3_lut.init = 16'h6a6a;
    PFUMX i548 (.BLUT(n1331), .ALUT(n28), .C0(SMstate[0]), .Z(probe_output_N_32));
    LUT4 i1_4_lut (.A(SMstate[0]), .B(n1837), .C(SMstate[1]), .D(SMstate[2]), 
         .Z(sample_output_N_48)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i1_4_lut.init = 16'hfaee;
    LUT4 SMstate_2__bdd_4_lut (.A(SMstate[1]), .B(fast_pulse), .C(medium_pulse), 
         .D(slow_pulse), .Z(n1804)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D))) */ ;
    defparam SMstate_2__bdd_4_lut.init = 16'hc400;
    PFUMX i31 (.BLUT(n14), .ALUT(n16), .C0(SMstate[2]), .Z(MW_output_N_40));
    PFUMX i829 (.BLUT(n1805), .ALUT(n1804), .C0(SMstate[2]), .Z(n1806));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clocks
//

module clocks (clk_2M5_N_67, clk_2M5, tenmegclock_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_2M5_N_67;
    output clk_2M5;
    input tenmegclock_c;
    input GND_net;
    
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[18:28])
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
    
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    
    wire CLKFB_t;
    
    INV i875 (.A(clk_2M5), .Z(clk_2M5_N_67));
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
// Verilog Description of module slow_clock_pulse
//

module slow_clock_pulse (clk_2M5, GND_net, debounce_pulse, slow_pulse, 
            medium_pulse, fast_pulse) /* synthesis syn_module_defined=1 */ ;
    input clk_2M5;
    input GND_net;
    output debounce_pulse;
    output slow_pulse;
    output medium_pulse;
    output fast_pulse;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[7:21])
    wire [22:0]n170;
    wire [22:0]n97;
    
    wire n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, 
        n1656, n1657, n1658;
    
    FD1S3AX count_305__i1 (.D(n97[1]), .CK(clk_2M5), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i1.GSR = "ENABLED";
    FD1S3AX count_305__i3 (.D(n97[3]), .CK(clk_2M5), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i3.GSR = "ENABLED";
    CCU2D count_305_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1648), .S1(n97[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_1.INIT0 = 16'hF000;
    defparam count_305_add_4_1.INIT1 = 16'h0555;
    defparam count_305_add_4_1.INJECT1_0 = "NO";
    defparam count_305_add_4_1.INJECT1_1 = "NO";
    CCU2D count_305_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1648), .COUT(n1649), .S0(n97[1]), .S1(n97[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_3.INIT0 = 16'hfaaa;
    defparam count_305_add_4_3.INIT1 = 16'hfaaa;
    defparam count_305_add_4_3.INJECT1_0 = "NO";
    defparam count_305_add_4_3.INJECT1_1 = "NO";
    CCU2D count_305_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1649), .COUT(n1650), .S0(n97[3]), .S1(n97[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_5.INIT0 = 16'hfaaa;
    defparam count_305_add_4_5.INIT1 = 16'hfaaa;
    defparam count_305_add_4_5.INJECT1_0 = "NO";
    defparam count_305_add_4_5.INJECT1_1 = "NO";
    CCU2D count_305_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1650), .COUT(n1651), .S0(n97[5]), .S1(n97[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_7.INIT0 = 16'hfaaa;
    defparam count_305_add_4_7.INIT1 = 16'hfaaa;
    defparam count_305_add_4_7.INJECT1_0 = "NO";
    defparam count_305_add_4_7.INJECT1_1 = "NO";
    CCU2D count_305_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1651), .COUT(n1652), .S0(n97[7]), .S1(n97[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_9.INIT0 = 16'hfaaa;
    defparam count_305_add_4_9.INIT1 = 16'hfaaa;
    defparam count_305_add_4_9.INJECT1_0 = "NO";
    defparam count_305_add_4_9.INJECT1_1 = "NO";
    CCU2D count_305_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1652), .COUT(n1653), .S0(n97[9]), .S1(n97[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_11.INIT0 = 16'hfaaa;
    defparam count_305_add_4_11.INIT1 = 16'hfaaa;
    defparam count_305_add_4_11.INJECT1_0 = "NO";
    defparam count_305_add_4_11.INJECT1_1 = "NO";
    FD1S3AX count_305__i2 (.D(n97[2]), .CK(clk_2M5), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i2.GSR = "ENABLED";
    FD1S3AX count_305__i22 (.D(n97[22]), .CK(clk_2M5), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i22.GSR = "ENABLED";
    FD1S3AX count_305__i21 (.D(n97[21]), .CK(clk_2M5), .Q(medium_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i21.GSR = "ENABLED";
    FD1S3AX count_305__i20 (.D(n97[20]), .CK(clk_2M5), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i20.GSR = "ENABLED";
    FD1S3AX count_305__i19 (.D(n97[19]), .CK(clk_2M5), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i19.GSR = "ENABLED";
    FD1S3AX count_305__i18 (.D(n97[18]), .CK(clk_2M5), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i18.GSR = "ENABLED";
    FD1S3AX count_305__i17 (.D(n97[17]), .CK(clk_2M5), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i17.GSR = "ENABLED";
    FD1S3AX count_305__i16 (.D(n97[16]), .CK(clk_2M5), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i16.GSR = "ENABLED";
    FD1S3AX count_305__i15 (.D(n97[15]), .CK(clk_2M5), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i15.GSR = "ENABLED";
    FD1S3AX count_305__i14 (.D(n97[14]), .CK(clk_2M5), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i14.GSR = "ENABLED";
    FD1S3AX count_305__i13 (.D(n97[13]), .CK(clk_2M5), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i13.GSR = "ENABLED";
    FD1S3AX count_305__i12 (.D(n97[12]), .CK(clk_2M5), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i12.GSR = "ENABLED";
    FD1S3AX count_305__i11 (.D(n97[11]), .CK(clk_2M5), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i11.GSR = "ENABLED";
    FD1S3AX count_305__i10 (.D(n97[10]), .CK(clk_2M5), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i10.GSR = "ENABLED";
    FD1S3AX count_305__i9 (.D(n97[9]), .CK(clk_2M5), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i9.GSR = "ENABLED";
    FD1S3AX count_305__i8 (.D(n97[8]), .CK(clk_2M5), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i8.GSR = "ENABLED";
    FD1S3AX count_305__i7 (.D(n97[7]), .CK(clk_2M5), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i7.GSR = "ENABLED";
    FD1S3AX count_305__i6 (.D(n97[6]), .CK(clk_2M5), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i6.GSR = "ENABLED";
    FD1S3AX count_305__i5 (.D(n97[5]), .CK(clk_2M5), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i5.GSR = "ENABLED";
    FD1S3AX count_305__i4 (.D(n97[4]), .CK(clk_2M5), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i4.GSR = "ENABLED";
    FD1S3AX count_305__i0 (.D(n97[0]), .CK(clk_2M5), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305__i0.GSR = "ENABLED";
    CCU2D count_305_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1653), .COUT(n1654), .S0(n97[11]), .S1(n97[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_13.INIT0 = 16'hfaaa;
    defparam count_305_add_4_13.INIT1 = 16'hfaaa;
    defparam count_305_add_4_13.INJECT1_0 = "NO";
    defparam count_305_add_4_13.INJECT1_1 = "NO";
    CCU2D count_305_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1654), .COUT(n1655), .S0(n97[13]), .S1(n97[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_15.INIT0 = 16'hfaaa;
    defparam count_305_add_4_15.INIT1 = 16'hfaaa;
    defparam count_305_add_4_15.INJECT1_0 = "NO";
    defparam count_305_add_4_15.INJECT1_1 = "NO";
    CCU2D count_305_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1655), .COUT(n1656), .S0(n97[15]), .S1(n97[16]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_17.INIT0 = 16'hfaaa;
    defparam count_305_add_4_17.INIT1 = 16'hfaaa;
    defparam count_305_add_4_17.INJECT1_0 = "NO";
    defparam count_305_add_4_17.INJECT1_1 = "NO";
    CCU2D count_305_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1656), .COUT(n1657), .S0(n97[17]), .S1(n97[18]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_19.INIT0 = 16'hfaaa;
    defparam count_305_add_4_19.INIT1 = 16'hfaaa;
    defparam count_305_add_4_19.INJECT1_0 = "NO";
    defparam count_305_add_4_19.INJECT1_1 = "NO";
    CCU2D count_305_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1657), .COUT(n1658), .S0(n97[19]), .S1(n97[20]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_21.INIT0 = 16'hfaaa;
    defparam count_305_add_4_21.INIT1 = 16'hfaaa;
    defparam count_305_add_4_21.INJECT1_0 = "NO";
    defparam count_305_add_4_21.INJECT1_1 = "NO";
    CCU2D count_305_add_4_23 (.A0(medium_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1658), .S0(n97[21]), .S1(n97[22]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_305_add_4_23.INIT0 = 16'hfaaa;
    defparam count_305_add_4_23.INIT1 = 16'hfaaa;
    defparam count_305_add_4_23.INJECT1_0 = "NO";
    defparam count_305_add_4_23.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 3.9 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type sdpram -num_rows 4 -data_width 2 -pipe_final_output -memformat bin -n pmi_distributed_dpramXbnoner2248b8a5a7 -pmi -lang verilog  */
/* Sat Jul 29 20:10:33 2023 */


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
/* Sat Jul 29 20:10:33 2023 */


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
/* Wed Aug 02 14:42:18 2023 */


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
/* Wed Aug 02 14:42:18 2023 */


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
/* Wed Aug 02 14:48:11 2023 */


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
/* Wed Aug 02 14:48:10 2023 */


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
/* Sat Aug 05 13:09:29 2023 */


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
/* Sat Aug 05 13:09:29 2023 */


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
/* Mon Aug 07 10:16:32 2023 */


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
/* Mon Aug 07 10:16:32 2023 */


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
/* Thu Aug 10 10:56:50 2023 */


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
/* Thu Aug 10 10:56:50 2023 */


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
/* Thu Aug 10 11:52:39 2023 */


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
/* Thu Aug 10 11:52:38 2023 */


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
