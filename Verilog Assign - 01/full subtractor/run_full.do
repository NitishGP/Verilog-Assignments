vlib work
vlog tb_fullsubtractor.v
vsim tb_fullsubtractor
add wave -position insertpoint sim:/tb_fullsubtractor/subtract/*
run -all
