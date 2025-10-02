transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/fpga_vhdl/baivn2-1-a {D:/fpga_vhdl/baivn2-1-a/comp_8bit_parallel.v}

