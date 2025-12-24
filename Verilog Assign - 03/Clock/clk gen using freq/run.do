vlib work
vlog clk_gen_3.v
vsim -novopt -suppress 12110 clk_gen_3 +freq=30 
add wave -position insertpoint sim:/clk_gen_3/*
run -all
