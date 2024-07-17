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

-- DATE "06/11/2024 21:28:56"

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

ENTITY 	Teclado_chaveado IS
    PORT (
	linha : IN std_logic_vector(3 DOWNTO 0);
	col_ativa : IN std_logic_vector(2 DOWNTO 0);
	tecla : OUT std_logic_vector(3 DOWNTO 0)
	);
END Teclado_chaveado;

-- Design Ports Information
-- tecla[0]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tecla[1]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tecla[2]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tecla[3]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- col_ativa[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col_ativa[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- linha[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- linha[1]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- linha[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- linha[3]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col_ativa[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Teclado_chaveado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_linha : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_col_ativa : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tecla : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \tecla~1_combout\ : std_logic;
SIGNAL \tecla~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \tecla~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \tecla~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \tecla~5_combout\ : std_logic;
SIGNAL \tecla~4_combout\ : std_logic;
SIGNAL \tecla~6_combout\ : std_logic;
SIGNAL \tecla~7_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \tecla~8_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \tecla~9_combout\ : std_logic;
SIGNAL \tecla~10_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \tecla~11_combout\ : std_logic;
SIGNAL \linha~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \col_ativa~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_linha <= linha;
ww_col_ativa <= col_ativa;
tecla <= ww_tecla;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X2_Y17_N2
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\linha~combout\(2) & ((\linha~combout\(1) & (!\linha~combout\(3) & !\linha~combout\(0))) # (!\linha~combout\(1) & (\linha~combout\(3) $ (\linha~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(2),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \Mux5~0_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col_ativa[0]~I\ : cycloneii_io
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
	padio => ww_col_ativa(0),
	combout => \col_ativa~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col_ativa[2]~I\ : cycloneii_io
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
	padio => ww_col_ativa(2),
	combout => \col_ativa~combout\(2));

-- Location: LCCOMB_X1_Y17_N20
\tecla~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~1_combout\ = (!\col_ativa~combout\(1) & (!\linha~combout\(2) & (\col_ativa~combout\(0) & !\col_ativa~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_ativa~combout\(1),
	datab => \linha~combout\(2),
	datac => \col_ativa~combout\(0),
	datad => \col_ativa~combout\(2),
	combout => \tecla~1_combout\);

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y17_N6
\tecla~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~2_combout\ = ((\linha~combout\(0)) # ((\linha~combout\(3)) # (!\tecla~1_combout\))) # (!\linha~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(0),
	datac => \tecla~1_combout\,
	datad => \linha~combout\(3),
	combout => \tecla~2_combout\);

-- Location: LCCOMB_X1_Y17_N0
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\linha~combout\(1) & ((\linha~combout\(2) & (!\linha~combout\(3) & !\linha~combout\(0))) # (!\linha~combout\(2) & (\linha~combout\(3) $ (\linha~combout\(0))))))

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
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y17_N2
\tecla~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~0_combout\ = (((\col_ativa~combout\(0)) # (\col_ativa~combout\(2))) # (!\Mux4~0_combout\)) # (!\col_ativa~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_ativa~combout\(1),
	datab => \Mux4~0_combout\,
	datac => \col_ativa~combout\(0),
	datad => \col_ativa~combout\(2),
	combout => \tecla~0_combout\);

-- Location: LCCOMB_X1_Y17_N16
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\col_ativa~combout\(1) & (!\col_ativa~combout\(0) & \col_ativa~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_ativa~combout\(1),
	datac => \col_ativa~combout\(0),
	datad => \col_ativa~combout\(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X2_Y17_N24
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\linha~combout\(2) & (!\linha~combout\(0) & (\linha~combout\(1) $ (\linha~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(2),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X1_Y17_N26
\tecla~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~3_combout\ = (\tecla~2_combout\ & (\tecla~0_combout\ & ((!\Mux8~0_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla~2_combout\,
	datab => \tecla~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Mux8~0_combout\,
	combout => \tecla~3_combout\);

-- Location: LCCOMB_X1_Y17_N24
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

-- Location: LCCOMB_X1_Y17_N30
\tecla~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~5_combout\ = (\linha~combout\(1)) # (((\linha~combout\(3)) # (!\tecla~1_combout\)) # (!\linha~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(0),
	datac => \tecla~1_combout\,
	datad => \linha~combout\(3),
	combout => \tecla~5_combout\);

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col_ativa[1]~I\ : cycloneii_io
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
	padio => ww_col_ativa(1),
	combout => \col_ativa~combout\(1));

-- Location: LCCOMB_X1_Y17_N12
\tecla~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~4_combout\ = ((\col_ativa~combout\(2)) # ((\col_ativa~combout\(0)) # (!\col_ativa~combout\(1)))) # (!\Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \col_ativa~combout\(2),
	datac => \col_ativa~combout\(0),
	datad => \col_ativa~combout\(1),
	combout => \tecla~4_combout\);

-- Location: LCCOMB_X1_Y17_N18
\tecla~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~6_combout\ = (\tecla~5_combout\ & (\tecla~4_combout\ & ((!\Equal2~0_combout\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \tecla~5_combout\,
	datac => \Equal2~0_combout\,
	datad => \tecla~4_combout\,
	combout => \tecla~6_combout\);

-- Location: LCCOMB_X1_Y17_N4
\tecla~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~7_combout\ = (\col_ativa~combout\(2)) # (\col_ativa~combout\(1) $ (!\col_ativa~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_ativa~combout\(1),
	datac => \col_ativa~combout\(0),
	datad => \col_ativa~combout\(2),
	combout => \tecla~7_combout\);

-- Location: LCCOMB_X2_Y17_N4
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\linha~combout\(1) & (!\linha~combout\(0) & (\linha~combout\(2) $ (\linha~combout\(3)))))

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
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X1_Y17_N14
\tecla~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~8_combout\ = (\Equal2~0_combout\ & (!\Mux7~0_combout\ & ((\tecla~7_combout\) # (!\Mux4~0_combout\)))) # (!\Equal2~0_combout\ & (((\tecla~7_combout\)) # (!\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Mux4~0_combout\,
	datac => \tecla~7_combout\,
	datad => \Mux7~0_combout\,
	combout => \tecla~8_combout\);

-- Location: LCCOMB_X1_Y17_N8
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\linha~combout\(0) & ((\linha~combout\(1) & (!\linha~combout\(2) & !\linha~combout\(3))) # (!\linha~combout\(1) & (\linha~combout\(2) $ (\linha~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(2),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y17_N10
\tecla~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~9_combout\ = ((\col_ativa~combout\(0)) # ((\col_ativa~combout\(2)) # (!\Mux3~0_combout\))) # (!\col_ativa~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_ativa~combout\(1),
	datab => \col_ativa~combout\(0),
	datac => \Mux3~0_combout\,
	datad => \col_ativa~combout\(2),
	combout => \tecla~9_combout\);

-- Location: LCCOMB_X1_Y17_N28
\tecla~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~10_combout\ = (\col_ativa~combout\(1)) # (((\col_ativa~combout\(2)) # (!\Mux0~0_combout\)) # (!\col_ativa~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_ativa~combout\(1),
	datab => \col_ativa~combout\(0),
	datac => \Mux0~0_combout\,
	datad => \col_ativa~combout\(2),
	combout => \tecla~10_combout\);

-- Location: LCCOMB_X2_Y17_N30
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\linha~combout\(3) & ((\linha~combout\(1) & (!\linha~combout\(2) & !\linha~combout\(0))) # (!\linha~combout\(1) & (\linha~combout\(2) $ (\linha~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \linha~combout\(1),
	datab => \linha~combout\(2),
	datac => \linha~combout\(3),
	datad => \linha~combout\(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y17_N22
\tecla~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \tecla~11_combout\ = (\tecla~9_combout\ & (\tecla~10_combout\ & ((!\Mux6~0_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla~9_combout\,
	datab => \tecla~10_combout\,
	datac => \Equal2~0_combout\,
	datad => \Mux6~0_combout\,
	combout => \tecla~11_combout\);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tecla~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tecla(0));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tecla~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tecla(1));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tecla~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tecla(2));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \tecla~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tecla(3));
END structure;


