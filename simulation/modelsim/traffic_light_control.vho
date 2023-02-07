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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/05/2023 19:35:39"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	traffic_light_control IS
    PORT (
	clk : IN std_logic;
	light_lane1 : BUFFER std_logic_vector(2 DOWNTO 0);
	light_lane2 : BUFFER std_logic_vector(2 DOWNTO 0);
	led_out_lane1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_out_lane2 : BUFFER std_logic_vector(6 DOWNTO 0);
	sel1 : BUFFER std_logic_vector(1 DOWNTO 0);
	sel2 : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END traffic_light_control;

-- Design Ports Information
-- light_lane1[0]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- light_lane1[1]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- light_lane1[2]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- light_lane2[0]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- light_lane2[1]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- light_lane2[2]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane1[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane1[1]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane1[2]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane1[3]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane1[4]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane1[5]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane1[6]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane2[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane2[1]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane2[2]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane2[3]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane2[4]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane2[5]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led_out_lane2[6]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sel1[0]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sel1[1]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sel2[0]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sel2[1]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF traffic_light_control IS
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
SIGNAL ww_light_lane1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_light_lane2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led_out_lane1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_out_lane2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sel1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sel2 : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|Add0~30\ : std_logic;
SIGNAL \U1|Add1~30\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \U0|temp_1250us~regout\ : std_logic;
SIGNAL \U0|temp_1s~regout\ : std_logic;
SIGNAL \U1|light2~0_combout\ : std_logic;
SIGNAL \U1|light2~regout\ : std_logic;
SIGNAL \U1|light_lane1[0]~1_combout\ : std_logic;
SIGNAL \U1|Add0~32_cout0\ : std_logic;
SIGNAL \U1|Add0~32COUT1_42\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~2\ : std_logic;
SIGNAL \U1|Add0~2COUT1_44\ : std_logic;
SIGNAL \U1|Add0~5_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~7COUT1_46\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Add0~12\ : std_logic;
SIGNAL \U1|Add0~15_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~17COUT1_48\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Add0~22\ : std_logic;
SIGNAL \U1|Add0~22COUT1_50\ : std_logic;
SIGNAL \U1|Add0~25_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|light1~0\ : std_logic;
SIGNAL \U1|light1~regout\ : std_logic;
SIGNAL \U1|count2[0]~4_combout\ : std_logic;
SIGNAL \U1|Add1~32_cout0\ : std_logic;
SIGNAL \U1|Add1~32COUT1_42\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|light2~1_combout\ : std_logic;
SIGNAL \U1|Add1~2\ : std_logic;
SIGNAL \U1|Add1~2COUT1_44\ : std_logic;
SIGNAL \U1|Add1~5_combout\ : std_logic;
SIGNAL \U1|Add1~7\ : std_logic;
SIGNAL \U1|Add1~7COUT1_46\ : std_logic;
SIGNAL \U1|Add1~10_combout\ : std_logic;
SIGNAL \U1|Add1~12\ : std_logic;
SIGNAL \U1|Add1~15_combout\ : std_logic;
SIGNAL \U1|Add1~17\ : std_logic;
SIGNAL \U1|Add1~17COUT1_48\ : std_logic;
SIGNAL \U1|Add1~20_combout\ : std_logic;
SIGNAL \U1|Add1~22\ : std_logic;
SIGNAL \U1|Add1~22COUT1_50\ : std_logic;
SIGNAL \U1|Add1~25_combout\ : std_logic;
SIGNAL \U1|Equal1~0_combout\ : std_logic;
SIGNAL \U1|Equal1~1_combout\ : std_logic;
SIGNAL \U1|control~regout\ : std_logic;
SIGNAL \U1|light_lane1~2\ : std_logic;
SIGNAL \U2|U1|Equal1~0_combout\ : std_logic;
SIGNAL \U2|U1|temp_1250us~regout\ : std_logic;
SIGNAL \U2|Led_bcd~15_combout\ : std_logic;
SIGNAL \U2|count~regout\ : std_logic;
SIGNAL \U2|Led_bcd~6_combout\ : std_logic;
SIGNAL \U2|Led_bcd~7_combout\ : std_logic;
SIGNAL \U2|Led_bcd~8_combout\ : std_logic;
SIGNAL \U2|Led_bcd~10_combout\ : std_logic;
SIGNAL \U2|Led_bcd~9_combout\ : std_logic;
SIGNAL \U2|Led_bcd~12_combout\ : std_logic;
SIGNAL \U2|Led_bcd~11_combout\ : std_logic;
SIGNAL \U2|Led_bcd~16_combout\ : std_logic;
SIGNAL \U2|Led_bcd~17_combout\ : std_logic;
SIGNAL \U2|Led_bcd~14_combout\ : std_logic;
SIGNAL \U2|Led_bcd[1]~1\ : std_logic;
SIGNAL \U2|Led_bcd[1]~1COUT1_22\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|Led_bcd[2]~3\ : std_logic;
SIGNAL \U2|Led_bcd[2]~3COUT1_24\ : std_logic;
SIGNAL \U2|Mux6~0_combout\ : std_logic;
SIGNAL \U2|Mux5~0_combout\ : std_logic;
SIGNAL \U2|Mux4~0_combout\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U3|U1|temp_1250us~regout\ : std_logic;
SIGNAL \U3|count~regout\ : std_logic;
SIGNAL \U3|Led_bcd~6_combout\ : std_logic;
SIGNAL \U3|Led_bcd~8_combout\ : std_logic;
SIGNAL \U3|Led_bcd~10_combout\ : std_logic;
SIGNAL \U3|Led_bcd~9_combout\ : std_logic;
SIGNAL \U3|Led_bcd~7_combout\ : std_logic;
SIGNAL \U3|Led_bcd~11_combout\ : std_logic;
SIGNAL \U3|Led_bcd~12_combout\ : std_logic;
SIGNAL \U3|Led_bcd~15_combout\ : std_logic;
SIGNAL \U3|Led_bcd~16_combout\ : std_logic;
SIGNAL \U3|Led_bcd~17_combout\ : std_logic;
SIGNAL \U3|Led_bcd~14_combout\ : std_logic;
SIGNAL \U3|Led_bcd[1]~1\ : std_logic;
SIGNAL \U3|Led_bcd[1]~1COUT1_22\ : std_logic;
SIGNAL \U3|Add0~0_combout\ : std_logic;
SIGNAL \U3|Led_bcd[2]~3\ : std_logic;
SIGNAL \U3|Led_bcd[2]~3COUT1_24\ : std_logic;
SIGNAL \U3|Mux6~0_combout\ : std_logic;
SIGNAL \U3|Mux5~0_combout\ : std_logic;
SIGNAL \U3|Mux4~0_combout\ : std_logic;
SIGNAL \U3|Mux3~0_combout\ : std_logic;
SIGNAL \U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|Mux1~0_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U2|U1|count2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U3|sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|Led_bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|count2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U0|count1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|light_lane2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|light_lane1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|count2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|count1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U2|sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2|Led_bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|ALT_INV_temp_1250us~regout\ : std_logic;
SIGNAL \U3|U1|ALT_INV_temp_1250us~regout\ : std_logic;
SIGNAL \U3|ALT_INV_count~regout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_temp_1250us~regout\ : std_logic;
SIGNAL \U2|ALT_INV_count~regout\ : std_logic;
SIGNAL \U1|ALT_INV_light_lane1[0]~1_combout\ : std_logic;
SIGNAL \U0|ALT_INV_temp_1s~regout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_light_lane2\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \U1|ALT_INV_light_lane1\ : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_clk <= clk;
light_lane1 <= ww_light_lane1;
light_lane2 <= ww_light_lane2;
led_out_lane1 <= ww_led_out_lane1;
led_out_lane2 <= ww_led_out_lane2;
sel1 <= ww_sel1;
sel2 <= ww_sel2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U0|ALT_INV_temp_1250us~regout\ <= NOT \U0|temp_1250us~regout\;
\U3|U1|ALT_INV_temp_1250us~regout\ <= NOT \U3|U1|temp_1250us~regout\;
\U3|ALT_INV_count~regout\ <= NOT \U3|count~regout\;
\U2|U1|ALT_INV_temp_1250us~regout\ <= NOT \U2|U1|temp_1250us~regout\;
\U2|ALT_INV_count~regout\ <= NOT \U2|count~regout\;
\U1|ALT_INV_light_lane1[0]~1_combout\ <= NOT \U1|light_lane1[0]~1_combout\;
\U0|ALT_INV_temp_1s~regout\ <= NOT \U0|temp_1s~regout\;
\U3|ALT_INV_Mux6~0_combout\ <= NOT \U3|Mux6~0_combout\;
\U2|ALT_INV_Mux6~0_combout\ <= NOT \U2|Mux6~0_combout\;
\U1|ALT_INV_light_lane2\(2) <= NOT \U1|light_lane2\(2);
\U1|ALT_INV_light_lane1\(1) <= NOT \U1|light_lane1\(1);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X2_Y2_N1
\U0|count2[0]\ : maxii_lcell
-- Equation(s):
-- \U0|count2\(0) = DFFEAS((((!\U0|count2\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \U0|count2\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|count2\(0));

-- Location: LC_X2_Y2_N6
\U0|count2[2]\ : maxii_lcell
-- Equation(s):
-- \U0|count2\(2) = DFFEAS(((\U0|count2\(2) & ((!\U0|count2\(0)))) # (!\U0|count2\(2) & (\U0|count2\(1) & \U0|count2\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U0|count2\(1),
	datac => \U0|count2\(2),
	datad => \U0|count2\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|count2\(2));

-- Location: LC_X2_Y2_N7
\U0|count2[1]\ : maxii_lcell
-- Equation(s):
-- \U0|count2\(1) = DFFEAS(((\U0|count2\(1) & ((!\U0|count2\(0)))) # (!\U0|count2\(1) & (!\U0|count2\(2) & \U0|count2\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U0|count2\(1),
	datac => \U0|count2\(2),
	datad => \U0|count2\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|count2\(1));

-- Location: LC_X2_Y2_N8
\U0|temp_1250us\ : maxii_lcell
-- Equation(s):
-- \U0|temp_1250us~regout\ = DFFEAS(\U0|temp_1250us~regout\ $ (((!\U0|count2\(1) & (\U0|count2\(2) & \U0|count2\(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U0|temp_1250us~regout\,
	datab => \U0|count2\(1),
	datac => \U0|count2\(2),
	datad => \U0|count2\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|temp_1250us~regout\);

-- Location: LC_X2_Y3_N7
\U0|count1[0]\ : maxii_lcell
-- Equation(s):
-- \U0|count1\(0) = DFFEAS((((!\U0|count1\(0)))), !GLOBAL(\U0|temp_1250us~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1250us~regout\,
	datac => \U0|count1\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|count1\(0));

-- Location: LC_X2_Y3_N3
\U0|count1[1]\ : maxii_lcell
-- Equation(s):
-- \U0|count1\(1) = DFFEAS(\U0|count1\(0) $ ((((\U0|count1\(1))))), !GLOBAL(\U0|temp_1250us~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1250us~regout\,
	dataa => \U0|count1\(0),
	datad => \U0|count1\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|count1\(1));

-- Location: LC_X2_Y3_N9
\U0|temp_1s\ : maxii_lcell
-- Equation(s):
-- \U0|temp_1s~regout\ = DFFEAS(\U0|temp_1s~regout\ $ (((\U0|count1\(0) & ((\U0|count1\(1)))))), !GLOBAL(\U0|temp_1250us~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1250us~regout\,
	dataa => \U0|count1\(0),
	datab => \U0|temp_1s~regout\,
	datad => \U0|count1\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|temp_1s~regout\);

-- Location: LC_X3_Y3_N0
\U1|light2~0\ : maxii_lcell
-- Equation(s):
-- \U1|light2~0_combout\ = (\U1|control~regout\ & (((\U1|Equal1~1_combout\)))) # (!\U1|control~regout\ & (\U1|light1~regout\ & ((\U1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|light1~regout\,
	datab => \U1|control~regout\,
	datac => \U1|Equal1~1_combout\,
	datad => \U1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|light2~0_combout\);

-- Location: LC_X3_Y3_N5
\U1|light2\ : maxii_lcell
-- Equation(s):
-- \U1|light1~0\ = (\U1|control~regout\ & (\U1|Equal1~1_combout\ & (C1_light2))) # (!\U1|control~regout\ & (((\U1|Equal0~1_combout\))))
-- \U1|light2~regout\ = DFFEAS(\U1|light1~0\, !GLOBAL(\U0|temp_1s~regout\), VCC, , \U1|light2~0_combout\, \U1|control~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|control~regout\,
	datab => \U1|Equal1~1_combout\,
	datac => \U1|control~regout\,
	datad => \U1|Equal0~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \U1|light2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|light1~0\,
	regout => \U1|light2~regout\);

-- Location: LC_X4_Y3_N1
\U1|light_lane1[0]~1\ : maxii_lcell
-- Equation(s):
-- \U1|light_lane1[0]~1_combout\ = (\U1|control~regout\ & (((!\U1|Equal1~1_combout\)) # (!\U1|light2~regout\))) # (!\U1|control~regout\ & (((!\U1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|light2~regout\,
	datab => \U1|control~regout\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|light_lane1[0]~1_combout\);

-- Location: LC_X4_Y3_N8
\U1|count1[6]\ : maxii_lcell
-- Equation(s):
-- \U1|count1\(6) = DFFEAS((\U1|Add0~25_combout\ & (((\U1|light_lane1[0]~1_combout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|Add0~25_combout\,
	datad => \U1|light_lane1[0]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count1\(6));

-- Location: LC_X5_Y3_N0
\U1|count1[0]\ : maxii_lcell
-- Equation(s):
-- \U1|count1\(0) = DFFEAS((\U1|light_lane1[0]~1_combout\ & (((!\U1|count1\(0))))) # (!\U1|light_lane1[0]~1_combout\ & (!\U1|control~regout\ & ((!\U1|light1~regout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3035",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|control~regout\,
	datab => \U1|count1\(0),
	datac => \U1|light_lane1[0]~1_combout\,
	datad => \U1|light1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count1\(0));

-- Location: LC_X5_Y3_N1
\U1|Add0~32\ : maxii_lcell
-- Equation(s):
-- \U1|Add0~32_cout0\ = CARRY(((!\U1|count1\(0))))
-- \U1|Add0~32COUT1_42\ = CARRY(((!\U1|count1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~30\,
	cout0 => \U1|Add0~32_cout0\,
	cout1 => \U1|Add0~32COUT1_42\);

-- Location: LC_X5_Y3_N2
\U1|Add0~0\ : maxii_lcell
-- Equation(s):
-- \U1|Add0~0_combout\ = (\U1|count1\(1) $ ((!\U1|Add0~32_cout0\)))
-- \U1|Add0~2\ = CARRY(((!\U1|count1\(1) & !\U1|Add0~32_cout0\)))
-- \U1|Add0~2COUT1_44\ = CARRY(((!\U1|count1\(1) & !\U1|Add0~32COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count1\(1),
	cin0 => \U1|Add0~32_cout0\,
	cin1 => \U1|Add0~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~0_combout\,
	cout0 => \U1|Add0~2\,
	cout1 => \U1|Add0~2COUT1_44\);

-- Location: LC_X5_Y3_N9
\U1|count1[1]\ : maxii_lcell
-- Equation(s):
-- \U1|count1\(1) = DFFEAS(((\U1|light_lane1[0]~1_combout\ & ((\U1|Add0~0_combout\))) # (!\U1|light_lane1[0]~1_combout\ & (!\U1|control~regout\))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|control~regout\,
	datac => \U1|light_lane1[0]~1_combout\,
	datad => \U1|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count1\(1));

-- Location: LC_X5_Y3_N3
\U1|Add0~5\ : maxii_lcell
-- Equation(s):
-- \U1|Add0~5_combout\ = (\U1|count1\(2) $ ((!\U1|Add0~2\)))
-- \U1|Add0~7\ = CARRY(((!\U1|Add0~2\) # (!\U1|count1\(2))))
-- \U1|Add0~7COUT1_46\ = CARRY(((!\U1|Add0~2COUT1_44\) # (!\U1|count1\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c33f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count1\(2),
	cin0 => \U1|Add0~2\,
	cin1 => \U1|Add0~2COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~5_combout\,
	cout0 => \U1|Add0~7\,
	cout1 => \U1|Add0~7COUT1_46\);

-- Location: LC_X6_Y3_N8
\U1|count1[2]\ : maxii_lcell
-- Equation(s):
-- \U1|count1\(2) = DFFEAS((\U1|light_lane1[0]~1_combout\ & (((!\U1|Add0~5_combout\)))) # (!\U1|light_lane1[0]~1_combout\ & (!\U1|control~regout\ & ((!\U1|light1~regout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3305",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|control~regout\,
	datab => \U1|Add0~5_combout\,
	datac => \U1|light1~regout\,
	datad => \U1|light_lane1[0]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count1\(2));

-- Location: LC_X5_Y3_N4
\U1|Add0~10\ : maxii_lcell
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|count1\(3) $ ((!\U1|Add0~7\)))
-- \U1|Add0~12\ = CARRY(((!\U1|count1\(3) & !\U1|Add0~7COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count1\(3),
	cin0 => \U1|Add0~7\,
	cin1 => \U1|Add0~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~12\);

-- Location: LC_X4_Y3_N2
\U1|count1[3]\ : maxii_lcell
-- Equation(s):
-- \U1|count1\(3) = DFFEAS(((\U1|Add0~10_combout\ & ((\U1|light_lane1[0]~1_combout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datab => \U1|Add0~10_combout\,
	datad => \U1|light_lane1[0]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count1\(3));

-- Location: LC_X5_Y3_N5
\U1|Add0~15\ : maxii_lcell
-- Equation(s):
-- \U1|Add0~15_combout\ = (\U1|count1\(4) $ ((\U1|Add0~12\)))
-- \U1|Add0~17\ = CARRY(((\U1|count1\(4)) # (!\U1|Add0~12\)))
-- \U1|Add0~17COUT1_48\ = CARRY(((\U1|count1\(4)) # (!\U1|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count1\(4),
	cin => \U1|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~15_combout\,
	cout0 => \U1|Add0~17\,
	cout1 => \U1|Add0~17COUT1_48\);

-- Location: LC_X4_Y3_N3
\U1|count1[4]\ : maxii_lcell
-- Equation(s):
-- \U1|count1\(4) = DFFEAS(((\U1|Add0~15_combout\ & ((\U1|light_lane1[0]~1_combout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datab => \U1|Add0~15_combout\,
	datad => \U1|light_lane1[0]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count1\(4));

-- Location: LC_X5_Y3_N6
\U1|Add0~20\ : maxii_lcell
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|count1\(5) $ ((!(!\U1|Add0~12\ & \U1|Add0~17\) # (\U1|Add0~12\ & \U1|Add0~17COUT1_48\))))
-- \U1|Add0~22\ = CARRY(((!\U1|count1\(5) & !\U1|Add0~17\)))
-- \U1|Add0~22COUT1_50\ = CARRY(((!\U1|count1\(5) & !\U1|Add0~17COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count1\(5),
	cin => \U1|Add0~12\,
	cin0 => \U1|Add0~17\,
	cin1 => \U1|Add0~17COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~20_combout\,
	cout0 => \U1|Add0~22\,
	cout1 => \U1|Add0~22COUT1_50\);

-- Location: LC_X4_Y3_N6
\U1|count1[5]\ : maxii_lcell
-- Equation(s):
-- \U1|count1\(5) = DFFEAS((((\U1|Add0~20_combout\ & \U1|light_lane1[0]~1_combout\))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datac => \U1|Add0~20_combout\,
	datad => \U1|light_lane1[0]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count1\(5));

-- Location: LC_X5_Y3_N7
\U1|Add0~25\ : maxii_lcell
-- Equation(s):
-- \U1|Add0~25_combout\ = (((!\U1|Add0~12\ & \U1|Add0~22\) # (\U1|Add0~12\ & \U1|Add0~22COUT1_50\) $ (\U1|count1\(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|count1\(6),
	cin => \U1|Add0~12\,
	cin0 => \U1|Add0~22\,
	cin1 => \U1|Add0~22COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~25_combout\);

-- Location: LC_X5_Y3_N8
\U1|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|count1\(0) & (!\U1|Add0~0_combout\ & (!\U1|Add0~10_combout\ & !\U1|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count1\(0),
	datab => \U1|Add0~0_combout\,
	datac => \U1|Add0~10_combout\,
	datad => \U1|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Equal0~0_combout\);

-- Location: LC_X4_Y3_N7
\U1|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\U1|Add0~25_combout\ & (!\U1|Add0~15_combout\ & (!\U1|Add0~20_combout\ & \U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~25_combout\,
	datab => \U1|Add0~15_combout\,
	datac => \U1|Add0~20_combout\,
	datad => \U1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Equal0~1_combout\);

-- Location: LC_X3_Y3_N6
\U1|light1\ : maxii_lcell
-- Equation(s):
-- \U1|light1~regout\ = DFFEAS((((!\U1|control~regout\))), !GLOBAL(\U0|temp_1s~regout\), VCC, , \U1|light1~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datad => \U1|control~regout\,
	aclr => GND,
	ena => \U1|light1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|light1~regout\);

-- Location: LC_X4_Y4_N1
\U1|count2[0]~4\ : maxii_lcell
-- Equation(s):
-- \U1|count2[0]~4_combout\ = (\U1|control~regout\ & (((!\U1|Equal1~1_combout\)))) # (!\U1|control~regout\ & (((!\U1|Equal0~1_combout\)) # (!\U1|light1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1d3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|light1~regout\,
	datab => \U1|control~regout\,
	datac => \U1|Equal1~1_combout\,
	datad => \U1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|count2[0]~4_combout\);

-- Location: LC_X4_Y4_N6
\U1|count2[5]\ : maxii_lcell
-- Equation(s):
-- \U1|count2\(5) = DFFEAS((((\U1|Add1~20_combout\ & \U1|count2[0]~4_combout\))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datac => \U1|Add1~20_combout\,
	datad => \U1|count2[0]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count2\(5));

-- Location: LC_X4_Y4_N2
\U1|count2[0]\ : maxii_lcell
-- Equation(s):
-- \U1|count2\(0) = DFFEAS((\U1|count2[0]~4_combout\ & (!\U1|count2\(0))) # (!\U1|count2[0]~4_combout\ & (((\U1|control~regout\ & !\U1|light2~regout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "550c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|count2\(0),
	datab => \U1|control~regout\,
	datac => \U1|light2~regout\,
	datad => \U1|count2[0]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count2\(0));

-- Location: LC_X3_Y4_N1
\U1|Add1~32\ : maxii_lcell
-- Equation(s):
-- \U1|Add1~32_cout0\ = CARRY(((!\U1|count2\(0))))
-- \U1|Add1~32COUT1_42\ = CARRY(((!\U1|count2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~30\,
	cout0 => \U1|Add1~32_cout0\,
	cout1 => \U1|Add1~32COUT1_42\);

-- Location: LC_X3_Y4_N2
\U1|Add1~0\ : maxii_lcell
-- Equation(s):
-- \U1|Add1~0_combout\ = (\U1|count2\(1) $ ((\U1|Add1~32_cout0\)))
-- \U1|Add1~2\ = CARRY(((\U1|count2\(1) & !\U1|Add1~32_cout0\)))
-- \U1|Add1~2COUT1_44\ = CARRY(((\U1|count2\(1) & !\U1|Add1~32COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count2\(1),
	cin0 => \U1|Add1~32_cout0\,
	cin1 => \U1|Add1~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~0_combout\,
	cout0 => \U1|Add1~2\,
	cout1 => \U1|Add1~2COUT1_44\);

-- Location: LC_X4_Y3_N4
\U1|light2~1\ : maxii_lcell
-- Equation(s):
-- \U1|light2~1_combout\ = (!\U1|control~regout\ & (\U1|light1~regout\ & (\U1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|control~regout\,
	datab => \U1|light1~regout\,
	datac => \U1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|light2~1_combout\);

-- Location: LC_X3_Y4_N9
\U1|count2[1]\ : maxii_lcell
-- Equation(s):
-- \U1|count2\(1) = DFFEAS((\U1|control~regout\ & (!\U1|Equal1~1_combout\ & ((\U1|light2~1_combout\) # (!\U1|Add1~0_combout\)))) # (!\U1|control~regout\ & (((\U1|light2~1_combout\)) # (!\U1|Add1~0_combout\))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "51f3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|control~regout\,
	datab => \U1|Add1~0_combout\,
	datac => \U1|light2~1_combout\,
	datad => \U1|Equal1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count2\(1));

-- Location: LC_X3_Y4_N3
\U1|Add1~5\ : maxii_lcell
-- Equation(s):
-- \U1|Add1~5_combout\ = (\U1|count2\(2) $ ((!\U1|Add1~2\)))
-- \U1|Add1~7\ = CARRY(((!\U1|Add1~2\) # (!\U1|count2\(2))))
-- \U1|Add1~7COUT1_46\ = CARRY(((!\U1|Add1~2COUT1_44\) # (!\U1|count2\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c33f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count2\(2),
	cin0 => \U1|Add1~2\,
	cin1 => \U1|Add1~2COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~5_combout\,
	cout0 => \U1|Add1~7\,
	cout1 => \U1|Add1~7COUT1_46\);

-- Location: LC_X4_Y4_N4
\U1|count2[2]\ : maxii_lcell
-- Equation(s):
-- \U1|count2\(2) = DFFEAS((\U1|count2[0]~4_combout\ & (!\U1|Add1~5_combout\)) # (!\U1|count2[0]~4_combout\ & (((\U1|control~regout\ & !\U1|light2~regout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "550c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|Add1~5_combout\,
	datab => \U1|control~regout\,
	datac => \U1|light2~regout\,
	datad => \U1|count2[0]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count2\(2));

-- Location: LC_X3_Y4_N4
\U1|Add1~10\ : maxii_lcell
-- Equation(s):
-- \U1|Add1~10_combout\ = \U1|count2\(3) $ ((((!\U1|Add1~7\))))
-- \U1|Add1~12\ = CARRY((!\U1|count2\(3) & ((!\U1|Add1~7COUT1_46\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count2\(3),
	cin0 => \U1|Add1~7\,
	cin1 => \U1|Add1~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~10_combout\,
	cout => \U1|Add1~12\);

-- Location: LC_X4_Y4_N7
\U1|count2[3]\ : maxii_lcell
-- Equation(s):
-- \U1|count2\(3) = DFFEAS(((\U1|Add1~10_combout\ & ((\U1|count2[0]~4_combout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datab => \U1|Add1~10_combout\,
	datad => \U1|count2[0]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count2\(3));

-- Location: LC_X3_Y4_N5
\U1|Add1~15\ : maxii_lcell
-- Equation(s):
-- \U1|Add1~15_combout\ = (\U1|count2\(4) $ ((\U1|Add1~12\)))
-- \U1|Add1~17\ = CARRY(((\U1|count2\(4)) # (!\U1|Add1~12\)))
-- \U1|Add1~17COUT1_48\ = CARRY(((\U1|count2\(4)) # (!\U1|Add1~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count2\(4),
	cin => \U1|Add1~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~15_combout\,
	cout0 => \U1|Add1~17\,
	cout1 => \U1|Add1~17COUT1_48\);

-- Location: LC_X4_Y4_N9
\U1|count2[4]\ : maxii_lcell
-- Equation(s):
-- \U1|count2\(4) = DFFEAS((\U1|Add1~15_combout\ & (((\U1|count2[0]~4_combout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|Add1~15_combout\,
	datad => \U1|count2[0]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count2\(4));

-- Location: LC_X3_Y4_N6
\U1|Add1~20\ : maxii_lcell
-- Equation(s):
-- \U1|Add1~20_combout\ = \U1|count2\(5) $ ((((!(!\U1|Add1~12\ & \U1|Add1~17\) # (\U1|Add1~12\ & \U1|Add1~17COUT1_48\)))))
-- \U1|Add1~22\ = CARRY((!\U1|count2\(5) & ((!\U1|Add1~17\))))
-- \U1|Add1~22COUT1_50\ = CARRY((!\U1|count2\(5) & ((!\U1|Add1~17COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count2\(5),
	cin => \U1|Add1~12\,
	cin0 => \U1|Add1~17\,
	cin1 => \U1|Add1~17COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~20_combout\,
	cout0 => \U1|Add1~22\,
	cout1 => \U1|Add1~22COUT1_50\);

-- Location: LC_X4_Y4_N0
\U1|count2[6]\ : maxii_lcell
-- Equation(s):
-- \U1|count2\(6) = DFFEAS(((\U1|Add1~25_combout\ & ((\U1|count2[0]~4_combout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datab => \U1|Add1~25_combout\,
	datad => \U1|count2[0]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count2\(6));

-- Location: LC_X3_Y4_N7
\U1|Add1~25\ : maxii_lcell
-- Equation(s):
-- \U1|Add1~25_combout\ = \U1|count2\(6) $ (((((!\U1|Add1~12\ & \U1|Add1~22\) # (\U1|Add1~12\ & \U1|Add1~22COUT1_50\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count2\(6),
	cin => \U1|Add1~12\,
	cin0 => \U1|Add1~22\,
	cin1 => \U1|Add1~22COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~25_combout\);

-- Location: LC_X3_Y4_N8
\U1|Equal1~0\ : maxii_lcell
-- Equation(s):
-- \U1|Equal1~0_combout\ = (!\U1|count2\(0) & (!\U1|Add1~0_combout\ & (!\U1|Add1~10_combout\ & !\U1|Add1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count2\(0),
	datab => \U1|Add1~0_combout\,
	datac => \U1|Add1~10_combout\,
	datad => \U1|Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Equal1~0_combout\);

-- Location: LC_X3_Y4_N0
\U1|Equal1~1\ : maxii_lcell
-- Equation(s):
-- \U1|Equal1~1_combout\ = (!\U1|Add1~20_combout\ & (!\U1|Add1~25_combout\ & (!\U1|Add1~15_combout\ & \U1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~20_combout\,
	datab => \U1|Add1~25_combout\,
	datac => \U1|Add1~15_combout\,
	datad => \U1|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Equal1~1_combout\);

-- Location: LC_X4_Y3_N5
\U1|control\ : maxii_lcell
-- Equation(s):
-- \U1|control~regout\ = DFFEAS((\U1|light2~1_combout\) # ((\U1|control~regout\ & ((!\U1|light2~regout\) # (!\U1|Equal1~1_combout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|control~regout\,
	datab => \U1|Equal1~1_combout\,
	datac => \U1|light2~regout\,
	datad => \U1|light2~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|control~regout\);

-- Location: LC_X4_Y3_N9
\U1|light_lane1[0]\ : maxii_lcell
-- Equation(s):
-- \U1|light_lane1\(0) = DFFEAS((!\U1|control~regout\ & (((!\U1|light1~regout\)))), !GLOBAL(\U0|temp_1s~regout\), VCC, , !\U1|light_lane1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|control~regout\,
	datac => \U1|light1~regout\,
	aclr => GND,
	ena => \U1|ALT_INV_light_lane1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|light_lane1\(0));

-- Location: LC_X3_Y3_N3
\U1|light_lane1[1]\ : maxii_lcell
-- Equation(s):
-- \U1|light_lane1\(1) = DFFEAS((((!\U1|control~regout\))), !GLOBAL(\U0|temp_1s~regout\), VCC, , \U1|light1~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datad => \U1|control~regout\,
	aclr => GND,
	ena => \U1|light1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|light_lane1\(1));

-- Location: LC_X4_Y3_N0
\U1|light_lane1[2]\ : maxii_lcell
-- Equation(s):
-- \U1|light_lane1~2\ = (!\U1|control~regout\ & (((\U1|light1~regout\))))
-- \U1|light_lane1\(2) = DFFEAS(\U1|light_lane1~2\, !GLOBAL(\U0|temp_1s~regout\), VCC, , !\U1|light_lane1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	dataa => \U1|control~regout\,
	datac => \U1|light1~regout\,
	aclr => GND,
	ena => \U1|ALT_INV_light_lane1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|light_lane1~2\,
	regout => \U1|light_lane1\(2));

-- Location: LC_X3_Y3_N9
\U1|light_lane2[0]\ : maxii_lcell
-- Equation(s):
-- \U1|light_lane2\(0) = DFFEAS((((!\U1|light2~regout\ & \U1|control~regout\))), !GLOBAL(\U0|temp_1s~regout\), VCC, , \U1|light2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datac => \U1|light2~regout\,
	datad => \U1|control~regout\,
	aclr => GND,
	ena => \U1|light2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|light_lane2\(0));

-- Location: LC_X3_Y3_N8
\U1|light_lane2[1]\ : maxii_lcell
-- Equation(s):
-- \U1|light_lane2\(1) = DFFEAS(GND, !GLOBAL(\U0|temp_1s~regout\), VCC, , \U1|light2~0_combout\, \U1|light_lane1~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datac => \U1|light_lane1~2\,
	aclr => GND,
	sload => VCC,
	ena => \U1|light2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|light_lane2\(1));

-- Location: LC_X3_Y3_N7
\U1|light_lane2[2]\ : maxii_lcell
-- Equation(s):
-- \U1|light_lane2\(2) = DFFEAS((((!\U1|control~regout\) # (!\U1|light2~regout\))), !GLOBAL(\U0|temp_1s~regout\), VCC, , \U1|light2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1s~regout\,
	datac => \U1|light2~regout\,
	datad => \U1|control~regout\,
	aclr => GND,
	ena => \U1|light2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|light_lane2\(2));

-- Location: LC_X2_Y3_N1
\U2|U1|count2[1]\ : maxii_lcell
-- Equation(s):
-- \U2|U1|count2\(1) = DFFEAS(((\U0|count1\(0) & (!\U2|U1|count2\(1) & !\U2|U1|count2\(2))) # (!\U0|count1\(0) & (\U2|U1|count2\(1)))), !GLOBAL(\U0|temp_1250us~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "303c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1250us~regout\,
	datab => \U0|count1\(0),
	datac => \U2|U1|count2\(1),
	datad => \U2|U1|count2\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|U1|count2\(1));

-- Location: LC_X2_Y3_N4
\U2|U1|count2[2]\ : maxii_lcell
-- Equation(s):
-- \U2|U1|count2\(2) = DFFEAS(((\U0|count1\(0) & (\U2|U1|count2\(1) & !\U2|U1|count2\(2))) # (!\U0|count1\(0) & ((\U2|U1|count2\(2))))), !GLOBAL(\U0|temp_1250us~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1250us~regout\,
	datab => \U0|count1\(0),
	datac => \U2|U1|count2\(1),
	datad => \U2|U1|count2\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|U1|count2\(2));

-- Location: LC_X2_Y3_N5
\U2|U1|Equal1~0\ : maxii_lcell
-- Equation(s):
-- \U2|U1|Equal1~0_combout\ = ((\U0|count1\(0) & (\U2|U1|count2\(2) & !\U2|U1|count2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|count1\(0),
	datac => \U2|U1|count2\(2),
	datad => \U2|U1|count2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|U1|Equal1~0_combout\);

-- Location: LC_X2_Y3_N6
\U2|U1|temp_1250us\ : maxii_lcell
-- Equation(s):
-- \U2|U1|temp_1250us~regout\ = DFFEAS((((!\U2|U1|temp_1250us~regout\))), !GLOBAL(\U0|temp_1250us~regout\), VCC, , \U2|U1|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1250us~regout\,
	datac => \U2|U1|temp_1250us~regout\,
	aclr => GND,
	ena => \U2|U1|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|U1|temp_1250us~regout\);

-- Location: LC_X6_Y3_N2
\U2|Led_bcd~15\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~15_combout\ = ((\U1|count1\(6) & ((\U1|count1\(5)) # (\U1|count1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count1\(5),
	datac => \U1|count1\(4),
	datad => \U1|count1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~15_combout\);

-- Location: LC_X7_Y3_N1
\U2|count\ : maxii_lcell
-- Equation(s):
-- \U2|count~regout\ = DFFEAS((((!\U2|count~regout\))), !GLOBAL(\U2|U1|temp_1250us~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U2|U1|ALT_INV_temp_1250us~regout\,
	datad => \U2|count~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|count~regout\);

-- Location: LC_X7_Y3_N9
\U2|Led_bcd~6\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~6_combout\ = (\U2|count~regout\) # (\U1|count1\(2) $ (((\U1|count1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count1\(2),
	datab => \U2|count~regout\,
	datad => \U1|count1\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~6_combout\);

-- Location: LC_X7_Y3_N5
\U2|Led_bcd~7\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~7_combout\ = ((\U2|count~regout\ & ((\U1|count1\(0)))) # (!\U2|count~regout\ & (\U1|count1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|count~regout\,
	datac => \U1|count1\(1),
	datad => \U1|count1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~7_combout\);

-- Location: LC_X7_Y3_N2
\U2|Led_bcd~8\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~8_combout\ = ((\U2|count~regout\) # ((\U1|count1\(2) & \U1|count1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|count~regout\,
	datac => \U1|count1\(2),
	datad => \U1|count1\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~8_combout\);

-- Location: LC_X7_Y3_N0
\U2|Led_bcd~10\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~10_combout\ = ((!\U1|count1\(5) & (\U1|count1\(6) $ (\U1|count1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count1\(6),
	datac => \U1|count1\(3),
	datad => \U1|count1\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~10_combout\);

-- Location: LC_X7_Y3_N3
\U2|Led_bcd~9\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~9_combout\ = (\U1|count1\(5) & ((\U1|count1\(6) & ((!\U2|Led_bcd~8_combout\))) # (!\U1|count1\(6) & (!\U1|count1\(3))))) # (!\U1|count1\(5) & (\U1|count1\(3) & ((\U1|count1\(6)) # (!\U2|Led_bcd~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "24e6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count1\(3),
	datab => \U1|count1\(5),
	datac => \U1|count1\(6),
	datad => \U2|Led_bcd~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~9_combout\);

-- Location: LC_X7_Y3_N6
\U2|Led_bcd~12\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~12_combout\ = (\U2|Led_bcd~10_combout\ & (\U2|Led_bcd~7_combout\ $ (\U2|Led_bcd~8_combout\ $ (\U2|Led_bcd~9_combout\)))) # (!\U2|Led_bcd~10_combout\ & (\U2|Led_bcd~8_combout\ & ((\U2|Led_bcd~7_combout\) # (\U2|Led_bcd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Led_bcd~7_combout\,
	datab => \U2|Led_bcd~8_combout\,
	datac => \U2|Led_bcd~10_combout\,
	datad => \U2|Led_bcd~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~12_combout\);

-- Location: LC_X7_Y3_N7
\U2|Led_bcd~11\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~11_combout\ = (\U2|Led_bcd~8_combout\ & (!\U2|Led_bcd~7_combout\)) # (!\U2|Led_bcd~8_combout\ & (\U2|Led_bcd~9_combout\ & ((\U2|Led_bcd~7_combout\) # (!\U2|Led_bcd~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6744",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Led_bcd~7_combout\,
	datab => \U2|Led_bcd~8_combout\,
	datac => \U2|Led_bcd~10_combout\,
	datad => \U2|Led_bcd~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~11_combout\);

-- Location: LC_X7_Y3_N8
\U2|Led_bcd[0]\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd\(0) = DFFEAS((\U2|Led_bcd~11_combout\ $ (((!\U2|Led_bcd~6_combout\ & \U2|Led_bcd~12_combout\)))), !GLOBAL(\U2|U1|temp_1250us~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U2|U1|ALT_INV_temp_1250us~regout\,
	datab => \U2|Led_bcd~6_combout\,
	datac => \U2|Led_bcd~12_combout\,
	datad => \U2|Led_bcd~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|Led_bcd\(0));

-- Location: LC_X6_Y3_N3
\U2|Led_bcd~16\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~16_combout\ = (\U1|count1\(2) & ((\U1|count1\(3) & (!\U1|count1\(5))) # (!\U1|count1\(3) & ((!\U1|count1\(4)))))) # (!\U1|count1\(2) & ((\U1|count1\(4) $ (!\U1|count1\(3))) # (!\U1|count1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "731f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count1\(2),
	datab => \U1|count1\(5),
	datac => \U1|count1\(4),
	datad => \U1|count1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~16_combout\);

-- Location: LC_X6_Y3_N4
\U2|Led_bcd~17\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~17_combout\ = (\U2|Led_bcd~16_combout\ & (\U1|count1\(6) $ (((\U1|count1\(5)) # (\U1|count1\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count1\(6),
	datab => \U1|count1\(5),
	datac => \U1|count1\(4),
	datad => \U2|Led_bcd~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~17_combout\);

-- Location: LC_X6_Y3_N5
\U2|Led_bcd[1]\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd\(1) = DFFEAS(\U1|count1\(1) $ ((\U2|Led_bcd\(0))), !GLOBAL(\U2|U1|temp_1250us~regout\), VCC, , , \U2|Led_bcd~17_combout\, , , !\U2|count~regout\)
-- \U2|Led_bcd[1]~1\ = CARRY((\U1|count1\(1)) # ((!\U2|Led_bcd\(0))))
-- \U2|Led_bcd[1]~1COUT1_22\ = CARRY((\U1|count1\(1)) # ((!\U2|Led_bcd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66bb",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U2|U1|ALT_INV_temp_1250us~regout\,
	dataa => \U1|count1\(1),
	datab => \U2|Led_bcd\(0),
	datac => \U2|Led_bcd~17_combout\,
	aclr => GND,
	sload => \U2|ALT_INV_count~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|Led_bcd\(1),
	cout0 => \U2|Led_bcd[1]~1\,
	cout1 => \U2|Led_bcd[1]~1COUT1_22\);

-- Location: LC_X6_Y3_N0
\U2|Led_bcd~14\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd~14_combout\ = (\U1|count1\(6) & (!\U1|count1\(5) & (!\U1|count1\(4)))) # (!\U1|count1\(6) & (\U1|count1\(5) & ((\U1|count1\(4)) # (\U1|count1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4642",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count1\(6),
	datab => \U1|count1\(5),
	datac => \U1|count1\(4),
	datad => \U1|count1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Led_bcd~14_combout\);

-- Location: LC_X6_Y3_N6
\U2|Led_bcd[2]\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd\(2) = DFFEAS(\U2|Led_bcd\(1) $ (\U1|count1\(2) $ ((\U2|Led_bcd[1]~1\))), !GLOBAL(\U2|U1|temp_1250us~regout\), VCC, , , \U2|Led_bcd~14_combout\, , , !\U2|count~regout\)
-- \U2|Led_bcd[2]~3\ = CARRY((\U2|Led_bcd\(1) & ((\U1|count1\(2)) # (!\U2|Led_bcd[1]~1\))) # (!\U2|Led_bcd\(1) & (\U1|count1\(2) & !\U2|Led_bcd[1]~1\)))
-- \U2|Led_bcd[2]~3COUT1_24\ = CARRY((\U2|Led_bcd\(1) & ((\U1|count1\(2)) # (!\U2|Led_bcd[1]~1COUT1_22\))) # (!\U2|Led_bcd\(1) & (\U1|count1\(2) & !\U2|Led_bcd[1]~1COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U2|U1|ALT_INV_temp_1250us~regout\,
	dataa => \U2|Led_bcd\(1),
	datab => \U1|count1\(2),
	datac => \U2|Led_bcd~14_combout\,
	aclr => GND,
	sload => \U2|ALT_INV_count~regout\,
	cin0 => \U2|Led_bcd[1]~1\,
	cin1 => \U2|Led_bcd[1]~1COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|Led_bcd\(2),
	cout0 => \U2|Led_bcd[2]~3\,
	cout1 => \U2|Led_bcd[2]~3COUT1_24\);

-- Location: LC_X6_Y3_N9
\U2|Add0~0\ : maxii_lcell
-- Equation(s):
-- \U2|Add0~0_combout\ = ((\U2|Led_bcd\(2) $ (\U2|Led_bcd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|Led_bcd\(2),
	datad => \U2|Led_bcd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~0_combout\);

-- Location: LC_X6_Y3_N7
\U2|Led_bcd[3]\ : maxii_lcell
-- Equation(s):
-- \U2|Led_bcd\(3) = DFFEAS((\U1|count1\(3) $ (\U2|Led_bcd[2]~3\ $ (\U2|Add0~0_combout\))), !GLOBAL(\U2|U1|temp_1250us~regout\), VCC, , , \U2|Led_bcd~15_combout\, , , !\U2|count~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U2|U1|ALT_INV_temp_1250us~regout\,
	datab => \U1|count1\(3),
	datac => \U2|Led_bcd~15_combout\,
	datad => \U2|Add0~0_combout\,
	aclr => GND,
	sload => \U2|ALT_INV_count~regout\,
	cin0 => \U2|Led_bcd[2]~3\,
	cin1 => \U2|Led_bcd[2]~3COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|Led_bcd\(3));

-- Location: LC_X6_Y3_N1
\U2|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \U2|Mux6~0_combout\ = (\U2|Led_bcd\(3)) # ((\U2|Led_bcd\(1) & ((!\U2|Led_bcd\(2)) # (!\U2|Led_bcd\(0)))) # (!\U2|Led_bcd\(1) & ((\U2|Led_bcd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Led_bcd\(3),
	datab => \U2|Led_bcd\(0),
	datac => \U2|Led_bcd\(1),
	datad => \U2|Led_bcd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mux6~0_combout\);

-- Location: LC_X6_Y4_N7
\U2|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \U2|Mux5~0_combout\ = (!\U2|Led_bcd\(3) & ((\U2|Led_bcd\(1) & ((\U2|Led_bcd\(0)) # (!\U2|Led_bcd\(2)))) # (!\U2|Led_bcd\(1) & (\U2|Led_bcd\(0) & !\U2|Led_bcd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Led_bcd\(3),
	datab => \U2|Led_bcd\(1),
	datac => \U2|Led_bcd\(0),
	datad => \U2|Led_bcd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mux5~0_combout\);

-- Location: LC_X4_Y4_N3
\U2|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \U2|Mux4~0_combout\ = ((\U2|Led_bcd\(0)) # ((\U2|Led_bcd\(2) & !\U2|Led_bcd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Led_bcd\(0),
	datac => \U2|Led_bcd\(2),
	datad => \U2|Led_bcd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mux4~0_combout\);

-- Location: LC_X6_Y4_N1
\U2|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \U2|Mux3~0_combout\ = (!\U2|Led_bcd\(3) & ((\U2|Led_bcd\(1) & (\U2|Led_bcd\(0) & \U2|Led_bcd\(2))) # (!\U2|Led_bcd\(1) & (\U2|Led_bcd\(0) $ (\U2|Led_bcd\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Led_bcd\(3),
	datab => \U2|Led_bcd\(1),
	datac => \U2|Led_bcd\(0),
	datad => \U2|Led_bcd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mux3~0_combout\);

-- Location: LC_X4_Y4_N8
\U2|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \U2|Mux2~0_combout\ = ((!\U2|Led_bcd\(0) & (!\U2|Led_bcd\(2) & \U2|Led_bcd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Led_bcd\(0),
	datac => \U2|Led_bcd\(2),
	datad => \U2|Led_bcd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mux2~0_combout\);

-- Location: LC_X4_Y4_N5
\U2|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \U2|Mux1~0_combout\ = ((\U2|Led_bcd\(2) & (\U2|Led_bcd\(0) $ (\U2|Led_bcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Led_bcd\(0),
	datac => \U2|Led_bcd\(2),
	datad => \U2|Led_bcd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mux1~0_combout\);

-- Location: LC_X6_Y4_N2
\U2|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \U2|Mux0~0_combout\ = (!\U2|Led_bcd\(3) & (!\U2|Led_bcd\(1) & (\U2|Led_bcd\(0) $ (\U2|Led_bcd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Led_bcd\(3),
	datab => \U2|Led_bcd\(1),
	datac => \U2|Led_bcd\(0),
	datad => \U2|Led_bcd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mux0~0_combout\);

-- Location: LC_X2_Y3_N0
\U3|U1|temp_1250us\ : maxii_lcell
-- Equation(s):
-- \U3|U1|temp_1250us~regout\ = DFFEAS((((!\U3|U1|temp_1250us~regout\))), !GLOBAL(\U0|temp_1250us~regout\), VCC, , \U2|U1|Equal1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp_1250us~regout\,
	datad => \U3|U1|temp_1250us~regout\,
	aclr => GND,
	ena => \U2|U1|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|U1|temp_1250us~regout\);

-- Location: LC_X5_Y4_N2
\U3|count\ : maxii_lcell
-- Equation(s):
-- \U3|count~regout\ = DFFEAS((((!\U3|count~regout\))), !\U3|U1|temp_1250us~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|ALT_INV_temp_1250us~regout\,
	datad => \U3|count~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|count~regout\);

-- Location: LC_X5_Y4_N1
\U3|Led_bcd~6\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~6_combout\ = ((\U3|count~regout\) # (\U1|count2\(4) $ (\U1|count2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count2\(4),
	datab => \U1|count2\(2),
	datad => \U3|count~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~6_combout\);

-- Location: LC_X5_Y4_N6
\U3|Led_bcd~8\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~8_combout\ = ((\U3|count~regout\) # ((\U1|count2\(4) & \U1|count2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|count~regout\,
	datac => \U1|count2\(4),
	datad => \U1|count2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~8_combout\);

-- Location: LC_X5_Y4_N0
\U3|Led_bcd~10\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~10_combout\ = ((!\U1|count2\(5) & (\U1|count2\(3) $ (\U1|count2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count2\(3),
	datac => \U1|count2\(5),
	datad => \U1|count2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~10_combout\);

-- Location: LC_X5_Y4_N7
\U3|Led_bcd~9\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~9_combout\ = (\U1|count2\(5) & ((\U1|count2\(6) & ((!\U3|Led_bcd~8_combout\))) # (!\U1|count2\(6) & (!\U1|count2\(3))))) # (!\U1|count2\(5) & (\U1|count2\(3) & ((\U1|count2\(6)) # (!\U3|Led_bcd~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "18bc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count2\(6),
	datab => \U1|count2\(3),
	datac => \U1|count2\(5),
	datad => \U3|Led_bcd~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~9_combout\);

-- Location: LC_X5_Y4_N4
\U3|Led_bcd~7\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~7_combout\ = ((\U3|count~regout\ & (\U1|count2\(0))) # (!\U3|count~regout\ & ((!\U1|count2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count2\(0),
	datac => \U3|count~regout\,
	datad => \U1|count2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~7_combout\);

-- Location: LC_X5_Y4_N5
\U3|Led_bcd~11\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~11_combout\ = (\U3|Led_bcd~8_combout\ & (((!\U3|Led_bcd~7_combout\)))) # (!\U3|Led_bcd~8_combout\ & (\U3|Led_bcd~9_combout\ & ((\U3|Led_bcd~7_combout\) # (!\U3|Led_bcd~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Led_bcd~8_combout\,
	datab => \U3|Led_bcd~10_combout\,
	datac => \U3|Led_bcd~9_combout\,
	datad => \U3|Led_bcd~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~11_combout\);

-- Location: LC_X5_Y4_N8
\U3|Led_bcd~12\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~12_combout\ = (\U3|Led_bcd~10_combout\ & (\U3|Led_bcd~8_combout\ $ (\U3|Led_bcd~7_combout\ $ (\U3|Led_bcd~9_combout\)))) # (!\U3|Led_bcd~10_combout\ & (\U3|Led_bcd~8_combout\ & ((\U3|Led_bcd~7_combout\) # (\U3|Led_bcd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a668",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Led_bcd~8_combout\,
	datab => \U3|Led_bcd~10_combout\,
	datac => \U3|Led_bcd~7_combout\,
	datad => \U3|Led_bcd~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~12_combout\);

-- Location: LC_X5_Y4_N9
\U3|Led_bcd[0]\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd\(0) = DFFEAS((\U3|Led_bcd~11_combout\ $ (((!\U3|Led_bcd~6_combout\ & \U3|Led_bcd~12_combout\)))), !\U3|U1|temp_1250us~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|ALT_INV_temp_1250us~regout\,
	datab => \U3|Led_bcd~6_combout\,
	datac => \U3|Led_bcd~11_combout\,
	datad => \U3|Led_bcd~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Led_bcd\(0));

-- Location: LC_X2_Y4_N5
\U3|Led_bcd~15\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~15_combout\ = ((\U1|count2\(6) & ((\U1|count2\(4)) # (\U1|count2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count2\(4),
	datac => \U1|count2\(6),
	datad => \U1|count2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~15_combout\);

-- Location: LC_X2_Y4_N6
\U3|Led_bcd~16\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~16_combout\ = (\U1|count2\(2) & ((\U1|count2\(3) & ((!\U1|count2\(5)))) # (!\U1|count2\(3) & (!\U1|count2\(4))))) # (!\U1|count2\(2) & ((\U1|count2\(4) $ (!\U1|count2\(3))) # (!\U1|count2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "43f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count2\(2),
	datab => \U1|count2\(4),
	datac => \U1|count2\(3),
	datad => \U1|count2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~16_combout\);

-- Location: LC_X2_Y4_N7
\U3|Led_bcd~17\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~17_combout\ = (\U3|Led_bcd~16_combout\ & (\U1|count2\(6) $ (((\U1|count2\(4)) # (\U1|count2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count2\(4),
	datab => \U1|count2\(5),
	datac => \U1|count2\(6),
	datad => \U3|Led_bcd~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~17_combout\);

-- Location: LC_X2_Y4_N1
\U3|Led_bcd[1]\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd\(1) = DFFEAS(\U1|count2\(1) $ ((!\U3|Led_bcd\(0))), !\U3|U1|temp_1250us~regout\, VCC, , , \U3|Led_bcd~17_combout\, , , !\U3|count~regout\)
-- \U3|Led_bcd[1]~1\ = CARRY(((!\U3|Led_bcd\(0))) # (!\U1|count2\(1)))
-- \U3|Led_bcd[1]~1COUT1_22\ = CARRY(((!\U3|Led_bcd\(0))) # (!\U1|count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9977",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|ALT_INV_temp_1250us~regout\,
	dataa => \U1|count2\(1),
	datab => \U3|Led_bcd\(0),
	datac => \U3|Led_bcd~17_combout\,
	aclr => GND,
	sload => \U3|ALT_INV_count~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Led_bcd\(1),
	cout0 => \U3|Led_bcd[1]~1\,
	cout1 => \U3|Led_bcd[1]~1COUT1_22\);

-- Location: LC_X2_Y4_N0
\U3|Led_bcd~14\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd~14_combout\ = (\U1|count2\(6) & (!\U1|count2\(4) & ((!\U1|count2\(5))))) # (!\U1|count2\(6) & (\U1|count2\(5) & ((\U1|count2\(4)) # (\U1|count2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count2\(4),
	datab => \U1|count2\(3),
	datac => \U1|count2\(6),
	datad => \U1|count2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Led_bcd~14_combout\);

-- Location: LC_X2_Y4_N2
\U3|Led_bcd[2]\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd\(2) = DFFEAS(\U3|Led_bcd\(1) $ (\U1|count2\(2) $ ((\U3|Led_bcd[1]~1\))), !\U3|U1|temp_1250us~regout\, VCC, , , \U3|Led_bcd~14_combout\, , , !\U3|count~regout\)
-- \U3|Led_bcd[2]~3\ = CARRY((\U3|Led_bcd\(1) & ((\U1|count2\(2)) # (!\U3|Led_bcd[1]~1\))) # (!\U3|Led_bcd\(1) & (\U1|count2\(2) & !\U3|Led_bcd[1]~1\)))
-- \U3|Led_bcd[2]~3COUT1_24\ = CARRY((\U3|Led_bcd\(1) & ((\U1|count2\(2)) # (!\U3|Led_bcd[1]~1COUT1_22\))) # (!\U3|Led_bcd\(1) & (\U1|count2\(2) & !\U3|Led_bcd[1]~1COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|ALT_INV_temp_1250us~regout\,
	dataa => \U3|Led_bcd\(1),
	datab => \U1|count2\(2),
	datac => \U3|Led_bcd~14_combout\,
	aclr => GND,
	sload => \U3|ALT_INV_count~regout\,
	cin0 => \U3|Led_bcd[1]~1\,
	cin1 => \U3|Led_bcd[1]~1COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Led_bcd\(2),
	cout0 => \U3|Led_bcd[2]~3\,
	cout1 => \U3|Led_bcd[2]~3COUT1_24\);

-- Location: LC_X2_Y4_N8
\U3|Add0~0\ : maxii_lcell
-- Equation(s):
-- \U3|Add0~0_combout\ = ((\U3|Led_bcd\(0) $ (\U3|Led_bcd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|Led_bcd\(0),
	datad => \U3|Led_bcd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Add0~0_combout\);

-- Location: LC_X2_Y4_N3
\U3|Led_bcd[3]\ : maxii_lcell
-- Equation(s):
-- \U3|Led_bcd\(3) = DFFEAS((\U1|count2\(3) $ (\U3|Led_bcd[2]~3\ $ (\U3|Add0~0_combout\))), !\U3|U1|temp_1250us~regout\, VCC, , , \U3|Led_bcd~15_combout\, , , !\U3|count~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|ALT_INV_temp_1250us~regout\,
	datab => \U1|count2\(3),
	datac => \U3|Led_bcd~15_combout\,
	datad => \U3|Add0~0_combout\,
	aclr => GND,
	sload => \U3|ALT_INV_count~regout\,
	cin0 => \U3|Led_bcd[2]~3\,
	cin1 => \U3|Led_bcd[2]~3COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Led_bcd\(3));

-- Location: LC_X2_Y1_N5
\U3|Mux6~0\ : maxii_lcell
-- Equation(s):
-- \U3|Mux6~0_combout\ = (\U3|Led_bcd\(3)) # ((\U3|Led_bcd\(2) & ((!\U3|Led_bcd\(1)) # (!\U3|Led_bcd\(0)))) # (!\U3|Led_bcd\(2) & ((\U3|Led_bcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Led_bcd\(0),
	datab => \U3|Led_bcd\(3),
	datac => \U3|Led_bcd\(2),
	datad => \U3|Led_bcd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux6~0_combout\);

-- Location: LC_X2_Y1_N8
\U3|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \U3|Mux5~0_combout\ = (!\U3|Led_bcd\(3) & ((\U3|Led_bcd\(0) & ((\U3|Led_bcd\(1)) # (!\U3|Led_bcd\(2)))) # (!\U3|Led_bcd\(0) & (!\U3|Led_bcd\(2) & \U3|Led_bcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Led_bcd\(0),
	datab => \U3|Led_bcd\(3),
	datac => \U3|Led_bcd\(2),
	datad => \U3|Led_bcd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux5~0_combout\);

-- Location: LC_X2_Y1_N9
\U3|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \U3|Mux4~0_combout\ = ((\U3|Led_bcd\(0)) # ((!\U3|Led_bcd\(1) & \U3|Led_bcd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Led_bcd\(1),
	datab => \U3|Led_bcd\(2),
	datad => \U3|Led_bcd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux4~0_combout\);

-- Location: LC_X2_Y1_N2
\U3|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \U3|Mux3~0_combout\ = (!\U3|Led_bcd\(3) & ((\U3|Led_bcd\(0) & (\U3|Led_bcd\(2) $ (!\U3|Led_bcd\(1)))) # (!\U3|Led_bcd\(0) & (\U3|Led_bcd\(2) & !\U3|Led_bcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2012",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Led_bcd\(0),
	datab => \U3|Led_bcd\(3),
	datac => \U3|Led_bcd\(2),
	datad => \U3|Led_bcd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux3~0_combout\);

-- Location: LC_X2_Y1_N4
\U3|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \U3|Mux2~0_combout\ = (\U3|Led_bcd\(1) & (!\U3|Led_bcd\(2) & ((!\U3|Led_bcd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Led_bcd\(1),
	datab => \U3|Led_bcd\(2),
	datad => \U3|Led_bcd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux2~0_combout\);

-- Location: LC_X2_Y1_N0
\U3|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \U3|Mux1~0_combout\ = (\U3|Led_bcd\(2) & (\U3|Led_bcd\(1) $ (((\U3|Led_bcd\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4488",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Led_bcd\(1),
	datab => \U3|Led_bcd\(2),
	datad => \U3|Led_bcd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux1~0_combout\);

-- Location: LC_X2_Y1_N7
\U3|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \U3|Mux0~0_combout\ = (!\U3|Led_bcd\(3) & (!\U3|Led_bcd\(1) & (\U3|Led_bcd\(0) $ (\U3|Led_bcd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0012",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Led_bcd\(0),
	datab => \U3|Led_bcd\(3),
	datac => \U3|Led_bcd\(2),
	datad => \U3|Led_bcd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux0~0_combout\);

-- Location: LC_X7_Y3_N4
\U2|sel[0]\ : maxii_lcell
-- Equation(s):
-- \U2|sel\(0) = DFFEAS((((\U2|count~regout\))), !GLOBAL(\U2|U1|temp_1250us~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U2|U1|ALT_INV_temp_1250us~regout\,
	datad => \U2|count~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|sel\(0));

-- Location: LC_X6_Y4_N4
\U2|sel[1]\ : maxii_lcell
-- Equation(s):
-- \U2|sel\(1) = DFFEAS((((!\U2|count~regout\))), !GLOBAL(\U2|U1|temp_1250us~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U2|U1|ALT_INV_temp_1250us~regout\,
	datad => \U2|count~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|sel\(1));

-- Location: LC_X2_Y4_N9
\U3|sel[0]\ : maxii_lcell
-- Equation(s):
-- \U3|sel\(0) = DFFEAS((((\U3|count~regout\))), !\U3|U1|temp_1250us~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|ALT_INV_temp_1250us~regout\,
	datac => \U3|count~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|sel\(0));

-- Location: LC_X2_Y4_N4
\U3|sel[1]\ : maxii_lcell
-- Equation(s):
-- \U3|sel\(1) = DFFEAS((((!\U3|count~regout\))), !\U3|U1|temp_1250us~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|ALT_INV_temp_1250us~regout\,
	datac => \U3|count~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|sel\(1));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\light_lane1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|light_lane1\(0),
	oe => VCC,
	padio => ww_light_lane1(0));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\light_lane1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_light_lane1\(1),
	oe => VCC,
	padio => ww_light_lane1(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\light_lane1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|light_lane1\(2),
	oe => VCC,
	padio => ww_light_lane1(2));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\light_lane2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|light_lane2\(0),
	oe => VCC,
	padio => ww_light_lane2(0));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\light_lane2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|light_lane2\(1),
	oe => VCC,
	padio => ww_light_lane2(1));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\light_lane2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_light_lane2\(2),
	oe => VCC,
	padio => ww_light_lane2(2));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|ALT_INV_Mux6~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane1(0));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|Mux5~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane1(1));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|Mux4~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane1(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|Mux3~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane1(3));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|Mux2~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane1(4));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|Mux1~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane1(5));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|Mux0~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane1(6));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|ALT_INV_Mux6~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane2(0));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Mux5~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane2(1));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Mux4~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane2(2));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Mux3~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane2(3));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Mux2~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane2(4));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Mux1~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane2(5));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_out_lane2[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Mux0~0_combout\,
	oe => VCC,
	padio => ww_led_out_lane2(6));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sel1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|sel\(0),
	oe => VCC,
	padio => ww_sel1(0));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sel1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U2|sel\(1),
	oe => VCC,
	padio => ww_sel1(1));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sel2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|sel\(0),
	oe => VCC,
	padio => ww_sel2(0));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sel2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|sel\(1),
	oe => VCC,
	padio => ww_sel2(1));
END structure;


