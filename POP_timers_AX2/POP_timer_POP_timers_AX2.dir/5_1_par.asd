[ActiveSupport PAR]
; Global primary clocks
GLOBAL_PRIMARY_USED = 1;
; Global primary clock #0
GLOBAL_PRIMARY_0_SIGNALNAME = clk_2M5;
GLOBAL_PRIMARY_0_DRIVERTYPE = PLL;
GLOBAL_PRIMARY_0_LOADNUM = 39;
; # of global secondary clocks
GLOBAL_SECONDARY_USED = 4;
; Global secondary clock #0
GLOBAL_SECONDARY_0_SIGNALNAME = debounce_pulse;
GLOBAL_SECONDARY_0_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_0_LOADNUM = 7;
GLOBAL_SECONDARY_0_SIGTYPE = CLK;
; Global secondary clock #1
GLOBAL_SECONDARY_1_SIGNALNAME = load_defaults;
GLOBAL_SECONDARY_1_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_1_LOADNUM = 20;
GLOBAL_SECONDARY_1_SIGTYPE = RST;
; Global secondary clock #2
GLOBAL_SECONDARY_2_SIGNALNAME = POPtimers/piecounter/trigger;
GLOBAL_SECONDARY_2_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_2_LOADNUM = 9;
GLOBAL_SECONDARY_2_SIGTYPE = CLK;
; Global secondary clock #3
GLOBAL_SECONDARY_3_SIGNALNAME = POPtimers/freepcounter/trigger;
GLOBAL_SECONDARY_3_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_3_LOADNUM = 8;
GLOBAL_SECONDARY_3_SIGTYPE = CLK;
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
BANK_2_USED = 8;
BANK_2_AVAIL = 9;
BANK_2_VCCIO = 3.3V;
BANK_2_VREF1 = NA;
; I/O Bank 3 Usage
BANK_3_USED = 2;
BANK_3_AVAIL = 2;
BANK_3_VCCIO = 3.3V;
BANK_3_VREF1 = NA;
