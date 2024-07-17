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

-- DATE "06/02/2024 11:51:26"

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

ENTITY 	contador IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- q[0]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \cnt~9_combout\ : std_logic;
SIGNAL \cnt~10_combout\ : std_logic;
SIGNAL \cnt~12_combout\ : std_logic;
SIGNAL \cnt~14_combout\ : std_logic;
SIGNAL \cnt~15_combout\ : std_logic;
SIGNAL \cnt~16_combout\ : std_logic;
SIGNAL \cnt~17_combout\ : std_logic;
SIGNAL \cnt~18_combout\ : std_logic;
SIGNAL \cnt~23_combout\ : std_logic;
SIGNAL \cnt~25_combout\ : std_logic;
SIGNAL \cnt~32_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \cnt~13_combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \cnt[0]~2_combout\ : std_logic;
SIGNAL \cnt~8_combout\ : std_logic;
SIGNAL \cnt~6_combout\ : std_logic;
SIGNAL \cnt~7_combout\ : std_logic;
SIGNAL \cnt~4_combout\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \cnt~21_combout\ : std_logic;
SIGNAL \cnt~20_combout\ : std_logic;
SIGNAL \cnt~19_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \cnt~27_combout\ : std_logic;
SIGNAL \cnt~26_combout\ : std_logic;
SIGNAL \cnt~24_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \cnt~22_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \cnt~28_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \cnt~29_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \cnt~31_combout\ : std_logic;
SIGNAL \cnt~30_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \cnt~33_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \cnt~11_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \cnt~5_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X60_Y32_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cnt(1) & (!\Add0~1\)) # (!cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X60_Y32_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cnt(2) & (\Add0~3\ $ (GND))) # (!cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X60_Y32_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt(3) & (!\Add0~5\)) # (!cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X60_Y32_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cnt(5) & (!\Add0~9\)) # (!cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X60_Y32_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cnt(8) & (\Add0~15\ $ (GND))) # (!cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X60_Y32_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cnt(13) & (!\Add0~25\)) # (!cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X60_Y31_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cnt(17) & (!\Add0~33\)) # (!cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X60_Y31_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cnt(21) & (!\Add0~41\)) # (!cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X60_Y31_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cnt(22) & (\Add0~43\ $ (GND))) # (!cnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X60_Y31_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cnt(23) & (!\Add0~45\)) # (!cnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X60_Y31_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (cnt(24) & (\Add0~47\ $ (GND))) # (!cnt(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((cnt(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X60_Y31_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (cnt(28) & (\Add0~55\ $ (GND))) # (!cnt(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((cnt(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X59_Y32_N16
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~4_combout\) # ((\Add0~0_combout\) # ((\Add0~6_combout\) # (\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCFF_X59_Y31_N3
\cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~9_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(7));

-- Location: LCFF_X59_Y31_N5
\cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~10_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(8));

-- Location: LCFF_X59_Y32_N13
\cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~12_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(10));

-- Location: LCFF_X59_Y32_N11
\cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~14_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(12));

-- Location: LCFF_X59_Y32_N1
\cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~15_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(13));

-- Location: LCFF_X59_Y31_N9
\cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~16_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(14));

-- Location: LCFF_X59_Y32_N31
\cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~17_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(15));

-- Location: LCFF_X59_Y31_N31
\cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~18_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(16));

-- Location: LCFF_X58_Y31_N13
\cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~23_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(21));

-- Location: LCFF_X58_Y31_N17
\cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~25_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(23));

-- Location: LCCOMB_X59_Y31_N20
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add0~42_combout\) # ((\Add0~40_combout\) # ((\Add0~44_combout\) # (\Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add0~40_combout\,
	datac => \Add0~44_combout\,
	datad => \Add0~46_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCFF_X58_Y31_N23
\cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~32_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(30));

-- Location: LCCOMB_X59_Y31_N2
\cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~9_combout\ = (\Add0~14_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~9_combout\);

-- Location: LCCOMB_X59_Y31_N4
\cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~10_combout\ = (\Add0~16_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~10_combout\);

-- Location: LCCOMB_X59_Y32_N12
\cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~12_combout\ = (\Add0~20_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \reset~combout\,
	datac => \Equal0~4_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~12_combout\);

-- Location: LCCOMB_X59_Y32_N10
\cnt~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~14_combout\ = (!\reset~combout\ & (\Add0~24_combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Add0~24_combout\,
	datac => \Equal0~4_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~14_combout\);

-- Location: LCCOMB_X59_Y32_N0
\cnt~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~15_combout\ = (\Add0~26_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \reset~combout\,
	datac => \Equal0~4_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~15_combout\);

-- Location: LCCOMB_X59_Y31_N8
\cnt~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~16_combout\ = (\Add0~28_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~16_combout\);

-- Location: LCCOMB_X59_Y32_N30
\cnt~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~17_combout\ = (\Add0~30_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \reset~combout\,
	datac => \Equal0~4_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~17_combout\);

-- Location: LCCOMB_X59_Y31_N30
\cnt~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~18_combout\ = (!\reset~combout\ & (\Add0~32_combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~32_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~18_combout\);

-- Location: LCCOMB_X58_Y31_N12
\cnt~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~23_combout\ = (\Add0~42_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~23_combout\);

-- Location: LCCOMB_X58_Y31_N16
\cnt~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~25_combout\ = (\Add0~46_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~25_combout\);

-- Location: LCCOMB_X58_Y31_N22
\cnt~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~32_combout\ = (\Add0~60_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~32_combout\);

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

-- Location: LCCOMB_X60_Y32_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X59_Y32_N22
\cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~13_combout\ = (\Add0~22_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \reset~combout\,
	datac => \Equal0~4_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~13_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
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
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: LCCOMB_X59_Y32_N26
\cnt[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[0]~2_combout\ = (\reset~combout\) # (\enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \enable~combout\,
	combout => \cnt[0]~2_combout\);

-- Location: LCFF_X59_Y32_N23
\cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~13_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(11));

-- Location: LCCOMB_X59_Y31_N0
\cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~8_combout\ = (\Add0~12_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~8_combout\);

-- Location: LCFF_X59_Y31_N1
\cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~8_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6));

-- Location: LCCOMB_X59_Y31_N24
\cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~6_combout\ = (\Add0~10_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~6_combout\);

-- Location: LCFF_X59_Y31_N25
\cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~6_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5));

-- Location: LCCOMB_X59_Y31_N10
\cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~7_combout\ = (\Add0~8_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~7_combout\);

-- Location: LCFF_X59_Y31_N11
\cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~7_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4));

-- Location: LCCOMB_X59_Y32_N28
\cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~4_combout\ = (\Add0~4_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \reset~combout\,
	datac => \Equal0~4_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~4_combout\);

-- Location: LCFF_X59_Y32_N29
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~4_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCCOMB_X59_Y32_N6
\cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = (\Add0~2_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \reset~combout\,
	datac => \Equal0~4_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~3_combout\);

-- Location: LCFF_X59_Y32_N7
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~3_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X60_Y32_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cnt(4) & (\Add0~7\ $ (GND))) # (!cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X60_Y32_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cnt(6) & (\Add0~11\ $ (GND))) # (!cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X60_Y32_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cnt(7) & (!\Add0~13\)) # (!cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X60_Y32_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cnt(9) & (!\Add0~17\)) # (!cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X60_Y32_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cnt(10) & (\Add0~19\ $ (GND))) # (!cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X60_Y32_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cnt(11) & (!\Add0~21\)) # (!cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X60_Y32_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cnt(12) & (\Add0~23\ $ (GND))) # (!cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X60_Y32_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cnt(14) & (\Add0~27\ $ (GND))) # (!cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X60_Y32_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cnt(15) & (!\Add0~29\)) # (!cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X60_Y31_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cnt(16) & (\Add0~31\ $ (GND))) # (!cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X59_Y31_N28
\cnt~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~21_combout\ = (\Add0~38_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~21_combout\);

-- Location: LCFF_X59_Y31_N29
\cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~21_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(19));

-- Location: LCCOMB_X59_Y31_N26
\cnt~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~20_combout\ = (\Add0~36_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~20_combout\);

-- Location: LCFF_X59_Y31_N27
\cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~20_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(18));

-- Location: LCCOMB_X59_Y31_N16
\cnt~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~19_combout\ = (\Add0~34_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~19_combout\);

-- Location: LCFF_X59_Y31_N17
\cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~19_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(17));

-- Location: LCCOMB_X60_Y31_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cnt(18) & (\Add0~35\ $ (GND))) # (!cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X60_Y31_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cnt(19) & (!\Add0~37\)) # (!cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X59_Y31_N22
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add0~34_combout\) # ((\Add0~32_combout\) # ((\Add0~38_combout\) # (\Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~38_combout\,
	datad => \Add0~36_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X58_Y31_N8
\cnt~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~27_combout\ = (\Add0~50_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~27_combout\);

-- Location: LCFF_X58_Y31_N9
\cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~27_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(25));

-- Location: LCCOMB_X58_Y31_N30
\cnt~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~26_combout\ = (\Add0~48_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~26_combout\);

-- Location: LCFF_X58_Y31_N31
\cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~26_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(24));

-- Location: LCCOMB_X58_Y31_N10
\cnt~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~24_combout\ = (\Add0~44_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~24_combout\);

-- Location: LCFF_X58_Y31_N11
\cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~24_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(22));

-- Location: LCCOMB_X60_Y31_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cnt(20) & (\Add0~39\ $ (GND))) # (!cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X58_Y31_N2
\cnt~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~22_combout\ = (!\reset~combout\ & (\Add0~40_combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~40_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~22_combout\);

-- Location: LCFF_X58_Y31_N3
\cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~22_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(20));

-- Location: LCCOMB_X60_Y31_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (cnt(25) & (!\Add0~49\)) # (!cnt(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X58_Y31_N18
\cnt~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~28_combout\ = (\Add0~52_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~28_combout\);

-- Location: LCFF_X58_Y31_N19
\cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~28_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(26));

-- Location: LCCOMB_X60_Y31_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (cnt(26) & (\Add0~51\ $ (GND))) # (!cnt(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((cnt(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X58_Y31_N24
\cnt~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~29_combout\ = (\Add0~54_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~29_combout\);

-- Location: LCFF_X58_Y31_N25
\cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~29_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(27));

-- Location: LCCOMB_X60_Y31_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (cnt(27) & (!\Add0~53\)) # (!cnt(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X59_Y31_N14
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add0~48_combout\) # ((\Add0~50_combout\) # ((\Add0~52_combout\) # (\Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add0~50_combout\,
	datac => \Add0~52_combout\,
	datad => \Add0~54_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X58_Y31_N4
\cnt~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~31_combout\ = (\Add0~58_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~31_combout\);

-- Location: LCFF_X58_Y31_N5
\cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~31_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(29));

-- Location: LCCOMB_X58_Y31_N26
\cnt~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~30_combout\ = (\Add0~56_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~30_combout\);

-- Location: LCFF_X58_Y31_N27
\cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~30_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(28));

-- Location: LCCOMB_X60_Y31_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (cnt(29) & (!\Add0~57\)) # (!cnt(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X60_Y31_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (cnt(30) & (\Add0~59\ $ (GND))) # (!cnt(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((cnt(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X58_Y31_N20
\cnt~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~33_combout\ = (\Add0~62_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Equal0~4_combout\,
	datac => \reset~combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~33_combout\);

-- Location: LCFF_X58_Y31_N21
\cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~33_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(31));

-- Location: LCCOMB_X60_Y31_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X59_Y31_N12
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Add0~56_combout\) # ((\Add0~60_combout\) # ((\Add0~58_combout\) # (\Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Add0~60_combout\,
	datac => \Add0~58_combout\,
	datad => \Add0~62_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X59_Y31_N6
\cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (\Equal0~6_combout\) # ((\Equal0~5_combout\) # ((\Equal0~7_combout\) # (\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \cnt~0_combout\);

-- Location: LCCOMB_X59_Y31_N18
\cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~11_combout\ = (!\reset~combout\ & (\Add0~18_combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~18_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~11_combout\);

-- Location: LCFF_X59_Y31_N19
\cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~11_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(9));

-- Location: LCCOMB_X59_Y32_N8
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Add0~16_combout\) # ((\Add0~18_combout\) # ((\Add0~20_combout\) # (\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X59_Y32_N2
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add0~10_combout\) # ((\Add0~12_combout\) # ((\Add0~14_combout\) # (!\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X59_Y32_N20
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Add0~26_combout\) # ((\Add0~24_combout\) # ((\Add0~28_combout\) # (\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~24_combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~30_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X58_Y31_N28
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~2_combout\) # ((\Equal0~1_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X59_Y32_N4
\cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = (!\reset~combout\ & (\Add0~0_combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Add0~0_combout\,
	datac => \Equal0~4_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~1_combout\);

-- Location: LCFF_X59_Y32_N5
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~1_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X59_Y32_N14
\cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~5_combout\ = (\Add0~6_combout\ & (!\reset~combout\ & ((\Equal0~4_combout\) # (\cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \reset~combout\,
	datac => \Equal0~4_combout\,
	datad => \cnt~0_combout\,
	combout => \cnt~5_combout\);

-- Location: LCFF_X59_Y32_N15
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt~5_combout\,
	ena => \cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[0]~I\ : cycloneii_io
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
	datain => cnt(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[1]~I\ : cycloneii_io
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
	datain => cnt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[2]~I\ : cycloneii_io
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
	datain => cnt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[3]~I\ : cycloneii_io
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
	datain => cnt(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(3));
END structure;


