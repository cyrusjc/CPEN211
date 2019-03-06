onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /gameplay_tb/a
add wave -noupdate /gameplay_tb/ain
add wave -noupdate /gameplay_tb/b
add wave -noupdate /gameplay_tb/bin
add wave -noupdate /gameplay_tb/c
add wave -noupdate /gameplay_tb/cout
add wave -noupdate /gameplay_tb/d
add wave -noupdate /gameplay_tb/x
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {30 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {84 ps}
