onerror {exit -code 1}
vlib work
vlog -work work ProgramCounterMUX.vo
vlog -work work Waveform11.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ProgramCounterMUX_vlg_vec_tst -voptargs="+acc"
vcd file -direction ProgramCounterMUX.msim.vcd
vcd add -internal ProgramCounterMUX_vlg_vec_tst/*
vcd add -internal ProgramCounterMUX_vlg_vec_tst/i1/*
run -all
quit -f
