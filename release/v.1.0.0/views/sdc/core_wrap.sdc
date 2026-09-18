###############################################################################
# Created by write_sdc
###############################################################################
current_design core_wrap
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk_sys -period 13.0000 [get_ports {clk_i}]
set_clock_transition 0.2000 [get_clocks {clk_sys}]
set_clock_uncertainty 0.1000 clk_sys
set_propagated_clock [get_clocks {clk_sys}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[0]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[0]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[10]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[10]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[11]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[11]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[12]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[12]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[13]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[13]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[14]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[14]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[15]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[15]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[16]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[16]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[17]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[17]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[18]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[18]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[19]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[19]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[1]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[1]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[20]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[20]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[21]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[21]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[22]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[22]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[23]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[23]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[24]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[24]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[25]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[25]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[26]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[26]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[27]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[27]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[28]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[28]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[29]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[29]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[2]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[2]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[30]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[30]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[31]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[31]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[3]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[3]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[4]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[4]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[5]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[5]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[6]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[6]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[7]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[7]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[8]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[8]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {boot_addr_i[9]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {boot_addr_i[9]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_err_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_err_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_gnt_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_gnt_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[0]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[0]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[10]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[10]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[11]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[11]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[12]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[12]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[13]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[13]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[14]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[14]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[15]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[15]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[16]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[16]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[17]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[17]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[18]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[18]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[19]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[19]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[1]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[1]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[20]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[20]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[21]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[21]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[22]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[22]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[23]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[23]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[24]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[24]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[25]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[25]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[26]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[26]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[27]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[27]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[28]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[28]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[29]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[29]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[2]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[2]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[30]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[30]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[31]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[31]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[3]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[3]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[4]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[4]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[5]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[5]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[6]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[6]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[7]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[7]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[8]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[8]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rdata_i[9]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rdata_i[9]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_rvalid_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_rvalid_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {debug_req_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {debug_req_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {fetch_enable_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {fetch_enable_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_err_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_err_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_gnt_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_gnt_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[0]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[0]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[10]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[10]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[11]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[11]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[12]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[12]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[13]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[13]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[14]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[14]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[15]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[15]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[16]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[16]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[17]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[17]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[18]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[18]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[19]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[19]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[1]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[1]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[20]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[20]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[21]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[21]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[22]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[22]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[23]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[23]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[24]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[24]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[25]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[25]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[26]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[26]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[27]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[27]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[28]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[28]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[29]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[29]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[2]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[2]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[30]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[30]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[31]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[31]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[3]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[3]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[4]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[4]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[5]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[5]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[6]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[6]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[7]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[7]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[8]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[8]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rdata_i[9]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rdata_i[9]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_rvalid_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_rvalid_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[0]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[0]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[10]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[10]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[11]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[11]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[12]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[12]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[13]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[13]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[14]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[14]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[15]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[15]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[1]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[1]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[2]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[2]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[3]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[3]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[4]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[4]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[5]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[5]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[6]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[6]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[7]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[7]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[8]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[8]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irqs_i[9]}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irqs_i[9]}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {software_irq_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {software_irq_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {test_enable_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {test_enable_i}]
set_input_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {timer_irq_i}]
set_input_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {timer_irq_i}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {core_busy_o}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {core_busy_o}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[0]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[0]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[10]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[10]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[11]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[11]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[12]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[12]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[13]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[13]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[14]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[14]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[15]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[15]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[16]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[16]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[17]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[17]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[18]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[18]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[19]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[19]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[1]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[1]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[20]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[20]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[21]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[21]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[22]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[22]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[23]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[23]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[24]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[24]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[25]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[25]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[26]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[26]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[27]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[27]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[28]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[28]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[29]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[29]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[2]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[2]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[30]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[30]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[31]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[31]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[3]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[3]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[4]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[4]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[5]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[5]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[6]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[6]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[7]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[7]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[8]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[8]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_addr_o[9]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_addr_o[9]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_be_o[0]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_be_o[0]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_be_o[1]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_be_o[1]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_be_o[2]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_be_o[2]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_be_o[3]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_be_o[3]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_req_o}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_req_o}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[0]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[0]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[10]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[10]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[11]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[11]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[12]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[12]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[13]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[13]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[14]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[14]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[15]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[15]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[16]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[16]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[17]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[17]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[18]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[18]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[19]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[19]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[1]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[1]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[20]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[20]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[21]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[21]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[22]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[22]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[23]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[23]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[24]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[24]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[25]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[25]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[26]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[26]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[27]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[27]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[28]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[28]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[29]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[29]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[2]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[2]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[30]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[30]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[31]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[31]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[3]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[3]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[4]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[4]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[5]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[5]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[6]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[6]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[7]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[7]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[8]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[8]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_wdata_o[9]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_wdata_o[9]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {data_we_o}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {data_we_o}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[0]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[0]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[10]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[10]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[11]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[11]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[12]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[12]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[13]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[13]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[14]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[14]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[15]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[15]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[16]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[16]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[17]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[17]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[18]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[18]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[19]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[19]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[1]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[1]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[20]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[20]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[21]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[21]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[22]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[22]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[23]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[23]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[24]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[24]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[25]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[25]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[26]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[26]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[27]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[27]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[28]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[28]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[29]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[29]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[2]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[2]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[30]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[30]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[31]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[31]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[3]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[3]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[4]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[4]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[5]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[5]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[6]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[6]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[7]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[7]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[8]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[8]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_addr_o[9]}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_addr_o[9]}]
set_output_delay 2.6000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {instr_req_o}]
set_output_delay 3.9000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {instr_req_o}]
set_max_delay\
    -from [list [get_ports {boot_addr_i[0]}]\
           [get_ports {boot_addr_i[10]}]\
           [get_ports {boot_addr_i[11]}]\
           [get_ports {boot_addr_i[12]}]\
           [get_ports {boot_addr_i[13]}]\
           [get_ports {boot_addr_i[14]}]\
           [get_ports {boot_addr_i[15]}]\
           [get_ports {boot_addr_i[16]}]\
           [get_ports {boot_addr_i[17]}]\
           [get_ports {boot_addr_i[18]}]\
           [get_ports {boot_addr_i[19]}]\
           [get_ports {boot_addr_i[1]}]\
           [get_ports {boot_addr_i[20]}]\
           [get_ports {boot_addr_i[21]}]\
           [get_ports {boot_addr_i[22]}]\
           [get_ports {boot_addr_i[23]}]\
           [get_ports {boot_addr_i[24]}]\
           [get_ports {boot_addr_i[25]}]\
           [get_ports {boot_addr_i[26]}]\
           [get_ports {boot_addr_i[27]}]\
           [get_ports {boot_addr_i[28]}]\
           [get_ports {boot_addr_i[29]}]\
           [get_ports {boot_addr_i[2]}]\
           [get_ports {boot_addr_i[30]}]\
           [get_ports {boot_addr_i[31]}]\
           [get_ports {boot_addr_i[3]}]\
           [get_ports {boot_addr_i[4]}]\
           [get_ports {boot_addr_i[5]}]\
           [get_ports {boot_addr_i[6]}]\
           [get_ports {boot_addr_i[7]}]\
           [get_ports {boot_addr_i[8]}]\
           [get_ports {boot_addr_i[9]}]\
           [get_ports {fetch_enable_i}]\
           [get_ports {irqs_i[0]}]\
           [get_ports {irqs_i[10]}]\
           [get_ports {irqs_i[11]}]\
           [get_ports {irqs_i[12]}]\
           [get_ports {irqs_i[13]}]\
           [get_ports {irqs_i[14]}]\
           [get_ports {irqs_i[15]}]\
           [get_ports {irqs_i[1]}]\
           [get_ports {irqs_i[2]}]\
           [get_ports {irqs_i[3]}]\
           [get_ports {irqs_i[4]}]\
           [get_ports {irqs_i[5]}]\
           [get_ports {irqs_i[6]}]\
           [get_ports {irqs_i[7]}]\
           [get_ports {irqs_i[8]}]\
           [get_ports {irqs_i[9]}]\
           [get_ports {rst_ni}]\
           [get_ports {software_irq_i}]\
           [get_ports {test_enable_i}]\
           [get_ports {timer_irq_i}]] 13.0000
set_false_path -hold\
    -from [list [get_ports {boot_addr_i[0]}]\
           [get_ports {boot_addr_i[10]}]\
           [get_ports {boot_addr_i[11]}]\
           [get_ports {boot_addr_i[12]}]\
           [get_ports {boot_addr_i[13]}]\
           [get_ports {boot_addr_i[14]}]\
           [get_ports {boot_addr_i[15]}]\
           [get_ports {boot_addr_i[16]}]\
           [get_ports {boot_addr_i[17]}]\
           [get_ports {boot_addr_i[18]}]\
           [get_ports {boot_addr_i[19]}]\
           [get_ports {boot_addr_i[1]}]\
           [get_ports {boot_addr_i[20]}]\
           [get_ports {boot_addr_i[21]}]\
           [get_ports {boot_addr_i[22]}]\
           [get_ports {boot_addr_i[23]}]\
           [get_ports {boot_addr_i[24]}]\
           [get_ports {boot_addr_i[25]}]\
           [get_ports {boot_addr_i[26]}]\
           [get_ports {boot_addr_i[27]}]\
           [get_ports {boot_addr_i[28]}]\
           [get_ports {boot_addr_i[29]}]\
           [get_ports {boot_addr_i[2]}]\
           [get_ports {boot_addr_i[30]}]\
           [get_ports {boot_addr_i[31]}]\
           [get_ports {boot_addr_i[3]}]\
           [get_ports {boot_addr_i[4]}]\
           [get_ports {boot_addr_i[5]}]\
           [get_ports {boot_addr_i[6]}]\
           [get_ports {boot_addr_i[7]}]\
           [get_ports {boot_addr_i[8]}]\
           [get_ports {boot_addr_i[9]}]\
           [get_ports {fetch_enable_i}]\
           [get_ports {irqs_i[0]}]\
           [get_ports {irqs_i[10]}]\
           [get_ports {irqs_i[11]}]\
           [get_ports {irqs_i[12]}]\
           [get_ports {irqs_i[13]}]\
           [get_ports {irqs_i[14]}]\
           [get_ports {irqs_i[15]}]\
           [get_ports {irqs_i[1]}]\
           [get_ports {irqs_i[2]}]\
           [get_ports {irqs_i[3]}]\
           [get_ports {irqs_i[4]}]\
           [get_ports {irqs_i[5]}]\
           [get_ports {irqs_i[6]}]\
           [get_ports {irqs_i[7]}]\
           [get_ports {irqs_i[8]}]\
           [get_ports {irqs_i[9]}]\
           [get_ports {rst_ni}]\
           [get_ports {software_irq_i}]\
           [get_ports {test_enable_i}]\
           [get_ports {timer_irq_i}]]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
