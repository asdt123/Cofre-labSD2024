transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/registrador_com_carga_paralela/registrador_carga_paralela.vhd}

vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/registrador_com_carga_paralela/tb_registrador_carga_paralela.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_registrador_carga_paralela

add wave *
view structure
view signals
run 175 ns
