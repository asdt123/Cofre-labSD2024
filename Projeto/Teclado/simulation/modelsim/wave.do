onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_teclado/fio_Cl
add wave -noupdate /tb_teclado/instancia_Teclado/col_ativa
add wave -noupdate /tb_teclado/fio_linha
add wave -noupdate -radix hexadecimal /tb_teclado/fio_tecla
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2661 ps} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {126 ns}
