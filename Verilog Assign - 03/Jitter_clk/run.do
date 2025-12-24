vlib work
vlog jitter_clk.v
vsim -novopt -suppress 12110 jitter_clk +freq=50 +dc=60 +jitter=5
add wave -position insertpoint sim:/jitter_clk/*
run -all
