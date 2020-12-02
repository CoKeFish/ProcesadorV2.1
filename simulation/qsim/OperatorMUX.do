onerror {exit -code 1}
vlib work
vlog -work work OperatorMUX.vo
vlog -work work Waveform10.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.OperatorMUX_vlg_vec_tst -voptargs="+acc"
vcd file -direction OperatorMUX.msim.vcd
vcd add -internal OperatorMUX_vlg_vec_tst/*
vcd add -internal OperatorMUX_vlg_vec_tst/i1/*
run -all
quit -f
