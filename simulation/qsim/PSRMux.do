onerror {exit -code 1}
vlib work
vlog -work work PSRMux.vo
vlog -work work PSRMux.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.PSRMux_vlg_vec_tst -voptargs="+acc"
vcd file -direction PSRMux.msim.vcd
vcd add -internal PSRMux_vlg_vec_tst/*
vcd add -internal PSRMux_vlg_vec_tst/i1/*
run -all
quit -f
