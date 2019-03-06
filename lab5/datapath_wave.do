onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /datapath_tb/clk
add wave -noupdate /datapath_tb/datapath_in
add wave -noupdate /datapath_tb/dut/BigReg/R0
add wave -noupdate /datapath_tb/dut/BigReg/R1
add wave -noupdate /datapath_tb/dut/BigReg/R2
add wave -noupdate /datapath_tb/dut/BigReg/R3
add wave -noupdate /datapath_tb/dut/BigReg/R4
add wave -noupdate /datapath_tb/dut/BigReg/R5
add wave -noupdate /datapath_tb/dut/BigReg/R6
add wave -noupdate /datapath_tb/dut/BigReg/R7
add wave -noupdate /datapath_tb/readnum
add wave -noupdate /datapath_tb/loada
add wave -noupdate /datapath_tb/dut/aRegister/out
add wave -noupdate /datapath_tb/loadb
add wave -noupdate /datapath_tb/dut/bRegister/out
add wave -noupdate /datapath_tb/dut/shifting/Bout
add wave -noupdate /datapath_tb/dut/shifting/shifter
add wave -noupdate /datapath_tb/loadc
add wave -noupdate /datapath_tb/dut/CMP/ALUop
add wave -noupdate /datapath_tb/dut/CMP/loadc
add wave -noupdate /datapath_tb/dut/cRegister/out
add wave -noupdate /datapath_tb/datapath_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {280 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 199
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {913 ps}
