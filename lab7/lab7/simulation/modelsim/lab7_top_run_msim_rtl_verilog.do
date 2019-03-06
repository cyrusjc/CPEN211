transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Google\ Drive/1st\ term/1-CPEN\ 211/lab7/lab7 {E:/Google Drive/1st term/1-CPEN 211/lab7/lab7/shifter.v}
vlog -vlog01compat -work work +incdir+E:/Google\ Drive/1st\ term/1-CPEN\ 211/lab7/lab7 {E:/Google Drive/1st term/1-CPEN 211/lab7/lab7/regfile.v}
vlog -vlog01compat -work work +incdir+E:/Google\ Drive/1st\ term/1-CPEN\ 211/lab7/lab7 {E:/Google Drive/1st term/1-CPEN 211/lab7/lab7/lab7_top.v}
vlog -vlog01compat -work work +incdir+E:/Google\ Drive/1st\ term/1-CPEN\ 211/lab7/lab7 {E:/Google Drive/1st term/1-CPEN 211/lab7/lab7/datapath.v}
vlog -vlog01compat -work work +incdir+E:/Google\ Drive/1st\ term/1-CPEN\ 211/lab7/lab7 {E:/Google Drive/1st term/1-CPEN 211/lab7/lab7/alu.v}
vlog -vlog01compat -work work +incdir+E:/Google\ Drive/1st\ term/1-CPEN\ 211/lab7/lab7 {E:/Google Drive/1st term/1-CPEN 211/lab7/lab7/cpu.v}

