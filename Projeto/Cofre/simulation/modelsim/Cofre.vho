-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/16/2024 19:38:43"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Cofre IS
    PORT (
	input_linha : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	fechar : IN std_logic;
	input_col : IN std_logic_vector(2 DOWNTO 0);
	ent_hab : OUT std_logic;
	aberto : OUT std_logic;
	bloqueado : OUT std_logic;
	leds_7seg : OUT std_logic_vector(27 DOWNTO 0);
	errado : OUT std_logic
	);
END Cofre;

-- Design Ports Information
-- ent_hab	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aberto	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bloqueado	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[7]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[8]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[9]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[10]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[11]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[12]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[13]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[14]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[15]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[16]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[17]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[18]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[19]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[20]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[21]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[22]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[23]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[24]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[25]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[26]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds_7seg[27]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- errado	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fechar	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_col[2]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_col[0]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_col[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_linha[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_linha[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_linha[2]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_linha[3]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Cofre IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_linha : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_fechar : std_logic;
SIGNAL ww_input_col : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ent_hab : std_logic;
SIGNAL ww_aberto : std_logic;
SIGNAL ww_bloqueado : std_logic;
SIGNAL ww_leds_7seg : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_errado : std_logic;
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controle|estado_atual.verif_senha~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fluxo_dados|cont_tent|Add0~0_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~4_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~6_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~12_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~20_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~24_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~32_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~42_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~46_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~52_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[1]~0_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[1]~1_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|Equal0~0_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[0]~6_combout\ : std_logic;
SIGNAL \fluxo_dados|verif_senha|Equal0~2_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Equal0~0_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Equal0~6_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~1_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~4_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~6_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~10_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~20_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~22_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~25_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~27_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~28_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \controle|estado_atual.verif_senha~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|Mux0~0_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[1]~2_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|Equal2~0_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[1]~3_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|Mux4~0_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|Mux7~0_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[2]~9_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|Equal1~0_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[2]~10_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|Mux3~0_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[3]~4_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|Mux6~0_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[3]~5_combout\ : std_logic;
SIGNAL \fluxo_dados|verif_numero|Equal0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \controle|teclado_passado~regout\ : std_logic;
SIGNAL \fluxo_dados|verif_insert|Equal0~0_combout\ : std_logic;
SIGNAL \controle|insert_passado~feeder_combout\ : std_logic;
SIGNAL \controle|insert_passado~regout\ : std_logic;
SIGNAL \controle|estado_futuro.recebe_dig~4_combout\ : std_logic;
SIGNAL \controle|estado_futuro.recebe_dig~5_combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \controle|estado_atual.recebe_dig~regout\ : std_logic;
SIGNAL \fechar~combout\ : std_logic;
SIGNAL \controle|estado_futuro.verif_senha~0_combout\ : std_logic;
SIGNAL \controle|estado_atual.verif_senha~feeder_combout\ : std_logic;
SIGNAL \controle|estado_atual.verif_senha~regout\ : std_logic;
SIGNAL \controle|fechar_passado~regout\ : std_logic;
SIGNAL \controle|Selector1~0_combout\ : std_logic;
SIGNAL \fluxo_dados|registrador_senha|reg_zero_tres|output[1]~feeder_combout\ : std_logic;
SIGNAL \controle|WideOr1~combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[0]~7_combout\ : std_logic;
SIGNAL \fluxo_dados|entrada_chave|tecla[0]~8_combout\ : std_logic;
SIGNAL \fluxo_dados|registrador_senha|reg_zero_tres|output[0]~feeder_combout\ : std_logic;
SIGNAL \fluxo_dados|verif_senha|Equal0~0_combout\ : std_logic;
SIGNAL \fluxo_dados|registrador_senha|reg_zero_tres|output[3]~feeder_combout\ : std_logic;
SIGNAL \fluxo_dados|verif_senha|Equal0~1_combout\ : std_logic;
SIGNAL \fluxo_dados|verif_senha|Equal0~3_combout\ : std_logic;
SIGNAL \fluxo_dados|verif_senha|Equal0~4_combout\ : std_logic;
SIGNAL \controle|Selector1~1_combout\ : std_logic;
SIGNAL \controle|estado_atual.abrir~regout\ : std_logic;
SIGNAL \controle|estado_atual.inicio~feeder_combout\ : std_logic;
SIGNAL \controle|estado_atual.inicio~regout\ : std_logic;
SIGNAL \controle|Selector0~2_combout\ : std_logic;
SIGNAL \controle|aberto~combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~15_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~14_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~13_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~11_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~8_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~7_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~5_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~1\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~3\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~5\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~7\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~9\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~11\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~13\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~15\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~16_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~9_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~17\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~19\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~21\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~22_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~12_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~23\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~25\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~27\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~28_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~16_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~29\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~30_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~26_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Equal0~3_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~10_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~8_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~14_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Equal0~1_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~18_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Equal0~2_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Equal0~4_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~19_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~18_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~17_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~31\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~33\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~35\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~36_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~37\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~38_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~34_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Equal0~5_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~24_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~39\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~40_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~21_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~41\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~43\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~44_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~23_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~45\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~47\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~48_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~26_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~49\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~50_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~51\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~53\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~54_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Equal0~7_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~30_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~55\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~56_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~29_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~57\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~58_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~32_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~59\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~60_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~31_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~61\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~62_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Equal0~8_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~0_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~2_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|Add0~2_combout\ : std_logic;
SIGNAL \fluxo_dados|cont_tent|cnt~3_combout\ : std_logic;
SIGNAL \controle|Selector2~0_combout\ : std_logic;
SIGNAL \controle|Selector0~3_combout\ : std_logic;
SIGNAL \controle|Selector0~4_combout\ : std_logic;
SIGNAL \controle|estado_atual.leitura~regout\ : std_logic;
SIGNAL \controle|WideOr1~0_combout\ : std_logic;
SIGNAL \controle|estado_futuro.erro~0_combout\ : std_logic;
SIGNAL \controle|estado_atual.erro~regout\ : std_logic;
SIGNAL \controle|estado_atual.bloquear~0_combout\ : std_logic;
SIGNAL \controle|estado_atual.bloquear~regout\ : std_logic;
SIGNAL \controle|bloqueado~1_combout\ : std_logic;
SIGNAL \fluxo_dados|primeiro_numero|Mux6~0_combout\ : std_logic;
SIGNAL \fluxo_dados|primeiro_numero|Mux5~0_combout\ : std_logic;
SIGNAL \fluxo_dados|primeiro_numero|Mux4~0_combout\ : std_logic;
SIGNAL \fluxo_dados|primeiro_numero|Mux3~0_combout\ : std_logic;
SIGNAL \fluxo_dados|primeiro_numero|Mux2~0_combout\ : std_logic;
SIGNAL \fluxo_dados|primeiro_numero|Mux1~0_combout\ : std_logic;
SIGNAL \fluxo_dados|primeiro_numero|Mux0~0_combout\ : std_logic;
SIGNAL \fluxo_dados|segundo_numero|Mux6~0_combout\ : std_logic;
SIGNAL \fluxo_dados|segundo_numero|Mux5~0_combout\ : std_logic;
SIGNAL \fluxo_dados|segundo_numero|Mux4~0_combout\ : std_logic;
SIGNAL \fluxo_dados|segundo_numero|Mux3~0_combout\ : std_logic;
SIGNAL \fluxo_dados|segundo_numero|Mux2~0_combout\ : std_logic;
SIGNAL \fluxo_dados|segundo_numero|Mux1~0_combout\ : std_logic;
SIGNAL \fluxo_dados|segundo_numero|Mux0~0_combout\ : std_logic;
SIGNAL \fluxo_dados|terceiro_numero|Mux6~0_combout\ : std_logic;
SIGNAL \fluxo_dados|terceiro_numero|Mux5~0_combout\ : std_logic;
SIGNAL \fluxo_dados|terceiro_numero|Mux4~0_combout\ : std_logic;
SIGNAL \fluxo_dados|terceiro_numero|Mux3~0_combout\ : std_logic;
SIGNAL \fluxo_dados|terceiro_numero|Mux2~0_combout\ : std_logic;
SIGNAL \fluxo_dados|terceiro_numero|Mux1~0_combout\ : std_logic;
SIGNAL \fluxo_dados|terceiro_numero|Mux0~0_combout\ : std_logic;
SIGNAL \fluxo_dados|quarto_numero|Mux6~0_combout\ : std_logic;
SIGNAL \fluxo_dados|quarto_numero|Mux5~0_combout\ : std_logic;
SIGNAL \fluxo_dados|quarto_numero|Mux4~0_combout\ : std_logic;
SIGNAL \fluxo_dados|quarto_numero|Mux3~0_combout\ : std_logic;
SIGNAL \fluxo_dados|quarto_numero|Mux2~0_combout\ : std_logic;
SIGNAL \fluxo_dados|quarto_numero|Mux1~0_combout\ : std_logic;
SIGNAL \fluxo_dados|quarto_numero|Mux0~0_combout\ : std_logic;
SIGNAL \controle|WideOr0~combout\ : std_logic;
SIGNAL \input_linha~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_col~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fluxo_dados|cont_tent|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fluxo_dados|registrador_senha|reg_quinze_doze|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fluxo_dados|registrador_senha|reg_quatro_sete|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fluxo_dados|registrador_senha|reg_oito_onze|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fluxo_dados|registrador_senha|reg_zero_tres|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \fluxo_dados|quarto_numero|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \fluxo_dados|terceiro_numero|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \fluxo_dados|segundo_numero|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \fluxo_dados|primeiro_numero|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_bloqueado~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_WideOr1~0_combout\ : std_logic;

BEGIN

ww_input_linha <= input_linha;
ww_clk <= clk;
ww_reset <= reset;
ww_fechar <= fechar;
ww_input_col <= input_col;
ent_hab <= ww_ent_hab;
aberto <= ww_aberto;
bloqueado <= ww_bloqueado;
leds_7seg <= ww_leds_7seg;
errado <= ww_errado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\controle|estado_atual.verif_senha~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controle|estado_atual.verif_senha~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\fluxo_dados|quarto_numero|ALT_INV_Mux6~0_combout\ <= NOT \fluxo_dados|quarto_numero|Mux6~0_combout\;
\fluxo_dados|terceiro_numero|ALT_INV_Mux6~0_combout\ <= NOT \fluxo_dados|terceiro_numero|Mux6~0_combout\;
\fluxo_dados|segundo_numero|ALT_INV_Mux6~0_combout\ <= NOT \fluxo_dados|segundo_numero|Mux6~0_combout\;
\fluxo_dados|primeiro_numero|ALT_INV_Mux6~0_combout\ <= NOT \fluxo_dados|primeiro_numero|Mux6~0_combout\;
\controle|ALT_INV_bloqueado~1_combout\ <= NOT \controle|bloqueado~1_combout\;
\controle|ALT_INV_WideOr1~0_combout\ <= NOT \controle|WideOr1~0_combout\;

-- Location: LCCOMB_X50_Y6_N0
\fluxo_dados|cont_tent|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~0_combout\ = \fluxo_dados|cont_tent|cnt\(0) $ (VCC)
-- \fluxo_dados|cont_tent|Add0~1\ = CARRY(\fluxo_dados|cont_tent|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(0),
	datad => VCC,
	combout => \fluxo_dados|cont_tent|Add0~0_combout\,
	cout => \fluxo_dados|cont_tent|Add0~1\);

-- Location: LCCOMB_X50_Y6_N4
\fluxo_dados|cont_tent|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~4_combout\ = (\fluxo_dados|cont_tent|cnt\(2) & (\fluxo_dados|cont_tent|Add0~3\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(2) & (!\fluxo_dados|cont_tent|Add0~3\ & VCC))
-- \fluxo_dados|cont_tent|Add0~5\ = CARRY((\fluxo_dados|cont_tent|cnt\(2) & !\fluxo_dados|cont_tent|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(2),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~3\,
	combout => \fluxo_dados|cont_tent|Add0~4_combout\,
	cout => \fluxo_dados|cont_tent|Add0~5\);

-- Location: LCCOMB_X50_Y6_N6
\fluxo_dados|cont_tent|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~6_combout\ = (\fluxo_dados|cont_tent|cnt\(3) & (!\fluxo_dados|cont_tent|Add0~5\)) # (!\fluxo_dados|cont_tent|cnt\(3) & ((\fluxo_dados|cont_tent|Add0~5\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~7\ = CARRY((!\fluxo_dados|cont_tent|Add0~5\) # (!\fluxo_dados|cont_tent|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(3),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~5\,
	combout => \fluxo_dados|cont_tent|Add0~6_combout\,
	cout => \fluxo_dados|cont_tent|Add0~7\);

-- Location: LCCOMB_X50_Y6_N12
\fluxo_dados|cont_tent|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~12_combout\ = (\fluxo_dados|cont_tent|cnt\(6) & (\fluxo_dados|cont_tent|Add0~11\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(6) & (!\fluxo_dados|cont_tent|Add0~11\ & VCC))
-- \fluxo_dados|cont_tent|Add0~13\ = CARRY((\fluxo_dados|cont_tent|cnt\(6) & !\fluxo_dados|cont_tent|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(6),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~11\,
	combout => \fluxo_dados|cont_tent|Add0~12_combout\,
	cout => \fluxo_dados|cont_tent|Add0~13\);

-- Location: LCCOMB_X50_Y6_N20
\fluxo_dados|cont_tent|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~20_combout\ = (\fluxo_dados|cont_tent|cnt\(10) & (\fluxo_dados|cont_tent|Add0~19\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(10) & (!\fluxo_dados|cont_tent|Add0~19\ & VCC))
-- \fluxo_dados|cont_tent|Add0~21\ = CARRY((\fluxo_dados|cont_tent|cnt\(10) & !\fluxo_dados|cont_tent|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(10),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~19\,
	combout => \fluxo_dados|cont_tent|Add0~20_combout\,
	cout => \fluxo_dados|cont_tent|Add0~21\);

-- Location: LCCOMB_X50_Y6_N24
\fluxo_dados|cont_tent|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~24_combout\ = (\fluxo_dados|cont_tent|cnt\(12) & (\fluxo_dados|cont_tent|Add0~23\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(12) & (!\fluxo_dados|cont_tent|Add0~23\ & VCC))
-- \fluxo_dados|cont_tent|Add0~25\ = CARRY((\fluxo_dados|cont_tent|cnt\(12) & !\fluxo_dados|cont_tent|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(12),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~23\,
	combout => \fluxo_dados|cont_tent|Add0~24_combout\,
	cout => \fluxo_dados|cont_tent|Add0~25\);

-- Location: LCCOMB_X50_Y5_N0
\fluxo_dados|cont_tent|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~32_combout\ = (\fluxo_dados|cont_tent|cnt\(16) & (\fluxo_dados|cont_tent|Add0~31\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(16) & (!\fluxo_dados|cont_tent|Add0~31\ & VCC))
-- \fluxo_dados|cont_tent|Add0~33\ = CARRY((\fluxo_dados|cont_tent|cnt\(16) & !\fluxo_dados|cont_tent|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(16),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~31\,
	combout => \fluxo_dados|cont_tent|Add0~32_combout\,
	cout => \fluxo_dados|cont_tent|Add0~33\);

-- Location: LCCOMB_X50_Y5_N10
\fluxo_dados|cont_tent|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~42_combout\ = (\fluxo_dados|cont_tent|cnt\(21) & (!\fluxo_dados|cont_tent|Add0~41\)) # (!\fluxo_dados|cont_tent|cnt\(21) & ((\fluxo_dados|cont_tent|Add0~41\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~43\ = CARRY((!\fluxo_dados|cont_tent|Add0~41\) # (!\fluxo_dados|cont_tent|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(21),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~41\,
	combout => \fluxo_dados|cont_tent|Add0~42_combout\,
	cout => \fluxo_dados|cont_tent|Add0~43\);

-- Location: LCCOMB_X50_Y5_N14
\fluxo_dados|cont_tent|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~46_combout\ = (\fluxo_dados|cont_tent|cnt\(23) & (!\fluxo_dados|cont_tent|Add0~45\)) # (!\fluxo_dados|cont_tent|cnt\(23) & ((\fluxo_dados|cont_tent|Add0~45\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~47\ = CARRY((!\fluxo_dados|cont_tent|Add0~45\) # (!\fluxo_dados|cont_tent|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(23),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~45\,
	combout => \fluxo_dados|cont_tent|Add0~46_combout\,
	cout => \fluxo_dados|cont_tent|Add0~47\);

-- Location: LCCOMB_X50_Y5_N20
\fluxo_dados|cont_tent|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~52_combout\ = (\fluxo_dados|cont_tent|cnt\(26) & (\fluxo_dados|cont_tent|Add0~51\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(26) & (!\fluxo_dados|cont_tent|Add0~51\ & VCC))
-- \fluxo_dados|cont_tent|Add0~53\ = CARRY((\fluxo_dados|cont_tent|cnt\(26) & !\fluxo_dados|cont_tent|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(26),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~51\,
	combout => \fluxo_dados|cont_tent|Add0~52_combout\,
	cout => \fluxo_dados|cont_tent|Add0~53\);

-- Location: LCFF_X51_Y6_N17
\fluxo_dados|cont_tent|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(0));

-- Location: LCCOMB_X57_Y8_N4
\fluxo_dados|entrada_chave|tecla[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[1]~0_combout\ = (!\input_linha~combout\(2) & (!\input_col~combout\(2) & (!\input_col~combout\(1) & \input_col~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_linha~combout\(2),
	datab => \input_col~combout\(2),
	datac => \input_col~combout\(1),
	datad => \input_col~combout\(0),
	combout => \fluxo_dados|entrada_chave|tecla[1]~0_combout\);

-- Location: LCCOMB_X56_Y8_N6
\fluxo_dados|entrada_chave|tecla[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[1]~1_combout\ = (\fluxo_dados|entrada_chave|tecla[1]~0_combout\ & ((\input_linha~combout\(0)) # ((!\input_linha~combout\(2) & \fluxo_dados|entrada_chave|Equal1~0_combout\)))) # 
-- (!\fluxo_dados|entrada_chave|tecla[1]~0_combout\ & (!\input_linha~combout\(2) & ((\fluxo_dados|entrada_chave|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|entrada_chave|tecla[1]~0_combout\,
	datab => \input_linha~combout\(2),
	datac => \input_linha~combout\(0),
	datad => \fluxo_dados|entrada_chave|Equal1~0_combout\,
	combout => \fluxo_dados|entrada_chave|tecla[1]~1_combout\);

-- Location: LCCOMB_X57_Y8_N6
\fluxo_dados|entrada_chave|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|Equal0~0_combout\ = (!\input_col~combout\(2) & (!\input_col~combout\(1) & \input_col~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_col~combout\(2),
	datac => \input_col~combout\(1),
	datad => \input_col~combout\(0),
	combout => \fluxo_dados|entrada_chave|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y8_N10
\fluxo_dados|entrada_chave|tecla[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[0]~6_combout\ = (\fluxo_dados|entrada_chave|tecla[1]~0_combout\ & ((\input_linha~combout\(1)) # ((!\input_linha~combout\(2) & \fluxo_dados|entrada_chave|Equal2~0_combout\)))) # 
-- (!\fluxo_dados|entrada_chave|tecla[1]~0_combout\ & (((!\input_linha~combout\(2) & \fluxo_dados|entrada_chave|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|entrada_chave|tecla[1]~0_combout\,
	datab => \input_linha~combout\(1),
	datac => \input_linha~combout\(2),
	datad => \fluxo_dados|entrada_chave|Equal2~0_combout\,
	combout => \fluxo_dados|entrada_chave|tecla[0]~6_combout\);

-- Location: LCCOMB_X54_Y5_N30
\fluxo_dados|verif_senha|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|verif_senha|Equal0~2_combout\ = (\fluxo_dados|registrador_senha|reg_oito_onze|output\(3)) # ((\fluxo_dados|registrador_senha|reg_oito_onze|output\(0)) # ((!\fluxo_dados|registrador_senha|reg_oito_onze|output\(1)) # 
-- (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3),
	datab => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0),
	datac => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2),
	datad => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1),
	combout => \fluxo_dados|verif_senha|Equal0~2_combout\);

-- Location: LCFF_X51_Y6_N7
\fluxo_dados|cont_tent|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(3));

-- Location: LCCOMB_X49_Y6_N16
\fluxo_dados|cont_tent|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Equal0~0_combout\ = (\fluxo_dados|cont_tent|Add0~2_combout\) # ((\fluxo_dados|cont_tent|Add0~0_combout\) # ((\fluxo_dados|cont_tent|Add0~4_combout\) # (!\fluxo_dados|cont_tent|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~2_combout\,
	datab => \fluxo_dados|cont_tent|Add0~0_combout\,
	datac => \fluxo_dados|cont_tent|Add0~6_combout\,
	datad => \fluxo_dados|cont_tent|Add0~4_combout\,
	combout => \fluxo_dados|cont_tent|Equal0~0_combout\);

-- Location: LCFF_X51_Y5_N7
\fluxo_dados|cont_tent|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(5));

-- Location: LCFF_X51_Y6_N27
\fluxo_dados|cont_tent|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(9));

-- Location: LCFF_X51_Y5_N5
\fluxo_dados|cont_tent|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(19));

-- Location: LCFF_X51_Y5_N17
\fluxo_dados|cont_tent|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(21));

-- Location: LCCOMB_X51_Y5_N20
\fluxo_dados|cont_tent|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Equal0~6_combout\ = (\fluxo_dados|cont_tent|Add0~46_combout\) # ((\fluxo_dados|cont_tent|Add0~40_combout\) # ((\fluxo_dados|cont_tent|Add0~42_combout\) # (\fluxo_dados|cont_tent|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~46_combout\,
	datab => \fluxo_dados|cont_tent|Add0~40_combout\,
	datac => \fluxo_dados|cont_tent|Add0~42_combout\,
	datad => \fluxo_dados|cont_tent|Add0~44_combout\,
	combout => \fluxo_dados|cont_tent|Equal0~6_combout\);

-- Location: LCFF_X49_Y5_N15
\fluxo_dados|cont_tent|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(24));

-- Location: LCFF_X49_Y5_N31
\fluxo_dados|cont_tent|cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(26));

-- Location: LCFF_X49_Y5_N21
\fluxo_dados|cont_tent|cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(27));

-- Location: LCCOMB_X51_Y6_N16
\fluxo_dados|cont_tent|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~1_combout\ = (\fluxo_dados|cont_tent|Add0~0_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~0_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~1_combout\);

-- Location: LCCOMB_X51_Y6_N6
\fluxo_dados|cont_tent|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~4_combout\ = (!\controle|aberto~combout\ & (\fluxo_dados|cont_tent|Add0~6_combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|aberto~combout\,
	datab => \fluxo_dados|cont_tent|Add0~6_combout\,
	datac => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~4_combout\);

-- Location: LCCOMB_X51_Y5_N6
\fluxo_dados|cont_tent|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~6_combout\ = (\fluxo_dados|cont_tent|Add0~10_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~10_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~6_combout\);

-- Location: LCCOMB_X51_Y6_N26
\fluxo_dados|cont_tent|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~10_combout\ = (!\controle|aberto~combout\ & (\fluxo_dados|cont_tent|Add0~18_combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|aberto~combout\,
	datab => \fluxo_dados|cont_tent|Add0~18_combout\,
	datac => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~10_combout\);

-- Location: LCCOMB_X51_Y5_N4
\fluxo_dados|cont_tent|cnt~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~20_combout\ = (\fluxo_dados|cont_tent|Add0~38_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~38_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~20_combout\);

-- Location: LCCOMB_X51_Y5_N16
\fluxo_dados|cont_tent|cnt~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~22_combout\ = (\fluxo_dados|cont_tent|Add0~42_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~42_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~22_combout\);

-- Location: LCCOMB_X49_Y5_N14
\fluxo_dados|cont_tent|cnt~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~25_combout\ = (\fluxo_dados|cont_tent|Add0~48_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~48_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \fluxo_dados|cont_tent|cnt~0_combout\,
	datad => \controle|aberto~combout\,
	combout => \fluxo_dados|cont_tent|cnt~25_combout\);

-- Location: LCCOMB_X49_Y5_N30
\fluxo_dados|cont_tent|cnt~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~27_combout\ = (\fluxo_dados|cont_tent|Add0~52_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datab => \fluxo_dados|cont_tent|Add0~52_combout\,
	datac => \fluxo_dados|cont_tent|cnt~0_combout\,
	datad => \controle|aberto~combout\,
	combout => \fluxo_dados|cont_tent|cnt~27_combout\);

-- Location: LCCOMB_X49_Y5_N20
\fluxo_dados|cont_tent|cnt~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~28_combout\ = (\fluxo_dados|cont_tent|Add0~54_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datab => \fluxo_dados|cont_tent|Add0~54_combout\,
	datac => \fluxo_dados|cont_tent|cnt~0_combout\,
	datad => \controle|aberto~combout\,
	combout => \fluxo_dados|cont_tent|cnt~28_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G13
\controle|estado_atual.verif_senha~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controle|estado_atual.verif_senha~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controle|estado_atual.verif_senha~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_linha[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_linha(0),
	combout => \input_linha~combout\(0));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_linha[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_linha(2),
	combout => \input_linha~combout\(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_linha[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_linha(1),
	combout => \input_linha~combout\(1));

-- Location: LCCOMB_X56_Y8_N0
\fluxo_dados|entrada_chave|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|Mux0~0_combout\ = (!\input_linha~combout\(3) & (!\input_linha~combout\(0) & (\input_linha~combout\(2) $ (\input_linha~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_linha~combout\(3),
	datab => \input_linha~combout\(0),
	datac => \input_linha~combout\(2),
	datad => \input_linha~combout\(1),
	combout => \fluxo_dados|entrada_chave|Mux0~0_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_linha[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_linha(3),
	combout => \input_linha~combout\(3));

-- Location: LCCOMB_X56_Y8_N20
\fluxo_dados|entrada_chave|tecla[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[1]~2_combout\ = (\input_linha~combout\(1) & (!\input_linha~combout\(0) & !\input_linha~combout\(3))) # (!\input_linha~combout\(1) & (\input_linha~combout\(0) $ (\input_linha~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_linha~combout\(1),
	datac => \input_linha~combout\(0),
	datad => \input_linha~combout\(3),
	combout => \fluxo_dados|entrada_chave|tecla[1]~2_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_col[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_col(2),
	combout => \input_col~combout\(2));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_col[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_col(1),
	combout => \input_col~combout\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_col[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_col(0),
	combout => \input_col~combout\(0));

-- Location: LCCOMB_X57_Y8_N24
\fluxo_dados|entrada_chave|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|Equal2~0_combout\ = (\input_col~combout\(2) & (!\input_col~combout\(1) & !\input_col~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_col~combout\(2),
	datac => \input_col~combout\(1),
	datad => \input_col~combout\(0),
	combout => \fluxo_dados|entrada_chave|Equal2~0_combout\);

-- Location: LCCOMB_X56_Y8_N22
\fluxo_dados|entrada_chave|tecla[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[1]~3_combout\ = (\fluxo_dados|entrada_chave|tecla[1]~1_combout\ & (!\fluxo_dados|entrada_chave|tecla[1]~2_combout\ & ((!\fluxo_dados|entrada_chave|Equal2~0_combout\) # (!\fluxo_dados|entrada_chave|Mux0~0_combout\)))) # 
-- (!\fluxo_dados|entrada_chave|tecla[1]~1_combout\ & (((!\fluxo_dados|entrada_chave|Equal2~0_combout\)) # (!\fluxo_dados|entrada_chave|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|entrada_chave|tecla[1]~1_combout\,
	datab => \fluxo_dados|entrada_chave|Mux0~0_combout\,
	datac => \fluxo_dados|entrada_chave|tecla[1]~2_combout\,
	datad => \fluxo_dados|entrada_chave|Equal2~0_combout\,
	combout => \fluxo_dados|entrada_chave|tecla[1]~3_combout\);

-- Location: LCCOMB_X56_Y8_N28
\fluxo_dados|entrada_chave|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|Mux4~0_combout\ = (!\input_linha~combout\(1) & ((\input_linha~combout\(3) & (!\input_linha~combout\(0) & !\input_linha~combout\(2))) # (!\input_linha~combout\(3) & (\input_linha~combout\(0) $ (\input_linha~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_linha~combout\(3),
	datab => \input_linha~combout\(0),
	datac => \input_linha~combout\(2),
	datad => \input_linha~combout\(1),
	combout => \fluxo_dados|entrada_chave|Mux4~0_combout\);

-- Location: LCCOMB_X56_Y8_N16
\fluxo_dados|entrada_chave|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|Mux7~0_combout\ = (!\input_linha~combout\(0) & (!\input_linha~combout\(1) & (\input_linha~combout\(3) $ (\input_linha~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_linha~combout\(3),
	datab => \input_linha~combout\(0),
	datac => \input_linha~combout\(2),
	datad => \input_linha~combout\(1),
	combout => \fluxo_dados|entrada_chave|Mux7~0_combout\);

-- Location: LCCOMB_X56_Y8_N14
\fluxo_dados|entrada_chave|tecla[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[2]~9_combout\ = (\fluxo_dados|entrada_chave|Equal0~0_combout\ & (!\fluxo_dados|entrada_chave|Mux4~0_combout\ & ((!\fluxo_dados|entrada_chave|Equal2~0_combout\) # (!\fluxo_dados|entrada_chave|Mux7~0_combout\)))) # 
-- (!\fluxo_dados|entrada_chave|Equal0~0_combout\ & (((!\fluxo_dados|entrada_chave|Equal2~0_combout\) # (!\fluxo_dados|entrada_chave|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|entrada_chave|Equal0~0_combout\,
	datab => \fluxo_dados|entrada_chave|Mux4~0_combout\,
	datac => \fluxo_dados|entrada_chave|Mux7~0_combout\,
	datad => \fluxo_dados|entrada_chave|Equal2~0_combout\,
	combout => \fluxo_dados|entrada_chave|tecla[2]~9_combout\);

-- Location: LCCOMB_X57_Y8_N30
\fluxo_dados|entrada_chave|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|Equal1~0_combout\ = (!\input_col~combout\(2) & (\input_col~combout\(1) & !\input_col~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_col~combout\(2),
	datac => \input_col~combout\(1),
	datad => \input_col~combout\(0),
	combout => \fluxo_dados|entrada_chave|Equal1~0_combout\);

-- Location: LCCOMB_X56_Y8_N12
\fluxo_dados|entrada_chave|tecla[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[2]~10_combout\ = (\fluxo_dados|entrada_chave|tecla[2]~9_combout\ & ((!\fluxo_dados|entrada_chave|Equal1~0_combout\) # (!\fluxo_dados|entrada_chave|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|entrada_chave|Mux4~0_combout\,
	datac => \fluxo_dados|entrada_chave|tecla[2]~9_combout\,
	datad => \fluxo_dados|entrada_chave|Equal1~0_combout\,
	combout => \fluxo_dados|entrada_chave|tecla[2]~10_combout\);

-- Location: LCCOMB_X56_Y8_N4
\fluxo_dados|entrada_chave|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|Mux3~0_combout\ = (!\input_linha~combout\(0) & ((\input_linha~combout\(3) & (!\input_linha~combout\(2) & !\input_linha~combout\(1))) # (!\input_linha~combout\(3) & (\input_linha~combout\(2) $ (\input_linha~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_linha~combout\(3),
	datab => \input_linha~combout\(0),
	datac => \input_linha~combout\(2),
	datad => \input_linha~combout\(1),
	combout => \fluxo_dados|entrada_chave|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y8_N30
\fluxo_dados|entrada_chave|tecla[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[3]~4_combout\ = (\fluxo_dados|entrada_chave|Equal0~0_combout\ & (!\fluxo_dados|entrada_chave|Mux0~0_combout\ & ((!\fluxo_dados|entrada_chave|Equal1~0_combout\) # (!\fluxo_dados|entrada_chave|Mux3~0_combout\)))) # 
-- (!\fluxo_dados|entrada_chave|Equal0~0_combout\ & (((!\fluxo_dados|entrada_chave|Equal1~0_combout\) # (!\fluxo_dados|entrada_chave|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|entrada_chave|Equal0~0_combout\,
	datab => \fluxo_dados|entrada_chave|Mux0~0_combout\,
	datac => \fluxo_dados|entrada_chave|Mux3~0_combout\,
	datad => \fluxo_dados|entrada_chave|Equal1~0_combout\,
	combout => \fluxo_dados|entrada_chave|tecla[3]~4_combout\);

-- Location: LCCOMB_X56_Y8_N24
\fluxo_dados|entrada_chave|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|Mux6~0_combout\ = (!\input_linha~combout\(3) & ((\input_linha~combout\(0) & (!\input_linha~combout\(2) & !\input_linha~combout\(1))) # (!\input_linha~combout\(0) & (\input_linha~combout\(2) $ (\input_linha~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_linha~combout\(3),
	datab => \input_linha~combout\(0),
	datac => \input_linha~combout\(2),
	datad => \input_linha~combout\(1),
	combout => \fluxo_dados|entrada_chave|Mux6~0_combout\);

-- Location: LCCOMB_X56_Y8_N18
\fluxo_dados|entrada_chave|tecla[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[3]~5_combout\ = (\fluxo_dados|entrada_chave|tecla[3]~4_combout\ & ((!\fluxo_dados|entrada_chave|Equal2~0_combout\) # (!\fluxo_dados|entrada_chave|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|entrada_chave|tecla[3]~4_combout\,
	datac => \fluxo_dados|entrada_chave|Mux6~0_combout\,
	datad => \fluxo_dados|entrada_chave|Equal2~0_combout\,
	combout => \fluxo_dados|entrada_chave|tecla[3]~5_combout\);

-- Location: LCCOMB_X55_Y5_N14
\fluxo_dados|verif_numero|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|verif_numero|Equal0~0_combout\ = (\fluxo_dados|entrada_chave|tecla[0]~8_combout\ & (\fluxo_dados|entrada_chave|tecla[1]~3_combout\ & (\fluxo_dados|entrada_chave|tecla[2]~10_combout\ & \fluxo_dados|entrada_chave|tecla[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|entrada_chave|tecla[0]~8_combout\,
	datab => \fluxo_dados|entrada_chave|tecla[1]~3_combout\,
	datac => \fluxo_dados|entrada_chave|tecla[2]~10_combout\,
	datad => \fluxo_dados|entrada_chave|tecla[3]~5_combout\,
	combout => \fluxo_dados|verif_numero|Equal0~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X53_Y5_N15
\controle|teclado_passado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|verif_numero|Equal0~0_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|teclado_passado~regout\);

-- Location: LCCOMB_X55_Y5_N6
\fluxo_dados|verif_insert|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|verif_insert|Equal0~0_combout\ = (!\fluxo_dados|entrada_chave|tecla[0]~8_combout\ & (\fluxo_dados|entrada_chave|tecla[1]~3_combout\ & (!\fluxo_dados|entrada_chave|tecla[2]~10_combout\ & \fluxo_dados|entrada_chave|tecla[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|entrada_chave|tecla[0]~8_combout\,
	datab => \fluxo_dados|entrada_chave|tecla[1]~3_combout\,
	datac => \fluxo_dados|entrada_chave|tecla[2]~10_combout\,
	datad => \fluxo_dados|entrada_chave|tecla[3]~5_combout\,
	combout => \fluxo_dados|verif_insert|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y5_N0
\controle|insert_passado~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|insert_passado~feeder_combout\ = \fluxo_dados|verif_insert|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fluxo_dados|verif_insert|Equal0~0_combout\,
	combout => \controle|insert_passado~feeder_combout\);

-- Location: LCFF_X53_Y5_N1
\controle|insert_passado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|insert_passado~feeder_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|insert_passado~regout\);

-- Location: LCCOMB_X53_Y5_N14
\controle|estado_futuro.recebe_dig~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|estado_futuro.recebe_dig~4_combout\ = (\controle|estado_atual.leitura~regout\ & ((\controle|insert_passado~regout\) # (!\fluxo_dados|verif_insert|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|verif_insert|Equal0~0_combout\,
	datab => \controle|estado_atual.leitura~regout\,
	datad => \controle|insert_passado~regout\,
	combout => \controle|estado_futuro.recebe_dig~4_combout\);

-- Location: LCCOMB_X54_Y5_N2
\controle|estado_futuro.recebe_dig~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|estado_futuro.recebe_dig~5_combout\ = (!\fluxo_dados|verif_numero|Equal0~0_combout\ & (\controle|estado_futuro.recebe_dig~4_combout\ & \controle|teclado_passado~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|verif_numero|Equal0~0_combout\,
	datac => \controle|estado_futuro.recebe_dig~4_combout\,
	datad => \controle|teclado_passado~regout\,
	combout => \controle|estado_futuro.recebe_dig~5_combout\);

-- Location: CLKCTRL_G3
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X54_Y5_N3
\controle|estado_atual.recebe_dig\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|estado_futuro.recebe_dig~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|estado_atual.recebe_dig~regout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fechar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_fechar,
	combout => \fechar~combout\);

-- Location: LCCOMB_X53_Y5_N2
\controle|estado_futuro.verif_senha~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|estado_futuro.verif_senha~0_combout\ = (\fluxo_dados|verif_insert|Equal0~0_combout\ & (!\controle|insert_passado~regout\ & \controle|estado_atual.leitura~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|verif_insert|Equal0~0_combout\,
	datab => \controle|insert_passado~regout\,
	datad => \controle|estado_atual.leitura~regout\,
	combout => \controle|estado_futuro.verif_senha~0_combout\);

-- Location: LCCOMB_X53_Y4_N4
\controle|estado_atual.verif_senha~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|estado_atual.verif_senha~feeder_combout\ = \controle|estado_futuro.verif_senha~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controle|estado_futuro.verif_senha~0_combout\,
	combout => \controle|estado_atual.verif_senha~feeder_combout\);

-- Location: LCFF_X53_Y4_N5
\controle|estado_atual.verif_senha\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|estado_atual.verif_senha~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|estado_atual.verif_senha~regout\);

-- Location: LCFF_X53_Y5_N21
\controle|fechar_passado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fechar~combout\,
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|fechar_passado~regout\);

-- Location: LCCOMB_X53_Y5_N4
\controle|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|Selector1~0_combout\ = (\controle|estado_atual.abrir~regout\ & ((\controle|fechar_passado~regout\) # (!\fechar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fechar~combout\,
	datac => \controle|fechar_passado~regout\,
	datad => \controle|estado_atual.abrir~regout\,
	combout => \controle|Selector1~0_combout\);

-- Location: LCCOMB_X55_Y5_N18
\fluxo_dados|registrador_senha|reg_zero_tres|output[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|registrador_senha|reg_zero_tres|output[1]~feeder_combout\ = \fluxo_dados|entrada_chave|tecla[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fluxo_dados|entrada_chave|tecla[1]~3_combout\,
	combout => \fluxo_dados|registrador_senha|reg_zero_tres|output[1]~feeder_combout\);

-- Location: LCCOMB_X54_Y5_N14
\controle|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|WideOr1~combout\ = (!\controle|estado_atual.verif_senha~regout\ & (!\controle|estado_atual.leitura~regout\ & !\controle|estado_atual.recebe_dig~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|estado_atual.verif_senha~regout\,
	datab => \controle|estado_atual.leitura~regout\,
	datad => \controle|estado_atual.recebe_dig~regout\,
	combout => \controle|WideOr1~combout\);

-- Location: LCFF_X55_Y5_N19
\fluxo_dados|registrador_senha|reg_zero_tres|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fluxo_dados|registrador_senha|reg_zero_tres|output[1]~feeder_combout\,
	aclr => \controle|WideOr1~combout\,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1));

-- Location: LCFF_X55_Y5_N15
\fluxo_dados|registrador_senha|reg_zero_tres|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|entrada_chave|tecla[2]~10_combout\,
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2));

-- Location: LCCOMB_X56_Y8_N8
\fluxo_dados|entrada_chave|tecla[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[0]~7_combout\ = (!\input_linha~combout\(0) & (\input_linha~combout\(1) $ (\input_linha~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_linha~combout\(1),
	datac => \input_linha~combout\(0),
	datad => \input_linha~combout\(3),
	combout => \fluxo_dados|entrada_chave|tecla[0]~7_combout\);

-- Location: LCCOMB_X56_Y8_N26
\fluxo_dados|entrada_chave|tecla[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|entrada_chave|tecla[0]~8_combout\ = (\fluxo_dados|entrada_chave|tecla[0]~6_combout\ & (!\fluxo_dados|entrada_chave|tecla[0]~7_combout\ & ((!\fluxo_dados|entrada_chave|Equal1~0_combout\) # (!\fluxo_dados|entrada_chave|Mux4~0_combout\)))) # 
-- (!\fluxo_dados|entrada_chave|tecla[0]~6_combout\ & (((!\fluxo_dados|entrada_chave|Equal1~0_combout\)) # (!\fluxo_dados|entrada_chave|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|entrada_chave|tecla[0]~6_combout\,
	datab => \fluxo_dados|entrada_chave|Mux4~0_combout\,
	datac => \fluxo_dados|entrada_chave|tecla[0]~7_combout\,
	datad => \fluxo_dados|entrada_chave|Equal1~0_combout\,
	combout => \fluxo_dados|entrada_chave|tecla[0]~8_combout\);

-- Location: LCCOMB_X55_Y5_N10
\fluxo_dados|registrador_senha|reg_zero_tres|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|registrador_senha|reg_zero_tres|output[0]~feeder_combout\ = \fluxo_dados|entrada_chave|tecla[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fluxo_dados|entrada_chave|tecla[0]~8_combout\,
	combout => \fluxo_dados|registrador_senha|reg_zero_tres|output[0]~feeder_combout\);

-- Location: LCFF_X55_Y5_N11
\fluxo_dados|registrador_senha|reg_zero_tres|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fluxo_dados|registrador_senha|reg_zero_tres|output[0]~feeder_combout\,
	aclr => \controle|WideOr1~combout\,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0));

-- Location: LCCOMB_X55_Y5_N4
\fluxo_dados|verif_senha|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|verif_senha|Equal0~0_combout\ = (\fluxo_dados|registrador_senha|reg_zero_tres|output\(3)) # ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(1)) # ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(0)) # 
-- (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3),
	datab => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2),
	datad => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0),
	combout => \fluxo_dados|verif_senha|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y5_N12
\fluxo_dados|registrador_senha|reg_zero_tres|output[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|registrador_senha|reg_zero_tres|output[3]~feeder_combout\ = \fluxo_dados|entrada_chave|tecla[3]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fluxo_dados|entrada_chave|tecla[3]~5_combout\,
	combout => \fluxo_dados|registrador_senha|reg_zero_tres|output[3]~feeder_combout\);

-- Location: LCFF_X55_Y5_N13
\fluxo_dados|registrador_senha|reg_zero_tres|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fluxo_dados|registrador_senha|reg_zero_tres|output[3]~feeder_combout\,
	aclr => \controle|WideOr1~combout\,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3));

-- Location: LCFF_X55_Y5_N3
\fluxo_dados|registrador_senha|reg_quatro_sete|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3));

-- Location: LCFF_X55_Y5_N25
\fluxo_dados|registrador_senha|reg_quatro_sete|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0));

-- Location: LCFF_X54_Y5_N15
\fluxo_dados|registrador_senha|reg_quatro_sete|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2));

-- Location: LCCOMB_X55_Y5_N20
\fluxo_dados|verif_senha|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|verif_senha|Equal0~1_combout\ = (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1)) # ((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3)) # ((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0)) # 
-- (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1),
	datab => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3),
	datac => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0),
	datad => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2),
	combout => \fluxo_dados|verif_senha|Equal0~1_combout\);

-- Location: LCFF_X54_Y5_N31
\fluxo_dados|registrador_senha|reg_oito_onze|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2));

-- Location: LCFF_X54_Y5_N19
\fluxo_dados|registrador_senha|reg_quinze_doze|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(2));

-- Location: LCFF_X54_Y5_N17
\fluxo_dados|registrador_senha|reg_oito_onze|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3));

-- Location: LCFF_X54_Y5_N5
\fluxo_dados|registrador_senha|reg_quinze_doze|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(3));

-- Location: LCFF_X55_Y5_N17
\fluxo_dados|registrador_senha|reg_quatro_sete|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1));

-- Location: LCFF_X54_Y5_N11
\fluxo_dados|registrador_senha|reg_oito_onze|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1));

-- Location: LCFF_X54_Y5_N13
\fluxo_dados|registrador_senha|reg_quinze_doze|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(1));

-- Location: LCCOMB_X54_Y5_N8
\fluxo_dados|verif_senha|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|verif_senha|Equal0~3_combout\ = (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0)) # ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2)) # ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3)) # 
-- (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(2),
	datac => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(1),
	combout => \fluxo_dados|verif_senha|Equal0~3_combout\);

-- Location: LCCOMB_X55_Y5_N30
\fluxo_dados|verif_senha|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|verif_senha|Equal0~4_combout\ = (\fluxo_dados|verif_senha|Equal0~2_combout\) # ((\fluxo_dados|verif_senha|Equal0~0_combout\) # ((\fluxo_dados|verif_senha|Equal0~1_combout\) # (\fluxo_dados|verif_senha|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|verif_senha|Equal0~2_combout\,
	datab => \fluxo_dados|verif_senha|Equal0~0_combout\,
	datac => \fluxo_dados|verif_senha|Equal0~1_combout\,
	datad => \fluxo_dados|verif_senha|Equal0~3_combout\,
	combout => \fluxo_dados|verif_senha|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y5_N26
\controle|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|Selector1~1_combout\ = (\controle|Selector1~0_combout\) # ((\controle|estado_atual.verif_senha~regout\ & !\fluxo_dados|verif_senha|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|estado_atual.verif_senha~regout\,
	datac => \controle|Selector1~0_combout\,
	datad => \fluxo_dados|verif_senha|Equal0~4_combout\,
	combout => \controle|Selector1~1_combout\);

-- Location: LCFF_X54_Y5_N27
\controle|estado_atual.abrir\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|Selector1~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|estado_atual.abrir~regout\);

-- Location: LCCOMB_X54_Y5_N20
\controle|estado_atual.inicio~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|estado_atual.inicio~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controle|estado_atual.inicio~feeder_combout\);

-- Location: LCFF_X54_Y5_N21
\controle|estado_atual.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|estado_atual.inicio~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|estado_atual.inicio~regout\);

-- Location: LCCOMB_X53_Y5_N30
\controle|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|Selector0~2_combout\ = ((!\controle|fechar_passado~regout\ & (\fechar~combout\ & \controle|estado_atual.abrir~regout\))) # (!\controle|estado_atual.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|fechar_passado~regout\,
	datab => \fechar~combout\,
	datac => \controle|estado_atual.abrir~regout\,
	datad => \controle|estado_atual.inicio~regout\,
	combout => \controle|Selector0~2_combout\);

-- Location: LCCOMB_X54_Y5_N16
\controle|aberto\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|aberto~combout\ = (\controle|estado_atual.abrir~regout\) # (!\controle|estado_atual.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|estado_atual.inicio~regout\,
	datad => \controle|estado_atual.abrir~regout\,
	combout => \controle|aberto~combout\);

-- Location: LCCOMB_X51_Y6_N14
\fluxo_dados|cont_tent|cnt~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~15_combout\ = (\fluxo_dados|cont_tent|Add0~28_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~28_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~15_combout\);

-- Location: LCFF_X51_Y6_N15
\fluxo_dados|cont_tent|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(14));

-- Location: LCCOMB_X51_Y5_N12
\fluxo_dados|cont_tent|cnt~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~14_combout\ = (\fluxo_dados|cont_tent|Add0~26_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~26_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~14_combout\);

-- Location: LCFF_X51_Y5_N13
\fluxo_dados|cont_tent|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(13));

-- Location: LCCOMB_X51_Y5_N26
\fluxo_dados|cont_tent|cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~13_combout\ = (\fluxo_dados|cont_tent|Add0~24_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~24_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~13_combout\);

-- Location: LCFF_X51_Y5_N27
\fluxo_dados|cont_tent|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(12));

-- Location: LCCOMB_X51_Y5_N24
\fluxo_dados|cont_tent|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~11_combout\ = (\fluxo_dados|cont_tent|Add0~20_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~20_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~11_combout\);

-- Location: LCFF_X51_Y5_N25
\fluxo_dados|cont_tent|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(10));

-- Location: LCCOMB_X51_Y6_N30
\fluxo_dados|cont_tent|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~8_combout\ = (\fluxo_dados|cont_tent|Add0~14_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~14_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~8_combout\);

-- Location: LCFF_X51_Y6_N31
\fluxo_dados|cont_tent|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(7));

-- Location: LCCOMB_X49_Y5_N10
\fluxo_dados|cont_tent|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~7_combout\ = (\fluxo_dados|cont_tent|Add0~12_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~12_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~7_combout\);

-- Location: LCFF_X49_Y5_N11
\fluxo_dados|cont_tent|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(6));

-- Location: LCCOMB_X51_Y6_N24
\fluxo_dados|cont_tent|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~5_combout\ = (\fluxo_dados|cont_tent|Add0~8_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~8_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~5_combout\);

-- Location: LCFF_X51_Y6_N25
\fluxo_dados|cont_tent|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(4));

-- Location: LCCOMB_X50_Y6_N2
\fluxo_dados|cont_tent|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~2_combout\ = (\fluxo_dados|cont_tent|cnt\(1) & (!\fluxo_dados|cont_tent|Add0~1\)) # (!\fluxo_dados|cont_tent|cnt\(1) & ((\fluxo_dados|cont_tent|Add0~1\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~3\ = CARRY((!\fluxo_dados|cont_tent|Add0~1\) # (!\fluxo_dados|cont_tent|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(1),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~1\,
	combout => \fluxo_dados|cont_tent|Add0~2_combout\,
	cout => \fluxo_dados|cont_tent|Add0~3\);

-- Location: LCCOMB_X50_Y6_N8
\fluxo_dados|cont_tent|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~8_combout\ = (\fluxo_dados|cont_tent|cnt\(4) & (\fluxo_dados|cont_tent|Add0~7\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(4) & (!\fluxo_dados|cont_tent|Add0~7\ & VCC))
-- \fluxo_dados|cont_tent|Add0~9\ = CARRY((\fluxo_dados|cont_tent|cnt\(4) & !\fluxo_dados|cont_tent|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(4),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~7\,
	combout => \fluxo_dados|cont_tent|Add0~8_combout\,
	cout => \fluxo_dados|cont_tent|Add0~9\);

-- Location: LCCOMB_X50_Y6_N10
\fluxo_dados|cont_tent|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~10_combout\ = (\fluxo_dados|cont_tent|cnt\(5) & (!\fluxo_dados|cont_tent|Add0~9\)) # (!\fluxo_dados|cont_tent|cnt\(5) & ((\fluxo_dados|cont_tent|Add0~9\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~11\ = CARRY((!\fluxo_dados|cont_tent|Add0~9\) # (!\fluxo_dados|cont_tent|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(5),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~9\,
	combout => \fluxo_dados|cont_tent|Add0~10_combout\,
	cout => \fluxo_dados|cont_tent|Add0~11\);

-- Location: LCCOMB_X50_Y6_N14
\fluxo_dados|cont_tent|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~14_combout\ = (\fluxo_dados|cont_tent|cnt\(7) & (!\fluxo_dados|cont_tent|Add0~13\)) # (!\fluxo_dados|cont_tent|cnt\(7) & ((\fluxo_dados|cont_tent|Add0~13\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~15\ = CARRY((!\fluxo_dados|cont_tent|Add0~13\) # (!\fluxo_dados|cont_tent|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(7),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~13\,
	combout => \fluxo_dados|cont_tent|Add0~14_combout\,
	cout => \fluxo_dados|cont_tent|Add0~15\);

-- Location: LCCOMB_X50_Y6_N16
\fluxo_dados|cont_tent|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~16_combout\ = (\fluxo_dados|cont_tent|cnt\(8) & (\fluxo_dados|cont_tent|Add0~15\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(8) & (!\fluxo_dados|cont_tent|Add0~15\ & VCC))
-- \fluxo_dados|cont_tent|Add0~17\ = CARRY((\fluxo_dados|cont_tent|cnt\(8) & !\fluxo_dados|cont_tent|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(8),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~15\,
	combout => \fluxo_dados|cont_tent|Add0~16_combout\,
	cout => \fluxo_dados|cont_tent|Add0~17\);

-- Location: LCCOMB_X51_Y6_N20
\fluxo_dados|cont_tent|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~9_combout\ = (!\controle|aberto~combout\ & (\fluxo_dados|cont_tent|Add0~16_combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|aberto~combout\,
	datab => \fluxo_dados|cont_tent|Add0~16_combout\,
	datac => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~9_combout\);

-- Location: LCFF_X51_Y6_N21
\fluxo_dados|cont_tent|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(8));

-- Location: LCCOMB_X50_Y6_N18
\fluxo_dados|cont_tent|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~18_combout\ = (\fluxo_dados|cont_tent|cnt\(9) & (!\fluxo_dados|cont_tent|Add0~17\)) # (!\fluxo_dados|cont_tent|cnt\(9) & ((\fluxo_dados|cont_tent|Add0~17\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~19\ = CARRY((!\fluxo_dados|cont_tent|Add0~17\) # (!\fluxo_dados|cont_tent|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(9),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~17\,
	combout => \fluxo_dados|cont_tent|Add0~18_combout\,
	cout => \fluxo_dados|cont_tent|Add0~19\);

-- Location: LCCOMB_X50_Y6_N22
\fluxo_dados|cont_tent|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~22_combout\ = (\fluxo_dados|cont_tent|cnt\(11) & (!\fluxo_dados|cont_tent|Add0~21\)) # (!\fluxo_dados|cont_tent|cnt\(11) & ((\fluxo_dados|cont_tent|Add0~21\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~23\ = CARRY((!\fluxo_dados|cont_tent|Add0~21\) # (!\fluxo_dados|cont_tent|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(11),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~21\,
	combout => \fluxo_dados|cont_tent|Add0~22_combout\,
	cout => \fluxo_dados|cont_tent|Add0~23\);

-- Location: LCCOMB_X51_Y6_N28
\fluxo_dados|cont_tent|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~12_combout\ = (!\controle|aberto~combout\ & (\fluxo_dados|cont_tent|Add0~22_combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|aberto~combout\,
	datab => \fluxo_dados|cont_tent|Add0~22_combout\,
	datac => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~12_combout\);

-- Location: LCFF_X51_Y6_N29
\fluxo_dados|cont_tent|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(11));

-- Location: LCCOMB_X50_Y6_N26
\fluxo_dados|cont_tent|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~26_combout\ = (\fluxo_dados|cont_tent|cnt\(13) & (!\fluxo_dados|cont_tent|Add0~25\)) # (!\fluxo_dados|cont_tent|cnt\(13) & ((\fluxo_dados|cont_tent|Add0~25\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~27\ = CARRY((!\fluxo_dados|cont_tent|Add0~25\) # (!\fluxo_dados|cont_tent|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(13),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~25\,
	combout => \fluxo_dados|cont_tent|Add0~26_combout\,
	cout => \fluxo_dados|cont_tent|Add0~27\);

-- Location: LCCOMB_X50_Y6_N28
\fluxo_dados|cont_tent|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~28_combout\ = (\fluxo_dados|cont_tent|cnt\(14) & (\fluxo_dados|cont_tent|Add0~27\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(14) & (!\fluxo_dados|cont_tent|Add0~27\ & VCC))
-- \fluxo_dados|cont_tent|Add0~29\ = CARRY((\fluxo_dados|cont_tent|cnt\(14) & !\fluxo_dados|cont_tent|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(14),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~27\,
	combout => \fluxo_dados|cont_tent|Add0~28_combout\,
	cout => \fluxo_dados|cont_tent|Add0~29\);

-- Location: LCCOMB_X51_Y6_N0
\fluxo_dados|cont_tent|cnt~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~16_combout\ = (\fluxo_dados|cont_tent|Add0~30_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~30_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~16_combout\);

-- Location: LCFF_X51_Y6_N1
\fluxo_dados|cont_tent|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(15));

-- Location: LCCOMB_X50_Y6_N30
\fluxo_dados|cont_tent|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~30_combout\ = (\fluxo_dados|cont_tent|cnt\(15) & (!\fluxo_dados|cont_tent|Add0~29\)) # (!\fluxo_dados|cont_tent|cnt\(15) & ((\fluxo_dados|cont_tent|Add0~29\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~31\ = CARRY((!\fluxo_dados|cont_tent|Add0~29\) # (!\fluxo_dados|cont_tent|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(15),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~29\,
	combout => \fluxo_dados|cont_tent|Add0~30_combout\,
	cout => \fluxo_dados|cont_tent|Add0~31\);

-- Location: LCCOMB_X49_Y5_N2
\fluxo_dados|cont_tent|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Equal0~3_combout\ = (\fluxo_dados|cont_tent|Add0~24_combout\) # ((\fluxo_dados|cont_tent|Add0~28_combout\) # ((\fluxo_dados|cont_tent|Add0~30_combout\) # (\fluxo_dados|cont_tent|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~24_combout\,
	datab => \fluxo_dados|cont_tent|Add0~28_combout\,
	datac => \fluxo_dados|cont_tent|Add0~30_combout\,
	datad => \fluxo_dados|cont_tent|Add0~26_combout\,
	combout => \fluxo_dados|cont_tent|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y6_N18
\fluxo_dados|cont_tent|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Equal0~1_combout\ = (\fluxo_dados|cont_tent|Add0~12_combout\) # ((\fluxo_dados|cont_tent|Add0~10_combout\) # ((\fluxo_dados|cont_tent|Add0~8_combout\) # (\fluxo_dados|cont_tent|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~12_combout\,
	datab => \fluxo_dados|cont_tent|Add0~10_combout\,
	datac => \fluxo_dados|cont_tent|Add0~8_combout\,
	datad => \fluxo_dados|cont_tent|Add0~14_combout\,
	combout => \fluxo_dados|cont_tent|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y5_N12
\fluxo_dados|cont_tent|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Equal0~2_combout\ = (\fluxo_dados|cont_tent|Add0~20_combout\) # ((\fluxo_dados|cont_tent|Add0~16_combout\) # ((\fluxo_dados|cont_tent|Add0~22_combout\) # (\fluxo_dados|cont_tent|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~20_combout\,
	datab => \fluxo_dados|cont_tent|Add0~16_combout\,
	datac => \fluxo_dados|cont_tent|Add0~22_combout\,
	datad => \fluxo_dados|cont_tent|Add0~18_combout\,
	combout => \fluxo_dados|cont_tent|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y5_N16
\fluxo_dados|cont_tent|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Equal0~4_combout\ = (\fluxo_dados|cont_tent|Equal0~0_combout\) # ((\fluxo_dados|cont_tent|Equal0~3_combout\) # ((\fluxo_dados|cont_tent|Equal0~1_combout\) # (\fluxo_dados|cont_tent|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~0_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~3_combout\,
	datac => \fluxo_dados|cont_tent|Equal0~1_combout\,
	datad => \fluxo_dados|cont_tent|Equal0~2_combout\,
	combout => \fluxo_dados|cont_tent|Equal0~4_combout\);

-- Location: LCCOMB_X51_Y5_N30
\fluxo_dados|cont_tent|cnt~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~19_combout\ = (\fluxo_dados|cont_tent|Add0~36_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~36_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~19_combout\);

-- Location: LCFF_X51_Y5_N31
\fluxo_dados|cont_tent|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(18));

-- Location: LCCOMB_X51_Y5_N8
\fluxo_dados|cont_tent|cnt~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~18_combout\ = (\fluxo_dados|cont_tent|Add0~34_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~34_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~18_combout\);

-- Location: LCFF_X51_Y5_N9
\fluxo_dados|cont_tent|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(17));

-- Location: LCCOMB_X51_Y5_N10
\fluxo_dados|cont_tent|cnt~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~17_combout\ = (\fluxo_dados|cont_tent|Add0~32_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|cnt~0_combout\) # (\fluxo_dados|cont_tent|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~32_combout\,
	datab => \fluxo_dados|cont_tent|cnt~0_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|Equal0~4_combout\,
	combout => \fluxo_dados|cont_tent|cnt~17_combout\);

-- Location: LCFF_X51_Y5_N11
\fluxo_dados|cont_tent|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(16));

-- Location: LCCOMB_X50_Y5_N2
\fluxo_dados|cont_tent|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~34_combout\ = (\fluxo_dados|cont_tent|cnt\(17) & (!\fluxo_dados|cont_tent|Add0~33\)) # (!\fluxo_dados|cont_tent|cnt\(17) & ((\fluxo_dados|cont_tent|Add0~33\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~35\ = CARRY((!\fluxo_dados|cont_tent|Add0~33\) # (!\fluxo_dados|cont_tent|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(17),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~33\,
	combout => \fluxo_dados|cont_tent|Add0~34_combout\,
	cout => \fluxo_dados|cont_tent|Add0~35\);

-- Location: LCCOMB_X50_Y5_N4
\fluxo_dados|cont_tent|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~36_combout\ = (\fluxo_dados|cont_tent|cnt\(18) & (\fluxo_dados|cont_tent|Add0~35\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(18) & (!\fluxo_dados|cont_tent|Add0~35\ & VCC))
-- \fluxo_dados|cont_tent|Add0~37\ = CARRY((\fluxo_dados|cont_tent|cnt\(18) & !\fluxo_dados|cont_tent|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(18),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~35\,
	combout => \fluxo_dados|cont_tent|Add0~36_combout\,
	cout => \fluxo_dados|cont_tent|Add0~37\);

-- Location: LCCOMB_X50_Y5_N6
\fluxo_dados|cont_tent|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~38_combout\ = (\fluxo_dados|cont_tent|cnt\(19) & (!\fluxo_dados|cont_tent|Add0~37\)) # (!\fluxo_dados|cont_tent|cnt\(19) & ((\fluxo_dados|cont_tent|Add0~37\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~39\ = CARRY((!\fluxo_dados|cont_tent|Add0~37\) # (!\fluxo_dados|cont_tent|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(19),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~37\,
	combout => \fluxo_dados|cont_tent|Add0~38_combout\,
	cout => \fluxo_dados|cont_tent|Add0~39\);

-- Location: LCCOMB_X51_Y5_N18
\fluxo_dados|cont_tent|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Equal0~5_combout\ = (\fluxo_dados|cont_tent|Add0~32_combout\) # ((\fluxo_dados|cont_tent|Add0~36_combout\) # ((\fluxo_dados|cont_tent|Add0~38_combout\) # (\fluxo_dados|cont_tent|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~32_combout\,
	datab => \fluxo_dados|cont_tent|Add0~36_combout\,
	datac => \fluxo_dados|cont_tent|Add0~38_combout\,
	datad => \fluxo_dados|cont_tent|Add0~34_combout\,
	combout => \fluxo_dados|cont_tent|Equal0~5_combout\);

-- Location: LCCOMB_X51_Y5_N22
\fluxo_dados|cont_tent|cnt~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~24_combout\ = (\fluxo_dados|cont_tent|Add0~46_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~46_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~24_combout\);

-- Location: LCFF_X51_Y5_N23
\fluxo_dados|cont_tent|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(23));

-- Location: LCCOMB_X50_Y5_N8
\fluxo_dados|cont_tent|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~40_combout\ = (\fluxo_dados|cont_tent|cnt\(20) & (\fluxo_dados|cont_tent|Add0~39\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(20) & (!\fluxo_dados|cont_tent|Add0~39\ & VCC))
-- \fluxo_dados|cont_tent|Add0~41\ = CARRY((\fluxo_dados|cont_tent|cnt\(20) & !\fluxo_dados|cont_tent|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(20),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~39\,
	combout => \fluxo_dados|cont_tent|Add0~40_combout\,
	cout => \fluxo_dados|cont_tent|Add0~41\);

-- Location: LCCOMB_X49_Y5_N26
\fluxo_dados|cont_tent|cnt~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~21_combout\ = (\fluxo_dados|cont_tent|Add0~40_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datab => \fluxo_dados|cont_tent|Add0~40_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~21_combout\);

-- Location: LCFF_X49_Y5_N27
\fluxo_dados|cont_tent|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(20));

-- Location: LCCOMB_X50_Y5_N12
\fluxo_dados|cont_tent|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~44_combout\ = (\fluxo_dados|cont_tent|cnt\(22) & (\fluxo_dados|cont_tent|Add0~43\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(22) & (!\fluxo_dados|cont_tent|Add0~43\ & VCC))
-- \fluxo_dados|cont_tent|Add0~45\ = CARRY((\fluxo_dados|cont_tent|cnt\(22) & !\fluxo_dados|cont_tent|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(22),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~43\,
	combout => \fluxo_dados|cont_tent|Add0~44_combout\,
	cout => \fluxo_dados|cont_tent|Add0~45\);

-- Location: LCCOMB_X49_Y5_N24
\fluxo_dados|cont_tent|cnt~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~23_combout\ = (\fluxo_dados|cont_tent|Add0~44_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datab => \fluxo_dados|cont_tent|Add0~44_combout\,
	datac => \fluxo_dados|cont_tent|cnt~0_combout\,
	datad => \controle|aberto~combout\,
	combout => \fluxo_dados|cont_tent|cnt~23_combout\);

-- Location: LCFF_X49_Y5_N25
\fluxo_dados|cont_tent|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(22));

-- Location: LCCOMB_X50_Y5_N16
\fluxo_dados|cont_tent|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~48_combout\ = (\fluxo_dados|cont_tent|cnt\(24) & (\fluxo_dados|cont_tent|Add0~47\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(24) & (!\fluxo_dados|cont_tent|Add0~47\ & VCC))
-- \fluxo_dados|cont_tent|Add0~49\ = CARRY((\fluxo_dados|cont_tent|cnt\(24) & !\fluxo_dados|cont_tent|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(24),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~47\,
	combout => \fluxo_dados|cont_tent|Add0~48_combout\,
	cout => \fluxo_dados|cont_tent|Add0~49\);

-- Location: LCCOMB_X49_Y5_N28
\fluxo_dados|cont_tent|cnt~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~26_combout\ = (\fluxo_dados|cont_tent|Add0~50_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datab => \fluxo_dados|cont_tent|Add0~50_combout\,
	datac => \fluxo_dados|cont_tent|cnt~0_combout\,
	datad => \controle|aberto~combout\,
	combout => \fluxo_dados|cont_tent|cnt~26_combout\);

-- Location: LCFF_X49_Y5_N29
\fluxo_dados|cont_tent|cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(25));

-- Location: LCCOMB_X50_Y5_N18
\fluxo_dados|cont_tent|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~50_combout\ = (\fluxo_dados|cont_tent|cnt\(25) & (!\fluxo_dados|cont_tent|Add0~49\)) # (!\fluxo_dados|cont_tent|cnt\(25) & ((\fluxo_dados|cont_tent|Add0~49\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~51\ = CARRY((!\fluxo_dados|cont_tent|Add0~49\) # (!\fluxo_dados|cont_tent|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(25),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~49\,
	combout => \fluxo_dados|cont_tent|Add0~50_combout\,
	cout => \fluxo_dados|cont_tent|Add0~51\);

-- Location: LCCOMB_X50_Y5_N22
\fluxo_dados|cont_tent|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~54_combout\ = (\fluxo_dados|cont_tent|cnt\(27) & (!\fluxo_dados|cont_tent|Add0~53\)) # (!\fluxo_dados|cont_tent|cnt\(27) & ((\fluxo_dados|cont_tent|Add0~53\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~55\ = CARRY((!\fluxo_dados|cont_tent|Add0~53\) # (!\fluxo_dados|cont_tent|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(27),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~53\,
	combout => \fluxo_dados|cont_tent|Add0~54_combout\,
	cout => \fluxo_dados|cont_tent|Add0~55\);

-- Location: LCCOMB_X51_Y5_N14
\fluxo_dados|cont_tent|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Equal0~7_combout\ = (\fluxo_dados|cont_tent|Add0~52_combout\) # ((\fluxo_dados|cont_tent|Add0~48_combout\) # ((\fluxo_dados|cont_tent|Add0~50_combout\) # (\fluxo_dados|cont_tent|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~52_combout\,
	datab => \fluxo_dados|cont_tent|Add0~48_combout\,
	datac => \fluxo_dados|cont_tent|Add0~50_combout\,
	datad => \fluxo_dados|cont_tent|Add0~54_combout\,
	combout => \fluxo_dados|cont_tent|Equal0~7_combout\);

-- Location: LCCOMB_X49_Y5_N4
\fluxo_dados|cont_tent|cnt~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~30_combout\ = (\fluxo_dados|cont_tent|Add0~58_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~58_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \fluxo_dados|cont_tent|cnt~0_combout\,
	datad => \controle|aberto~combout\,
	combout => \fluxo_dados|cont_tent|cnt~30_combout\);

-- Location: LCFF_X49_Y5_N5
\fluxo_dados|cont_tent|cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(29));

-- Location: LCCOMB_X50_Y5_N24
\fluxo_dados|cont_tent|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~56_combout\ = (\fluxo_dados|cont_tent|cnt\(28) & (\fluxo_dados|cont_tent|Add0~55\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(28) & (!\fluxo_dados|cont_tent|Add0~55\ & VCC))
-- \fluxo_dados|cont_tent|Add0~57\ = CARRY((\fluxo_dados|cont_tent|cnt\(28) & !\fluxo_dados|cont_tent|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(28),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~55\,
	combout => \fluxo_dados|cont_tent|Add0~56_combout\,
	cout => \fluxo_dados|cont_tent|Add0~57\);

-- Location: LCCOMB_X49_Y5_N22
\fluxo_dados|cont_tent|cnt~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~29_combout\ = (\fluxo_dados|cont_tent|Add0~56_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datab => \fluxo_dados|cont_tent|Add0~56_combout\,
	datac => \fluxo_dados|cont_tent|cnt~0_combout\,
	datad => \controle|aberto~combout\,
	combout => \fluxo_dados|cont_tent|cnt~29_combout\);

-- Location: LCFF_X49_Y5_N23
\fluxo_dados|cont_tent|cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(28));

-- Location: LCCOMB_X50_Y5_N26
\fluxo_dados|cont_tent|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~58_combout\ = (\fluxo_dados|cont_tent|cnt\(29) & (!\fluxo_dados|cont_tent|Add0~57\)) # (!\fluxo_dados|cont_tent|cnt\(29) & ((\fluxo_dados|cont_tent|Add0~57\) # (GND)))
-- \fluxo_dados|cont_tent|Add0~59\ = CARRY((!\fluxo_dados|cont_tent|Add0~57\) # (!\fluxo_dados|cont_tent|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(29),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~57\,
	combout => \fluxo_dados|cont_tent|Add0~58_combout\,
	cout => \fluxo_dados|cont_tent|Add0~59\);

-- Location: LCCOMB_X49_Y5_N8
\fluxo_dados|cont_tent|cnt~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~32_combout\ = (\fluxo_dados|cont_tent|Add0~62_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~62_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datac => \fluxo_dados|cont_tent|cnt~0_combout\,
	datad => \controle|aberto~combout\,
	combout => \fluxo_dados|cont_tent|cnt~32_combout\);

-- Location: LCFF_X49_Y5_N9
\fluxo_dados|cont_tent|cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(31));

-- Location: LCCOMB_X50_Y5_N28
\fluxo_dados|cont_tent|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~60_combout\ = (\fluxo_dados|cont_tent|cnt\(30) & (\fluxo_dados|cont_tent|Add0~59\ $ (GND))) # (!\fluxo_dados|cont_tent|cnt\(30) & (!\fluxo_dados|cont_tent|Add0~59\ & VCC))
-- \fluxo_dados|cont_tent|Add0~61\ = CARRY((\fluxo_dados|cont_tent|cnt\(30) & !\fluxo_dados|cont_tent|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fluxo_dados|cont_tent|cnt\(30),
	datad => VCC,
	cin => \fluxo_dados|cont_tent|Add0~59\,
	combout => \fluxo_dados|cont_tent|Add0~60_combout\,
	cout => \fluxo_dados|cont_tent|Add0~61\);

-- Location: LCCOMB_X49_Y5_N18
\fluxo_dados|cont_tent|cnt~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~31_combout\ = (\fluxo_dados|cont_tent|Add0~60_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datab => \fluxo_dados|cont_tent|Add0~60_combout\,
	datac => \fluxo_dados|cont_tent|cnt~0_combout\,
	datad => \controle|aberto~combout\,
	combout => \fluxo_dados|cont_tent|cnt~31_combout\);

-- Location: LCFF_X49_Y5_N19
\fluxo_dados|cont_tent|cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(30));

-- Location: LCCOMB_X50_Y5_N30
\fluxo_dados|cont_tent|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Add0~62_combout\ = \fluxo_dados|cont_tent|Add0~61\ $ (\fluxo_dados|cont_tent|cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fluxo_dados|cont_tent|cnt\(31),
	cin => \fluxo_dados|cont_tent|Add0~61\,
	combout => \fluxo_dados|cont_tent|Add0~62_combout\);

-- Location: LCCOMB_X51_Y5_N0
\fluxo_dados|cont_tent|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|Equal0~8_combout\ = (\fluxo_dados|cont_tent|Add0~56_combout\) # ((\fluxo_dados|cont_tent|Add0~58_combout\) # ((\fluxo_dados|cont_tent|Add0~62_combout\) # (\fluxo_dados|cont_tent|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~56_combout\,
	datab => \fluxo_dados|cont_tent|Add0~58_combout\,
	datac => \fluxo_dados|cont_tent|Add0~62_combout\,
	datad => \fluxo_dados|cont_tent|Add0~60_combout\,
	combout => \fluxo_dados|cont_tent|Equal0~8_combout\);

-- Location: LCCOMB_X51_Y5_N2
\fluxo_dados|cont_tent|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~0_combout\ = (\fluxo_dados|cont_tent|Equal0~6_combout\) # ((\fluxo_dados|cont_tent|Equal0~5_combout\) # ((\fluxo_dados|cont_tent|Equal0~7_combout\) # (\fluxo_dados|cont_tent|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~6_combout\,
	datab => \fluxo_dados|cont_tent|Equal0~5_combout\,
	datac => \fluxo_dados|cont_tent|Equal0~7_combout\,
	datad => \fluxo_dados|cont_tent|Equal0~8_combout\,
	combout => \fluxo_dados|cont_tent|cnt~0_combout\);

-- Location: LCCOMB_X51_Y5_N28
\fluxo_dados|cont_tent|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~2_combout\ = (\fluxo_dados|cont_tent|Add0~4_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|cnt~0_combout\) # (\fluxo_dados|cont_tent|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Add0~4_combout\,
	datab => \fluxo_dados|cont_tent|cnt~0_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|Equal0~4_combout\,
	combout => \fluxo_dados|cont_tent|cnt~2_combout\);

-- Location: LCFF_X51_Y5_N29
\fluxo_dados|cont_tent|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(2));

-- Location: LCCOMB_X49_Y5_N0
\fluxo_dados|cont_tent|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|cont_tent|cnt~3_combout\ = (\fluxo_dados|cont_tent|Add0~2_combout\ & (!\controle|aberto~combout\ & ((\fluxo_dados|cont_tent|Equal0~4_combout\) # (\fluxo_dados|cont_tent|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|Equal0~4_combout\,
	datab => \fluxo_dados|cont_tent|Add0~2_combout\,
	datac => \controle|aberto~combout\,
	datad => \fluxo_dados|cont_tent|cnt~0_combout\,
	combout => \fluxo_dados|cont_tent|cnt~3_combout\);

-- Location: LCFF_X49_Y5_N1
\fluxo_dados|cont_tent|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controle|estado_atual.verif_senha~clkctrl_outclk\,
	datain => \fluxo_dados|cont_tent|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|cont_tent|cnt\(1));

-- Location: LCCOMB_X54_Y5_N6
\controle|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|Selector2~0_combout\ = (\fluxo_dados|cont_tent|cnt\(0) & (\fluxo_dados|cont_tent|cnt\(2) & !\fluxo_dados|cont_tent|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|cont_tent|cnt\(0),
	datab => \fluxo_dados|cont_tent|cnt\(2),
	datad => \fluxo_dados|cont_tent|cnt\(1),
	combout => \controle|Selector2~0_combout\);

-- Location: LCCOMB_X54_Y5_N28
\controle|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|Selector0~3_combout\ = (\controle|estado_atual.recebe_dig~regout\) # ((\controle|Selector0~2_combout\) # ((\controle|estado_atual.erro~regout\ & !\controle|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle|estado_atual.erro~regout\,
	datab => \controle|estado_atual.recebe_dig~regout\,
	datac => \controle|Selector0~2_combout\,
	datad => \controle|Selector2~0_combout\,
	combout => \controle|Selector0~3_combout\);

-- Location: LCCOMB_X54_Y5_N22
\controle|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|Selector0~4_combout\ = (\controle|Selector0~3_combout\) # ((\controle|estado_futuro.recebe_dig~4_combout\ & ((\fluxo_dados|verif_numero|Equal0~0_combout\) # (!\controle|teclado_passado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|verif_numero|Equal0~0_combout\,
	datab => \controle|teclado_passado~regout\,
	datac => \controle|estado_futuro.recebe_dig~4_combout\,
	datad => \controle|Selector0~3_combout\,
	combout => \controle|Selector0~4_combout\);

-- Location: LCFF_X54_Y5_N23
\controle|estado_atual.leitura\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|Selector0~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|estado_atual.leitura~regout\);

-- Location: LCCOMB_X54_Y5_N18
\controle|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|WideOr1~0_combout\ = (!\controle|estado_atual.leitura~regout\ & !\controle|estado_atual.recebe_dig~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|estado_atual.leitura~regout\,
	datad => \controle|estado_atual.recebe_dig~regout\,
	combout => \controle|WideOr1~0_combout\);

-- Location: LCCOMB_X55_Y5_N8
\controle|estado_futuro.erro~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|estado_futuro.erro~0_combout\ = (\controle|estado_atual.verif_senha~regout\ & \fluxo_dados|verif_senha|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|estado_atual.verif_senha~regout\,
	datad => \fluxo_dados|verif_senha|Equal0~4_combout\,
	combout => \controle|estado_futuro.erro~0_combout\);

-- Location: LCFF_X55_Y5_N9
\controle|estado_atual.erro\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|estado_futuro.erro~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|estado_atual.erro~regout\);

-- Location: LCCOMB_X54_Y5_N0
\controle|estado_atual.bloquear~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|estado_atual.bloquear~0_combout\ = (\controle|estado_atual.bloquear~regout\) # ((\controle|estado_atual.erro~regout\ & \controle|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|estado_atual.erro~regout\,
	datac => \controle|estado_atual.bloquear~regout\,
	datad => \controle|Selector2~0_combout\,
	combout => \controle|estado_atual.bloquear~0_combout\);

-- Location: LCFF_X54_Y5_N1
\controle|estado_atual.bloquear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controle|estado_atual.bloquear~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controle|estado_atual.bloquear~regout\);

-- Location: LCCOMB_X61_Y5_N12
\controle|bloqueado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|bloqueado~1_combout\ = (!\controle|estado_atual.bloquear~regout\ & \controle|estado_atual.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controle|estado_atual.bloquear~regout\,
	datad => \controle|estado_atual.inicio~regout\,
	combout => \controle|bloqueado~1_combout\);

-- Location: LCCOMB_X61_Y5_N18
\fluxo_dados|primeiro_numero|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|primeiro_numero|Mux6~0_combout\ = (\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(3)) # (\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) $ 
-- (\fluxo_dados|registrador_senha|reg_zero_tres|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(1)) # (\fluxo_dados|registrador_senha|reg_zero_tres|output\(3) $ 
-- (\fluxo_dados|registrador_senha|reg_zero_tres|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2),
	combout => \fluxo_dados|primeiro_numero|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y5_N20
\fluxo_dados|primeiro_numero|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|primeiro_numero|Mux5~0_combout\ = (\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(3) $ (((\fluxo_dados|registrador_senha|reg_zero_tres|output\(1)) # 
-- (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(2)))))) # (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) & (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(3) & 
-- !\fluxo_dados|registrador_senha|reg_zero_tres|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2),
	combout => \fluxo_dados|primeiro_numero|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y5_N10
\fluxo_dados|primeiro_numero|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|primeiro_numero|Mux4~0_combout\ = (\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(3)))) # 
-- (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) & ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(2) & ((!\fluxo_dados|registrador_senha|reg_zero_tres|output\(3)))) # (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(2) & 
-- (\fluxo_dados|registrador_senha|reg_zero_tres|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2),
	combout => \fluxo_dados|primeiro_numero|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y5_N8
\fluxo_dados|primeiro_numero|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|primeiro_numero|Mux3~0_combout\ = (\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) & ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(2)))) # 
-- (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(3) & !\fluxo_dados|registrador_senha|reg_zero_tres|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) & 
-- (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(3) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) $ (\fluxo_dados|registrador_senha|reg_zero_tres|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2),
	combout => \fluxo_dados|primeiro_numero|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y5_N22
\fluxo_dados|primeiro_numero|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|primeiro_numero|Mux2~0_combout\ = (\fluxo_dados|registrador_senha|reg_zero_tres|output\(3) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(2) & ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(1)) # 
-- (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(0))))) # (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(3) & (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) & 
-- !\fluxo_dados|registrador_senha|reg_zero_tres|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2),
	combout => \fluxo_dados|primeiro_numero|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y5_N4
\fluxo_dados|primeiro_numero|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|primeiro_numero|Mux1~0_combout\ = (\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) & ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(3))) # 
-- (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & ((\fluxo_dados|registrador_senha|reg_zero_tres|output\(2)))))) # (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(2) & 
-- (\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) $ (\fluxo_dados|registrador_senha|reg_zero_tres|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2),
	combout => \fluxo_dados|primeiro_numero|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y5_N2
\fluxo_dados|primeiro_numero|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|primeiro_numero|Mux0~0_combout\ = (\fluxo_dados|registrador_senha|reg_zero_tres|output\(3) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) $ 
-- (\fluxo_dados|registrador_senha|reg_zero_tres|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(3) & (!\fluxo_dados|registrador_senha|reg_zero_tres|output\(1) & (\fluxo_dados|registrador_senha|reg_zero_tres|output\(0) $ 
-- (\fluxo_dados|registrador_senha|reg_zero_tres|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_zero_tres|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_zero_tres|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_zero_tres|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_zero_tres|output\(2),
	combout => \fluxo_dados|primeiro_numero|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y5_N24
\fluxo_dados|segundo_numero|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|segundo_numero|Mux6~0_combout\ = (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & ((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3)) # (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) $ 
-- (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & ((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1)) # (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) $ 
-- (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1),
	datab => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2),
	datac => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0),
	datad => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3),
	combout => \fluxo_dados|segundo_numero|Mux6~0_combout\);

-- Location: LCCOMB_X55_Y5_N16
\fluxo_dados|segundo_numero|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|segundo_numero|Mux5~0_combout\ = (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3) $ (((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1)) # 
-- (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2)))))) # (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) & 
-- !\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2),
	datac => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3),
	combout => \fluxo_dados|segundo_numero|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y5_N22
\fluxo_dados|segundo_numero|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|segundo_numero|Mux4~0_combout\ = (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & ((!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3))))) # 
-- (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) & ((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) & ((!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3)))) # (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) & 
-- (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2),
	datac => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3),
	combout => \fluxo_dados|segundo_numero|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y5_N28
\fluxo_dados|segundo_numero|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|segundo_numero|Mux3~0_combout\ = (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) & ((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2))) # 
-- (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) & \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3))))) # (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) & 
-- (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) $ (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2),
	datac => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3),
	combout => \fluxo_dados|segundo_numero|Mux3~0_combout\);

-- Location: LCCOMB_X55_Y5_N2
\fluxo_dados|segundo_numero|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|segundo_numero|Mux2~0_combout\ = (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3) & ((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1)) # 
-- (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0))))) # (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) & (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3) & 
-- !\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1),
	datab => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2),
	datac => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0),
	combout => \fluxo_dados|segundo_numero|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y5_N0
\fluxo_dados|segundo_numero|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|segundo_numero|Mux1~0_combout\ = (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) & ((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & ((\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3)))) # 
-- (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) & 
-- (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) $ (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2),
	datac => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3),
	combout => \fluxo_dados|segundo_numero|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y5_N26
\fluxo_dados|segundo_numero|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|segundo_numero|Mux0~0_combout\ = (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) & (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) $ 
-- (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3))))) # (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(2) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(0) & (\fluxo_dados|registrador_senha|reg_quatro_sete|output\(1) $ 
-- (!\fluxo_dados|registrador_senha|reg_quatro_sete|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(2),
	datac => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(3),
	combout => \fluxo_dados|segundo_numero|Mux0~0_combout\);

-- Location: LCFF_X54_Y5_N7
\fluxo_dados|registrador_senha|reg_oito_onze|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_quatro_sete|output\(0),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0));

-- Location: LCCOMB_X53_Y5_N28
\fluxo_dados|terceiro_numero|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|terceiro_numero|Mux6~0_combout\ = (\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & ((\fluxo_dados|registrador_senha|reg_oito_onze|output\(3)) # (\fluxo_dados|registrador_senha|reg_oito_onze|output\(1) $ 
-- (\fluxo_dados|registrador_senha|reg_oito_onze|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & ((\fluxo_dados|registrador_senha|reg_oito_onze|output\(1)) # (\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) $ 
-- (\fluxo_dados|registrador_senha|reg_oito_onze|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3),
	datac => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2),
	combout => \fluxo_dados|terceiro_numero|Mux6~0_combout\);

-- Location: LCCOMB_X53_Y5_N18
\fluxo_dados|terceiro_numero|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|terceiro_numero|Mux5~0_combout\ = (\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) $ (((\fluxo_dados|registrador_senha|reg_oito_onze|output\(1)) # 
-- (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(2)))))) # (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(1) & 
-- !\fluxo_dados|registrador_senha|reg_oito_onze|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3),
	datac => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2),
	combout => \fluxo_dados|terceiro_numero|Mux5~0_combout\);

-- Location: LCCOMB_X53_Y5_N8
\fluxo_dados|terceiro_numero|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|terceiro_numero|Mux4~0_combout\ = (\fluxo_dados|registrador_senha|reg_oito_onze|output\(1) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(3)))) # 
-- (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(1) & ((\fluxo_dados|registrador_senha|reg_oito_onze|output\(2) & ((!\fluxo_dados|registrador_senha|reg_oito_onze|output\(3)))) # (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(2) & 
-- (\fluxo_dados|registrador_senha|reg_oito_onze|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3),
	datac => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2),
	combout => \fluxo_dados|terceiro_numero|Mux4~0_combout\);

-- Location: LCCOMB_X53_Y5_N10
\fluxo_dados|terceiro_numero|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|terceiro_numero|Mux3~0_combout\ = (\fluxo_dados|registrador_senha|reg_oito_onze|output\(1) & ((\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & ((\fluxo_dados|registrador_senha|reg_oito_onze|output\(2)))) # 
-- (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) & !\fluxo_dados|registrador_senha|reg_oito_onze|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(1) & 
-- (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) $ (\fluxo_dados|registrador_senha|reg_oito_onze|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0),
	datab => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3),
	datac => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2),
	combout => \fluxo_dados|terceiro_numero|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y5_N4
\fluxo_dados|terceiro_numero|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|terceiro_numero|Mux2~0_combout\ = (\fluxo_dados|registrador_senha|reg_oito_onze|output\(2) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) & ((\fluxo_dados|registrador_senha|reg_oito_onze|output\(1)) # 
-- (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(0))))) # (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(2) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(1) & (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) & 
-- !\fluxo_dados|registrador_senha|reg_oito_onze|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2),
	datab => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3),
	datad => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0),
	combout => \fluxo_dados|terceiro_numero|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y5_N12
\fluxo_dados|terceiro_numero|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|terceiro_numero|Mux1~0_combout\ = (\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) & ((\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & ((\fluxo_dados|registrador_senha|reg_oito_onze|output\(1)))) # 
-- (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(2) & 
-- (\fluxo_dados|registrador_senha|reg_oito_onze|output\(1) $ (\fluxo_dados|registrador_senha|reg_oito_onze|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2),
	datab => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3),
	datac => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0),
	combout => \fluxo_dados|terceiro_numero|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y5_N10
\fluxo_dados|terceiro_numero|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|terceiro_numero|Mux0~0_combout\ = (\fluxo_dados|registrador_senha|reg_oito_onze|output\(2) & (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(1) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) $ 
-- (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(0))))) # (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(2) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(0) & (\fluxo_dados|registrador_senha|reg_oito_onze|output\(3) $ 
-- (!\fluxo_dados|registrador_senha|reg_oito_onze|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_oito_onze|output\(2),
	datab => \fluxo_dados|registrador_senha|reg_oito_onze|output\(3),
	datac => \fluxo_dados|registrador_senha|reg_oito_onze|output\(1),
	datad => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0),
	combout => \fluxo_dados|terceiro_numero|Mux0~0_combout\);

-- Location: LCFF_X54_Y5_N25
\fluxo_dados|registrador_senha|reg_quinze_doze|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \fluxo_dados|registrador_senha|reg_oito_onze|output\(0),
	aclr => \controle|WideOr1~combout\,
	sload => VCC,
	ena => \controle|estado_atual.recebe_dig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(0));

-- Location: LCCOMB_X53_Y5_N16
\fluxo_dados|quarto_numero|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|quarto_numero|Mux6~0_combout\ = (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0) & ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3)) # (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) $ 
-- (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0) & ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1)) # (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) $ 
-- (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(3),
	datab => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(2),
	datad => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(0),
	combout => \fluxo_dados|quarto_numero|Mux6~0_combout\);

-- Location: LCCOMB_X53_Y5_N22
\fluxo_dados|quarto_numero|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|quarto_numero|Mux5~0_combout\ = (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) & (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) & ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0)) # 
-- (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) $ 
-- (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(3),
	datab => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(2),
	datad => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(0),
	combout => \fluxo_dados|quarto_numero|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y5_N24
\fluxo_dados|quarto_numero|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|quarto_numero|Mux4~0_combout\ = (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) & (((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0) & !\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3))))) # 
-- (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) & ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2) & ((!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3)))) # (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2) & 
-- (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(1),
	datab => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(2),
	datac => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(0),
	datad => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(3),
	combout => \fluxo_dados|quarto_numero|Mux4~0_combout\);

-- Location: LCCOMB_X53_Y5_N12
\fluxo_dados|quarto_numero|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|quarto_numero|Mux3~0_combout\ = (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) & ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2) & ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0)))) # 
-- (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) & !\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0))))) # (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) & 
-- (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2) $ (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(3),
	datab => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(2),
	datad => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(0),
	combout => \fluxo_dados|quarto_numero|Mux3~0_combout\);

-- Location: LCCOMB_X53_Y5_N6
\fluxo_dados|quarto_numero|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|quarto_numero|Mux2~0_combout\ = (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2) & ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1)) # 
-- (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0))))) # (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) & (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2) & 
-- !\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(3),
	datab => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(2),
	datad => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(0),
	combout => \fluxo_dados|quarto_numero|Mux2~0_combout\);

-- Location: LCCOMB_X53_Y5_N24
\fluxo_dados|quarto_numero|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|quarto_numero|Mux1~0_combout\ = (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) & ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1))) # 
-- (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0) & ((\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2)))))) # (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2) & 
-- (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) $ (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(3),
	datab => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(2),
	datad => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(0),
	combout => \fluxo_dados|quarto_numero|Mux1~0_combout\);

-- Location: LCCOMB_X53_Y5_N26
\fluxo_dados|quarto_numero|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fluxo_dados|quarto_numero|Mux0~0_combout\ = (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) $ 
-- (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2))))) # (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(3) & (!\fluxo_dados|registrador_senha|reg_quinze_doze|output\(1) & (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(2) $ 
-- (\fluxo_dados|registrador_senha|reg_quinze_doze|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(3),
	datab => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(1),
	datac => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(2),
	datad => \fluxo_dados|registrador_senha|reg_quinze_doze|output\(0),
	combout => \fluxo_dados|quarto_numero|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y5_N16
\controle|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controle|WideOr0~combout\ = (\controle|estado_atual.erro~regout\) # ((\controle|estado_atual.bloquear~regout\) # (!\controle|estado_atual.inicio~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controle|estado_atual.erro~regout\,
	datac => \controle|estado_atual.bloquear~regout\,
	datad => \controle|estado_atual.inicio~regout\,
	combout => \controle|WideOr0~combout\);

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ent_hab~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controle|ALT_INV_WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ent_hab);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aberto~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controle|aberto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aberto);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bloqueado~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controle|ALT_INV_bloqueado~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bloqueado);

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|primeiro_numero|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(0));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|primeiro_numero|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(1));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|primeiro_numero|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|primeiro_numero|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|primeiro_numero|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(4));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|primeiro_numero|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(5));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|primeiro_numero|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(6));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|segundo_numero|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(7));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|segundo_numero|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(8));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|segundo_numero|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(9));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|segundo_numero|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(10));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|segundo_numero|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(11));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|segundo_numero|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(12));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|segundo_numero|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(13));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|terceiro_numero|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(14));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|terceiro_numero|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(15));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|terceiro_numero|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(16));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|terceiro_numero|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(17));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|terceiro_numero|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(18));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|terceiro_numero|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(19));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|terceiro_numero|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(20));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|quarto_numero|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(21));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|quarto_numero|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(22));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|quarto_numero|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(23));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|quarto_numero|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(24));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|quarto_numero|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(25));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|quarto_numero|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(26));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds_7seg[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fluxo_dados|quarto_numero|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds_7seg(27));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\errado~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controle|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_errado);
END structure;


