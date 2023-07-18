// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Mon Jul 17 11:16:04 2023
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
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    
    wire GND_net, VCC_net, LED_output_c, mode_button_c, load_default_button_c, 
        topleft_button_c, topright_button_c, n1985, bottomleft_button_c, 
        bottomright_button_c, MW_invalid_c, ADC_sample_c, laser_tuning_c, 
        pump_output_c, probe_output_c, MW_output_c, sample_output_c, 
        slow_pulse, medium_pulse, fast_pulse, load_defaults, pieovertwo_plus, 
        freeprecess_plus, pieovertwo_minus, freeprecess_minus;
    wire [2:0]SMstate;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    
    wire ADC_sample_N_19, mode_button_N_55, load_default_button_N_57, 
        topleft_button_N_59, topright_button_N_61, bottomleft_button_N_63, 
        bottomright_button_N_65, n1981, n1980, LED_output_N_1, pump_output_N_22, 
        probe_output_N_32, MW_output_N_40, sample_output_N_48, n1979, 
        n1978, n1983, n1982, n1;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX sampled_modebutton_83 (.D(mode_button_N_55), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam sampled_modebutton_83.GSR = "ENABLED";
    LUT4 SMstate_0__bdd_3_lut (.A(SMstate[1]), .B(fast_pulse), .C(slow_pulse), 
         .Z(n1981)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam SMstate_0__bdd_3_lut.init = 16'hd8d8;
    FD1S3AX load_defaults_84 (.D(load_default_button_N_57), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam load_defaults_84.GSR = "ENABLED";
    FD1S3AX pieovertwo_plus_85 (.D(topleft_button_N_59), .CK(debounce_pulse), 
            .Q(pieovertwo_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam pieovertwo_plus_85.GSR = "ENABLED";
    FD1S3AX freeprecess_plus_86 (.D(topright_button_N_61), .CK(debounce_pulse), 
            .Q(freeprecess_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam freeprecess_plus_86.GSR = "ENABLED";
    FD1S3AX pieovertwo_minus_87 (.D(bottomleft_button_N_63), .CK(debounce_pulse), 
            .Q(pieovertwo_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam pieovertwo_minus_87.GSR = "ENABLED";
    FD1S3AX freeprecess_minus_88 (.D(bottomright_button_N_65), .CK(debounce_pulse), 
            .Q(freeprecess_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[8] 65[6])
    defparam freeprecess_minus_88.GSR = "ENABLED";
    FD1S3AX LED_output_89 (.D(LED_output_N_1), .CK(clk_2M5), .Q(LED_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(79[8] 137[5])
    defparam LED_output_89.GSR = "ENABLED";
    FD1S3AX pump_output_90 (.D(pump_output_N_22), .CK(clk_2M5), .Q(pump_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(79[8] 137[5])
    defparam pump_output_90.GSR = "ENABLED";
    IB tenmegclock_pad (.I(tenmegclock), .O(tenmegclock_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    IB load_default_button_pad (.I(load_default_button), .O(load_default_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(43[9:13])
    FD1S3AX probe_output_91 (.D(probe_output_N_32), .CK(clk_2M5), .Q(probe_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(79[8] 137[5])
    defparam probe_output_91.GSR = "ENABLED";
    FD1S3AX MW_output_92 (.D(MW_output_N_40), .CK(clk_2M5), .Q(MW_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(79[8] 137[5])
    defparam MW_output_92.GSR = "ENABLED";
    FD1S3AX sample_output_93 (.D(sample_output_N_48), .CK(clk_2M5), .Q(sample_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(79[8] 137[5])
    defparam sample_output_93.GSR = "ENABLED";
    FD1S3AX ADC_sample_82 (.D(ADC_sample_N_19), .CK(clk_2M5), .Q(ADC_sample_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(47[8] 50[5])
    defparam ADC_sample_82.GSR = "ENABLED";
    IB mode_button_pad (.I(mode_button), .O(mode_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(42[9:16])
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    OB sample_output_pad (.I(sample_output_c), .O(sample_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    OB MW_output_pad (.I(MW_output_c), .O(MW_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    OB probe_output_pad (.I(probe_output_c), .O(probe_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    LUT4 SMstate_0__bdd_2_lut (.A(laser_tuning_c), .B(SMstate[1]), .Z(n1982)) /* synthesis lut_function=(A+(B)) */ ;
    defparam SMstate_0__bdd_2_lut.init = 16'heeee;
    OB pump_output_pad (.I(pump_output_c), .O(pump_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    OB ADC_sample_pad (.I(ADC_sample_c), .O(ADC_sample));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[13:23])
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(44[9:19])
    LUT4 SMstate_0__bdd_4_lut (.A(SMstate[1]), .B(fast_pulse), .C(slow_pulse), 
         .D(medium_pulse), .Z(n1978)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam SMstate_0__bdd_4_lut.init = 16'hc040;
    POPtimers POPtimers (.GND_net(GND_net), .clk_2M5_N_67(clk_2M5_N_67), 
            .load_defaults(load_defaults), .SMstate({SMstate}), .pump_output_N_22(pump_output_N_22), 
            .n1(n1), .probe_output_N_32(probe_output_N_32), .MW_output_N_40(MW_output_N_40), 
            .laser_tuning_c(laser_tuning_c), .slow_pulse(slow_pulse), .MW_invalid_c(MW_invalid_c), 
            .ADC_sample_N_19(ADC_sample_N_19), .n1985(n1985), .clk_2M5(clk_2M5), 
            .pieovertwo_minus(pieovertwo_minus), .pieovertwo_plus(pieovertwo_plus), 
            .freeprecess_plus(freeprecess_plus), .freeprecess_minus(freeprecess_minus)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(53[12:274])
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_63)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(63[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_55)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(59[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_57)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(60[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_59)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(61[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_65)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(64[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    LUT4 SMstate_0__bdd_3_lut_764 (.A(SMstate[1]), .B(fast_pulse), .C(slow_pulse), 
         .Z(n1979)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam SMstate_0__bdd_3_lut_764.init = 16'ha8a8;
    n_state_machine statemachine (.SMstate({SMstate}), .n1985(n1985), .sample_output_N_48(sample_output_N_48), 
            .sampled_modebutton(sampled_modebutton), .n1(n1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(55[18:74])
    VLO i1 (.Z(GND_net));
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_61)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(62[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    IB topleft_button_pad (.I(topleft_button), .O(topleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    GSR GSR_INST (.GSR(VCC_net));
    L6MUX21 i767 (.D0(n1983), .D1(n1980), .SD(SMstate[2]), .Z(LED_output_N_1));
    PFUMX i765 (.BLUT(n1982), .ALUT(n1981), .C0(SMstate[0]), .Z(n1983));
    slow_clock_pulse slowclocks (.clk_2M5(clk_2M5), .medium_pulse(medium_pulse), 
            .GND_net(GND_net), .slow_pulse(slow_pulse), .fast_pulse(fast_pulse), 
            .debounce_pulse(debounce_pulse)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[19:157])
    clocks clocks (.clk_2M5_N_67(clk_2M5_N_67), .clk_2M5(clk_2M5), .tenmegclock_c(tenmegclock_c), 
           .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(52[9:98])
    IB topright_button_pad (.I(topright_button), .O(topright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    IB bottomleft_button_pad (.I(bottomleft_button), .O(bottomleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    IB bottomright_button_pad (.I(bottomright_button), .O(bottomright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    IB MW_invalid_pad (.I(MW_invalid), .O(MW_invalid_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[8:18])
    IB laser_tuning_pad (.I(laser_tuning), .O(laser_tuning_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[8:20])
    PFUMX i762 (.BLUT(n1979), .ALUT(n1978), .C0(SMstate[0]), .Z(n1980));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module POPtimers
//

module POPtimers (GND_net, clk_2M5_N_67, load_defaults, SMstate, pump_output_N_22, 
            n1, probe_output_N_32, MW_output_N_40, laser_tuning_c, slow_pulse, 
            MW_invalid_c, ADC_sample_N_19, n1985, clk_2M5, pieovertwo_minus, 
            pieovertwo_plus, freeprecess_plus, freeprecess_minus) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_2M5_N_67;
    input load_defaults;
    input [2:0]SMstate;
    output pump_output_N_22;
    output n1;
    output probe_output_N_32;
    output MW_output_N_40;
    input laser_tuning_c;
    input slow_pulse;
    input MW_invalid_c;
    output ADC_sample_N_19;
    output n1985;
    input clk_2M5;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input freeprecess_plus;
    input freeprecess_minus;
    
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1741;
    wire [15:0]Startofprobepulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[19:36])
    wire [15:0]Endofprobepulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[19:34])
    
    wire n1742;
    wire [15:0]gatedcount;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire [15:0]count;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[19:24])
    
    wire n1740;
    wire [15:0]Resetandrepeat;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[19:33])
    
    wire n1739;
    wire [15:0]Startopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[19:37])
    
    wire n1803;
    wire [15:0]n2;
    wire [15:0]Endof1stMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[19:34])
    wire [15:0]Endof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[19:34])
    
    wire n1802;
    wire [15:0]Endofopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[19:37])
    
    wire n1731;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[26:46])
    wire [15:0]Startof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[19:36])
    
    wire n1715, n1729, n1801, n1800, n1799, n1798, n1797, n1728, 
        n1721, loop, counterreset, n1737, n1736, n1714, n1720, 
        n1719, n1718, n1717, n1713, n1727, n1735, n1716, n1734, 
        n1712, n1976, n1975, n1711, n1710, n1709, n1707;
    wire [15:0]AdjustableFreePrecession;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[48:72])
    
    wire n1733, n1732, n1706, n1973, n1972, n1705, n1704, n1726, 
        n1703, n1702, n1725, pi2started, n423, n23, n17, n22, 
        n21, n1532, n1724, n1970, n1969, n1723, n499, samplestarted, 
        probestarted, n461, n1986, n1614, n1920, n385, n1750, 
        n1749, n1748, n1747, n1746, n1745, n1744, n1743, n1862, 
        n1863, n1864, n1865, n1866, n1867, n1606;
    
    CCU2D Startofprobepulse_15__I_0_7 (.A0(Startofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1741), .COUT(n1742), .S0(Endofprobepulse[7]), 
          .S1(Endofprobepulse[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clk_2M5_N_67), .Q(gatedcount[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    CCU2D Startofprobepulse_15__I_0_5 (.A0(Startofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1740), .COUT(n1741), .S0(Resetandrepeat[5]), 
          .S1(Endofprobepulse[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_3 (.A0(Startopticalsample[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1739), .COUT(n1740), .S0(Resetandrepeat[3]), 
          .S1(Resetandrepeat[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_346_16 (.A0(n2[14]), .B0(Endof1stMWpulse[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[15]), .B1(Endof1stMWpulse[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1803), .S0(Endof2ndMWpulse[14]), .S1(Endof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_346_16.INIT0 = 16'h5666;
    defparam add_346_16.INIT1 = 16'h5666;
    defparam add_346_16.INJECT1_0 = "NO";
    defparam add_346_16.INJECT1_1 = "NO";
    CCU2D add_346_14 (.A0(n2[12]), .B0(Endof1stMWpulse[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[13]), .B1(Endof1stMWpulse[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1802), .COUT(n1803), .S0(Endof2ndMWpulse[12]), 
          .S1(Endof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_346_14.INIT0 = 16'h5666;
    defparam add_346_14.INIT1 = 16'h5666;
    defparam add_346_14.INJECT1_0 = "NO";
    defparam add_346_14.INJECT1_1 = "NO";
    CCU2D add_287_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Resetandrepeat[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1731), .S1(Endofopticalsample[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_287_1.INIT0 = 16'hF000;
    defparam add_287_1.INIT1 = 16'h5555;
    defparam add_287_1.INJECT1_0 = "NO";
    defparam add_287_1.INJECT1_1 = "NO";
    CCU2D add_285_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1715), .S1(Startof2ndMWpulse[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_285_1.INIT0 = 16'hF000;
    defparam add_285_1.INIT1 = 16'h0555;
    defparam add_285_1.INJECT1_0 = "NO";
    defparam add_285_1.INJECT1_1 = "NO";
    CCU2D add_286_15 (.A0(Endof2ndMWpulse[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1729), .S0(Startofprobepulse[14]), .S1(Startofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_286_15.INIT0 = 16'h5aaa;
    defparam add_286_15.INIT1 = 16'h5aaa;
    defparam add_286_15.INJECT1_0 = "NO";
    defparam add_286_15.INJECT1_1 = "NO";
    CCU2D add_346_12 (.A0(n2[10]), .B0(Endof1stMWpulse[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[11]), .B1(Endof1stMWpulse[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1801), .COUT(n1802), .S0(Endof2ndMWpulse[10]), 
          .S1(Endof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_346_12.INIT0 = 16'h5666;
    defparam add_346_12.INIT1 = 16'h5666;
    defparam add_346_12.INJECT1_0 = "NO";
    defparam add_346_12.INJECT1_1 = "NO";
    CCU2D add_346_10 (.A0(n2[8]), .B0(Endof1stMWpulse[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[9]), .B1(Endof1stMWpulse[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1800), .COUT(n1801), .S0(Endof2ndMWpulse[8]), 
          .S1(Endof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_346_10.INIT0 = 16'h5666;
    defparam add_346_10.INIT1 = 16'h5666;
    defparam add_346_10.INJECT1_0 = "NO";
    defparam add_346_10.INJECT1_1 = "NO";
    CCU2D add_346_8 (.A0(n2[6]), .B0(Endof1stMWpulse[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[7]), .B1(Endof1stMWpulse[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1799), .COUT(n1800), .S0(Endof2ndMWpulse[6]), 
          .S1(Endof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_346_8.INIT0 = 16'h5666;
    defparam add_346_8.INIT1 = 16'h5666;
    defparam add_346_8.INJECT1_0 = "NO";
    defparam add_346_8.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clk_2M5_N_67), .Q(gatedcount[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D add_346_6 (.A0(n2[4]), .B0(Endof1stMWpulse[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[5]), .B1(Endof1stMWpulse[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1798), .COUT(n1799), .S0(Endof2ndMWpulse[4]), 
          .S1(Endof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_346_6.INIT0 = 16'h5666;
    defparam add_346_6.INIT1 = 16'h5666;
    defparam add_346_6.INJECT1_0 = "NO";
    defparam add_346_6.INJECT1_1 = "NO";
    CCU2D add_346_4 (.A0(n2[2]), .B0(Endof1stMWpulse[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[3]), .B1(Endof1stMWpulse[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1797), .COUT(n1798), .S0(Endof2ndMWpulse[2]), 
          .S1(Endof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_346_4.INIT0 = 16'h5666;
    defparam add_346_4.INIT1 = 16'h5666;
    defparam add_346_4.INJECT1_0 = "NO";
    defparam add_346_4.INJECT1_1 = "NO";
    CCU2D add_286_13 (.A0(Endof2ndMWpulse[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1728), .COUT(n1729), .S0(Startofprobepulse[12]), 
          .S1(Startofprobepulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_286_13.INIT0 = 16'h5aaa;
    defparam add_286_13.INIT1 = 16'h5aaa;
    defparam add_286_13.INJECT1_0 = "NO";
    defparam add_286_13.INJECT1_1 = "NO";
    CCU2D add_346_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(Startof2ndMWpulse[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n1797), .S1(Endof2ndMWpulse[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam add_346_2.INIT0 = 16'h0000;
    defparam add_346_2.INIT1 = 16'h5666;
    defparam add_346_2.INJECT1_0 = "NO";
    defparam add_346_2.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1739), .S1(Resetandrepeat[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D add_285_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1721), .S0(Endof1stMWpulse[14]), .S1(Endof1stMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_285_15.INIT0 = 16'hfaaa;
    defparam add_285_15.INIT1 = 16'hfaaa;
    defparam add_285_15.INJECT1_0 = "NO";
    defparam add_285_15.INJECT1_1 = "NO";
    LUT4 load_defaults_I_0_2_lut (.A(load_defaults), .B(loop), .Z(counterreset)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(64[24:42])
    defparam load_defaults_I_0_2_lut.init = 16'heeee;
    CCU2D add_287_15 (.A0(Startopticalsample[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1737), .S0(Endofopticalsample[14]), .S1(Endofopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_287_15.INIT0 = 16'h5aaa;
    defparam add_287_15.INIT1 = 16'h5aaa;
    defparam add_287_15.INJECT1_0 = "NO";
    defparam add_287_15.INJECT1_1 = "NO";
    CCU2D add_287_13 (.A0(Startopticalsample[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1736), .COUT(n1737), .S0(Endofopticalsample[12]), 
          .S1(Endofopticalsample[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_287_13.INIT0 = 16'h5aaa;
    defparam add_287_13.INIT1 = 16'h5aaa;
    defparam add_287_13.INJECT1_0 = "NO";
    defparam add_287_13.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_13 (.A0(Startofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1714), .S0(Startopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_13.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__I_0_28_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_13.INJECT1_1 = "NO";
    CCU2D add_285_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1720), .COUT(n1721), .S0(Endof1stMWpulse[12]), 
          .S1(Endof1stMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_285_13.INIT0 = 16'hfaaa;
    defparam add_285_13.INIT1 = 16'hfaaa;
    defparam add_285_13.INJECT1_0 = "NO";
    defparam add_285_13.INJECT1_1 = "NO";
    CCU2D add_285_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1719), .COUT(n1720), .S0(Endof1stMWpulse[10]), 
          .S1(Endof1stMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_285_11.INIT0 = 16'h0555;
    defparam add_285_11.INIT1 = 16'hfaaa;
    defparam add_285_11.INJECT1_0 = "NO";
    defparam add_285_11.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clk_2M5_N_67), .Q(gatedcount[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    CCU2D add_285_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1718), .COUT(n1719), .S0(Endof1stMWpulse[8]), 
          .S1(Endof1stMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_285_9.INIT0 = 16'h0555;
    defparam add_285_9.INIT1 = 16'h0555;
    defparam add_285_9.INJECT1_0 = "NO";
    defparam add_285_9.INJECT1_1 = "NO";
    CCU2D add_285_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1717), .COUT(n1718), .S0(Endof1stMWpulse[6]), 
          .S1(Endof1stMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_285_7.INIT0 = 16'h0555;
    defparam add_285_7.INIT1 = 16'h0555;
    defparam add_285_7.INJECT1_0 = "NO";
    defparam add_285_7.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_11 (.A0(Startofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1713), .COUT(n1714), .S0(Startopticalsample[13]), 
          .S1(Startopticalsample[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_11.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_11.INJECT1_1 = "NO";
    CCU2D add_286_11 (.A0(Endof2ndMWpulse[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1727), .COUT(n1728), .S0(Startofprobepulse[10]), 
          .S1(Startofprobepulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_286_11.INIT0 = 16'h5aaa;
    defparam add_286_11.INIT1 = 16'h5aaa;
    defparam add_286_11.INJECT1_0 = "NO";
    defparam add_286_11.INJECT1_1 = "NO";
    CCU2D add_287_11 (.A0(Startopticalsample[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1735), .COUT(n1736), .S0(Endofopticalsample[10]), 
          .S1(Endofopticalsample[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_287_11.INIT0 = 16'h5aaa;
    defparam add_287_11.INIT1 = 16'h5aaa;
    defparam add_287_11.INJECT1_0 = "NO";
    defparam add_287_11.INJECT1_1 = "NO";
    CCU2D add_285_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1716), .COUT(n1717), .S0(Endof1stMWpulse[4]), 
          .S1(Endof1stMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_285_5.INIT0 = 16'h0555;
    defparam add_285_5.INIT1 = 16'hfaaa;
    defparam add_285_5.INJECT1_0 = "NO";
    defparam add_285_5.INJECT1_1 = "NO";
    CCU2D add_287_9 (.A0(Startopticalsample[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1734), .COUT(n1735), .S0(Endofopticalsample[8]), 
          .S1(Endofopticalsample[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_287_9.INIT0 = 16'h5aaa;
    defparam add_287_9.INIT1 = 16'h5aaa;
    defparam add_287_9.INJECT1_0 = "NO";
    defparam add_287_9.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_9 (.A0(Startofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1712), .COUT(n1713), .S0(Startopticalsample[11]), 
          .S1(Startopticalsample[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_9.INJECT1_1 = "NO";
    PFUMX i758 (.BLUT(n1976), .ALUT(n1975), .C0(SMstate[2]), .Z(pump_output_N_22));
    CCU2D Startofprobepulse_15__I_0_28_7 (.A0(Startofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1711), .COUT(n1712), .S0(Startopticalsample[9]), 
          .S1(Startopticalsample[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_7.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_7.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_7.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_7.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_5 (.A0(Startofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1710), .COUT(n1711), .S0(Startopticalsample[7]), 
          .S1(Startopticalsample[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_5.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_5.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_5.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_5.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_3 (.A0(Startofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1709), .COUT(n1710), .S0(Startopticalsample[5]), 
          .S1(Startopticalsample[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_3.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_28_3.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_3.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_3.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_28_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startofprobepulse[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1709), .S1(Startopticalsample[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[40:69])
    defparam Startofprobepulse_15__I_0_28_1.INIT0 = 16'hF000;
    defparam Startofprobepulse_15__I_0_28_1.INIT1 = 16'h5555;
    defparam Startofprobepulse_15__I_0_28_1.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_28_1.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_14 (.A0(Endof1stMWpulse[14]), .B0(AdjustableFreePrecession[14]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[15]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1707), .S0(Startof2ndMWpulse[14]), 
          .S1(Startof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_14.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_14.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_14.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_14.INJECT1_1 = "NO";
    CCU2D add_287_7 (.A0(Startopticalsample[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1733), .COUT(n1734), .S0(Endofopticalsample[6]), 
          .S1(Endofopticalsample[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_287_7.INIT0 = 16'h5aaa;
    defparam add_287_7.INIT1 = 16'h5aaa;
    defparam add_287_7.INJECT1_0 = "NO";
    defparam add_287_7.INJECT1_1 = "NO";
    CCU2D add_287_5 (.A0(Startopticalsample[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1732), .COUT(n1733), .S0(Endofopticalsample[4]), 
          .S1(Endofopticalsample[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_287_5.INIT0 = 16'h5555;
    defparam add_287_5.INIT1 = 16'h5555;
    defparam add_287_5.INJECT1_0 = "NO";
    defparam add_287_5.INJECT1_1 = "NO";
    CCU2D add_285_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1715), .COUT(n1716), .S0(Endof1stMWpulse[2]), 
          .S1(Endof1stMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[37:75])
    defparam add_285_3.INIT0 = 16'hfaaa;
    defparam add_285_3.INIT1 = 16'h0555;
    defparam add_285_3.INJECT1_0 = "NO";
    defparam add_285_3.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_12 (.A0(Endof1stMWpulse[12]), .B0(AdjustableFreePrecession[12]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[13]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1706), .COUT(n1707), .S0(Startof2ndMWpulse[12]), 
          .S1(Startof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_12.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_12.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_12.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_12.INJECT1_1 = "NO";
    LUT4 i1_1_lut (.A(SMstate[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    defparam i1_1_lut.init = 16'h5555;
    PFUMX i756 (.BLUT(n1973), .ALUT(n1972), .C0(SMstate[0]), .Z(probe_output_N_32));
    CCU2D Endof1stMWpulse_15__I_0_10 (.A0(Endof1stMWpulse[10]), .B0(AdjustableFreePrecession[10]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[11]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1705), .COUT(n1706), .S0(Startof2ndMWpulse[10]), 
          .S1(Startof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_10.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_10.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_10.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_10.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_8 (.A0(Endof1stMWpulse[8]), .B0(AdjustableFreePrecession[8]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[9]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1704), .COUT(n1705), .S0(Startof2ndMWpulse[8]), 
          .S1(Startof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_8.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_8.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_8.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_8.INJECT1_1 = "NO";
    CCU2D add_286_9 (.A0(Endof2ndMWpulse[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1726), .COUT(n1727), .S0(Startofprobepulse[8]), 
          .S1(Startofprobepulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_286_9.INIT0 = 16'h5aaa;
    defparam add_286_9.INIT1 = 16'h5aaa;
    defparam add_286_9.INJECT1_0 = "NO";
    defparam add_286_9.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_6 (.A0(Endof1stMWpulse[6]), .B0(AdjustableFreePrecession[6]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[7]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1703), .COUT(n1704), .S0(Startof2ndMWpulse[6]), 
          .S1(Startof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_6.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_6.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_6.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_6.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_4 (.A0(Endof1stMWpulse[4]), .B0(AdjustableFreePrecession[4]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[5]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1702), .COUT(n1703), .S0(Startof2ndMWpulse[4]), 
          .S1(Startof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_4.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_4.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_4.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_4.INJECT1_1 = "NO";
    CCU2D add_286_7 (.A0(Endof2ndMWpulse[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1725), .COUT(n1726), .S0(Startofprobepulse[6]), 
          .S1(Startofprobepulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_286_7.INIT0 = 16'h5aaa;
    defparam add_286_7.INIT1 = 16'h5aaa;
    defparam add_286_7.INJECT1_0 = "NO";
    defparam add_286_7.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_2 (.A0(Endof1stMWpulse[2]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(Endof1stMWpulse[3]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n1702), .S1(Startof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_2.INIT0 = 16'h7000;
    defparam Endof1stMWpulse_15__I_0_2.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_2.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_2.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(pi2started), .B(n423), .Z(n23)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[57:67])
    defparam i1_2_lut.init = 16'h2222;
    CCU2D add_287_3 (.A0(Startopticalsample[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startopticalsample[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1731), .COUT(n1732), .S0(Endofopticalsample[2]), 
          .S1(Endofopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[40:71])
    defparam add_287_3.INIT0 = 16'h5aaa;
    defparam add_287_3.INIT1 = 16'h5aaa;
    defparam add_287_3.INJECT1_0 = "NO";
    defparam add_287_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n23), .B(n17), .C(n22), .D(n21), .Z(n1532)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(30[57:67])
    defparam i1_4_lut.init = 16'hafee;
    CCU2D add_286_5 (.A0(Endof2ndMWpulse[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1724), .COUT(n1725), .S0(Startofprobepulse[4]), 
          .S1(Startofprobepulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_286_5.INIT0 = 16'h5aaa;
    defparam add_286_5.INIT1 = 16'h5aaa;
    defparam add_286_5.INJECT1_0 = "NO";
    defparam add_286_5.INJECT1_1 = "NO";
    PFUMX i754 (.BLUT(n1970), .ALUT(n1969), .C0(SMstate[1]), .Z(MW_output_N_40));
    CCU2D add_286_3 (.A0(Endof2ndMWpulse[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endof2ndMWpulse[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1723), .COUT(n1724), .S0(Startopticalsample[2]), 
          .S1(Startopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_286_3.INIT0 = 16'h5aaa;
    defparam add_286_3.INIT1 = 16'h5555;
    defparam add_286_3.INJECT1_0 = "NO";
    defparam add_286_3.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clk_2M5_N_67), .Q(gatedcount[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    LUT4 SMstate_1__bdd_4_lut (.A(n1532), .B(SMstate[0]), .C(SMstate[2]), 
         .D(laser_tuning_c), .Z(n1970)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A (B (C))) */ ;
    defparam SMstate_1__bdd_4_lut.init = 16'hc0c2;
    CCU2D add_286_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Endof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1723), .S1(Resetandrepeat[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[39:65])
    defparam add_286_1.INIT0 = 16'hF000;
    defparam add_286_1.INIT1 = 16'h5555;
    defparam add_286_1.INJECT1_0 = "NO";
    defparam add_286_1.INJECT1_1 = "NO";
    LUT4 SMstate_1__bdd_4_lut_753 (.A(n1532), .B(SMstate[0]), .C(SMstate[2]), 
         .D(slow_pulse), .Z(n1969)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A !(B+!(C (D)))) */ ;
    defparam SMstate_1__bdd_4_lut_753.init = 16'hb282;
    LUT4 i1_2_lut_3_lut (.A(n499), .B(samplestarted), .C(MW_invalid_c), 
         .Z(ADC_sample_N_19)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0404;
    LUT4 probestarted_I_0_2_lut_rep_3 (.A(probestarted), .B(n461), .Z(n1986)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(75[17:45])
    defparam probestarted_I_0_2_lut_rep_3.init = 16'h2222;
    LUT4 SMstate_2__bdd_3_lut (.A(n1614), .B(SMstate[1]), .C(SMstate[0]), 
         .Z(n1975)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam SMstate_2__bdd_3_lut.init = 16'h4343;
    LUT4 SMstate_0__bdd_3_lut_761_4_lut (.A(probestarted), .B(n461), .C(SMstate[2]), 
         .D(SMstate[1]), .Z(n1972)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(75[17:45])
    defparam SMstate_0__bdd_3_lut_761_4_lut.init = 16'h20ff;
    LUT4 i1_2_lut_rep_2 (.A(n499), .B(samplestarted), .Z(n1985)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_2.init = 16'h4444;
    LUT4 i1_2_lut_adj_28 (.A(n1920), .B(n385), .Z(n17)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_28.init = 16'h2222;
    LUT4 SMstate_0__bdd_4_lut_760 (.A(n1986), .B(SMstate[1]), .C(SMstate[2]), 
         .D(laser_tuning_c), .Z(n1973)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam SMstate_0__bdd_4_lut_760.init = 16'hcbca;
    LUT4 i659_2_lut (.A(AdjustableFreePrecession[2]), .B(AdjustablePieOverTwo[2]), 
         .Z(n2[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i659_2_lut.init = 16'h6666;
    CCU2D Endofprobepulse_15__I_0_11 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1750), .S0(Resetandrepeat[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_11.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_9 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1749), .COUT(n1750), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_7 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1748), .COUT(n1749), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_5 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1747), .COUT(n1748), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_3 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1746), .COUT(n1747), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1746), .S1(Resetandrepeat[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[36:61])
    defparam Endofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_15 (.A0(Startofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1745), .S0(Endofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_15.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Startofprobepulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_13 (.A0(Startofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1744), .COUT(n1745), .S0(Endofprobepulse[13]), 
          .S1(Endofprobepulse[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_13.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_13.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D Startofprobepulse_15__I_0_11 (.A0(Startofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1743), .COUT(n1744), .S0(Endofprobepulse[11]), 
          .S1(Endofprobepulse[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Startofprobepulse_15__I_0_11.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clk_2M5_N_67), .Q(gatedcount[15])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clk_2M5_N_67), .Q(gatedcount[14])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clk_2M5_N_67), .Q(gatedcount[13])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clk_2M5_N_67), .Q(gatedcount[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clk_2M5_N_67), .Q(gatedcount[11])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clk_2M5_N_67), .Q(gatedcount[10])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clk_2M5_N_67), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clk_2M5_N_67), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clk_2M5_N_67), .Q(gatedcount[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clk_2M5_N_67), .Q(gatedcount[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clk_2M5_N_67), .Q(gatedcount[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clk_2M5_N_67), .Q(gatedcount[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=53, LSE_RLINE=53 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(68[8] 70[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    CCU2D Startofprobepulse_15__I_0_9 (.A0(Startofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Startofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1742), .COUT(n1743), .S0(Endofprobepulse[9]), 
          .S1(Endofprobepulse[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[37:65])
    defparam Startofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Startofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_332_add_1_2 (.A0(AdjustableFreePrecession[2]), 
          .B0(AdjustablePieOverTwo[2]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[3]), 
          .B1(AdjustablePieOverTwo[3]), .C1(GND_net), .D1(GND_net), .COUT(n1862), 
          .S1(n2[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_2.INIT0 = 16'h7000;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_2.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_2.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_2.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_332_add_1_4 (.A0(AdjustableFreePrecession[4]), 
          .B0(AdjustablePieOverTwo[4]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[5]), 
          .B1(AdjustablePieOverTwo[5]), .C1(GND_net), .D1(GND_net), .CIN(n1862), 
          .COUT(n1863), .S0(n2[4]), .S1(n2[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_4.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_4.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_4.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_4.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_332_add_1_6 (.A0(AdjustableFreePrecession[6]), 
          .B0(AdjustablePieOverTwo[6]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[7]), 
          .B1(AdjustablePieOverTwo[7]), .C1(GND_net), .D1(GND_net), .CIN(n1863), 
          .COUT(n1864), .S0(n2[6]), .S1(n2[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_6.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_6.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_6.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_6.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_332_add_1_8 (.A0(AdjustableFreePrecession[8]), 
          .B0(AdjustablePieOverTwo[8]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[9]), 
          .B1(AdjustablePieOverTwo[9]), .C1(GND_net), .D1(GND_net), .CIN(n1864), 
          .COUT(n1865), .S0(n2[8]), .S1(n2[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_8.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_8.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_8.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_8.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_332_add_1_10 (.A0(AdjustableFreePrecession[10]), 
          .B0(AdjustablePieOverTwo[10]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[11]), 
          .B1(AdjustablePieOverTwo[11]), .C1(GND_net), .D1(GND_net), .CIN(n1865), 
          .COUT(n1866), .S0(n2[10]), .S1(n2[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_10.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_10.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_10.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_10.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_332_add_1_12 (.A0(AdjustableFreePrecession[12]), 
          .B0(AdjustablePieOverTwo[12]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[13]), 
          .B1(AdjustablePieOverTwo[13]), .C1(GND_net), .D1(GND_net), .CIN(n1866), 
          .COUT(n1867), .S0(n2[12]), .S1(n2[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_12.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_12.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_12.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_12.INJECT1_1 = "NO";
    CCU2D Endof1stMWpulse_15__I_0_rep_1_332_add_1_14 (.A0(AdjustableFreePrecession[14]), 
          .B0(AdjustablePieOverTwo[14]), .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[15]), 
          .B1(AdjustablePieOverTwo[15]), .C1(GND_net), .D1(GND_net), .CIN(n1867), 
          .S0(n2[14]), .S1(n2[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[39:79])
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_14.INIT0 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_14.INIT1 = 16'h5666;
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_14.INJECT1_0 = "NO";
    defparam Endof1stMWpulse_15__I_0_rep_1_332_add_1_14.INJECT1_1 = "NO";
    LUT4 SMstate_2__bdd_4_lut (.A(n1614), .B(SMstate[1]), .C(SMstate[0]), 
         .D(laser_tuning_c), .Z(n1976)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;
    defparam SMstate_2__bdd_4_lut.init = 16'h0405;
    count_n systemcounter (.count({count}), .GND_net(GND_net), .clk_2M5(clk_2M5), 
            .counterreset(counterreset)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(48[10:92])
    comparator sample2 (.GND_net(GND_net), .n499(n499), .\gatedcount[14] (gatedcount[14]), 
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
    comparator_U5 pump2 (.n1606(n1606), .n1920(n1920), .\gatedcount[4] (gatedcount[4]), 
            .\gatedcount[5] (gatedcount[5]), .n1614(n1614), .\gatedcount[13] (gatedcount[13]), 
            .\gatedcount[15] (gatedcount[15]), .\gatedcount[11] (gatedcount[11]), 
            .\gatedcount[12] (gatedcount[12]), .\gatedcount[14] (gatedcount[14]), 
            .\gatedcount[10] (gatedcount[10]), .\gatedcount[9] (gatedcount[9]), 
            .\gatedcount[6] (gatedcount[6]), .\gatedcount[7] (gatedcount[7]), 
            .\gatedcount[8] (gatedcount[8])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(50[13:90])
    comparator_U6 probe2 (.GND_net(GND_net), .n461(n461), .\gatedcount[14] (gatedcount[14]), 
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
    comparator_U7 probe1 (.GND_net(GND_net), .probestarted(probestarted), 
            .\gatedcount[14] (gatedcount[14]), .\Startofprobepulse[14] (Startofprobepulse[14]), 
            .\gatedcount[15] (gatedcount[15]), .\Startofprobepulse[15] (Startofprobepulse[15]), 
            .\gatedcount[12] (gatedcount[12]), .\Startofprobepulse[12] (Startofprobepulse[12]), 
            .\gatedcount[13] (gatedcount[13]), .\Startofprobepulse[13] (Startofprobepulse[13]), 
            .\gatedcount[10] (gatedcount[10]), .\Startofprobepulse[10] (Startofprobepulse[10]), 
            .\gatedcount[11] (gatedcount[11]), .\Startofprobepulse[11] (Startofprobepulse[11]), 
            .\gatedcount[8] (gatedcount[8]), .\Startofprobepulse[8] (Startofprobepulse[8]), 
            .\gatedcount[9] (gatedcount[9]), .\Startofprobepulse[9] (Startofprobepulse[9]), 
            .\gatedcount[6] (gatedcount[6]), .\Startofprobepulse[6] (Startofprobepulse[6]), 
            .\gatedcount[7] (gatedcount[7]), .\Startofprobepulse[7] (Startofprobepulse[7]), 
            .\gatedcount[4] (gatedcount[4]), .\Startofprobepulse[4] (Startofprobepulse[4]), 
            .\gatedcount[5] (gatedcount[5]), .\Startofprobepulse[5] (Startofprobepulse[5]), 
            .\gatedcount[2] (gatedcount[2]), .\Startopticalsample[2] (Startopticalsample[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Startopticalsample[3] (Startopticalsample[3]), 
            .\gatedcount[1] (gatedcount[1]), .\Resetandrepeat[1] (Resetandrepeat[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(55[13:95])
    countupdownpreload piecounter (.\AdjustablePieOverTwo[15] (AdjustablePieOverTwo[15]), 
            .GND_net(GND_net), .\AdjustablePieOverTwo[13] (AdjustablePieOverTwo[13]), 
            .\AdjustablePieOverTwo[14] (AdjustablePieOverTwo[14]), .\AdjustablePieOverTwo[11] (AdjustablePieOverTwo[11]), 
            .\AdjustablePieOverTwo[12] (AdjustablePieOverTwo[12]), .pieovertwo_minus(pieovertwo_minus), 
            .pieovertwo_plus(pieovertwo_plus), .\AdjustablePieOverTwo[9] (AdjustablePieOverTwo[9]), 
            .\AdjustablePieOverTwo[10] (AdjustablePieOverTwo[10]), .\AdjustablePieOverTwo[7] (AdjustablePieOverTwo[7]), 
            .\AdjustablePieOverTwo[8] (AdjustablePieOverTwo[8]), .\AdjustablePieOverTwo[5] (AdjustablePieOverTwo[5]), 
            .\AdjustablePieOverTwo[6] (AdjustablePieOverTwo[6]), .\AdjustablePieOverTwo[3] (AdjustablePieOverTwo[3]), 
            .\AdjustablePieOverTwo[4] (AdjustablePieOverTwo[4]), .\AdjustablePieOverTwo[1] (AdjustablePieOverTwo[1]), 
            .\AdjustablePieOverTwo[2] (AdjustablePieOverTwo[2]), .load_defaults(load_defaults), 
            .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(61[21:199])
    comparator_U8 loopcounter (.\gatedcount[8] (gatedcount[8]), .\Resetandrepeat[8] (Resetandrepeat[8]), 
            .GND_net(GND_net), .\gatedcount[9] (gatedcount[9]), .\Resetandrepeat[9] (Resetandrepeat[9]), 
            .\gatedcount[6] (gatedcount[6]), .\Resetandrepeat[6] (Resetandrepeat[6]), 
            .\gatedcount[7] (gatedcount[7]), .\Resetandrepeat[7] (Resetandrepeat[7]), 
            .\gatedcount[4] (gatedcount[4]), .\Resetandrepeat[4] (Resetandrepeat[4]), 
            .\gatedcount[5] (gatedcount[5]), .\Resetandrepeat[5] (Resetandrepeat[5]), 
            .\gatedcount[2] (gatedcount[2]), .\Resetandrepeat[2] (Resetandrepeat[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Resetandrepeat[3] (Resetandrepeat[3]), 
            .\gatedcount[1] (gatedcount[1]), .\Resetandrepeat[1] (Resetandrepeat[1]), 
            .loop(loop), .\gatedcount[10] (gatedcount[10]), .\Resetandrepeat[10] (Resetandrepeat[10]), 
            .\gatedcount[11] (gatedcount[11]), .\Resetandrepeat[11] (Resetandrepeat[11]), 
            .\gatedcount[14] (gatedcount[14]), .\Resetandrepeat[14] (Resetandrepeat[14]), 
            .\gatedcount[15] (gatedcount[15]), .\Resetandrepeat[15] (Resetandrepeat[15]), 
            .\gatedcount[12] (gatedcount[12]), .\Resetandrepeat[12] (Resetandrepeat[12]), 
            .\gatedcount[13] (gatedcount[13]), .\Resetandrepeat[13] (Resetandrepeat[13])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(59[13:89])
    countupdownpreload_U9 freepcounter (.\AdjustableFreePrecession[4] (AdjustableFreePrecession[4]), 
            .GND_net(GND_net), .\AdjustableFreePrecession[5] (AdjustableFreePrecession[5]), 
            .freeprecess_plus(freeprecess_plus), .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), 
            .\AdjustableFreePrecession[3] (AdjustableFreePrecession[3]), .freeprecess_minus(freeprecess_minus), 
            .load_defaults(load_defaults), .\AdjustableFreePrecession[14] (AdjustableFreePrecession[14]), 
            .\AdjustableFreePrecession[15] (AdjustableFreePrecession[15]), 
            .\AdjustableFreePrecession[12] (AdjustableFreePrecession[12]), 
            .\AdjustableFreePrecession[13] (AdjustableFreePrecession[13]), 
            .\AdjustableFreePrecession[10] (AdjustableFreePrecession[10]), 
            .\AdjustableFreePrecession[11] (AdjustableFreePrecession[11]), 
            .\AdjustableFreePrecession[9] (AdjustableFreePrecession[9]), .\AdjustableFreePrecession[8] (AdjustableFreePrecession[8]), 
            .\AdjustableFreePrecession[7] (AdjustableFreePrecession[7]), .\AdjustableFreePrecession[6] (AdjustableFreePrecession[6]), 
            .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(62[21:212])
    comparator_U10 MW4 (.GND_net(GND_net), .n423(n423), .\gatedcount[14] (gatedcount[14]), 
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
    comparator_U11 MW3 (.GND_net(GND_net), .pi2started(pi2started), .gatedcount({gatedcount}), 
            .\Startof2ndMWpulse[14] (Startof2ndMWpulse[14]), .\Startof2ndMWpulse[15] (Startof2ndMWpulse[15]), 
            .\Startof2ndMWpulse[12] (Startof2ndMWpulse[12]), .\Startof2ndMWpulse[13] (Startof2ndMWpulse[13]), 
            .\Startof2ndMWpulse[10] (Startof2ndMWpulse[10]), .\Startof2ndMWpulse[11] (Startof2ndMWpulse[11]), 
            .\Startof2ndMWpulse[8] (Startof2ndMWpulse[8]), .\Startof2ndMWpulse[9] (Startof2ndMWpulse[9]), 
            .\Startof2ndMWpulse[6] (Startof2ndMWpulse[6]), .\Startof2ndMWpulse[7] (Startof2ndMWpulse[7]), 
            .\Startof2ndMWpulse[4] (Startof2ndMWpulse[4]), .\Startof2ndMWpulse[5] (Startof2ndMWpulse[5]), 
            .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), 
            .\Startof2ndMWpulse[3] (Startof2ndMWpulse[3]), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(53[13:90])
    comparator_U12 MW2 (.n1920(n1920), .n385(n385), .n1606(n1606), .n22(n22), 
            .gatedcount({gatedcount}), .n21(n21), .GND_net(GND_net), .\Endof1stMWpulse[14] (Endof1stMWpulse[14]), 
            .\Endof1stMWpulse[15] (Endof1stMWpulse[15]), .\Endof1stMWpulse[12] (Endof1stMWpulse[12]), 
            .\Endof1stMWpulse[13] (Endof1stMWpulse[13]), .\Endof1stMWpulse[10] (Endof1stMWpulse[10]), 
            .\Endof1stMWpulse[11] (Endof1stMWpulse[11]), .\Endof1stMWpulse[8] (Endof1stMWpulse[8]), 
            .\Endof1stMWpulse[9] (Endof1stMWpulse[9]), .\Endof1stMWpulse[6] (Endof1stMWpulse[6]), 
            .\Endof1stMWpulse[7] (Endof1stMWpulse[7]), .\Endof1stMWpulse[4] (Endof1stMWpulse[4]), 
            .\Endof1stMWpulse[5] (Endof1stMWpulse[5]), .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), 
            .\Endof1stMWpulse[3] (Endof1stMWpulse[3]), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(52[13:88])
    
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
    
    wire n1853;
    wire [15:0]n69;
    
    wire n1854, n1855, n1856, n1857, n1858, n1859, n1860;
    
    CCU2D count_290_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1853), .COUT(n1854), .S0(n69[1]), .S1(n69[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290_add_4_3.INIT0 = 16'hfaaa;
    defparam count_290_add_4_3.INIT1 = 16'hfaaa;
    defparam count_290_add_4_3.INJECT1_0 = "NO";
    defparam count_290_add_4_3.INJECT1_1 = "NO";
    CCU2D count_290_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1853), .S1(n69[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290_add_4_1.INIT0 = 16'hF000;
    defparam count_290_add_4_1.INIT1 = 16'h0555;
    defparam count_290_add_4_1.INJECT1_0 = "NO";
    defparam count_290_add_4_1.INJECT1_1 = "NO";
    FD1S3DX count_290__i0 (.D(n69[0]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i0.GSR = "ENABLED";
    FD1S3DX count_290__i15 (.D(n69[15]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i15.GSR = "ENABLED";
    FD1S3DX count_290__i14 (.D(n69[14]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i14.GSR = "ENABLED";
    FD1S3DX count_290__i13 (.D(n69[13]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i13.GSR = "ENABLED";
    FD1S3DX count_290__i12 (.D(n69[12]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i12.GSR = "ENABLED";
    FD1S3DX count_290__i11 (.D(n69[11]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i11.GSR = "ENABLED";
    FD1S3DX count_290__i10 (.D(n69[10]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i10.GSR = "ENABLED";
    FD1S3DX count_290__i9 (.D(n69[9]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i9.GSR = "ENABLED";
    FD1S3DX count_290__i8 (.D(n69[8]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i8.GSR = "ENABLED";
    FD1S3DX count_290__i7 (.D(n69[7]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i7.GSR = "ENABLED";
    FD1S3DX count_290__i6 (.D(n69[6]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i6.GSR = "ENABLED";
    FD1S3DX count_290__i5 (.D(n69[5]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i5.GSR = "ENABLED";
    FD1S3DX count_290__i4 (.D(n69[4]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i4.GSR = "ENABLED";
    FD1S3DX count_290__i3 (.D(n69[3]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i3.GSR = "ENABLED";
    FD1S3DX count_290__i2 (.D(n69[2]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i2.GSR = "ENABLED";
    FD1S3DX count_290__i1 (.D(n69[1]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290__i1.GSR = "ENABLED";
    CCU2D count_290_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1854), .COUT(n1855), .S0(n69[3]), .S1(n69[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290_add_4_5.INIT0 = 16'hfaaa;
    defparam count_290_add_4_5.INIT1 = 16'hfaaa;
    defparam count_290_add_4_5.INJECT1_0 = "NO";
    defparam count_290_add_4_5.INJECT1_1 = "NO";
    CCU2D count_290_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1855), .COUT(n1856), .S0(n69[5]), .S1(n69[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290_add_4_7.INIT0 = 16'hfaaa;
    defparam count_290_add_4_7.INIT1 = 16'hfaaa;
    defparam count_290_add_4_7.INJECT1_0 = "NO";
    defparam count_290_add_4_7.INJECT1_1 = "NO";
    CCU2D count_290_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1856), .COUT(n1857), .S0(n69[7]), .S1(n69[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290_add_4_9.INIT0 = 16'hfaaa;
    defparam count_290_add_4_9.INIT1 = 16'hfaaa;
    defparam count_290_add_4_9.INJECT1_0 = "NO";
    defparam count_290_add_4_9.INJECT1_1 = "NO";
    CCU2D count_290_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1857), .COUT(n1858), .S0(n69[9]), .S1(n69[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290_add_4_11.INIT0 = 16'hfaaa;
    defparam count_290_add_4_11.INIT1 = 16'hfaaa;
    defparam count_290_add_4_11.INJECT1_0 = "NO";
    defparam count_290_add_4_11.INJECT1_1 = "NO";
    CCU2D count_290_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1858), .COUT(n1859), .S0(n69[11]), .S1(n69[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290_add_4_13.INIT0 = 16'hfaaa;
    defparam count_290_add_4_13.INIT1 = 16'hfaaa;
    defparam count_290_add_4_13.INJECT1_0 = "NO";
    defparam count_290_add_4_13.INJECT1_1 = "NO";
    CCU2D count_290_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1859), .COUT(n1860), .S0(n69[13]), .S1(n69[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290_add_4_15.INIT0 = 16'hfaaa;
    defparam count_290_add_4_15.INIT1 = 16'hfaaa;
    defparam count_290_add_4_15.INJECT1_0 = "NO";
    defparam count_290_add_4_15.INJECT1_1 = "NO";
    CCU2D count_290_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1860), .S0(n69[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_290_add_4_17.INIT0 = 16'hfaaa;
    defparam count_290_add_4_17.INIT1 = 16'h0000;
    defparam count_290_add_4_17.INJECT1_0 = "NO";
    defparam count_290_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator
//

module comparator (GND_net, n499, \gatedcount[14] , \Endofopticalsample[14] , 
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
    output n499;
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
    
    
    wire n1785, n1784, n1783, n1782, n1781, n1780, n1779, n1778;
    
    CCU2D sub_233_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1785), .S0(n499));
    defparam sub_233_add_2_cout.INIT0 = 16'h0000;
    defparam sub_233_add_2_cout.INIT1 = 16'h0000;
    defparam sub_233_add_2_cout.INJECT1_0 = "NO";
    defparam sub_233_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endofopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endofopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1784), .COUT(n1785));
    defparam sub_233_add_2_16.INIT0 = 16'h5999;
    defparam sub_233_add_2_16.INIT1 = 16'h5999;
    defparam sub_233_add_2_16.INJECT1_0 = "NO";
    defparam sub_233_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endofopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endofopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1783), .COUT(n1784));
    defparam sub_233_add_2_14.INIT0 = 16'h5999;
    defparam sub_233_add_2_14.INIT1 = 16'h5999;
    defparam sub_233_add_2_14.INJECT1_0 = "NO";
    defparam sub_233_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endofopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endofopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1782), .COUT(n1783));
    defparam sub_233_add_2_12.INIT0 = 16'h5999;
    defparam sub_233_add_2_12.INIT1 = 16'h5999;
    defparam sub_233_add_2_12.INJECT1_0 = "NO";
    defparam sub_233_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endofopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endofopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1781), .COUT(n1782));
    defparam sub_233_add_2_10.INIT0 = 16'h5999;
    defparam sub_233_add_2_10.INIT1 = 16'h5999;
    defparam sub_233_add_2_10.INJECT1_0 = "NO";
    defparam sub_233_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endofopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endofopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1780), .COUT(n1781));
    defparam sub_233_add_2_8.INIT0 = 16'h5999;
    defparam sub_233_add_2_8.INIT1 = 16'h5999;
    defparam sub_233_add_2_8.INJECT1_0 = "NO";
    defparam sub_233_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_6 (.A0(\gatedcount[4] ), .B0(\Endofopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Endofopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1779), .COUT(n1780));
    defparam sub_233_add_2_6.INIT0 = 16'h5999;
    defparam sub_233_add_2_6.INIT1 = 16'h5999;
    defparam sub_233_add_2_6.INJECT1_0 = "NO";
    defparam sub_233_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_4 (.A0(\gatedcount[2] ), .B0(\Endofopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Endofopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1778), .COUT(n1779));
    defparam sub_233_add_2_4.INIT0 = 16'h5999;
    defparam sub_233_add_2_4.INIT1 = 16'h5999;
    defparam sub_233_add_2_4.INJECT1_0 = "NO";
    defparam sub_233_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_233_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Endofopticalsample[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1778));
    defparam sub_233_add_2_2.INIT0 = 16'h0000;
    defparam sub_233_add_2_2.INIT1 = 16'h5999;
    defparam sub_233_add_2_2.INJECT1_0 = "NO";
    defparam sub_233_add_2_2.INJECT1_1 = "NO";
    
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
    
    
    wire n1836, n1835, n1834, n1833, n1832, n1831, n1830, n1829;
    
    CCU2D sub_231_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1836), .S0(samplestarted));
    defparam sub_231_add_2_cout.INIT0 = 16'h0000;
    defparam sub_231_add_2_cout.INIT1 = 16'h0000;
    defparam sub_231_add_2_cout.INJECT1_0 = "NO";
    defparam sub_231_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1835), .COUT(n1836));
    defparam sub_231_add_2_16.INIT0 = 16'h5999;
    defparam sub_231_add_2_16.INIT1 = 16'h5999;
    defparam sub_231_add_2_16.INJECT1_0 = "NO";
    defparam sub_231_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1834), .COUT(n1835));
    defparam sub_231_add_2_14.INIT0 = 16'h5999;
    defparam sub_231_add_2_14.INIT1 = 16'h5999;
    defparam sub_231_add_2_14.INJECT1_0 = "NO";
    defparam sub_231_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1833), .COUT(n1834));
    defparam sub_231_add_2_12.INIT0 = 16'h5999;
    defparam sub_231_add_2_12.INIT1 = 16'h5999;
    defparam sub_231_add_2_12.INJECT1_0 = "NO";
    defparam sub_231_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1832), .COUT(n1833));
    defparam sub_231_add_2_10.INIT0 = 16'h5999;
    defparam sub_231_add_2_10.INIT1 = 16'h5999;
    defparam sub_231_add_2_10.INJECT1_0 = "NO";
    defparam sub_231_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1831), .COUT(n1832));
    defparam sub_231_add_2_8.INIT0 = 16'h5999;
    defparam sub_231_add_2_8.INIT1 = 16'h5999;
    defparam sub_231_add_2_8.INJECT1_0 = "NO";
    defparam sub_231_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1830), .COUT(n1831));
    defparam sub_231_add_2_6.INIT0 = 16'h5999;
    defparam sub_231_add_2_6.INIT1 = 16'h5999;
    defparam sub_231_add_2_6.INJECT1_0 = "NO";
    defparam sub_231_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_4 (.A0(\gatedcount[2] ), .B0(\Startopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1829), .COUT(n1830));
    defparam sub_231_add_2_4.INIT0 = 16'h5999;
    defparam sub_231_add_2_4.INIT1 = 16'h5999;
    defparam sub_231_add_2_4.INJECT1_0 = "NO";
    defparam sub_231_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_231_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1829));
    defparam sub_231_add_2_2.INIT0 = 16'h0000;
    defparam sub_231_add_2_2.INIT1 = 16'h5999;
    defparam sub_231_add_2_2.INJECT1_0 = "NO";
    defparam sub_231_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (n1606, n1920, \gatedcount[4] , \gatedcount[5] , 
            n1614, \gatedcount[13] , \gatedcount[15] , \gatedcount[11] , 
            \gatedcount[12] , \gatedcount[14] , \gatedcount[10] , \gatedcount[9] , 
            \gatedcount[6] , \gatedcount[7] , \gatedcount[8] ) /* synthesis syn_module_defined=1 */ ;
    output n1606;
    output n1920;
    input \gatedcount[4] ;
    input \gatedcount[5] ;
    output n1614;
    input \gatedcount[13] ;
    input \gatedcount[15] ;
    input \gatedcount[11] ;
    input \gatedcount[12] ;
    input \gatedcount[14] ;
    input \gatedcount[10] ;
    input \gatedcount[9] ;
    input \gatedcount[6] ;
    input \gatedcount[7] ;
    input \gatedcount[8] ;
    
    
    wire n6, n6_adj_194;
    
    LUT4 i1_4_lut (.A(n1606), .B(n1920), .C(\gatedcount[4] ), .D(\gatedcount[5] ), 
         .Z(n1614)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_4_lut.init = 16'heeec;
    LUT4 i4_4_lut (.A(\gatedcount[13] ), .B(\gatedcount[15] ), .C(\gatedcount[11] ), 
         .D(n6), .Z(n1920)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(\gatedcount[12] ), .B(\gatedcount[14] ), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4_4_lut_adj_26 (.A(\gatedcount[10] ), .B(\gatedcount[9] ), .C(\gatedcount[6] ), 
         .D(n6_adj_194), .Z(n1606)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_26.init = 16'h8000;
    LUT4 i1_2_lut_adj_27 (.A(\gatedcount[7] ), .B(\gatedcount[8] ), .Z(n6_adj_194)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_27.init = 16'h8888;
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (GND_net, n461, \gatedcount[14] , \Endofprobepulse[14] , 
            \gatedcount[15] , \Endofprobepulse[15] , \gatedcount[12] , 
            \Endofprobepulse[12] , \gatedcount[13] , \Endofprobepulse[13] , 
            \gatedcount[10] , \Endofprobepulse[10] , \gatedcount[11] , 
            \Endofprobepulse[11] , \gatedcount[8] , \Endofprobepulse[8] , 
            \gatedcount[9] , \Endofprobepulse[9] , \gatedcount[6] , \Endofprobepulse[6] , 
            \gatedcount[7] , \Endofprobepulse[7] , \gatedcount[4] , \Resetandrepeat[4] , 
            \gatedcount[5] , \Resetandrepeat[5] , \gatedcount[2] , \Resetandrepeat[2] , 
            \gatedcount[3] , \Resetandrepeat[3] , \gatedcount[1] , \Resetandrepeat[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n461;
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
    
    
    wire n1828, n1827, n1826, n1825, n1824, n1823, n1822, n1821;
    
    CCU2D sub_229_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1828), .S0(n461));
    defparam sub_229_add_2_cout.INIT0 = 16'h0000;
    defparam sub_229_add_2_cout.INIT1 = 16'h0000;
    defparam sub_229_add_2_cout.INJECT1_0 = "NO";
    defparam sub_229_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1827), .COUT(n1828));
    defparam sub_229_add_2_16.INIT0 = 16'h5999;
    defparam sub_229_add_2_16.INIT1 = 16'h5999;
    defparam sub_229_add_2_16.INJECT1_0 = "NO";
    defparam sub_229_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1826), .COUT(n1827));
    defparam sub_229_add_2_14.INIT0 = 16'h5999;
    defparam sub_229_add_2_14.INIT1 = 16'h5999;
    defparam sub_229_add_2_14.INJECT1_0 = "NO";
    defparam sub_229_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1825), .COUT(n1826));
    defparam sub_229_add_2_12.INIT0 = 16'h5999;
    defparam sub_229_add_2_12.INIT1 = 16'h5999;
    defparam sub_229_add_2_12.INJECT1_0 = "NO";
    defparam sub_229_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1824), .COUT(n1825));
    defparam sub_229_add_2_10.INIT0 = 16'h5999;
    defparam sub_229_add_2_10.INIT1 = 16'h5999;
    defparam sub_229_add_2_10.INJECT1_0 = "NO";
    defparam sub_229_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1823), .COUT(n1824));
    defparam sub_229_add_2_8.INIT0 = 16'h5999;
    defparam sub_229_add_2_8.INIT1 = 16'h5999;
    defparam sub_229_add_2_8.INJECT1_0 = "NO";
    defparam sub_229_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_6 (.A0(\gatedcount[4] ), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1822), .COUT(n1823));
    defparam sub_229_add_2_6.INIT0 = 16'h5999;
    defparam sub_229_add_2_6.INIT1 = 16'h5999;
    defparam sub_229_add_2_6.INJECT1_0 = "NO";
    defparam sub_229_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_4 (.A0(\gatedcount[2] ), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1821), .COUT(n1822));
    defparam sub_229_add_2_4.INIT0 = 16'h5999;
    defparam sub_229_add_2_4.INIT1 = 16'h5999;
    defparam sub_229_add_2_4.INJECT1_0 = "NO";
    defparam sub_229_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_229_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1821));
    defparam sub_229_add_2_2.INIT0 = 16'h0000;
    defparam sub_229_add_2_2.INIT1 = 16'h5999;
    defparam sub_229_add_2_2.INJECT1_0 = "NO";
    defparam sub_229_add_2_2.INJECT1_1 = "NO";
    
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
    
    
    wire n1844, n1843, n1842, n1841, n1840, n1839, n1838, n1837;
    
    CCU2D sub_227_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1844), .S0(probestarted));
    defparam sub_227_add_2_cout.INIT0 = 16'h0000;
    defparam sub_227_add_2_cout.INIT1 = 16'h0000;
    defparam sub_227_add_2_cout.INJECT1_0 = "NO";
    defparam sub_227_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1843), .COUT(n1844));
    defparam sub_227_add_2_16.INIT0 = 16'h5999;
    defparam sub_227_add_2_16.INIT1 = 16'h5999;
    defparam sub_227_add_2_16.INJECT1_0 = "NO";
    defparam sub_227_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1842), .COUT(n1843));
    defparam sub_227_add_2_14.INIT0 = 16'h5999;
    defparam sub_227_add_2_14.INIT1 = 16'h5999;
    defparam sub_227_add_2_14.INJECT1_0 = "NO";
    defparam sub_227_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1841), .COUT(n1842));
    defparam sub_227_add_2_12.INIT0 = 16'h5999;
    defparam sub_227_add_2_12.INIT1 = 16'h5999;
    defparam sub_227_add_2_12.INJECT1_0 = "NO";
    defparam sub_227_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1840), .COUT(n1841));
    defparam sub_227_add_2_10.INIT0 = 16'h5999;
    defparam sub_227_add_2_10.INIT1 = 16'h5999;
    defparam sub_227_add_2_10.INJECT1_0 = "NO";
    defparam sub_227_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1839), .COUT(n1840));
    defparam sub_227_add_2_8.INIT0 = 16'h5999;
    defparam sub_227_add_2_8.INIT1 = 16'h5999;
    defparam sub_227_add_2_8.INJECT1_0 = "NO";
    defparam sub_227_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startofprobepulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startofprobepulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1838), .COUT(n1839));
    defparam sub_227_add_2_6.INIT0 = 16'h5999;
    defparam sub_227_add_2_6.INIT1 = 16'h5999;
    defparam sub_227_add_2_6.INJECT1_0 = "NO";
    defparam sub_227_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_4 (.A0(\gatedcount[2] ), .B0(\Startopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1837), .COUT(n1838));
    defparam sub_227_add_2_4.INIT0 = 16'h5999;
    defparam sub_227_add_2_4.INIT1 = 16'h5999;
    defparam sub_227_add_2_4.INJECT1_0 = "NO";
    defparam sub_227_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_227_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1837));
    defparam sub_227_add_2_2.INIT0 = 16'h0000;
    defparam sub_227_add_2_2.INIT1 = 16'h5999;
    defparam sub_227_add_2_2.INJECT1_0 = "NO";
    defparam sub_227_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (\AdjustablePieOverTwo[15] , GND_net, \AdjustablePieOverTwo[13] , 
            \AdjustablePieOverTwo[14] , \AdjustablePieOverTwo[11] , \AdjustablePieOverTwo[12] , 
            pieovertwo_minus, pieovertwo_plus, \AdjustablePieOverTwo[9] , 
            \AdjustablePieOverTwo[10] , \AdjustablePieOverTwo[7] , \AdjustablePieOverTwo[8] , 
            \AdjustablePieOverTwo[5] , \AdjustablePieOverTwo[6] , \AdjustablePieOverTwo[3] , 
            \AdjustablePieOverTwo[4] , \AdjustablePieOverTwo[1] , \AdjustablePieOverTwo[2] , 
            load_defaults, clk_2M5) /* synthesis syn_module_defined=1 */ ;
    output \AdjustablePieOverTwo[15] ;
    input GND_net;
    output \AdjustablePieOverTwo[13] ;
    output \AdjustablePieOverTwo[14] ;
    output \AdjustablePieOverTwo[11] ;
    output \AdjustablePieOverTwo[12] ;
    input pieovertwo_minus;
    input pieovertwo_plus;
    output \AdjustablePieOverTwo[9] ;
    output \AdjustablePieOverTwo[10] ;
    output \AdjustablePieOverTwo[7] ;
    output \AdjustablePieOverTwo[8] ;
    output \AdjustablePieOverTwo[5] ;
    output \AdjustablePieOverTwo[6] ;
    output \AdjustablePieOverTwo[3] ;
    output \AdjustablePieOverTwo[4] ;
    output \AdjustablePieOverTwo[1] ;
    output \AdjustablePieOverTwo[2] ;
    input load_defaults;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1796;
    wire [14:0]n1356;
    
    wire n1795, n1794, n1683;
    wire [15:0]count_15__N_145;
    
    wire n1684, n1793, n1792, n1791, n1790, n1789, n1689, n1686, 
        n1687, n1688, n4, n1685;
    
    CCU2D add_279_330_add_1_17 (.A0(\AdjustablePieOverTwo[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1796), .S0(n1356[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_330_add_1_17.INIT0 = 16'h5aaa;
    defparam add_279_330_add_1_17.INIT1 = 16'h0000;
    defparam add_279_330_add_1_17.INJECT1_0 = "NO";
    defparam add_279_330_add_1_17.INJECT1_1 = "NO";
    CCU2D add_279_330_add_1_15 (.A0(\AdjustablePieOverTwo[13] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[14] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1795), .COUT(n1796), 
          .S0(n1356[12]), .S1(n1356[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_330_add_1_15.INIT0 = 16'h5aaa;
    defparam add_279_330_add_1_15.INIT1 = 16'h5aaa;
    defparam add_279_330_add_1_15.INJECT1_0 = "NO";
    defparam add_279_330_add_1_15.INJECT1_1 = "NO";
    CCU2D add_279_330_add_1_13 (.A0(\AdjustablePieOverTwo[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[12] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1794), .COUT(n1795), 
          .S0(n1356[10]), .S1(n1356[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_330_add_1_13.INIT0 = 16'h5aaa;
    defparam add_279_330_add_1_13.INIT1 = 16'h5aaa;
    defparam add_279_330_add_1_13.INJECT1_0 = "NO";
    defparam add_279_330_add_1_13.INJECT1_1 = "NO";
    CCU2D add_351_3 (.A0(n1356[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1356[3]), 
          .D1(GND_net), .CIN(n1683), .COUT(n1684), .S0(count_15__N_145[3]), 
          .S1(count_15__N_145[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_351_3.INIT0 = 16'h5aaa;
    defparam add_351_3.INIT1 = 16'hd2d2;
    defparam add_351_3.INJECT1_0 = "NO";
    defparam add_351_3.INJECT1_1 = "NO";
    CCU2D add_279_330_add_1_11 (.A0(\AdjustablePieOverTwo[9] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[10] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1793), .COUT(n1794), 
          .S0(n1356[8]), .S1(n1356[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_330_add_1_11.INIT0 = 16'h5aaa;
    defparam add_279_330_add_1_11.INIT1 = 16'h5aaa;
    defparam add_279_330_add_1_11.INJECT1_0 = "NO";
    defparam add_279_330_add_1_11.INJECT1_1 = "NO";
    CCU2D add_351_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1356[1]), 
          .D1(GND_net), .COUT(n1683), .S1(count_15__N_145[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_351_1.INIT0 = 16'hF000;
    defparam add_351_1.INIT1 = 16'hd2d2;
    defparam add_351_1.INJECT1_0 = "NO";
    defparam add_351_1.INJECT1_1 = "NO";
    CCU2D add_279_330_add_1_9 (.A0(\AdjustablePieOverTwo[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[8] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1792), .COUT(n1793), 
          .S0(n1356[6]), .S1(n1356[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_330_add_1_9.INIT0 = 16'h5aaa;
    defparam add_279_330_add_1_9.INIT1 = 16'h5aaa;
    defparam add_279_330_add_1_9.INJECT1_0 = "NO";
    defparam add_279_330_add_1_9.INJECT1_1 = "NO";
    CCU2D add_279_330_add_1_7 (.A0(\AdjustablePieOverTwo[5] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[6] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1791), .COUT(n1792), 
          .S0(n1356[4]), .S1(n1356[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_330_add_1_7.INIT0 = 16'h5aaa;
    defparam add_279_330_add_1_7.INIT1 = 16'h5aaa;
    defparam add_279_330_add_1_7.INJECT1_0 = "NO";
    defparam add_279_330_add_1_7.INJECT1_1 = "NO";
    CCU2D add_279_330_add_1_5 (.A0(\AdjustablePieOverTwo[3] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[4] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1790), .COUT(n1791), 
          .S0(n1356[2]), .S1(n1356[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_330_add_1_5.INIT0 = 16'h5666;
    defparam add_279_330_add_1_5.INIT1 = 16'h5aaa;
    defparam add_279_330_add_1_5.INJECT1_0 = "NO";
    defparam add_279_330_add_1_5.INJECT1_1 = "NO";
    CCU2D add_279_330_add_1_3 (.A0(\AdjustablePieOverTwo[1] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[2] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1789), .COUT(n1790), 
          .S0(count_15__N_145[1]), .S1(n1356[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_330_add_1_3.INIT0 = 16'h5666;
    defparam add_279_330_add_1_3.INIT1 = 16'h5aaa;
    defparam add_279_330_add_1_3.INJECT1_0 = "NO";
    defparam add_279_330_add_1_3.INJECT1_1 = "NO";
    CCU2D add_279_330_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(GND_net), 
          .D1(GND_net), .COUT(n1789));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_279_330_add_1_1.INIT0 = 16'hF000;
    defparam add_279_330_add_1_1.INIT1 = 16'hdddd;
    defparam add_279_330_add_1_1.INJECT1_0 = "NO";
    defparam add_279_330_add_1_1.INJECT1_1 = "NO";
    CCU2D add_351_15 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1356[14]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1689), .S0(count_15__N_145[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_351_15.INIT0 = 16'hd2d2;
    defparam add_351_15.INIT1 = 16'h0000;
    defparam add_351_15.INJECT1_0 = "NO";
    defparam add_351_15.INJECT1_1 = "NO";
    CCU2D add_351_9 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1356[8]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1356[9]), 
          .D1(GND_net), .CIN(n1686), .COUT(n1687), .S0(count_15__N_145[9]), 
          .S1(count_15__N_145[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_351_9.INIT0 = 16'hd2d2;
    defparam add_351_9.INIT1 = 16'hd2d2;
    defparam add_351_9.INJECT1_0 = "NO";
    defparam add_351_9.INJECT1_1 = "NO";
    CCU2D add_351_13 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1356[12]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1356[13]), 
          .D1(GND_net), .CIN(n1688), .COUT(n1689), .S0(count_15__N_145[13]), 
          .S1(count_15__N_145[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_351_13.INIT0 = 16'hd2d2;
    defparam add_351_13.INIT1 = 16'hd2d2;
    defparam add_351_13.INJECT1_0 = "NO";
    defparam add_351_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(pieovertwo_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_351_5 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1356[4]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1356[5]), 
          .D1(GND_net), .CIN(n1684), .COUT(n1685), .S0(count_15__N_145[5]), 
          .S1(count_15__N_145[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_351_5.INIT0 = 16'hd2d2;
    defparam add_351_5.INIT1 = 16'hd2d2;
    defparam add_351_5.INJECT1_0 = "NO";
    defparam add_351_5.INJECT1_1 = "NO";
    CCU2D add_351_11 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1356[10]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1356[11]), 
          .D1(GND_net), .CIN(n1687), .COUT(n1688), .S0(count_15__N_145[11]), 
          .S1(count_15__N_145[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_351_11.INIT0 = 16'hd2d2;
    defparam add_351_11.INIT1 = 16'hd2d2;
    defparam add_351_11.INJECT1_0 = "NO";
    defparam add_351_11.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_145[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_145[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_145[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_145[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_145[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_145[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_145[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_145[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_145[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3IX count_i6 (.D(count_15__N_145[6]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_145[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_145[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_145[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_145[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    FD1S3JX count_i1 (.D(count_15__N_145[1]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i1.GSR = "ENABLED";
    CCU2D add_351_7 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1356[6]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1356[7]), 
          .D1(GND_net), .CIN(n1685), .COUT(n1686), .S0(count_15__N_145[7]), 
          .S1(count_15__N_145[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_351_7.INIT0 = 16'hd2d2;
    defparam add_351_7.INIT1 = 16'hd2d2;
    defparam add_351_7.INJECT1_0 = "NO";
    defparam add_351_7.INJECT1_1 = "NO";
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

module comparator_U8 (\gatedcount[8] , \Resetandrepeat[8] , GND_net, \gatedcount[9] , 
            \Resetandrepeat[9] , \gatedcount[6] , \Resetandrepeat[6] , 
            \gatedcount[7] , \Resetandrepeat[7] , \gatedcount[4] , \Resetandrepeat[4] , 
            \gatedcount[5] , \Resetandrepeat[5] , \gatedcount[2] , \Resetandrepeat[2] , 
            \gatedcount[3] , \Resetandrepeat[3] , \gatedcount[1] , \Resetandrepeat[1] , 
            loop, \gatedcount[10] , \Resetandrepeat[10] , \gatedcount[11] , 
            \Resetandrepeat[11] , \gatedcount[14] , \Resetandrepeat[14] , 
            \gatedcount[15] , \Resetandrepeat[15] , \gatedcount[12] , 
            \Resetandrepeat[12] , \gatedcount[13] , \Resetandrepeat[13] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[8] ;
    input \Resetandrepeat[8] ;
    input GND_net;
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
    output loop;
    input \gatedcount[10] ;
    input \Resetandrepeat[10] ;
    input \gatedcount[11] ;
    input \Resetandrepeat[11] ;
    input \gatedcount[14] ;
    input \Resetandrepeat[14] ;
    input \gatedcount[15] ;
    input \Resetandrepeat[15] ;
    input \gatedcount[12] ;
    input \Resetandrepeat[12] ;
    input \gatedcount[13] ;
    input \Resetandrepeat[13] ;
    
    
    wire n1773, n1774, n1772, n1771, n1770, n1777, n1775, n1776;
    
    CCU2D sub_235_add_2_10 (.A0(\gatedcount[8] ), .B0(\Resetandrepeat[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Resetandrepeat[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1773), .COUT(n1774));
    defparam sub_235_add_2_10.INIT0 = 16'h5999;
    defparam sub_235_add_2_10.INIT1 = 16'h5999;
    defparam sub_235_add_2_10.INJECT1_0 = "NO";
    defparam sub_235_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_8 (.A0(\gatedcount[6] ), .B0(\Resetandrepeat[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Resetandrepeat[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1772), .COUT(n1773));
    defparam sub_235_add_2_8.INIT0 = 16'h5999;
    defparam sub_235_add_2_8.INIT1 = 16'h5999;
    defparam sub_235_add_2_8.INJECT1_0 = "NO";
    defparam sub_235_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_6 (.A0(\gatedcount[4] ), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1771), .COUT(n1772));
    defparam sub_235_add_2_6.INIT0 = 16'h5999;
    defparam sub_235_add_2_6.INIT1 = 16'h5999;
    defparam sub_235_add_2_6.INJECT1_0 = "NO";
    defparam sub_235_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_4 (.A0(\gatedcount[2] ), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1770), .COUT(n1771));
    defparam sub_235_add_2_4.INIT0 = 16'h5999;
    defparam sub_235_add_2_4.INIT1 = 16'h5999;
    defparam sub_235_add_2_4.INJECT1_0 = "NO";
    defparam sub_235_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Resetandrepeat[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1770));
    defparam sub_235_add_2_2.INIT0 = 16'h0000;
    defparam sub_235_add_2_2.INIT1 = 16'h5999;
    defparam sub_235_add_2_2.INJECT1_0 = "NO";
    defparam sub_235_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1777), .S0(loop));
    defparam sub_235_add_2_cout.INIT0 = 16'h0000;
    defparam sub_235_add_2_cout.INIT1 = 16'h0000;
    defparam sub_235_add_2_cout.INJECT1_0 = "NO";
    defparam sub_235_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_12 (.A0(\gatedcount[10] ), .B0(\Resetandrepeat[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Resetandrepeat[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1774), .COUT(n1775));
    defparam sub_235_add_2_12.INIT0 = 16'h5999;
    defparam sub_235_add_2_12.INIT1 = 16'h5999;
    defparam sub_235_add_2_12.INJECT1_0 = "NO";
    defparam sub_235_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_16 (.A0(\gatedcount[14] ), .B0(\Resetandrepeat[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Resetandrepeat[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1776), .COUT(n1777));
    defparam sub_235_add_2_16.INIT0 = 16'h5999;
    defparam sub_235_add_2_16.INIT1 = 16'h5999;
    defparam sub_235_add_2_16.INJECT1_0 = "NO";
    defparam sub_235_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_235_add_2_14 (.A0(\gatedcount[12] ), .B0(\Resetandrepeat[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Resetandrepeat[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1775), .COUT(n1776));
    defparam sub_235_add_2_14.INIT0 = 16'h5999;
    defparam sub_235_add_2_14.INIT1 = 16'h5999;
    defparam sub_235_add_2_14.INJECT1_0 = "NO";
    defparam sub_235_add_2_14.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload_U9
//

module countupdownpreload_U9 (\AdjustableFreePrecession[4] , GND_net, \AdjustableFreePrecession[5] , 
            freeprecess_plus, \AdjustableFreePrecession[2] , \AdjustableFreePrecession[3] , 
            freeprecess_minus, load_defaults, \AdjustableFreePrecession[14] , 
            \AdjustableFreePrecession[15] , \AdjustableFreePrecession[12] , 
            \AdjustableFreePrecession[13] , \AdjustableFreePrecession[10] , 
            \AdjustableFreePrecession[11] , \AdjustableFreePrecession[9] , 
            \AdjustableFreePrecession[8] , \AdjustableFreePrecession[7] , 
            \AdjustableFreePrecession[6] , clk_2M5) /* synthesis syn_module_defined=1 */ ;
    output \AdjustableFreePrecession[4] ;
    input GND_net;
    output \AdjustableFreePrecession[5] ;
    input freeprecess_plus;
    output \AdjustableFreePrecession[2] ;
    output \AdjustableFreePrecession[3] ;
    input freeprecess_minus;
    input load_defaults;
    output \AdjustableFreePrecession[14] ;
    output \AdjustableFreePrecession[15] ;
    output \AdjustableFreePrecession[12] ;
    output \AdjustableFreePrecession[13] ;
    output \AdjustableFreePrecession[10] ;
    output \AdjustableFreePrecession[11] ;
    output \AdjustableFreePrecession[9] ;
    output \AdjustableFreePrecession[8] ;
    output \AdjustableFreePrecession[7] ;
    output \AdjustableFreePrecession[6] ;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n1694;
    wire [13:0]n1340;
    
    wire n1695, n1693;
    wire [15:0]count_15__N_145;
    
    wire n4, n1699, n1698, n1697, n1756, n1755, n1754, n1696, 
        n1753, n1752, n1751;
    
    CCU2D add_283_334_add_1_5 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), 
          .B1(freeprecess_plus), .C1(GND_net), .D1(GND_net), .CIN(n1694), 
          .COUT(n1695), .S0(n1340[2]), .S1(n1340[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_283_334_add_1_5.INIT0 = 16'h5aaa;
    defparam add_283_334_add_1_5.INIT1 = 16'h5666;
    defparam add_283_334_add_1_5.INJECT1_0 = "NO";
    defparam add_283_334_add_1_5.INJECT1_1 = "NO";
    CCU2D add_283_334_add_1_3 (.A0(\AdjustableFreePrecession[2] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[3] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1693), .COUT(n1694), 
          .S0(count_15__N_145[2]), .S1(n1340[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_283_334_add_1_3.INIT0 = 16'h5666;
    defparam add_283_334_add_1_3.INIT1 = 16'h5aaa;
    defparam add_283_334_add_1_3.INJECT1_0 = "NO";
    defparam add_283_334_add_1_3.INJECT1_1 = "NO";
    CCU2D add_283_334_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(GND_net), .D1(GND_net), .COUT(n1693));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_283_334_add_1_1.INIT0 = 16'hF000;
    defparam add_283_334_add_1_1.INIT1 = 16'hdddd;
    defparam add_283_334_add_1_1.INJECT1_0 = "NO";
    defparam add_283_334_add_1_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(freeprecess_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_283_334_add_1_15 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1699), .S0(n1340[12]), 
          .S1(n1340[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_283_334_add_1_15.INIT0 = 16'h5aaa;
    defparam add_283_334_add_1_15.INIT1 = 16'h5aaa;
    defparam add_283_334_add_1_15.INJECT1_0 = "NO";
    defparam add_283_334_add_1_15.INJECT1_1 = "NO";
    CCU2D add_283_334_add_1_13 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1698), .COUT(n1699), 
          .S0(n1340[10]), .S1(n1340[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_283_334_add_1_13.INIT0 = 16'h5aaa;
    defparam add_283_334_add_1_13.INIT1 = 16'h5aaa;
    defparam add_283_334_add_1_13.INJECT1_0 = "NO";
    defparam add_283_334_add_1_13.INJECT1_1 = "NO";
    CCU2D add_283_334_add_1_11 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1697), .COUT(n1698), 
          .S0(n1340[8]), .S1(n1340[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_283_334_add_1_11.INIT0 = 16'h5aaa;
    defparam add_283_334_add_1_11.INIT1 = 16'h5aaa;
    defparam add_283_334_add_1_11.INJECT1_0 = "NO";
    defparam add_283_334_add_1_11.INJECT1_1 = "NO";
    CCU2D add_350_13 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1340[12]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1340[13]), .D1(GND_net), .CIN(n1756), .S0(count_15__N_145[14]), 
          .S1(count_15__N_145[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_350_13.INIT0 = 16'hd2d2;
    defparam add_350_13.INIT1 = 16'hd2d2;
    defparam add_350_13.INJECT1_0 = "NO";
    defparam add_350_13.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_145[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_145[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3JX count_i13 (.D(count_15__N_145[13]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_145[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_145[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3JX count_i10 (.D(count_15__N_145[10]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_145[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_145[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_145[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    CCU2D add_350_11 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1340[10]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1340[11]), .D1(GND_net), .CIN(n1755), .COUT(n1756), .S0(count_15__N_145[12]), 
          .S1(count_15__N_145[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_350_11.INIT0 = 16'hd2d2;
    defparam add_350_11.INIT1 = 16'hd2d2;
    defparam add_350_11.INJECT1_0 = "NO";
    defparam add_350_11.INJECT1_1 = "NO";
    FD1S3IX count_i6 (.D(count_15__N_145[6]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_145[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3JX count_i4 (.D(count_15__N_145[4]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3IX count_i3 (.D(count_15__N_145[3]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    CCU2D add_350_9 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1340[8]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1340[9]), .D1(GND_net), .CIN(n1754), .COUT(n1755), .S0(count_15__N_145[10]), 
          .S1(count_15__N_145[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_350_9.INIT0 = 16'hd2d2;
    defparam add_350_9.INIT1 = 16'hd2d2;
    defparam add_350_9.INJECT1_0 = "NO";
    defparam add_350_9.INJECT1_1 = "NO";
    FD1S3IX count_i2 (.D(count_15__N_145[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    CCU2D add_283_334_add_1_9 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1696), .COUT(n1697), 
          .S0(n1340[6]), .S1(n1340[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_283_334_add_1_9.INIT0 = 16'h5aaa;
    defparam add_283_334_add_1_9.INIT1 = 16'h5aaa;
    defparam add_283_334_add_1_9.INJECT1_0 = "NO";
    defparam add_283_334_add_1_9.INJECT1_1 = "NO";
    CCU2D add_350_7 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1340[6]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1340[7]), .D1(GND_net), .CIN(n1753), .COUT(n1754), .S0(count_15__N_145[8]), 
          .S1(count_15__N_145[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_350_7.INIT0 = 16'hd2d2;
    defparam add_350_7.INIT1 = 16'hd2d2;
    defparam add_350_7.INJECT1_0 = "NO";
    defparam add_350_7.INJECT1_1 = "NO";
    CCU2D add_350_5 (.A0(n1340[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1340[5]), 
          .D1(GND_net), .CIN(n1752), .COUT(n1753), .S0(count_15__N_145[6]), 
          .S1(count_15__N_145[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_350_5.INIT0 = 16'h5aaa;
    defparam add_350_5.INIT1 = 16'hd2d2;
    defparam add_350_5.INJECT1_0 = "NO";
    defparam add_350_5.INJECT1_1 = "NO";
    CCU2D add_350_3 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1340[2]), 
          .D0(GND_net), .A1(n1340[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1751), .COUT(n1752), .S0(count_15__N_145[4]), .S1(count_15__N_145[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_350_3.INIT0 = 16'hd2d2;
    defparam add_350_3.INIT1 = 16'h5aaa;
    defparam add_350_3.INJECT1_0 = "NO";
    defparam add_350_3.INJECT1_1 = "NO";
    CCU2D add_350_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1340[1]), 
          .D1(GND_net), .COUT(n1751), .S1(count_15__N_145[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_350_1.INIT0 = 16'hF000;
    defparam add_350_1.INIT1 = 16'hd2d2;
    defparam add_350_1.INJECT1_0 = "NO";
    defparam add_350_1.INJECT1_1 = "NO";
    CCU2D add_283_334_add_1_7 (.A0(\AdjustableFreePrecession[6] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1695), .COUT(n1696), 
          .S0(n1340[4]), .S1(n1340[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_283_334_add_1_7.INIT0 = 16'h5666;
    defparam add_283_334_add_1_7.INIT1 = 16'h5aaa;
    defparam add_283_334_add_1_7.INJECT1_0 = "NO";
    defparam add_283_334_add_1_7.INJECT1_1 = "NO";
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

module comparator_U10 (GND_net, n423, \gatedcount[14] , \Endof2ndMWpulse[14] , 
            \gatedcount[15] , \Endof2ndMWpulse[15] , \gatedcount[12] , 
            \Endof2ndMWpulse[12] , \gatedcount[13] , \Endof2ndMWpulse[13] , 
            \gatedcount[10] , \Endof2ndMWpulse[10] , \gatedcount[11] , 
            \Endof2ndMWpulse[11] , \gatedcount[8] , \Endof2ndMWpulse[8] , 
            \gatedcount[9] , \Endof2ndMWpulse[9] , \gatedcount[6] , \Endof2ndMWpulse[6] , 
            \gatedcount[7] , \Endof2ndMWpulse[7] , \gatedcount[4] , \Endof2ndMWpulse[4] , 
            \gatedcount[5] , \Endof2ndMWpulse[5] , \gatedcount[2] , \Endof2ndMWpulse[2] , 
            \gatedcount[3] , \Endof2ndMWpulse[3] , \gatedcount[1] , \Endof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n423;
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
    
    
    wire n1812, n1811, n1810, n1809, n1808, n1807, n1806, n1805;
    
    CCU2D sub_225_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1812), .S0(n423));
    defparam sub_225_add_2_cout.INIT0 = 16'h0000;
    defparam sub_225_add_2_cout.INIT1 = 16'h0000;
    defparam sub_225_add_2_cout.INJECT1_0 = "NO";
    defparam sub_225_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_16 (.A0(\gatedcount[14] ), .B0(\Endof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Endof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1811), .COUT(n1812));
    defparam sub_225_add_2_16.INIT0 = 16'h5999;
    defparam sub_225_add_2_16.INIT1 = 16'h5999;
    defparam sub_225_add_2_16.INJECT1_0 = "NO";
    defparam sub_225_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_14 (.A0(\gatedcount[12] ), .B0(\Endof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Endof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1810), .COUT(n1811));
    defparam sub_225_add_2_14.INIT0 = 16'h5999;
    defparam sub_225_add_2_14.INIT1 = 16'h5999;
    defparam sub_225_add_2_14.INJECT1_0 = "NO";
    defparam sub_225_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_12 (.A0(\gatedcount[10] ), .B0(\Endof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Endof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1809), .COUT(n1810));
    defparam sub_225_add_2_12.INIT0 = 16'h5999;
    defparam sub_225_add_2_12.INIT1 = 16'h5999;
    defparam sub_225_add_2_12.INJECT1_0 = "NO";
    defparam sub_225_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_10 (.A0(\gatedcount[8] ), .B0(\Endof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Endof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1808), .COUT(n1809));
    defparam sub_225_add_2_10.INIT0 = 16'h5999;
    defparam sub_225_add_2_10.INIT1 = 16'h5999;
    defparam sub_225_add_2_10.INJECT1_0 = "NO";
    defparam sub_225_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_8 (.A0(\gatedcount[6] ), .B0(\Endof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Endof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1807), .COUT(n1808));
    defparam sub_225_add_2_8.INIT0 = 16'h5999;
    defparam sub_225_add_2_8.INIT1 = 16'h5999;
    defparam sub_225_add_2_8.INJECT1_0 = "NO";
    defparam sub_225_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_6 (.A0(\gatedcount[4] ), .B0(\Endof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Endof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1806), .COUT(n1807));
    defparam sub_225_add_2_6.INIT0 = 16'h5999;
    defparam sub_225_add_2_6.INIT1 = 16'h5999;
    defparam sub_225_add_2_6.INJECT1_0 = "NO";
    defparam sub_225_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_4 (.A0(\gatedcount[2] ), .B0(\Endof2ndMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Endof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1805), .COUT(n1806));
    defparam sub_225_add_2_4.INIT0 = 16'h5999;
    defparam sub_225_add_2_4.INIT1 = 16'h5999;
    defparam sub_225_add_2_4.INJECT1_0 = "NO";
    defparam sub_225_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_225_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(\Endof2ndMWpulse[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n1805));
    defparam sub_225_add_2_2.INIT0 = 16'h0000;
    defparam sub_225_add_2_2.INIT1 = 16'h5999;
    defparam sub_225_add_2_2.INJECT1_0 = "NO";
    defparam sub_225_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U11
//

module comparator_U11 (GND_net, pi2started, gatedcount, \Startof2ndMWpulse[14] , 
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
    
    
    wire n1852, n1851, n1850, n1849, n1848, n1847, n1846, n1845;
    
    CCU2D sub_223_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1852), .S0(pi2started));
    defparam sub_223_add_2_cout.INIT0 = 16'h0000;
    defparam sub_223_add_2_cout.INIT1 = 16'h0000;
    defparam sub_223_add_2_cout.INJECT1_0 = "NO";
    defparam sub_223_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_16 (.A0(gatedcount[14]), .B0(\Startof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Startof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1851), .COUT(n1852));
    defparam sub_223_add_2_16.INIT0 = 16'h5999;
    defparam sub_223_add_2_16.INIT1 = 16'h5999;
    defparam sub_223_add_2_16.INJECT1_0 = "NO";
    defparam sub_223_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_14 (.A0(gatedcount[12]), .B0(\Startof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Startof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1850), .COUT(n1851));
    defparam sub_223_add_2_14.INIT0 = 16'h5999;
    defparam sub_223_add_2_14.INIT1 = 16'h5999;
    defparam sub_223_add_2_14.INJECT1_0 = "NO";
    defparam sub_223_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_12 (.A0(gatedcount[10]), .B0(\Startof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Startof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1849), .COUT(n1850));
    defparam sub_223_add_2_12.INIT0 = 16'h5999;
    defparam sub_223_add_2_12.INIT1 = 16'h5999;
    defparam sub_223_add_2_12.INJECT1_0 = "NO";
    defparam sub_223_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_10 (.A0(gatedcount[8]), .B0(\Startof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Startof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1848), .COUT(n1849));
    defparam sub_223_add_2_10.INIT0 = 16'h5999;
    defparam sub_223_add_2_10.INIT1 = 16'h5999;
    defparam sub_223_add_2_10.INJECT1_0 = "NO";
    defparam sub_223_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_8 (.A0(gatedcount[6]), .B0(\Startof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Startof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1847), .COUT(n1848));
    defparam sub_223_add_2_8.INIT0 = 16'h5999;
    defparam sub_223_add_2_8.INIT1 = 16'h5999;
    defparam sub_223_add_2_8.INJECT1_0 = "NO";
    defparam sub_223_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_6 (.A0(gatedcount[4]), .B0(\Startof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Startof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1846), .COUT(n1847));
    defparam sub_223_add_2_6.INIT0 = 16'h5999;
    defparam sub_223_add_2_6.INIT1 = 16'h5999;
    defparam sub_223_add_2_6.INJECT1_0 = "NO";
    defparam sub_223_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_4 (.A0(\Endof1stMWpulse[2] ), .B0(\AdjustableFreePrecession[2] ), 
          .C0(gatedcount[2]), .D0(GND_net), .A1(gatedcount[3]), .B1(\Startof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1845), .COUT(n1846));
    defparam sub_223_add_2_4.INIT0 = 16'h6969;
    defparam sub_223_add_2_4.INIT1 = 16'h5999;
    defparam sub_223_add_2_4.INJECT1_0 = "NO";
    defparam sub_223_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_223_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n1845));
    defparam sub_223_add_2_2.INIT0 = 16'h5000;
    defparam sub_223_add_2_2.INIT1 = 16'h5999;
    defparam sub_223_add_2_2.INJECT1_0 = "NO";
    defparam sub_223_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U12
//

module comparator_U12 (n1920, n385, n1606, n22, gatedcount, n21, 
            GND_net, \Endof1stMWpulse[14] , \Endof1stMWpulse[15] , \Endof1stMWpulse[12] , 
            \Endof1stMWpulse[13] , \Endof1stMWpulse[10] , \Endof1stMWpulse[11] , 
            \Endof1stMWpulse[8] , \Endof1stMWpulse[9] , \Endof1stMWpulse[6] , 
            \Endof1stMWpulse[7] , \Endof1stMWpulse[4] , \Endof1stMWpulse[5] , 
            \Endof1stMWpulse[2] , \Endof1stMWpulse[3] , \Startof2ndMWpulse[1] ) /* synthesis syn_module_defined=1 */ ;
    input n1920;
    output n385;
    input n1606;
    output n22;
    input [15:0]gatedcount;
    output n21;
    input GND_net;
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
    
    
    wire n4, n1820, n1819, n1818, n1817, n1816, n1815, n1814, 
        n1813;
    
    LUT4 i1_3_lut (.A(n1920), .B(n385), .C(n1606), .Z(n22)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam i1_3_lut.init = 16'hcdcd;
    LUT4 i1_4_lut (.A(gatedcount[1]), .B(gatedcount[5]), .C(n4), .D(gatedcount[2]), 
         .Z(n21)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    defparam i1_4_lut.init = 16'hfcec;
    CCU2D sub_221_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1820), .S0(n385));
    defparam sub_221_add_2_cout.INIT0 = 16'h0000;
    defparam sub_221_add_2_cout.INIT1 = 16'h0000;
    defparam sub_221_add_2_cout.INJECT1_0 = "NO";
    defparam sub_221_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_221_add_2_16 (.A0(gatedcount[14]), .B0(\Endof1stMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof1stMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1819), .COUT(n1820));
    defparam sub_221_add_2_16.INIT0 = 16'h5999;
    defparam sub_221_add_2_16.INIT1 = 16'h5999;
    defparam sub_221_add_2_16.INJECT1_0 = "NO";
    defparam sub_221_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_221_add_2_14 (.A0(gatedcount[12]), .B0(\Endof1stMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof1stMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1818), .COUT(n1819));
    defparam sub_221_add_2_14.INIT0 = 16'h5999;
    defparam sub_221_add_2_14.INIT1 = 16'h5999;
    defparam sub_221_add_2_14.INJECT1_0 = "NO";
    defparam sub_221_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_221_add_2_12 (.A0(gatedcount[10]), .B0(\Endof1stMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof1stMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1817), .COUT(n1818));
    defparam sub_221_add_2_12.INIT0 = 16'h5999;
    defparam sub_221_add_2_12.INIT1 = 16'h5999;
    defparam sub_221_add_2_12.INJECT1_0 = "NO";
    defparam sub_221_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_221_add_2_10 (.A0(gatedcount[8]), .B0(\Endof1stMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof1stMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1816), .COUT(n1817));
    defparam sub_221_add_2_10.INIT0 = 16'h5999;
    defparam sub_221_add_2_10.INIT1 = 16'h5999;
    defparam sub_221_add_2_10.INJECT1_0 = "NO";
    defparam sub_221_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_221_add_2_8 (.A0(gatedcount[6]), .B0(\Endof1stMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof1stMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1815), .COUT(n1816));
    defparam sub_221_add_2_8.INIT0 = 16'h5999;
    defparam sub_221_add_2_8.INIT1 = 16'h5999;
    defparam sub_221_add_2_8.INJECT1_0 = "NO";
    defparam sub_221_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_221_add_2_6 (.A0(gatedcount[4]), .B0(\Endof1stMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof1stMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1814), .COUT(n1815));
    defparam sub_221_add_2_6.INIT0 = 16'h5999;
    defparam sub_221_add_2_6.INIT1 = 16'h5999;
    defparam sub_221_add_2_6.INJECT1_0 = "NO";
    defparam sub_221_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_221_add_2_4 (.A0(gatedcount[2]), .B0(\Endof1stMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof1stMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n1813), .COUT(n1814));
    defparam sub_221_add_2_4.INIT0 = 16'h5999;
    defparam sub_221_add_2_4.INIT1 = 16'h5999;
    defparam sub_221_add_2_4.INJECT1_0 = "NO";
    defparam sub_221_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_221_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n1813));
    defparam sub_221_add_2_2.INIT0 = 16'h5000;
    defparam sub_221_add_2_2.INIT1 = 16'h5999;
    defparam sub_221_add_2_2.INJECT1_0 = "NO";
    defparam sub_221_add_2_2.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(gatedcount[3]), .B(gatedcount[4]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    defparam i1_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module n_state_machine
//

module n_state_machine (SMstate, n1985, sample_output_N_48, sampled_modebutton, 
            n1) /* synthesis syn_module_defined=1 */ ;
    output [2:0]SMstate;
    input n1985;
    output sample_output_N_48;
    input sampled_modebutton;
    input n1;
    
    wire sampled_modebutton /* synthesis SET_AS_NETWORK=sampled_modebutton, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[6:24])
    
    wire state_2__N_193;
    wire [2:0]n17;
    
    LUT4 i1_4_lut (.A(SMstate[0]), .B(n1985), .C(SMstate[1]), .D(SMstate[2]), 
         .Z(sample_output_N_48)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i1_4_lut.init = 16'hfaee;
    FD1S3IX state_289__i2 (.D(n17[2]), .CK(sampled_modebutton), .CD(state_2__N_193), 
            .Q(SMstate[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_289__i2.GSR = "ENABLED";
    FD1S3IX state_289__i1 (.D(n17[1]), .CK(sampled_modebutton), .CD(state_2__N_193), 
            .Q(SMstate[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_289__i1.GSR = "ENABLED";
    LUT4 i641_2_lut (.A(SMstate[1]), .B(SMstate[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i641_2_lut.init = 16'h6666;
    FD1S3IX state_289__i0 (.D(n1), .CK(sampled_modebutton), .CD(state_2__N_193), 
            .Q(SMstate[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_289__i0.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut (.A(SMstate[1]), .B(SMstate[0]), .C(SMstate[2]), 
         .Z(state_2__N_193)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i648_2_lut_3_lut (.A(SMstate[1]), .B(SMstate[0]), .C(SMstate[2]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i648_2_lut_3_lut.init = 16'h7878;
    
endmodule
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
    
    wire n1768, n1767, n1766, n1765, n1764, n1763, n1762, n1761, 
        n1760, n1759, n1758;
    
    FD1S3AX count_288__i0 (.D(n97[0]), .CK(clk_2M5), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i0.GSR = "ENABLED";
    CCU2D count_288_add_4_23 (.A0(medium_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1768), .S0(n97[21]), .S1(n97[22]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_23.INIT0 = 16'hfaaa;
    defparam count_288_add_4_23.INIT1 = 16'hfaaa;
    defparam count_288_add_4_23.INJECT1_0 = "NO";
    defparam count_288_add_4_23.INJECT1_1 = "NO";
    CCU2D count_288_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1767), .COUT(n1768), .S0(n97[19]), .S1(n97[20]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_21.INIT0 = 16'hfaaa;
    defparam count_288_add_4_21.INIT1 = 16'hfaaa;
    defparam count_288_add_4_21.INJECT1_0 = "NO";
    defparam count_288_add_4_21.INJECT1_1 = "NO";
    CCU2D count_288_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1766), .COUT(n1767), .S0(n97[17]), .S1(n97[18]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_19.INIT0 = 16'hfaaa;
    defparam count_288_add_4_19.INIT1 = 16'hfaaa;
    defparam count_288_add_4_19.INJECT1_0 = "NO";
    defparam count_288_add_4_19.INJECT1_1 = "NO";
    CCU2D count_288_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1765), .COUT(n1766), .S0(n97[15]), .S1(n97[16]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_17.INIT0 = 16'hfaaa;
    defparam count_288_add_4_17.INIT1 = 16'hfaaa;
    defparam count_288_add_4_17.INJECT1_0 = "NO";
    defparam count_288_add_4_17.INJECT1_1 = "NO";
    CCU2D count_288_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1764), .COUT(n1765), .S0(n97[13]), .S1(n97[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_15.INIT0 = 16'hfaaa;
    defparam count_288_add_4_15.INIT1 = 16'hfaaa;
    defparam count_288_add_4_15.INJECT1_0 = "NO";
    defparam count_288_add_4_15.INJECT1_1 = "NO";
    CCU2D count_288_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1763), .COUT(n1764), .S0(n97[11]), .S1(n97[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_13.INIT0 = 16'hfaaa;
    defparam count_288_add_4_13.INIT1 = 16'hfaaa;
    defparam count_288_add_4_13.INJECT1_0 = "NO";
    defparam count_288_add_4_13.INJECT1_1 = "NO";
    CCU2D count_288_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1762), .COUT(n1763), .S0(n97[9]), .S1(n97[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_11.INIT0 = 16'hfaaa;
    defparam count_288_add_4_11.INIT1 = 16'hfaaa;
    defparam count_288_add_4_11.INJECT1_0 = "NO";
    defparam count_288_add_4_11.INJECT1_1 = "NO";
    CCU2D count_288_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1761), .COUT(n1762), .S0(n97[7]), .S1(n97[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_9.INIT0 = 16'hfaaa;
    defparam count_288_add_4_9.INIT1 = 16'hfaaa;
    defparam count_288_add_4_9.INJECT1_0 = "NO";
    defparam count_288_add_4_9.INJECT1_1 = "NO";
    CCU2D count_288_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1760), .COUT(n1761), .S0(n97[5]), .S1(n97[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_7.INIT0 = 16'hfaaa;
    defparam count_288_add_4_7.INIT1 = 16'hfaaa;
    defparam count_288_add_4_7.INJECT1_0 = "NO";
    defparam count_288_add_4_7.INJECT1_1 = "NO";
    CCU2D count_288_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1759), .COUT(n1760), .S0(n97[3]), .S1(n97[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_5.INIT0 = 16'hfaaa;
    defparam count_288_add_4_5.INIT1 = 16'hfaaa;
    defparam count_288_add_4_5.INJECT1_0 = "NO";
    defparam count_288_add_4_5.INJECT1_1 = "NO";
    CCU2D count_288_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1758), .COUT(n1759), .S0(n97[1]), .S1(n97[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_3.INIT0 = 16'hfaaa;
    defparam count_288_add_4_3.INIT1 = 16'hfaaa;
    defparam count_288_add_4_3.INJECT1_0 = "NO";
    defparam count_288_add_4_3.INJECT1_1 = "NO";
    CCU2D count_288_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1758), .S1(n97[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288_add_4_1.INIT0 = 16'hF000;
    defparam count_288_add_4_1.INIT1 = 16'h0555;
    defparam count_288_add_4_1.INJECT1_0 = "NO";
    defparam count_288_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_288__i22 (.D(n97[22]), .CK(clk_2M5), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i22.GSR = "ENABLED";
    FD1S3AX count_288__i21 (.D(n97[21]), .CK(clk_2M5), .Q(medium_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i21.GSR = "ENABLED";
    FD1S3AX count_288__i20 (.D(n97[20]), .CK(clk_2M5), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i20.GSR = "ENABLED";
    FD1S3AX count_288__i19 (.D(n97[19]), .CK(clk_2M5), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i19.GSR = "ENABLED";
    FD1S3AX count_288__i18 (.D(n97[18]), .CK(clk_2M5), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i18.GSR = "ENABLED";
    FD1S3AX count_288__i17 (.D(n97[17]), .CK(clk_2M5), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i17.GSR = "ENABLED";
    FD1S3AX count_288__i16 (.D(n97[16]), .CK(clk_2M5), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i16.GSR = "ENABLED";
    FD1S3AX count_288__i15 (.D(n97[15]), .CK(clk_2M5), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i15.GSR = "ENABLED";
    FD1S3AX count_288__i14 (.D(n97[14]), .CK(clk_2M5), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i14.GSR = "ENABLED";
    FD1S3AX count_288__i13 (.D(n97[13]), .CK(clk_2M5), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i13.GSR = "ENABLED";
    FD1S3AX count_288__i12 (.D(n97[12]), .CK(clk_2M5), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i12.GSR = "ENABLED";
    FD1S3AX count_288__i11 (.D(n97[11]), .CK(clk_2M5), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i11.GSR = "ENABLED";
    FD1S3AX count_288__i10 (.D(n97[10]), .CK(clk_2M5), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i10.GSR = "ENABLED";
    FD1S3AX count_288__i9 (.D(n97[9]), .CK(clk_2M5), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i9.GSR = "ENABLED";
    FD1S3AX count_288__i8 (.D(n97[8]), .CK(clk_2M5), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i8.GSR = "ENABLED";
    FD1S3AX count_288__i7 (.D(n97[7]), .CK(clk_2M5), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i7.GSR = "ENABLED";
    FD1S3AX count_288__i6 (.D(n97[6]), .CK(clk_2M5), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i6.GSR = "ENABLED";
    FD1S3AX count_288__i5 (.D(n97[5]), .CK(clk_2M5), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i5.GSR = "ENABLED";
    FD1S3AX count_288__i4 (.D(n97[4]), .CK(clk_2M5), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i4.GSR = "ENABLED";
    FD1S3AX count_288__i3 (.D(n97[3]), .CK(clk_2M5), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i3.GSR = "ENABLED";
    FD1S3AX count_288__i2 (.D(n97[2]), .CK(clk_2M5), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i2.GSR = "ENABLED";
    FD1S3AX count_288__i1 (.D(n97[1]), .CK(clk_2M5), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_288__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module clocks
//

module clocks (clk_2M5_N_67, clk_2M5, tenmegclock_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_2M5_N_67;
    output clk_2M5;
    input tenmegclock_c;
    input GND_net;
    
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
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
    
    wire clk_2M5_N_67 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(28[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire tenmegclock_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    
    wire CLKFB_t;
    
    INV i787 (.A(clk_2M5), .Z(clk_2M5_N_67));
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

