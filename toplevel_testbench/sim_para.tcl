lappend auto_path "C:/Program Files/Lattice/diamond/3.12/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO2}
set ::bali::simulation::Para(PROJECT) {toplevel_testbench}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/ShifT/GitHub/POP_timing_FPGA}
set ::bali::simulation::Para(FILELIST) {"C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/wrapper.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/extensions.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/compare_n.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/count_n.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/POPtimers.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/clocks.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/top_testbench.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/comparator_testbench.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/PLL_testbench.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/POPtimers_testbench.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/wrapper_testbench.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/extensions_testbench.v" "C:/Users/ShifT/GitHub/POP_timing_FPGA/POP_timers_AX2/source/count_testbench.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(LANGSTDLIST) {"Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {top_testbench}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {C:/Program Files/Lattice/diamond/3.12}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
