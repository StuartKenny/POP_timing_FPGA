[ActiveSupport PAR]
; Global primary clocks
GLOBAL_PRIMARY_USED = 5;
; Global primary clock #0
GLOBAL_PRIMARY_0_SIGNALNAME = clk_2M5;
GLOBAL_PRIMARY_0_DRIVERTYPE = PLL;
GLOBAL_PRIMARY_0_LOADNUM = 34;
; Global primary clock #1
GLOBAL_PRIMARY_1_SIGNALNAME = jtaghub16_jtck;
GLOBAL_PRIMARY_1_DRIVERTYPE = JTAG;
GLOBAL_PRIMARY_1_LOADNUM = 126;
; Global primary clock #2
GLOBAL_PRIMARY_2_SIGNALNAME = clk_debug_keep_keep_2;
GLOBAL_PRIMARY_2_DRIVERTYPE = OSC;
GLOBAL_PRIMARY_2_LOADNUM = 111;
; Global primary clock #3
GLOBAL_PRIMARY_3_SIGNALNAME = pieovertwo_minus;
GLOBAL_PRIMARY_3_DRIVERTYPE = SLICE;
GLOBAL_PRIMARY_3_LOADNUM = 32;
; Global primary clock #4
GLOBAL_PRIMARY_4_SIGNALNAME = freeprecess_minus;
GLOBAL_PRIMARY_4_DRIVERTYPE = SLICE;
GLOBAL_PRIMARY_4_LOADNUM = 32;
; # of global secondary clocks
GLOBAL_SECONDARY_USED = 7;
; Global secondary clock #0
GLOBAL_SECONDARY_0_SIGNALNAME = debounce_pulse;
GLOBAL_SECONDARY_0_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_0_LOADNUM = 7;
GLOBAL_SECONDARY_0_SIGTYPE = CLK;
; Global secondary clock #1
GLOBAL_SECONDARY_1_SIGNALNAME = jtaghub16_jrstn;
GLOBAL_SECONDARY_1_DRIVERTYPE = JTAG;
GLOBAL_SECONDARY_1_LOADNUM = 126;
GLOBAL_SECONDARY_1_SIGTYPE = RST;
; Global secondary clock #2
GLOBAL_SECONDARY_2_SIGNALNAME = jtaghub16_ip_enable0;
GLOBAL_SECONDARY_2_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_2_LOADNUM = 31;
GLOBAL_SECONDARY_2_SIGTYPE = CE;
; Global secondary clock #3
GLOBAL_SECONDARY_3_SIGNALNAME = TinyFPGA_A2_reveal_coretop_instance/tinyfpga_a2_la0_inst_0/n9978;
GLOBAL_SECONDARY_3_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_3_LOADNUM = 102;
GLOBAL_SECONDARY_3_SIGTYPE = RST;
; Global secondary clock #4
GLOBAL_SECONDARY_4_SIGNALNAME = TinyFPGA_A2_reveal_coretop_instance/tinyfpga_a2_la0_inst_0/jtag_int_u/jtck_N_424_enable_81;
GLOBAL_SECONDARY_4_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_4_LOADNUM = 14;
GLOBAL_SECONDARY_4_SIGTYPE = CE;
; Global secondary clock #5
GLOBAL_SECONDARY_5_SIGNALNAME = TinyFPGA_A2_reveal_coretop_instance/tinyfpga_a2_la0_inst_0/jtag_int_u/jtck_N_424_enable_67;
GLOBAL_SECONDARY_5_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_5_LOADNUM = 11;
GLOBAL_SECONDARY_5_SIGTYPE = CE;
; Global secondary clock #6
GLOBAL_SECONDARY_6_SIGNALNAME = xo2chub/er1_shift_reg8;
GLOBAL_SECONDARY_6_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_6_LOADNUM = 10;
GLOBAL_SECONDARY_6_SIGTYPE = CE;
; I/O Bank 0 Usage
BANK_0_USED = 5;
BANK_0_AVAIL = 9;
BANK_0_VCCIO = 3.3V;
BANK_0_VREF1 = NA;
; I/O Bank 1 Usage
BANK_1_USED = 2;
BANK_1_AVAIL = 2;
BANK_1_VCCIO = 3.3V;
BANK_1_VREF1 = NA;
; I/O Bank 2 Usage
BANK_2_USED = 9;
BANK_2_AVAIL = 9;
BANK_2_VCCIO = 3.3V;
BANK_2_VREF1 = NA;
; I/O Bank 3 Usage
BANK_3_USED = 2;
BANK_3_AVAIL = 2;
BANK_3_VCCIO = 3.3V;
BANK_3_VREF1 = NA;
