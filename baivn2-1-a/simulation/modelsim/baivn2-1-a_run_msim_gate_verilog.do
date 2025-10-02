transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {baivn2-1-a.vo}

vlog -vlog01compat -work work +incdir+D:/fpga_vhdl/baivn2-1-a {D:/fpga_vhdl/baivn2-1-a/testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  comp_8bit_parallel_tb

add wave *
view structure
view signals
run -all
