transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/iterador/iterador.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/Teclado/teclado.vhd}

vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/Teclado/tb_teclado.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_teclado

do wave.do
view structure
view signals
run -all
