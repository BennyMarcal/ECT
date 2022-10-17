-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/18/2022 22:11:18"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MiniProjeto IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END MiniProjeto;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MiniProjeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|s_cnt~5_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|s_cnt~4_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|s_cnt~3_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|s_cnt~2_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|s_cnt~1_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|s_cnt~0_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|s_cnt~6_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|s_cnt~7_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|s_cnt~9_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|s_cnt~10_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|s_cnt~11_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|s_cnt~8_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|pulse~feeder_combout\ : std_logic;
SIGNAL \inst|pulse~q\ : std_logic;
SIGNAL \inst|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|s_count[0]~8_combout\ : std_logic;
SIGNAL \inst5|s_count[1]~11\ : std_logic;
SIGNAL \inst5|s_count[2]~12_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst5|s_count[6]~16_combout\ : std_logic;
SIGNAL \inst5|s_count[2]~13\ : std_logic;
SIGNAL \inst5|s_count[3]~17_combout\ : std_logic;
SIGNAL \inst5|s_count[3]~18\ : std_logic;
SIGNAL \inst5|s_count[4]~19_combout\ : std_logic;
SIGNAL \inst5|s_count[4]~20\ : std_logic;
SIGNAL \inst5|s_count[5]~21_combout\ : std_logic;
SIGNAL \inst5|s_count[5]~22\ : std_logic;
SIGNAL \inst5|s_count[6]~23_combout\ : std_logic;
SIGNAL \inst5|s_count[6]~24\ : std_logic;
SIGNAL \inst5|s_count[7]~25_combout\ : std_logic;
SIGNAL \inst5|s_count[6]~14_combout\ : std_logic;
SIGNAL \inst5|s_count[6]~15_combout\ : std_logic;
SIGNAL \inst5|s_count[0]~9\ : std_logic;
SIGNAL \inst5|s_count[1]~10_combout\ : std_logic;
SIGNAL \inst3|binoutput[6]~0_combout\ : std_logic;
SIGNAL \inst3|binoutput[5]~1_combout\ : std_logic;
SIGNAL \inst3|binoutput[4]~2_combout\ : std_logic;
SIGNAL \inst3|binoutput[3]~3_combout\ : std_logic;
SIGNAL \inst3|binoutput[2]~4_combout\ : std_logic;
SIGNAL \inst3|binoutput[1]~5_combout\ : std_logic;
SIGNAL \inst3|binoutput[0]~6_combout\ : std_logic;
SIGNAL \inst1|binoutput[6]~0_combout\ : std_logic;
SIGNAL \inst1|binoutput[5]~1_combout\ : std_logic;
SIGNAL \inst1|binoutput[4]~2_combout\ : std_logic;
SIGNAL \inst1|binoutput[3]~3_combout\ : std_logic;
SIGNAL \inst1|binoutput[2]~4_combout\ : std_logic;
SIGNAL \inst1|binoutput[1]~5_combout\ : std_logic;
SIGNAL \inst1|binoutput[0]~6_combout\ : std_logic;
SIGNAL \inst5|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|s_cnt\ : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|pulse~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|binoutput[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|binoutput[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|binoutput[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|binoutput[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|binoutput[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|binoutput[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|binoutput[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|binoutput[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|binoutput[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|binoutput[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|binoutput[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|binoutput[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|binoutput[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|binoutput[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X56_Y2_N8
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|s_cnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X56_Y2_N9
\inst|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(0));

-- Location: LCCOMB_X56_Y2_N10
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|s_cnt\(1) & (!\inst|Add0~1\)) # (!\inst|s_cnt\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X56_Y2_N11
\inst|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(1));

-- Location: LCCOMB_X56_Y2_N12
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|s_cnt\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|s_cnt\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|s_cnt\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X56_Y2_N13
\inst|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(2));

-- Location: LCCOMB_X56_Y2_N14
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|s_cnt\(3) & (!\inst|Add0~5\)) # (!\inst|s_cnt\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X56_Y2_N15
\inst|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(3));

-- Location: LCCOMB_X56_Y2_N16
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|s_cnt\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|s_cnt\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|s_cnt\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X56_Y2_N17
\inst|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(4));

-- Location: LCCOMB_X56_Y2_N18
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|s_cnt\(5) & (!\inst|Add0~9\)) # (!\inst|s_cnt\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X56_Y2_N19
\inst|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(5));

-- Location: LCCOMB_X56_Y2_N20
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|s_cnt\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|s_cnt\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|s_cnt\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X56_Y2_N2
\inst|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~5_combout\ = (\inst|Add0~12_combout\ & !\inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~12_combout\,
	datac => \inst|Equal0~7_combout\,
	combout => \inst|s_cnt~5_combout\);

-- Location: FF_X56_Y2_N3
\inst|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(6));

-- Location: LCCOMB_X56_Y2_N22
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|s_cnt\(7) & (!\inst|Add0~13\)) # (!\inst|s_cnt\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X56_Y2_N23
\inst|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(7));

-- Location: LCCOMB_X56_Y2_N24
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|s_cnt\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|s_cnt\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|s_cnt\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X56_Y2_N25
\inst|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(8));

-- Location: LCCOMB_X56_Y2_N26
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|s_cnt\(9) & (!\inst|Add0~17\)) # (!\inst|s_cnt\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X56_Y2_N27
\inst|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(9));

-- Location: LCCOMB_X56_Y2_N28
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|s_cnt\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|s_cnt\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|s_cnt\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X56_Y2_N29
\inst|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(10));

-- Location: LCCOMB_X56_Y2_N30
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|s_cnt\(11) & (!\inst|Add0~21\)) # (!\inst|s_cnt\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X56_Y2_N0
\inst|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~4_combout\ = (\inst|Add0~22_combout\ & !\inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~22_combout\,
	datac => \inst|Equal0~7_combout\,
	combout => \inst|s_cnt~4_combout\);

-- Location: FF_X56_Y2_N1
\inst|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(11));

-- Location: LCCOMB_X56_Y1_N0
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|s_cnt\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|s_cnt\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|s_cnt\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X57_Y1_N8
\inst|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~3_combout\ = (\inst|Add0~24_combout\ & !\inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~24_combout\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|s_cnt~3_combout\);

-- Location: FF_X57_Y1_N9
\inst|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(12));

-- Location: LCCOMB_X56_Y1_N2
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|s_cnt\(13) & (!\inst|Add0~25\)) # (!\inst|s_cnt\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X56_Y1_N28
\inst|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~2_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Add0~26_combout\,
	combout => \inst|s_cnt~2_combout\);

-- Location: FF_X56_Y1_N29
\inst|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(13));

-- Location: LCCOMB_X56_Y1_N4
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|s_cnt\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|s_cnt\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|s_cnt\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X56_Y1_N30
\inst|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~1_combout\ = (\inst|Add0~28_combout\ & !\inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~28_combout\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|s_cnt~1_combout\);

-- Location: FF_X56_Y1_N31
\inst|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(14));

-- Location: LCCOMB_X56_Y1_N6
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|s_cnt\(15) & (!\inst|Add0~29\)) # (!\inst|s_cnt\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: FF_X56_Y1_N7
\inst|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(15));

-- Location: LCCOMB_X56_Y1_N8
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|s_cnt\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|s_cnt\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|s_cnt\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X57_Y1_N12
\inst|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~0_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst|s_cnt~0_combout\);

-- Location: FF_X57_Y1_N13
\inst|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(16));

-- Location: LCCOMB_X56_Y1_N10
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|s_cnt\(17) & (!\inst|Add0~33\)) # (!\inst|s_cnt\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: FF_X56_Y1_N11
\inst|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(17));

-- Location: LCCOMB_X56_Y1_N12
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|s_cnt\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|s_cnt\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|s_cnt\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X57_Y1_N4
\inst|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~6_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Add0~36_combout\,
	combout => \inst|s_cnt~6_combout\);

-- Location: FF_X57_Y1_N5
\inst|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(18));

-- Location: LCCOMB_X56_Y1_N14
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|s_cnt\(19) & (!\inst|Add0~37\)) # (!\inst|s_cnt\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X57_Y1_N6
\inst|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~7_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Add0~38_combout\,
	combout => \inst|s_cnt~7_combout\);

-- Location: FF_X57_Y1_N7
\inst|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(19));

-- Location: LCCOMB_X56_Y1_N16
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|s_cnt\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|s_cnt\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|s_cnt\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X57_Y1_N14
\inst|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~9_combout\ = (\inst|Add0~40_combout\ & !\inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~40_combout\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|s_cnt~9_combout\);

-- Location: FF_X57_Y1_N15
\inst|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(20));

-- Location: LCCOMB_X56_Y1_N18
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|s_cnt\(21) & (!\inst|Add0~41\)) # (!\inst|s_cnt\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cnt\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X57_Y1_N22
\inst|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~10_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Add0~42_combout\,
	combout => \inst|s_cnt~10_combout\);

-- Location: FF_X57_Y1_N23
\inst|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(21));

-- Location: LCCOMB_X56_Y1_N20
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|s_cnt\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|s_cnt\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|s_cnt\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X57_Y1_N20
\inst|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~11_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|s_cnt~11_combout\);

-- Location: FF_X57_Y1_N21
\inst|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(22));

-- Location: LCCOMB_X56_Y1_N22
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|s_cnt\(23) & (!\inst|Add0~45\)) # (!\inst|s_cnt\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: FF_X56_Y1_N23
\inst|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(23));

-- Location: LCCOMB_X56_Y1_N24
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = \inst|s_cnt\(24) $ (!\inst|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(24),
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\);

-- Location: LCCOMB_X56_Y1_N26
\inst|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cnt~8_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datad => \inst|Add0~48_combout\,
	combout => \inst|s_cnt~8_combout\);

-- Location: FF_X56_Y1_N27
\inst|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cnt\(24));

-- Location: LCCOMB_X57_Y1_N18
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|s_cnt\(19) & (\inst|s_cnt\(18) & (!\inst|s_cnt\(17) & \inst|s_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(19),
	datab => \inst|s_cnt\(18),
	datac => \inst|s_cnt\(17),
	datad => \inst|s_cnt\(0),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y2_N6
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|s_cnt\(1) & (\inst|s_cnt\(4) & (\inst|s_cnt\(3) & \inst|s_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(1),
	datab => \inst|s_cnt\(4),
	datac => \inst|s_cnt\(3),
	datad => \inst|s_cnt\(2),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y1_N28
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|s_cnt\(16) & (!\inst|s_cnt\(15) & (\inst|s_cnt\(13) & \inst|s_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(16),
	datab => \inst|s_cnt\(15),
	datac => \inst|s_cnt\(13),
	datad => \inst|s_cnt\(14),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y1_N30
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|s_cnt\(9) & (\inst|s_cnt\(12) & (!\inst|s_cnt\(10) & \inst|s_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(9),
	datab => \inst|s_cnt\(12),
	datac => \inst|s_cnt\(10),
	datad => \inst|s_cnt\(11),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y2_N4
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|s_cnt\(7) & (\inst|s_cnt\(5) & (!\inst|s_cnt\(6) & !\inst|s_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(7),
	datab => \inst|s_cnt\(5),
	datac => \inst|s_cnt\(6),
	datad => \inst|s_cnt\(8),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y1_N26
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~3_combout\ & (\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y1_N10
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|s_cnt\(21) & (\inst|s_cnt\(22) & (\inst|s_cnt\(20) & !\inst|s_cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(21),
	datab => \inst|s_cnt\(22),
	datac => \inst|s_cnt\(20),
	datad => \inst|s_cnt\(23),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X57_Y1_N24
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (\inst|s_cnt\(24) & (\inst|Equal0~5_combout\ & (\inst|Equal0~4_combout\ & \inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cnt\(24),
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y1_N16
\inst|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pulse~feeder_combout\ = \inst|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Equal0~7_combout\,
	combout => \inst|pulse~feeder_combout\);

-- Location: FF_X57_Y1_N17
\inst|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pulse~q\);

-- Location: CLKCTRL_G18
\inst|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|pulse~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y30_N12
\inst5|s_count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[0]~8_combout\ = \inst5|s_count\(0) $ (VCC)
-- \inst5|s_count[0]~9\ = CARRY(\inst5|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(0),
	datad => VCC,
	combout => \inst5|s_count[0]~8_combout\,
	cout => \inst5|s_count[0]~9\);

-- Location: LCCOMB_X114_Y30_N14
\inst5|s_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[1]~10_combout\ = (\inst5|s_count\(1) & (!\inst5|s_count[0]~9\)) # (!\inst5|s_count\(1) & ((\inst5|s_count[0]~9\) # (GND)))
-- \inst5|s_count[1]~11\ = CARRY((!\inst5|s_count[0]~9\) # (!\inst5|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(1),
	datad => VCC,
	cin => \inst5|s_count[0]~9\,
	combout => \inst5|s_count[1]~10_combout\,
	cout => \inst5|s_count[1]~11\);

-- Location: LCCOMB_X114_Y30_N16
\inst5|s_count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[2]~12_combout\ = (\inst5|s_count\(2) & (\inst5|s_count[1]~11\ $ (GND))) # (!\inst5|s_count\(2) & (!\inst5|s_count[1]~11\ & VCC))
-- \inst5|s_count[2]~13\ = CARRY((\inst5|s_count\(2) & !\inst5|s_count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(2),
	datad => VCC,
	cin => \inst5|s_count[1]~11\,
	combout => \inst5|s_count[2]~12_combout\,
	cout => \inst5|s_count[2]~13\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y30_N30
\inst5|s_count[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[6]~16_combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst5|s_count[6]~16_combout\);

-- Location: FF_X114_Y30_N17
\inst5|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|pulse~clkctrl_outclk\,
	d => \inst5|s_count[2]~12_combout\,
	sclr => \inst5|s_count[6]~15_combout\,
	ena => \inst5|s_count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(2));

-- Location: LCCOMB_X114_Y30_N18
\inst5|s_count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[3]~17_combout\ = (\inst5|s_count\(3) & (!\inst5|s_count[2]~13\)) # (!\inst5|s_count\(3) & ((\inst5|s_count[2]~13\) # (GND)))
-- \inst5|s_count[3]~18\ = CARRY((!\inst5|s_count[2]~13\) # (!\inst5|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(3),
	datad => VCC,
	cin => \inst5|s_count[2]~13\,
	combout => \inst5|s_count[3]~17_combout\,
	cout => \inst5|s_count[3]~18\);

-- Location: FF_X114_Y30_N19
\inst5|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|pulse~clkctrl_outclk\,
	d => \inst5|s_count[3]~17_combout\,
	sclr => \inst5|s_count[6]~15_combout\,
	ena => \inst5|s_count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(3));

-- Location: LCCOMB_X114_Y30_N20
\inst5|s_count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[4]~19_combout\ = (\inst5|s_count\(4) & (\inst5|s_count[3]~18\ $ (GND))) # (!\inst5|s_count\(4) & (!\inst5|s_count[3]~18\ & VCC))
-- \inst5|s_count[4]~20\ = CARRY((\inst5|s_count\(4) & !\inst5|s_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(4),
	datad => VCC,
	cin => \inst5|s_count[3]~18\,
	combout => \inst5|s_count[4]~19_combout\,
	cout => \inst5|s_count[4]~20\);

-- Location: FF_X114_Y30_N21
\inst5|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|pulse~clkctrl_outclk\,
	d => \inst5|s_count[4]~19_combout\,
	sclr => \inst5|s_count[6]~15_combout\,
	ena => \inst5|s_count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(4));

-- Location: LCCOMB_X114_Y30_N22
\inst5|s_count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[5]~21_combout\ = (\inst5|s_count\(5) & (!\inst5|s_count[4]~20\)) # (!\inst5|s_count\(5) & ((\inst5|s_count[4]~20\) # (GND)))
-- \inst5|s_count[5]~22\ = CARRY((!\inst5|s_count[4]~20\) # (!\inst5|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datad => VCC,
	cin => \inst5|s_count[4]~20\,
	combout => \inst5|s_count[5]~21_combout\,
	cout => \inst5|s_count[5]~22\);

-- Location: FF_X114_Y30_N23
\inst5|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|pulse~clkctrl_outclk\,
	d => \inst5|s_count[5]~21_combout\,
	sclr => \inst5|s_count[6]~15_combout\,
	ena => \inst5|s_count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(5));

-- Location: LCCOMB_X114_Y30_N24
\inst5|s_count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[6]~23_combout\ = (\inst5|s_count\(6) & (\inst5|s_count[5]~22\ $ (GND))) # (!\inst5|s_count\(6) & (!\inst5|s_count[5]~22\ & VCC))
-- \inst5|s_count[6]~24\ = CARRY((\inst5|s_count\(6) & !\inst5|s_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(6),
	datad => VCC,
	cin => \inst5|s_count[5]~22\,
	combout => \inst5|s_count[6]~23_combout\,
	cout => \inst5|s_count[6]~24\);

-- Location: FF_X114_Y30_N25
\inst5|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|pulse~clkctrl_outclk\,
	d => \inst5|s_count[6]~23_combout\,
	sclr => \inst5|s_count[6]~15_combout\,
	ena => \inst5|s_count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(6));

-- Location: LCCOMB_X114_Y30_N26
\inst5|s_count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[7]~25_combout\ = \inst5|s_count\(7) $ (\inst5|s_count[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	cin => \inst5|s_count[6]~24\,
	combout => \inst5|s_count[7]~25_combout\);

-- Location: FF_X114_Y30_N27
\inst5|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|pulse~clkctrl_outclk\,
	d => \inst5|s_count[7]~25_combout\,
	sclr => \inst5|s_count[6]~15_combout\,
	ena => \inst5|s_count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(7));

-- Location: LCCOMB_X114_Y30_N10
\inst5|s_count[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[6]~14_combout\ = (\inst5|s_count\(5) & ((\inst5|s_count\(2)) # ((\inst5|s_count\(3)) # (\inst5|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(3),
	datad => \inst5|s_count\(4),
	combout => \inst5|s_count[6]~14_combout\);

-- Location: LCCOMB_X114_Y30_N28
\inst5|s_count[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[6]~15_combout\ = (\SW[1]~input_o\) # ((\inst5|s_count\(7)) # ((\inst5|s_count\(6) & \inst5|s_count[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datab => \SW[1]~input_o\,
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count[6]~14_combout\,
	combout => \inst5|s_count[6]~15_combout\);

-- Location: FF_X114_Y30_N13
\inst5|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|pulse~clkctrl_outclk\,
	d => \inst5|s_count[0]~8_combout\,
	sclr => \inst5|s_count[6]~15_combout\,
	ena => \inst5|s_count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(0));

-- Location: FF_X114_Y30_N15
\inst5|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|pulse~clkctrl_outclk\,
	d => \inst5|s_count[1]~10_combout\,
	sclr => \inst5|s_count[6]~15_combout\,
	ena => \inst5|s_count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(1));

-- Location: LCCOMB_X114_Y50_N12
\inst3|binoutput[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[6]~0_combout\ = (\inst5|s_count\(0) & (!\inst5|s_count\(3) & (\inst5|s_count\(1) $ (!\inst5|s_count\(2))))) # (!\inst5|s_count\(0) & (!\inst5|s_count\(1) & (\inst5|s_count\(2) $ (!\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(3),
	combout => \inst3|binoutput[6]~0_combout\);

-- Location: LCCOMB_X114_Y50_N26
\inst3|binoutput[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[5]~1_combout\ = (\inst5|s_count\(1) & (!\inst5|s_count\(3) & ((\inst5|s_count\(0)) # (!\inst5|s_count\(2))))) # (!\inst5|s_count\(1) & (\inst5|s_count\(0) & (\inst5|s_count\(2) $ (!\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(3),
	combout => \inst3|binoutput[5]~1_combout\);

-- Location: LCCOMB_X114_Y50_N0
\inst3|binoutput[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[4]~2_combout\ = (\inst5|s_count\(1) & (((\inst5|s_count\(0) & !\inst5|s_count\(3))))) # (!\inst5|s_count\(1) & ((\inst5|s_count\(2) & ((!\inst5|s_count\(3)))) # (!\inst5|s_count\(2) & (\inst5|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(3),
	combout => \inst3|binoutput[4]~2_combout\);

-- Location: LCCOMB_X114_Y50_N2
\inst3|binoutput[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[3]~3_combout\ = (\inst5|s_count\(1) & ((\inst5|s_count\(2) & (\inst5|s_count\(0))) # (!\inst5|s_count\(2) & (!\inst5|s_count\(0) & \inst5|s_count\(3))))) # (!\inst5|s_count\(1) & (!\inst5|s_count\(3) & (\inst5|s_count\(2) $ 
-- (\inst5|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(3),
	combout => \inst3|binoutput[3]~3_combout\);

-- Location: LCCOMB_X114_Y50_N24
\inst3|binoutput[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[2]~4_combout\ = (\inst5|s_count\(2) & (\inst5|s_count\(3) & ((\inst5|s_count\(1)) # (!\inst5|s_count\(0))))) # (!\inst5|s_count\(2) & (\inst5|s_count\(1) & (!\inst5|s_count\(0) & !\inst5|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(3),
	combout => \inst3|binoutput[2]~4_combout\);

-- Location: LCCOMB_X114_Y50_N22
\inst3|binoutput[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[1]~5_combout\ = (\inst5|s_count\(1) & ((\inst5|s_count\(0) & ((\inst5|s_count\(3)))) # (!\inst5|s_count\(0) & (\inst5|s_count\(2))))) # (!\inst5|s_count\(1) & (\inst5|s_count\(2) & (\inst5|s_count\(0) $ (\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(3),
	combout => \inst3|binoutput[1]~5_combout\);

-- Location: LCCOMB_X114_Y50_N28
\inst3|binoutput[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[0]~6_combout\ = (\inst5|s_count\(2) & (!\inst5|s_count\(1) & (\inst5|s_count\(0) $ (!\inst5|s_count\(3))))) # (!\inst5|s_count\(2) & (\inst5|s_count\(0) & (\inst5|s_count\(1) $ (!\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(3),
	combout => \inst3|binoutput[0]~6_combout\);

-- Location: LCCOMB_X114_Y28_N4
\inst1|binoutput[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binoutput[6]~0_combout\ = (\inst5|s_count\(4) & (!\inst5|s_count\(7) & (\inst5|s_count\(5) $ (!\inst5|s_count\(6))))) # (!\inst5|s_count\(4) & (!\inst5|s_count\(5) & (\inst5|s_count\(7) $ (!\inst5|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(5),
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count\(6),
	combout => \inst1|binoutput[6]~0_combout\);

-- Location: LCCOMB_X114_Y28_N6
\inst1|binoutput[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binoutput[5]~1_combout\ = (\inst5|s_count\(4) & (\inst5|s_count\(7) $ (((\inst5|s_count\(5)) # (!\inst5|s_count\(6)))))) # (!\inst5|s_count\(4) & (\inst5|s_count\(5) & (!\inst5|s_count\(7) & !\inst5|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(5),
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count\(6),
	combout => \inst1|binoutput[5]~1_combout\);

-- Location: LCCOMB_X114_Y28_N8
\inst1|binoutput[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binoutput[4]~2_combout\ = (\inst5|s_count\(5) & (\inst5|s_count\(4) & (!\inst5|s_count\(7)))) # (!\inst5|s_count\(5) & ((\inst5|s_count\(6) & ((!\inst5|s_count\(7)))) # (!\inst5|s_count\(6) & (\inst5|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(5),
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count\(6),
	combout => \inst1|binoutput[4]~2_combout\);

-- Location: LCCOMB_X114_Y30_N4
\inst1|binoutput[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binoutput[3]~3_combout\ = (\inst5|s_count\(5) & ((\inst5|s_count\(4) & ((\inst5|s_count\(6)))) # (!\inst5|s_count\(4) & (\inst5|s_count\(7) & !\inst5|s_count\(6))))) # (!\inst5|s_count\(5) & (!\inst5|s_count\(7) & (\inst5|s_count\(4) $ 
-- (\inst5|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count\(6),
	combout => \inst1|binoutput[3]~3_combout\);

-- Location: LCCOMB_X114_Y28_N14
\inst1|binoutput[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binoutput[2]~4_combout\ = (\inst5|s_count\(7) & (\inst5|s_count\(6) & ((\inst5|s_count\(5)) # (!\inst5|s_count\(4))))) # (!\inst5|s_count\(7) & (!\inst5|s_count\(4) & (\inst5|s_count\(5) & !\inst5|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(5),
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count\(6),
	combout => \inst1|binoutput[2]~4_combout\);

-- Location: LCCOMB_X114_Y30_N2
\inst1|binoutput[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binoutput[1]~5_combout\ = (\inst5|s_count\(5) & ((\inst5|s_count\(4) & (\inst5|s_count\(7))) # (!\inst5|s_count\(4) & ((\inst5|s_count\(6)))))) # (!\inst5|s_count\(5) & (\inst5|s_count\(6) & (\inst5|s_count\(4) $ (\inst5|s_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count\(6),
	combout => \inst1|binoutput[1]~5_combout\);

-- Location: LCCOMB_X114_Y30_N0
\inst1|binoutput[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binoutput[0]~6_combout\ = (\inst5|s_count\(7) & (\inst5|s_count\(4) & (\inst5|s_count\(5) $ (\inst5|s_count\(6))))) # (!\inst5|s_count\(7) & (!\inst5|s_count\(5) & (\inst5|s_count\(4) $ (\inst5|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count\(6),
	combout => \inst1|binoutput[0]~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;
END structure;


