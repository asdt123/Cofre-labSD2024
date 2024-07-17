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

-- DATE "06/11/2024 21:05:43"

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

ENTITY 	Teclado IS
    PORT (
	clk : IN std_logic;
	linha : IN std_logic_vector(3 DOWNTO 0);
	colun : OUT std_logic_vector(2 DOWNTO 0);
	tecla : OUT std_logic_vector(3 DOWNTO 0)
	);
END Teclado;

-- Design Ports Information
-- colun[0]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- colun[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- colun[2]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tecla[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tecla[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tecla[2]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tecla[3]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- linha[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- linha[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- linha[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- linha[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Teclado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_linha : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_colun : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tecla : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \colunas|cnt[0]~0_combout\ : std_logic;
SIGNAL \tecla~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \tecla~1_combout\ : std_logic;
SIGNAL \tecla~2_combout\ : std_logic;
SIGNAL \tecla~3_combout\ : std_logic;
SIGNAL \tecla~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \tecla~5_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \tecla~6_combout\ : std_logic;
SIGNAL \tecla~7_combout\ : std_logic;
SIGNAL \tecla~8_combout\ : std_logic;
SIGNAL \tecla~9_combout\ : std_logic;
SIGNAL \tecla~10_combout\ : std_logic;
SIGNAL \colunas|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \linha~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_tecla~10_combout\ : std_logic;
SIGNAL \ALT_INV_tecla~6_combout\ : std_logic;
SIGNAL \colunas|ALT_INV_cnt\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_linha <= linha;
colun <= ww_colun;
tecla <= ww_tecla;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_tecla~10_combout\ <= NOT \tecla~10_combout\;
\ALT_INV_tecla~6_combout\ <= NOT \tecla~6_combout\;
\colunas|ALT_INV_cnt\(0) <= NOT \colunas|cnt\(0);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X19_Y35_N2
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\colunas|cnt\(2) & !\colunas|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \colunas|cnt\(2),
	datad => \colunas|cnt\(0),
	combout => \Equal0~1_combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\linha[2]~I\ : cycloneii_io
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
	padio => ww_linha(2),
	combout => \linha~combout\(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\linha[3]~I\ : cycloneii_io
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
	padio => ww_linha(3),
	combout => \linha~combout\(3));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\linha[0]~I\ : cycloneii_io
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
	padio => ww_linha(0),
	combout => \linha~combout\(0));

-- Location: LCCOMB_X20_Y35_N16
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\linha~combout\(1) & ((\linha~combout\(2)) # ((\linha~combout\(3)) # (\linha~combout\(0))))) # (!\linha~combout\(1) & ((\linha~combout\(2) & ((\linha~combout\(3)) # (\linha~combout\(0)))) # (!\linha~combout\(2) & (\linha~combout\(3) $ 
-- (!\linha~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(2),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \Mux11~0_combout\);

-- Location: LCFF_X19_Y35_N3
\colunas|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Equal0~1_combout\,
	ena => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \colunas|cnt\(1));

-- Location: LCCOMB_X19_Y35_N16
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\colunas|cnt\(2) & \colunas|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \colunas|cnt\(2),
	datad => \colunas|cnt\(1),
	combout => \Equal1~1_combout\);

-- Location: LCFF_X19_Y35_N17
\colunas|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Equal1~1_combout\,
	ena => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \colunas|cnt\(2));

-- Location: LCCOMB_X19_Y35_N12
\colunas|cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \colunas|cnt[0]~0_combout\ = !\colunas|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \colunas|cnt\(2),
	combout => \colunas|cnt[0]~0_combout\);

-- Location: LCFF_X19_Y35_N13
\colunas|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \colunas|cnt[0]~0_combout\,
	ena => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \colunas|cnt\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\linha[1]~I\ : cycloneii_io
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
	padio => ww_linha(1),
	combout => \linha~combout\(1));

-- Location: LCCOMB_X20_Y35_N4
\tecla~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~0_combout\ = (\linha~combout\(2)) # ((\linha~combout\(0)) # (\linha~combout\(1) $ (!\linha~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(2),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \tecla~0_combout\);

-- Location: LCCOMB_X19_Y35_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\colunas|cnt\(1) & (!\colunas|cnt\(0) & !\colunas|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \colunas|cnt\(1),
	datac => \colunas|cnt\(0),
	datad => \colunas|cnt\(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y35_N24
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\colunas|cnt\(1) & (\colunas|cnt\(0) & !\colunas|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \colunas|cnt\(1),
	datac => \colunas|cnt\(0),
	datad => \colunas|cnt\(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X20_Y35_N10
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\linha~combout\(1) & ((\linha~combout\(2) & (!\linha~combout\(3) & !\linha~combout\(0))) # (!\linha~combout\(2) & (\linha~combout\(3) $ (\linha~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(2),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X20_Y35_N28
\tecla~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~1_combout\ = (\Equal1~0_combout\ & ((!\Mux5~0_combout\))) # (!\Equal1~0_combout\ & (\tecla~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \tecla~0_combout\,
	datad => \Mux5~0_combout\,
	combout => \tecla~1_combout\);

-- Location: LCCOMB_X20_Y35_N2
\tecla~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~2_combout\ = (\Equal0~0_combout\ & (((\tecla~0_combout\)) # (!\linha~combout\(1)))) # (!\Equal0~0_combout\ & (((\tecla~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \tecla~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \tecla~1_combout\,
	combout => \tecla~2_combout\);

-- Location: LCCOMB_X20_Y35_N22
\tecla~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~3_combout\ = (\linha~combout\(1) & ((\linha~combout\(0)) # (!\linha~combout\(3)))) # (!\linha~combout\(1) & (\linha~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \tecla~3_combout\);

-- Location: LCCOMB_X20_Y35_N20
\tecla~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~4_combout\ = (!\linha~combout\(2) & ((\linha~combout\(0) & (!\tecla~3_combout\)) # (!\linha~combout\(0) & (\tecla~3_combout\ & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(0),
	datab => \tecla~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \linha~combout\(2),
	combout => \tecla~4_combout\);

-- Location: LCCOMB_X20_Y35_N0
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\linha~combout\(3) & (!\linha~combout\(0) & (\linha~combout\(1) $ (\linha~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(2),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X20_Y35_N18
\tecla~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~5_combout\ = (\Equal1~0_combout\ & (!\tecla~4_combout\)) # (!\Equal1~0_combout\ & ((\Equal0~0_combout\ & (!\tecla~4_combout\)) # (!\Equal0~0_combout\ & ((!\Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla~4_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \tecla~5_combout\);

-- Location: LCCOMB_X20_Y35_N12
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\linha~combout\(1) & (!\linha~combout\(0) & (\linha~combout\(2) $ (\linha~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(2),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X20_Y35_N26
\tecla~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~6_combout\ = (\Equal1~0_combout\ & (((\Mux5~0_combout\)))) # (!\Equal1~0_combout\ & ((\Equal0~0_combout\ & ((\Mux5~0_combout\))) # (!\Equal0~0_combout\ & (\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux5~0_combout\,
	combout => \tecla~6_combout\);

-- Location: LCCOMB_X19_Y35_N26
\tecla~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~7_combout\ = (\colunas|cnt\(2) & (((!\linha~combout\(3))))) # (!\colunas|cnt\(2) & ((\colunas|cnt\(1) & ((\colunas|cnt\(0)) # (!\linha~combout\(3)))) # (!\colunas|cnt\(1) & (\colunas|cnt\(0) & !\linha~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colunas|cnt\(2),
	datab => \colunas|cnt\(1),
	datac => \colunas|cnt\(0),
	datad => \linha~combout\(3),
	combout => \tecla~7_combout\);

-- Location: LCCOMB_X20_Y35_N24
\tecla~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~8_combout\ = (\linha~combout\(1)) # ((\Equal1~0_combout\ & \linha~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \linha~combout\(1),
	datad => \linha~combout\(0),
	combout => \tecla~8_combout\);

-- Location: LCCOMB_X20_Y35_N30
\tecla~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~9_combout\ = (\linha~combout\(3) & (!\linha~combout\(2) & (!\tecla~8_combout\ & !\linha~combout\(0)))) # (!\linha~combout\(3) & ((\linha~combout\(2) & (!\tecla~8_combout\ & !\linha~combout\(0))) # (!\linha~combout\(2) & (\tecla~8_combout\ $ 
-- (\linha~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(3),
	datab => \linha~combout\(2),
	datac => \tecla~8_combout\,
	datad => \linha~combout\(0),
	combout => \tecla~9_combout\);

-- Location: LCCOMB_X19_Y35_N20
\tecla~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~10_combout\ = (\Equal0~0_combout\ & ((\Mux0~0_combout\) # ((\tecla~7_combout\ & \tecla~9_combout\)))) # (!\Equal0~0_combout\ & (\tecla~7_combout\ & ((\tecla~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \tecla~7_combout\,
	datac => \Mux0~0_combout\,
	datad => \tecla~9_combout\,
	combout => \tecla~10_combout\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\colun[0]~I\ : cycloneii_io
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
	datain => \colunas|ALT_INV_cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_colun(0));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\colun[1]~I\ : cycloneii_io
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
	datain => \colunas|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_colun(1));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\colun[2]~I\ : cycloneii_io
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
	datain => \colunas|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_colun(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tecla[0]~I\ : cycloneii_io
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
	datain => \tecla~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tecla(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tecla[1]~I\ : cycloneii_io
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
	datain => \tecla~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tecla(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tecla[2]~I\ : cycloneii_io
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
	datain => \ALT_INV_tecla~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tecla(2));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tecla[3]~I\ : cycloneii_io
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
	datain => \ALT_INV_tecla~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tecla(3));
END structure;


