restart f-

force -freeze sim:/proc/Clock 0 0, 1 {10000 ps} -r 20000
add wave -position insertpoint sim:/proc/*
add wave -position insertpoint sim:/proc/UIR/*
add wave -position insertpoint sim:/proc/uControl/*
add wave -position insertpoint sim:/proc/U0/*
add wave -position insertpoint sim:/proc/U1/*
add wave -position insertpoint sim:/proc/UA/*
add wave -position insertpoint sim:/proc/UG/*

force Resetn 1
force Run 0
force DIN 000000000

run 1ps
force Resetn 0


run 20ns

force Resetn 1
force Run 1
force DIN 001000000

run 20ns

force Run 0
force DIN 000000101

run 20ns

force Run 1
force DIN 000001000

run 20ns

force Run 0

run 20ns

force Run 1
force DIN 010000001

run 20ns

force Run 0

run 60ns

force Run 1
force DIN 011000000

run 20ns

force Run 0
force DIN 000000000

run 20ns