transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/Teclado-chaves/teclado_chaveado.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/registrador_com_carga_paralela/registrador_carga_paralela.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/registrador_16bits/registrador_16bits.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/BCD_7seg/BCD_7seg.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/comparador_16bits/comparador_16bits.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/contador/contador.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/comparador/comparador.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/controladora/controladora.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/Datapath/Datapath.vhd}
vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/Cofre/Cofre.vhd}

vcom -93 -work work {B:/UFMG/2024-1/lab sd/cofre-2024/Cofre/tb_cofre.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_cofre

do wave.do
view structure
view signals
run 80 ns
