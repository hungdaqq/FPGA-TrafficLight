vlog -work work Waveform.vwf.vtvsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.traffic_light_control_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
