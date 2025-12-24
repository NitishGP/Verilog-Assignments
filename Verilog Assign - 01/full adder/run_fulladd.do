vlib work
vlog tb_fulladd.v
vsim tb_fulladd
add wave -position insertpoint sim:/tb_fulladd/hey/*
run -all
