vlib work
vlog tb_ha.v
vsim tb_ha
add wave -position insertpoint sim:/tb_ha/dut/*
run -all