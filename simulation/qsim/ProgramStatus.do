onerror {exit -code 1}
vlib work
vlog -work work ProgramStatus.vo
vlog -work work ProgramStatus.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ProgramStatus_vlg_vec_tst -voptargs="+acc"
vcd file -direction ProgramStatus.msim.vcd
vcd add -internal ProgramStatus_vlg_vec_tst/*
vcd add -internal ProgramStatus_vlg_vec_tst/i1/*
run -all
quit -f
