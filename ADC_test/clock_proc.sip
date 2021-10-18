set_global_assignment -entity "clock_proc" -library "lib_clock_proc" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "clock_proc" -library "lib_clock_proc" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "clock_proc" -library "lib_clock_proc" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_clock_proc" -name SPD_FILE [file join $::quartus(sip_path) "clock_proc.spd"]

set_global_assignment -library "lib_clock_proc" -name MISC_FILE [file join $::quartus(sip_path) "clock_proc_sim/clock_proc.vho"]
