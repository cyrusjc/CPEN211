onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab7_top_tb/dut/clk
add wave -noupdate /lab7_top_tb/dut/reset
add wave -noupdate -expand -group IR /lab7_top_tb/dut/x
add wave -noupdate -expand -group IR /lab7_top_tb/dut/CPU/instructionReg/out
add wave -noupdate -expand -group IR /lab7_top_tb/dut/CPU/instructionReg/next_out
add wave -noupdate -expand -group IR /lab7_top_tb/dut/CPU/instructionReg/en
add wave -noupdate -expand -group PC /lab7_top_tb/dut/CPU/PCReg/out
add wave -noupdate -expand -group PC /lab7_top_tb/dut/CPU/loadPC
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/REGFILE/write
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/REGFILE/R0
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/REGFILE/R1
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/REGFILE/R2
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/REGFILE/R3
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/REGFILE/R4
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/REGFILE/R5
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/REGFILE/R6
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/REGFILE/R7
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/vsel
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/mdata
add wave -noupdate -expand -group Registers /lab7_top_tb/dut/CPU/DP/data_in
add wave -noupdate -expand -group MEM /lab7_top_tb/dut/MEM/read_address
add wave -noupdate -expand -group MEM /lab7_top_tb/dut/x
add wave -noupdate -expand -group MEM /lab7_top_tb/dut/MEM/din
add wave -noupdate -expand -group MEM /lab7_top_tb/dut/MEM/mem
add wave -noupdate -expand -group MEM /lab7_top_tb/dut/write
add wave -noupdate -expand -group MEM /lab7_top_tb/dut/e
add wave -noupdate /lab7_top_tb/dut/CPU/mem_addr
add wave -noupdate -group FSM /lab7_top_tb/dut/CPU/statemachine/present_state
add wave -noupdate -group FSM /lab7_top_tb/dut/CPU/statemachine/next_reset_state
add wave -noupdate -group FSM /lab7_top_tb/dut/CPU/statemachine/loadpc
add wave -noupdate -group FSM /lab7_top_tb/dut/CPU/statemachine/opcode
add wave -noupdate -group FSM /lab7_top_tb/dut/CPU/statemachine/op
add wave -noupdate -group FSM /lab7_top_tb/dut/CPU/statemachine/loadir
add wave -noupdate -height 50 -expand -group {ABC REG} /lab7_top_tb/dut/CPU/DP/aRegister/out
add wave -noupdate -height 50 -expand -group {ABC REG} /lab7_top_tb/dut/CPU/DP/bRegister/out
add wave -noupdate -height 50 -expand -group {ABC REG} /lab7_top_tb/dut/CPU/DP/cRegister/out
add wave -noupdate -height 50 -expand -group {ABC REG} /lab7_top_tb/dut/CPU/DP/Ain
add wave -noupdate -height 50 -expand -group {ABC REG} /lab7_top_tb/dut/CPU/DP/Bin
add wave -noupdate -expand -group {DATA ADDRESS} /lab7_top_tb/dut/CPU/DataAddress/in
add wave -noupdate -expand -group {DATA ADDRESS} /lab7_top_tb/dut/CPU/DataAddress/out
add wave -noupdate -expand -group {DATA ADDRESS} /lab7_top_tb/dut/CPU/DataAddress/en
add wave -noupdate -expand -group {DATA ADDRESS} /lab7_top_tb/dut/CPU/DataAddress/out
add wave -noupdate -expand -group ALU /lab7_top_tb/dut/CPU/DP/CMP/result
add wave -noupdate -expand -group ALU /lab7_top_tb/dut/CPU/DP/CMP/Bin
add wave -noupdate -expand -group ALU /lab7_top_tb/dut/CPU/DP/CMP/Ain
add wave -noupdate -expand -group ALU /lab7_top_tb/dut/CPU/DP/CMP/ALUop
add wave -noupdate /lab7_top_tb/dut/CPU/out
add wave -noupdate /lab7_top_tb/LEDR
add wave -noupdate /lab7_top_tb/SW
add wave -noupdate -expand -group LEDREG /lab7_top_tb/dut/ledREG/in
add wave -noupdate -expand -group LEDREG /lab7_top_tb/dut/ledREG/out
add wave -noupdate -expand -group LEDREG /lab7_top_tb/dut/ledREG/en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2762925 ps} 0} {{Cursor 2} {414 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 290
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
WaveRestoreZoom {405 ps} {505 ps}
