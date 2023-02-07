onerror {exit -code 1}
vlib work
vlog -work work traffic_light_control.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.traffic_light_control_vlg_vec_tst -voptargs="+acc"
vcd file -direction traffic_light_control.msim.vcd
vcd add -internal traffic_light_control_vlg_vec_tst/*
vcd add -internal traffic_light_control_vlg_vec_tst/i1/*
run -all
quit -f
