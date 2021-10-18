set_global_assignment -entity "test_pll" -library "lib_test_pll" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "test_pll" -library "lib_test_pll" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "test_pll" -library "lib_test_pll" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_test_pll" -name SPD_FILE [file join $::quartus(sip_path) "test_pll.spd"]

set_global_assignment -library "lib_test_pll" -name MISC_FILE [file join $::quartus(sip_path) "test_pll_sim/test_pll.vho"]
