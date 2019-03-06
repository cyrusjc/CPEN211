onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /cpu_autograder_example_tb/clk
add wave -noupdate -group {New Group1} /cpu_autograder_example_tb/DUT/DP/REGFILE/load7
add wave -noupdate -group {New Group1} /cpu_autograder_example_tb/DUT/DP/REGFILE/load6
add wave -noupdate -group {New Group1} /cpu_autograder_example_tb/DUT/DP/REGFILE/load5
add wave -noupdate -group {New Group1} /cpu_autograder_example_tb/DUT/DP/REGFILE/load4
add wave -noupdate -group {New Group1} /cpu_autograder_example_tb/DUT/DP/REGFILE/load3
add wave -noupdate -group {New Group1} /cpu_autograder_example_tb/DUT/DP/REGFILE/load2
add wave -noupdate -group {New Group1} /cpu_autograder_example_tb/DUT/DP/REGFILE/load1
add wave -noupdate -group {New Group1} /cpu_autograder_example_tb/DUT/DP/REGFILE/load0
add wave -noupdate -group {New Group2} /cpu_autograder_example_tb/DUT/DP/REGFILE/R0
add wave -noupdate -group {New Group2} /cpu_autograder_example_tb/DUT/DP/REGFILE/R1
add wave -noupdate -group {New Group2} /cpu_autograder_example_tb/DUT/DP/REGFILE/R2
add wave -noupdate -group {New Group2} /cpu_autograder_example_tb/DUT/DP/REGFILE/R3
add wave -noupdate -group {New Group2} /cpu_autograder_example_tb/DUT/DP/REGFILE/R4
add wave -noupdate -group {New Group2} /cpu_autograder_example_tb/DUT/DP/REGFILE/R5
add wave -noupdate -group {New Group2} /cpu_autograder_example_tb/DUT/DP/REGFILE/R6
add wave -noupdate -group {New Group2} /cpu_autograder_example_tb/DUT/DP/REGFILE/R7
add wave -noupdate /cpu_autograder_example_tb/DUT/DP/REGFILE/write
add wave -noupdate /cpu_autograder_example_tb/DUT/DP/REGFILE/writenum
add wave -noupdate /cpu_autograder_example_tb/DUT/iRegOut
add wave -noupdate -group {New Group} /cpu_autograder_example_tb/DUT/statemachine/next_reset_state
add wave -noupdate -group {New Group} /cpu_autograder_example_tb/DUT/statemachine/next_state
add wave -noupdate -group {New Group} /cpu_autograder_example_tb/DUT/statemachine/present_state
add wave -noupdate /cpu_autograder_example_tb/w
add wave -noupdate /cpu_autograder_example_tb/s
add wave -noupdate /cpu_autograder_example_tb/Z
add wave -noupdate /cpu_autograder_example_tb/DUT/DP/bRegister/out
add wave -noupdate /cpu_autograder_example_tb/DUT/DP/cRegister/in
add wave -noupdate /cpu_autograder_example_tb/DUT/DP/cRegister/out
add wave -noupdate /cpu_autograder_example_tb/DUT/DP/cRegister/en
add wave -noupdate /cpu_autograder_example_tb/DUT/DP/shifting/shift
add wave -noupdate /cpu_autograder_example_tb/DUT/DP/shifting/Bin
add wave -noupdate /cpu_autograder_example_tb/DUT/DP/shifting/Bout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {315 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 350
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
WaveRestoreZoom {622 ps} {710 ps}
