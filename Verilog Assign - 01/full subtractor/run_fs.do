vlib work
vlog tb_fs.v
vsim tb_fs
add wave -position insertpoint sim:/tb_fs/subt/*
run -all
