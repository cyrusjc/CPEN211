onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab8_check_tb/CLOCK_50
add wave -noupdate -expand -group i-reg /lab8_check_tb/DUT/CPU/instructionReg/in
add wave -noupdate -expand -group i-reg /lab8_check_tb/DUT/CPU/instructionReg/out
add wave -noupdate -expand -group Regs -radix decimal /lab8_check_tb/DUT/CPU/DP/REGFILE/R0
add wave -noupdate -expand -group Regs -radix decimal /lab8_check_tb/DUT/CPU/DP/REGFILE/R1
add wave -noupdate -expand -group Regs -radix decimal /lab8_check_tb/DUT/CPU/DP/REGFILE/R2
add wave -noupdate -expand -group Regs -radix decimal /lab8_check_tb/DUT/CPU/DP/REGFILE/R3
add wave -noupdate -expand -group Regs -radix decimal /lab8_check_tb/DUT/CPU/DP/REGFILE/R4
add wave -noupdate -expand -group Regs -radix decimal /lab8_check_tb/DUT/CPU/DP/REGFILE/R5
add wave -noupdate -expand -group Regs /lab8_check_tb/DUT/CPU/DP/REGFILE/R6
add wave -noupdate -expand -group Regs /lab8_check_tb/DUT/CPU/DP/REGFILE/R7
add wave -noupdate -expand -group {PC IN} -radix decimal /lab8_check_tb/DUT/CPU/branchcalc/next_pc
add wave -noupdate -expand -group {PC IN} /lab8_check_tb/DUT/CPU/branchcalc/opcode
add wave -noupdate -expand -group {PC IN} /lab8_check_tb/DUT/CPU/branchcalc/op
add wave -noupdate -expand -group {PC IN} -radix binary /lab8_check_tb/DUT/CPU/branchcalc/Z
add wave -noupdate -expand -group {PC IN} -radix binary /lab8_check_tb/DUT/CPU/branchcalc/V
add wave -noupdate -expand -group {PC IN} -radix binary /lab8_check_tb/DUT/CPU/branchcalc/N
add wave -noupdate -expand -group {PC IN} /lab8_check_tb/DUT/CPU/branchcalc/imm8Extended
add wave -noupdate -expand -group FSM /lab8_check_tb/DUT/CPU/statemachine/present_state
add wave -noupdate -expand -group FSM /lab8_check_tb/DUT/CPU/statemachine/next_reset_state
add wave -noupdate -radix decimal /lab8_check_tb/DUT/CPU/PCReg/in
add wave -noupdate -radix decimal /lab8_check_tb/DUT/CPU/PCReg/out
add wave -noupdate -radix decimal /lab8_check_tb/DUT/CPU/PCReg/next_out
add wave -noupdate -expand -group MEMORY /lab8_check_tb/DUT/MEM/mem
add wave -noupdate -expand -group MEMORY /lab8_check_tb/DUT/MEM/dout
add wave -noupdate -expand -group MEMORY -radix decimal /lab8_check_tb/DUT/MEM/read_address
add wave -noupdate {/lab8_check_tb/LEDR[8]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2045 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 294
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
WaveRestoreZoom {2006 ps} {2205 ps}
