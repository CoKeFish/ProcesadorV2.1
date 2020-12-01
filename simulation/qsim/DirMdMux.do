onerror {exit -code 1}
vlib work
vlog -work work DirMdMux.vo
vlog -work work DirMdMux.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DirMdMux_vlg_vec_tst -voptargs="+acc"
vcd file -direction DirMdMux.msim.vcd
vcd add -internal DirMdMux_vlg_vec_tst/*
vcd add -internal DirMdMux_vlg_vec_tst/i1/*
run -all
quit -f
