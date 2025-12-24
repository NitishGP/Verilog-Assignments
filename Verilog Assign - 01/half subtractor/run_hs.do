vlib work
vlog tb_hs.v
vsim tb_hs
add wave -position insertpoint sim:/tb_hs/sub/*
run -all
