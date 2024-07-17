onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_cofre/fio_Cl
add wave -noupdate -divider entradas
add wave -noupdate /tb_cofre/fio_in
add wave -noupdate /tb_cofre/fio_tec
add wave -noupdate -radix hexadecimal /tb_cofre/instancia_Cofre/fluxo_dados/saida_teclado
add wave -noupdate -radix hexadecimal -childformat {{/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(15) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(14) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(13) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(12) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(11) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(10) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(9) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(8) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(7) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(6) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(5) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(4) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(3) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(2) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(1) -radix unsigned} {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(0) -radix unsigned}} -subitemconfig {/tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(15) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(14) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(13) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(12) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(11) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(10) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(9) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(8) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(7) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(6) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(5) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(4) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(3) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(2) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(1) {-height 15 -radix unsigned} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador(0) {-height 15 -radix unsigned}} /tb_cofre/instancia_Cofre/fluxo_dados/saida_registrador
add wave -noupdate /tb_cofre/fio_Re
add wave -noupdate /tb_cofre/fio_fe
add wave -noupdate -divider {saidas controladora}
add wave -noupdate /tb_cofre/fio_ent
add wave -noupdate /tb_cofre/instancia_Cofre/fluxo_dados/load_reg
add wave -noupdate /tb_cofre/instancia_Cofre/fluxo_dados/reset_reg
add wave -noupdate /tb_cofre/instancia_Cofre/fluxo_dados/cont_clk
add wave -noupdate /tb_cofre/instancia_Cofre/fluxo_dados/cont_reset
add wave -noupdate /tb_cofre/fio_ab
add wave -noupdate /tb_cofre/fio_bl
add wave -noupdate /tb_cofre/fio_e
add wave -noupdate -divider {saidas datapath}
add wave -noupdate /tb_cofre/instancia_Cofre/fluxo_dados/lim_tent
add wave -noupdate /tb_cofre/fio_leds
add wave -noupdate /tb_cofre/instancia_Cofre/fluxo_dados/digito
add wave -noupdate /tb_cofre/instancia_Cofre/fluxo_dados/insert
add wave -noupdate /tb_cofre/instancia_Cofre/fluxo_dados/comp_senha
add wave -noupdate -divider estados
add wave -noupdate /tb_cofre/instancia_Cofre/controle/estado_atual
add wave -noupdate /tb_cofre/instancia_Cofre/controle/estado_futuro
add wave -noupdate -divider misc
add wave -noupdate /tb_cofre/instancia_Cofre/controle/insert
add wave -noupdate /tb_cofre/instancia_Cofre/controle/insert_passado
add wave -noupdate /tb_cofre/instancia_Cofre/controle/teclado
add wave -noupdate /tb_cofre/instancia_Cofre/controle/teclado_passado
add wave -noupdate /tb_cofre/instancia_Cofre/controle/fechar
add wave -noupdate /tb_cofre/instancia_Cofre/controle/fechar_passado
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {30741 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {157500 ps}
