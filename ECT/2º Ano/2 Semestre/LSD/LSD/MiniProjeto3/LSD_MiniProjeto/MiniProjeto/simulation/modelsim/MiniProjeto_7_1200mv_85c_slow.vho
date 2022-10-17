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

-- DATE "05/18/2022 22:45:33"

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
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END MiniProjeto;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[0]~26_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \s_key0~0_combout\ : std_logic;
SIGNAL \s_key0~q\ : std_logic;
SIGNAL \debounceKEY0|s_dirtyIn~q\ : std_logic;
SIGNAL \debounceKEY0|s_previousIn~q\ : std_logic;
SIGNAL \debounceKEY0|Add0~9\ : std_logic;
SIGNAL \debounceKEY0|Add0~10_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~11\ : std_logic;
SIGNAL \debounceKEY0|Add0~12_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~13\ : std_logic;
SIGNAL \debounceKEY0|Add0~14_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~15\ : std_logic;
SIGNAL \debounceKEY0|Add0~16_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~17\ : std_logic;
SIGNAL \debounceKEY0|Add0~18_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~19\ : std_logic;
SIGNAL \debounceKEY0|Add0~20_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~21\ : std_logic;
SIGNAL \debounceKEY0|Add0~22_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~23\ : std_logic;
SIGNAL \debounceKEY0|Add0~24_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~25\ : std_logic;
SIGNAL \debounceKEY0|Add0~26_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~27\ : std_logic;
SIGNAL \debounceKEY0|Add0~28_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~29\ : std_logic;
SIGNAL \debounceKEY0|Add0~30_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~31\ : std_logic;
SIGNAL \debounceKEY0|Add0~32_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~33\ : std_logic;
SIGNAL \debounceKEY0|Add0~34_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~35\ : std_logic;
SIGNAL \debounceKEY0|Add0~36_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~37\ : std_logic;
SIGNAL \debounceKEY0|Add0~38_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \debounceKEY0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounceKEY0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~39\ : std_logic;
SIGNAL \debounceKEY0|Add0~40_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debounceKEY0|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounceKEY0|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounceKEY0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[5]~2_combout\ : std_logic;
SIGNAL \debounceKEY0|LessThan0~6_combout\ : std_logic;
SIGNAL \debounceKEY0|LessThan0~4_combout\ : std_logic;
SIGNAL \debounceKEY0|LessThan0~5_combout\ : std_logic;
SIGNAL \debounceKEY0|LessThan0~1_combout\ : std_logic;
SIGNAL \debounceKEY0|LessThan0~2_combout\ : std_logic;
SIGNAL \debounceKEY0|LessThan0~3_combout\ : std_logic;
SIGNAL \debounceKEY0|LessThan0~7_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~41\ : std_logic;
SIGNAL \debounceKEY0|Add0~43\ : std_logic;
SIGNAL \debounceKEY0|Add0~44_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[5]~3_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~42_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debounceKEY0|LessThan0~0_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt[5]~0_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~0_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~1\ : std_logic;
SIGNAL \debounceKEY0|Add0~2_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~3\ : std_logic;
SIGNAL \debounceKEY0|Add0~4_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~5\ : std_logic;
SIGNAL \debounceKEY0|Add0~6_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounceKEY0|Add0~7\ : std_logic;
SIGNAL \debounceKEY0|Add0~8_combout\ : std_logic;
SIGNAL \debounceKEY0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounceKEY0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounceKEY0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounceKEY0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounceKEY0|s_pulsedOut~q\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[23]~73\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[24]~74_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[24]~75\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[25]~76_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan0~0_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan0~1_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan0~2_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan0~3_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan1~1_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan0~4_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan0~5_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan0~6_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan0~7_combout\ : std_logic;
SIGNAL \displayPulseGenerator|count_proc~0_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[0]~27\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[1]~28_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[1]~29\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[2]~30_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[2]~31\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[3]~32_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[3]~33\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[4]~34_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[4]~35\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[5]~36_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[5]~37\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[6]~38_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[6]~39\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[7]~40_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[7]~41\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[8]~42_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[8]~43\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[9]~44_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[9]~45\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[10]~46_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[10]~47\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[11]~48_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[11]~49\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[12]~50_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[12]~51\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[13]~52_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[13]~53\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[14]~54_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[14]~55\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[15]~56_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[15]~57\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[16]~58_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[16]~59\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[17]~60_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[17]~61\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[18]~62_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[18]~63\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[19]~64_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[19]~65\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[20]~66_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[20]~67\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[21]~68_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[21]~69\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[22]~70_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[22]~71\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter[23]~72_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan1~2_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan1~0_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan1~3_combout\ : std_logic;
SIGNAL \displayPulseGenerator|LessThan1~4_combout\ : std_logic;
SIGNAL \displayPulseGenerator|blink~q\ : std_logic;
SIGNAL \debounceKEY1|Add0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \s_key2~0_combout\ : std_logic;
SIGNAL \s_key2~q\ : std_logic;
SIGNAL \debounceKEY1|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \debounceKEY1|s_dirtyIn~q\ : std_logic;
SIGNAL \debounceKEY1|s_previousIn~q\ : std_logic;
SIGNAL \debounceKEY1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~11\ : std_logic;
SIGNAL \debounceKEY1|Add0~12_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~13\ : std_logic;
SIGNAL \debounceKEY1|Add0~14_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~15\ : std_logic;
SIGNAL \debounceKEY1|Add0~16_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~17\ : std_logic;
SIGNAL \debounceKEY1|Add0~18_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~19\ : std_logic;
SIGNAL \debounceKEY1|Add0~20_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~21\ : std_logic;
SIGNAL \debounceKEY1|Add0~22_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~23\ : std_logic;
SIGNAL \debounceKEY1|Add0~24_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~25\ : std_logic;
SIGNAL \debounceKEY1|Add0~26_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~27\ : std_logic;
SIGNAL \debounceKEY1|Add0~28_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debounceKEY1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounceKEY1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~29\ : std_logic;
SIGNAL \debounceKEY1|Add0~30_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~31\ : std_logic;
SIGNAL \debounceKEY1|Add0~32_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~33\ : std_logic;
SIGNAL \debounceKEY1|Add0~34_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounceKEY1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounceKEY1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounceKEY1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[17]~2_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[17]~3_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~35\ : std_logic;
SIGNAL \debounceKEY1|Add0~36_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debounceKEY1|LessThan0~4_combout\ : std_logic;
SIGNAL \debounceKEY1|LessThan0~5_combout\ : std_logic;
SIGNAL \debounceKEY1|LessThan0~6_combout\ : std_logic;
SIGNAL \debounceKEY1|LessThan0~0_combout\ : std_logic;
SIGNAL \debounceKEY1|LessThan0~1_combout\ : std_logic;
SIGNAL \debounceKEY1|LessThan0~2_combout\ : std_logic;
SIGNAL \debounceKEY1|LessThan0~3_combout\ : std_logic;
SIGNAL \debounceKEY1|LessThan0~7_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[17]~0_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~37\ : std_logic;
SIGNAL \debounceKEY1|Add0~38_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~39\ : std_logic;
SIGNAL \debounceKEY1|Add0~40_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~41\ : std_logic;
SIGNAL \debounceKEY1|Add0~42_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~43\ : std_logic;
SIGNAL \debounceKEY1|Add0~44_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt[17]~4_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~1\ : std_logic;
SIGNAL \debounceKEY1|Add0~2_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~3\ : std_logic;
SIGNAL \debounceKEY1|Add0~4_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~5\ : std_logic;
SIGNAL \debounceKEY1|Add0~6_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~7\ : std_logic;
SIGNAL \debounceKEY1|Add0~8_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounceKEY1|Add0~9\ : std_logic;
SIGNAL \debounceKEY1|Add0~10_combout\ : std_logic;
SIGNAL \debounceKEY1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounceKEY1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounceKEY1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounceKEY1|s_pulsedOut~q\ : std_logic;
SIGNAL \s_startStop~0_combout\ : std_logic;
SIGNAL \s_startStop~q\ : std_logic;
SIGNAL \counter|s_count~3_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[0]~26_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[0]~28_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[0]~27\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[1]~29_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[1]~30\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[2]~31_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[2]~32\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[3]~33_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[3]~34\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[4]~35_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[4]~36\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[5]~37_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[5]~38\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[6]~39_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[6]~40\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[7]~41_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[7]~42\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[8]~43_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[8]~44\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[9]~45_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[9]~46\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[10]~47_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[10]~48\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[11]~49_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[11]~50\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[12]~51_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[12]~52\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[13]~53_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[13]~54\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[14]~55_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[14]~56\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[15]~57_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[15]~58\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[16]~59_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[16]~60\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[17]~61_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[17]~62\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[18]~63_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[18]~64\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[19]~65_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[19]~66\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[20]~67_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[20]~68\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[21]~69_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[21]~70\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[22]~71_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[22]~72\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[23]~73_combout\ : std_logic;
SIGNAL \counterPulseGenerator|Equal0~6_combout\ : std_logic;
SIGNAL \counterPulseGenerator|Equal0~5_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[23]~74\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[24]~75_combout\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[24]~76\ : std_logic;
SIGNAL \counterPulseGenerator|s_cnt[25]~77_combout\ : std_logic;
SIGNAL \counterPulseGenerator|Equal0~7_combout\ : std_logic;
SIGNAL \counterPulseGenerator|Equal0~1_combout\ : std_logic;
SIGNAL \counterPulseGenerator|Equal0~3_combout\ : std_logic;
SIGNAL \counterPulseGenerator|Equal0~0_combout\ : std_logic;
SIGNAL \counterPulseGenerator|Equal0~2_combout\ : std_logic;
SIGNAL \counterPulseGenerator|Equal0~4_combout\ : std_logic;
SIGNAL \counterPulseGenerator|Equal0~8_combout\ : std_logic;
SIGNAL \counterPulseGenerator|pulse~0_combout\ : std_logic;
SIGNAL \counterPulseGenerator|pulse~q\ : std_logic;
SIGNAL \counter|s_count[3]~1_combout\ : std_logic;
SIGNAL \counter|s_count~2_combout\ : std_logic;
SIGNAL \counter|s_count~0_combout\ : std_logic;
SIGNAL \counter|Add0~0_combout\ : std_logic;
SIGNAL \counter|s_count~4_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~8_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~19_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~9_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~20_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~10_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~21_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n[3]~11_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|Equal7~0_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n[3]~12_combout\ : std_logic;
SIGNAL \s_enableDisplay~0_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n[3]~13_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~14_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~22_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~15_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n~16_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n[6]~17_combout\ : std_logic;
SIGNAL \sevenSegmentDisplay|decOut_n[6]~18_combout\ : std_logic;
SIGNAL \displayPulseGenerator|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \debounceKEY1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \counterPulseGenerator|s_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \counter|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounceKEY0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debounceKEY0|ALT_INV_s_pulsedOut~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\debounceKEY0|ALT_INV_s_pulsedOut~q\ <= NOT \debounceKEY0|s_pulsedOut~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegmentDisplay|decOut_n~19_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegmentDisplay|decOut_n~20_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegmentDisplay|decOut_n~21_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegmentDisplay|decOut_n[3]~13_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegmentDisplay|decOut_n~22_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegmentDisplay|decOut_n~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegmentDisplay|decOut_n[6]~18_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X66_Y64_N6
\displayPulseGenerator|s_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[0]~26_combout\ = \displayPulseGenerator|s_counter\(0) $ (VCC)
-- \displayPulseGenerator|s_counter[0]~27\ = CARRY(\displayPulseGenerator|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(0),
	datad => VCC,
	combout => \displayPulseGenerator|s_counter[0]~26_combout\,
	cout => \displayPulseGenerator|s_counter[0]~27\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X84_Y61_N24
\s_key0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_key0~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \s_key0~0_combout\);

-- Location: FF_X84_Y61_N25
s_key0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s_key0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_key0~q\);

-- Location: FF_X68_Y61_N31
\debounceKEY0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \s_key0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_dirtyIn~q\);

-- Location: FF_X68_Y61_N23
\debounceKEY0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounceKEY0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_previousIn~q\);

-- Location: LCCOMB_X67_Y62_N18
\debounceKEY0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~8_combout\ = (\debounceKEY0|s_debounceCnt\(4) & ((GND) # (!\debounceKEY0|Add0~7\))) # (!\debounceKEY0|s_debounceCnt\(4) & (\debounceKEY0|Add0~7\ $ (GND)))
-- \debounceKEY0|Add0~9\ = CARRY((\debounceKEY0|s_debounceCnt\(4)) # (!\debounceKEY0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounceKEY0|Add0~7\,
	combout => \debounceKEY0|Add0~8_combout\,
	cout => \debounceKEY0|Add0~9\);

-- Location: LCCOMB_X67_Y62_N20
\debounceKEY0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~10_combout\ = (\debounceKEY0|s_debounceCnt\(5) & (\debounceKEY0|Add0~9\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(5) & (!\debounceKEY0|Add0~9\))
-- \debounceKEY0|Add0~11\ = CARRY((!\debounceKEY0|s_debounceCnt\(5) & !\debounceKEY0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounceKEY0|Add0~9\,
	combout => \debounceKEY0|Add0~10_combout\,
	cout => \debounceKEY0|Add0~11\);

-- Location: LCCOMB_X68_Y61_N24
\debounceKEY0|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~27_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & (\debounceKEY0|Add0~10_combout\ & \debounceKEY0|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	datac => \debounceKEY0|Add0~10_combout\,
	datad => \debounceKEY0|s_previousIn~q\,
	combout => \debounceKEY0|s_debounceCnt~27_combout\);

-- Location: FF_X68_Y61_N25
\debounceKEY0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~27_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(5));

-- Location: LCCOMB_X67_Y62_N22
\debounceKEY0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~12_combout\ = (\debounceKEY0|s_debounceCnt\(6) & ((GND) # (!\debounceKEY0|Add0~11\))) # (!\debounceKEY0|s_debounceCnt\(6) & (\debounceKEY0|Add0~11\ $ (GND)))
-- \debounceKEY0|Add0~13\ = CARRY((\debounceKEY0|s_debounceCnt\(6)) # (!\debounceKEY0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounceKEY0|Add0~11\,
	combout => \debounceKEY0|Add0~12_combout\,
	cout => \debounceKEY0|Add0~13\);

-- Location: LCCOMB_X68_Y61_N18
\debounceKEY0|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~1_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & ((\debounceKEY0|Add0~12_combout\) # (!\debounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~12_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~1_combout\);

-- Location: FF_X68_Y61_N19
\debounceKEY0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~1_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(6));

-- Location: LCCOMB_X67_Y62_N24
\debounceKEY0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~14_combout\ = (\debounceKEY0|s_debounceCnt\(7) & (\debounceKEY0|Add0~13\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(7) & (!\debounceKEY0|Add0~13\))
-- \debounceKEY0|Add0~15\ = CARRY((!\debounceKEY0|s_debounceCnt\(7) & !\debounceKEY0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounceKEY0|Add0~13\,
	combout => \debounceKEY0|Add0~14_combout\,
	cout => \debounceKEY0|Add0~15\);

-- Location: LCCOMB_X69_Y61_N6
\debounceKEY0|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~11_combout\ = (\debounceKEY0|s_previousIn~q\ & (\debounceKEY0|Add0~14_combout\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~14_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~11_combout\);

-- Location: FF_X69_Y61_N7
\debounceKEY0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~11_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(7));

-- Location: LCCOMB_X67_Y62_N26
\debounceKEY0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~16_combout\ = (\debounceKEY0|s_debounceCnt\(8) & ((GND) # (!\debounceKEY0|Add0~15\))) # (!\debounceKEY0|s_debounceCnt\(8) & (\debounceKEY0|Add0~15\ $ (GND)))
-- \debounceKEY0|Add0~17\ = CARRY((\debounceKEY0|s_debounceCnt\(8)) # (!\debounceKEY0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounceKEY0|Add0~15\,
	combout => \debounceKEY0|Add0~16_combout\,
	cout => \debounceKEY0|Add0~17\);

-- Location: LCCOMB_X69_Y61_N24
\debounceKEY0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~12_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & ((\debounceKEY0|Add0~16_combout\) # (!\debounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~16_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~12_combout\);

-- Location: FF_X69_Y61_N25
\debounceKEY0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~12_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(8));

-- Location: LCCOMB_X67_Y62_N28
\debounceKEY0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~18_combout\ = (\debounceKEY0|s_debounceCnt\(9) & (\debounceKEY0|Add0~17\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(9) & (!\debounceKEY0|Add0~17\))
-- \debounceKEY0|Add0~19\ = CARRY((!\debounceKEY0|s_debounceCnt\(9) & !\debounceKEY0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounceKEY0|Add0~17\,
	combout => \debounceKEY0|Add0~18_combout\,
	cout => \debounceKEY0|Add0~19\);

-- Location: LCCOMB_X69_Y61_N26
\debounceKEY0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~13_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & ((\debounceKEY0|Add0~18_combout\) # (!\debounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~18_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~13_combout\);

-- Location: FF_X69_Y61_N27
\debounceKEY0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~13_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(9));

-- Location: LCCOMB_X67_Y62_N30
\debounceKEY0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~20_combout\ = (\debounceKEY0|s_debounceCnt\(10) & ((GND) # (!\debounceKEY0|Add0~19\))) # (!\debounceKEY0|s_debounceCnt\(10) & (\debounceKEY0|Add0~19\ $ (GND)))
-- \debounceKEY0|Add0~21\ = CARRY((\debounceKEY0|s_debounceCnt\(10)) # (!\debounceKEY0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounceKEY0|Add0~19\,
	combout => \debounceKEY0|Add0~20_combout\,
	cout => \debounceKEY0|Add0~21\);

-- Location: LCCOMB_X69_Y61_N0
\debounceKEY0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~14_combout\ = (\debounceKEY0|s_previousIn~q\ & (\debounceKEY0|Add0~20_combout\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~20_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~14_combout\);

-- Location: FF_X69_Y61_N1
\debounceKEY0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~14_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(10));

-- Location: LCCOMB_X67_Y61_N0
\debounceKEY0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~22_combout\ = (\debounceKEY0|s_debounceCnt\(11) & (\debounceKEY0|Add0~21\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(11) & (!\debounceKEY0|Add0~21\))
-- \debounceKEY0|Add0~23\ = CARRY((!\debounceKEY0|s_debounceCnt\(11) & !\debounceKEY0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounceKEY0|Add0~21\,
	combout => \debounceKEY0|Add0~22_combout\,
	cout => \debounceKEY0|Add0~23\);

-- Location: LCCOMB_X68_Y61_N16
\debounceKEY0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~15_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & ((\debounceKEY0|Add0~22_combout\) # (!\debounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~22_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~15_combout\);

-- Location: FF_X68_Y61_N17
\debounceKEY0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~15_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(11));

-- Location: LCCOMB_X67_Y61_N2
\debounceKEY0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~24_combout\ = (\debounceKEY0|s_debounceCnt\(12) & ((GND) # (!\debounceKEY0|Add0~23\))) # (!\debounceKEY0|s_debounceCnt\(12) & (\debounceKEY0|Add0~23\ $ (GND)))
-- \debounceKEY0|Add0~25\ = CARRY((\debounceKEY0|s_debounceCnt\(12)) # (!\debounceKEY0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounceKEY0|Add0~23\,
	combout => \debounceKEY0|Add0~24_combout\,
	cout => \debounceKEY0|Add0~25\);

-- Location: LCCOMB_X68_Y61_N6
\debounceKEY0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~7_combout\ = (\debounceKEY0|Add0~24_combout\ & (\debounceKEY0|s_previousIn~q\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|Add0~24_combout\,
	datac => \debounceKEY0|s_previousIn~q\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~7_combout\);

-- Location: FF_X68_Y61_N7
\debounceKEY0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~7_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(12));

-- Location: LCCOMB_X67_Y61_N4
\debounceKEY0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~26_combout\ = (\debounceKEY0|s_debounceCnt\(13) & (\debounceKEY0|Add0~25\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(13) & (!\debounceKEY0|Add0~25\))
-- \debounceKEY0|Add0~27\ = CARRY((!\debounceKEY0|s_debounceCnt\(13) & !\debounceKEY0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounceKEY0|Add0~25\,
	combout => \debounceKEY0|Add0~26_combout\,
	cout => \debounceKEY0|Add0~27\);

-- Location: LCCOMB_X67_Y61_N30
\debounceKEY0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~8_combout\ = (\debounceKEY0|s_previousIn~q\ & (\debounceKEY0|Add0~26_combout\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~26_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~8_combout\);

-- Location: FF_X67_Y61_N31
\debounceKEY0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~8_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(13));

-- Location: LCCOMB_X67_Y61_N6
\debounceKEY0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~28_combout\ = (\debounceKEY0|s_debounceCnt\(14) & ((GND) # (!\debounceKEY0|Add0~27\))) # (!\debounceKEY0|s_debounceCnt\(14) & (\debounceKEY0|Add0~27\ $ (GND)))
-- \debounceKEY0|Add0~29\ = CARRY((\debounceKEY0|s_debounceCnt\(14)) # (!\debounceKEY0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounceKEY0|Add0~27\,
	combout => \debounceKEY0|Add0~28_combout\,
	cout => \debounceKEY0|Add0~29\);

-- Location: LCCOMB_X68_Y61_N26
\debounceKEY0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~16_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & ((\debounceKEY0|Add0~28_combout\) # (!\debounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~28_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~16_combout\);

-- Location: FF_X68_Y61_N27
\debounceKEY0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~16_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(14));

-- Location: LCCOMB_X67_Y61_N8
\debounceKEY0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~30_combout\ = (\debounceKEY0|s_debounceCnt\(15) & (\debounceKEY0|Add0~29\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(15) & (!\debounceKEY0|Add0~29\))
-- \debounceKEY0|Add0~31\ = CARRY((!\debounceKEY0|s_debounceCnt\(15) & !\debounceKEY0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounceKEY0|Add0~29\,
	combout => \debounceKEY0|Add0~30_combout\,
	cout => \debounceKEY0|Add0~31\);

-- Location: LCCOMB_X68_Y61_N8
\debounceKEY0|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~4_combout\ = (\debounceKEY0|Add0~30_combout\ & (\debounceKEY0|s_previousIn~q\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|Add0~30_combout\,
	datac => \debounceKEY0|s_previousIn~q\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~4_combout\);

-- Location: FF_X68_Y61_N9
\debounceKEY0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~4_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(15));

-- Location: LCCOMB_X67_Y61_N10
\debounceKEY0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~32_combout\ = (\debounceKEY0|s_debounceCnt\(16) & ((GND) # (!\debounceKEY0|Add0~31\))) # (!\debounceKEY0|s_debounceCnt\(16) & (\debounceKEY0|Add0~31\ $ (GND)))
-- \debounceKEY0|Add0~33\ = CARRY((\debounceKEY0|s_debounceCnt\(16)) # (!\debounceKEY0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounceKEY0|Add0~31\,
	combout => \debounceKEY0|Add0~32_combout\,
	cout => \debounceKEY0|Add0~33\);

-- Location: LCCOMB_X67_Y61_N24
\debounceKEY0|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~5_combout\ = (\debounceKEY0|s_previousIn~q\ & (\debounceKEY0|s_debounceCnt[5]~0_combout\ & \debounceKEY0|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	datad => \debounceKEY0|Add0~32_combout\,
	combout => \debounceKEY0|s_debounceCnt~5_combout\);

-- Location: FF_X67_Y61_N25
\debounceKEY0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~5_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(16));

-- Location: LCCOMB_X67_Y61_N12
\debounceKEY0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~34_combout\ = (\debounceKEY0|s_debounceCnt\(17) & (\debounceKEY0|Add0~33\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(17) & (!\debounceKEY0|Add0~33\))
-- \debounceKEY0|Add0~35\ = CARRY((!\debounceKEY0|s_debounceCnt\(17) & !\debounceKEY0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounceKEY0|Add0~33\,
	combout => \debounceKEY0|Add0~34_combout\,
	cout => \debounceKEY0|Add0~35\);

-- Location: LCCOMB_X69_Y61_N16
\debounceKEY0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~6_combout\ = (\debounceKEY0|s_previousIn~q\ & (\debounceKEY0|Add0~34_combout\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~34_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~6_combout\);

-- Location: FF_X69_Y61_N17
\debounceKEY0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~6_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(17));

-- Location: LCCOMB_X67_Y61_N14
\debounceKEY0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~36_combout\ = (\debounceKEY0|s_debounceCnt\(18) & ((GND) # (!\debounceKEY0|Add0~35\))) # (!\debounceKEY0|s_debounceCnt\(18) & (\debounceKEY0|Add0~35\ $ (GND)))
-- \debounceKEY0|Add0~37\ = CARRY((\debounceKEY0|s_debounceCnt\(18)) # (!\debounceKEY0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounceKEY0|Add0~35\,
	combout => \debounceKEY0|Add0~36_combout\,
	cout => \debounceKEY0|Add0~37\);

-- Location: LCCOMB_X67_Y61_N26
\debounceKEY0|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[18]~17_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & (\debounceKEY0|s_debounceCnt[5]~3_combout\ & ((\debounceKEY0|Add0~36_combout\) # (!\debounceKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	datab => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	datad => \debounceKEY0|Add0~36_combout\,
	combout => \debounceKEY0|s_debounceCnt[18]~17_combout\);

-- Location: FF_X67_Y61_N27
\debounceKEY0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(18));

-- Location: LCCOMB_X67_Y61_N16
\debounceKEY0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~38_combout\ = (\debounceKEY0|s_debounceCnt\(19) & (\debounceKEY0|Add0~37\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(19) & (!\debounceKEY0|Add0~37\))
-- \debounceKEY0|Add0~39\ = CARRY((!\debounceKEY0|s_debounceCnt\(19) & !\debounceKEY0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounceKEY0|Add0~37\,
	combout => \debounceKEY0|Add0~38_combout\,
	cout => \debounceKEY0|Add0~39\);

-- Location: LCCOMB_X69_Y61_N4
\debounceKEY0|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[19]~18_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & (\debounceKEY0|s_debounceCnt[5]~3_combout\ & ((\debounceKEY0|Add0~38_combout\) # (!\debounceKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_previousIn~q\,
	datab => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	datac => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	datad => \debounceKEY0|Add0~38_combout\,
	combout => \debounceKEY0|s_debounceCnt[19]~18_combout\);

-- Location: FF_X69_Y61_N5
\debounceKEY0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(19));

-- Location: LCCOMB_X69_Y61_N22
\debounceKEY0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_pulsedOut~3_combout\ = (!\debounceKEY0|s_debounceCnt\(11) & (!\debounceKEY0|s_debounceCnt\(19) & (!\debounceKEY0|s_debounceCnt\(14) & !\debounceKEY0|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(11),
	datab => \debounceKEY0|s_debounceCnt\(19),
	datac => \debounceKEY0|s_debounceCnt\(14),
	datad => \debounceKEY0|s_debounceCnt\(18),
	combout => \debounceKEY0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X69_Y61_N14
\debounceKEY0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_pulsedOut~2_combout\ = (!\debounceKEY0|s_debounceCnt\(7) & (!\debounceKEY0|s_debounceCnt\(8) & (!\debounceKEY0|s_debounceCnt\(9) & !\debounceKEY0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(7),
	datab => \debounceKEY0|s_debounceCnt\(8),
	datac => \debounceKEY0|s_debounceCnt\(9),
	datad => \debounceKEY0|s_debounceCnt\(10),
	combout => \debounceKEY0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X67_Y61_N18
\debounceKEY0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~40_combout\ = (\debounceKEY0|s_debounceCnt\(20) & ((GND) # (!\debounceKEY0|Add0~39\))) # (!\debounceKEY0|s_debounceCnt\(20) & (\debounceKEY0|Add0~39\ $ (GND)))
-- \debounceKEY0|Add0~41\ = CARRY((\debounceKEY0|s_debounceCnt\(20)) # (!\debounceKEY0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounceKEY0|Add0~39\,
	combout => \debounceKEY0|Add0~40_combout\,
	cout => \debounceKEY0|Add0~41\);

-- Location: LCCOMB_X67_Y61_N28
\debounceKEY0|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[20]~9_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & (\debounceKEY0|s_previousIn~q\ & (\debounceKEY0|s_debounceCnt[5]~3_combout\ & \debounceKEY0|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	datab => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	datad => \debounceKEY0|Add0~40_combout\,
	combout => \debounceKEY0|s_debounceCnt[20]~9_combout\);

-- Location: FF_X67_Y61_N29
\debounceKEY0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(20));

-- Location: LCCOMB_X69_Y61_N8
\debounceKEY0|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_pulsedOut~1_combout\ = (!\debounceKEY0|s_debounceCnt\(20) & (!\debounceKEY0|s_debounceCnt\(12) & (!\debounceKEY0|s_debounceCnt\(21) & !\debounceKEY0|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(20),
	datab => \debounceKEY0|s_debounceCnt\(12),
	datac => \debounceKEY0|s_debounceCnt\(21),
	datad => \debounceKEY0|s_debounceCnt\(13),
	combout => \debounceKEY0|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X69_Y61_N10
\debounceKEY0|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_pulsedOut~0_combout\ = (!\debounceKEY0|s_debounceCnt\(15) & (!\debounceKEY0|s_debounceCnt\(17) & (!\debounceKEY0|s_debounceCnt\(16) & !\debounceKEY0|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(15),
	datab => \debounceKEY0|s_debounceCnt\(17),
	datac => \debounceKEY0|s_debounceCnt\(16),
	datad => \debounceKEY0|s_debounceCnt\(6),
	combout => \debounceKEY0|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X69_Y61_N28
\debounceKEY0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_pulsedOut~4_combout\ = (\debounceKEY0|s_pulsedOut~3_combout\ & (\debounceKEY0|s_pulsedOut~2_combout\ & (\debounceKEY0|s_pulsedOut~1_combout\ & \debounceKEY0|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_pulsedOut~3_combout\,
	datab => \debounceKEY0|s_pulsedOut~2_combout\,
	datac => \debounceKEY0|s_pulsedOut~1_combout\,
	datad => \debounceKEY0|s_pulsedOut~0_combout\,
	combout => \debounceKEY0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X68_Y61_N10
\debounceKEY0|s_debounceCnt[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[5]~2_combout\ = (\debounceKEY0|s_debounceCnt\(0)) # ((\debounceKEY0|s_debounceCnt\(5)) # ((!\debounceKEY0|s_pulsedOut~4_combout\) # (!\debounceKEY0|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(0),
	datab => \debounceKEY0|s_debounceCnt\(5),
	datac => \debounceKEY0|s_pulsedOut~5_combout\,
	datad => \debounceKEY0|s_pulsedOut~4_combout\,
	combout => \debounceKEY0|s_debounceCnt[5]~2_combout\);

-- Location: LCCOMB_X68_Y61_N28
\debounceKEY0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|LessThan0~6_combout\ = (\debounceKEY0|s_debounceCnt\(6) & ((\debounceKEY0|s_debounceCnt\(0)) # ((\debounceKEY0|s_debounceCnt\(5)) # (!\debounceKEY0|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(0),
	datab => \debounceKEY0|s_debounceCnt\(5),
	datac => \debounceKEY0|s_pulsedOut~5_combout\,
	datad => \debounceKEY0|s_debounceCnt\(6),
	combout => \debounceKEY0|LessThan0~6_combout\);

-- Location: LCCOMB_X69_Y61_N20
\debounceKEY0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|LessThan0~4_combout\ = (\debounceKEY0|s_debounceCnt\(14) & (\debounceKEY0|s_debounceCnt\(8) & (\debounceKEY0|s_debounceCnt\(19) & \debounceKEY0|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(14),
	datab => \debounceKEY0|s_debounceCnt\(8),
	datac => \debounceKEY0|s_debounceCnt\(19),
	datad => \debounceKEY0|s_debounceCnt\(18),
	combout => \debounceKEY0|LessThan0~4_combout\);

-- Location: LCCOMB_X69_Y61_N30
\debounceKEY0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|LessThan0~5_combout\ = (\debounceKEY0|s_debounceCnt\(9) & (\debounceKEY0|s_debounceCnt\(11) & \debounceKEY0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(9),
	datac => \debounceKEY0|s_debounceCnt\(11),
	datad => \debounceKEY0|LessThan0~4_combout\,
	combout => \debounceKEY0|LessThan0~5_combout\);

-- Location: LCCOMB_X69_Y61_N18
\debounceKEY0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|LessThan0~1_combout\ = (\debounceKEY0|s_debounceCnt\(12)) # ((\debounceKEY0|s_debounceCnt\(13)) # ((\debounceKEY0|s_debounceCnt\(11) & \debounceKEY0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(11),
	datab => \debounceKEY0|s_debounceCnt\(10),
	datac => \debounceKEY0|s_debounceCnt\(12),
	datad => \debounceKEY0|s_debounceCnt\(13),
	combout => \debounceKEY0|LessThan0~1_combout\);

-- Location: LCCOMB_X69_Y61_N12
\debounceKEY0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|LessThan0~2_combout\ = (\debounceKEY0|s_debounceCnt\(15)) # ((\debounceKEY0|s_debounceCnt\(16)) # ((\debounceKEY0|s_debounceCnt\(14) & \debounceKEY0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(15),
	datab => \debounceKEY0|s_debounceCnt\(16),
	datac => \debounceKEY0|s_debounceCnt\(14),
	datad => \debounceKEY0|LessThan0~1_combout\,
	combout => \debounceKEY0|LessThan0~2_combout\);

-- Location: LCCOMB_X69_Y61_N2
\debounceKEY0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|LessThan0~3_combout\ = (\debounceKEY0|s_debounceCnt\(18) & (\debounceKEY0|s_debounceCnt\(19) & ((\debounceKEY0|s_debounceCnt\(17)) # (\debounceKEY0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(18),
	datab => \debounceKEY0|s_debounceCnt\(17),
	datac => \debounceKEY0|s_debounceCnt\(19),
	datad => \debounceKEY0|LessThan0~2_combout\,
	combout => \debounceKEY0|LessThan0~3_combout\);

-- Location: LCCOMB_X68_Y61_N12
\debounceKEY0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|LessThan0~7_combout\ = (\debounceKEY0|LessThan0~3_combout\) # ((\debounceKEY0|LessThan0~5_combout\ & ((\debounceKEY0|s_debounceCnt\(7)) # (\debounceKEY0|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(7),
	datab => \debounceKEY0|LessThan0~6_combout\,
	datac => \debounceKEY0|LessThan0~5_combout\,
	datad => \debounceKEY0|LessThan0~3_combout\,
	combout => \debounceKEY0|LessThan0~7_combout\);

-- Location: LCCOMB_X68_Y61_N4
\debounceKEY0|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[22]~24_combout\ = (\debounceKEY0|s_debounceCnt\(22) & (((\debounceKEY0|LessThan0~0_combout\ & !\debounceKEY0|LessThan0~7_combout\)))) # (!\debounceKEY0|s_debounceCnt\(22) & (\debounceKEY0|s_debounceCnt[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt[5]~2_combout\,
	datab => \debounceKEY0|s_debounceCnt\(22),
	datac => \debounceKEY0|LessThan0~0_combout\,
	datad => \debounceKEY0|LessThan0~7_combout\,
	combout => \debounceKEY0|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X68_Y61_N22
\debounceKEY0|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[22]~25_combout\ = (\debounceKEY0|s_previousIn~q\ & (\debounceKEY0|s_dirtyIn~q\)) # (!\debounceKEY0|s_previousIn~q\ & ((\debounceKEY0|s_debounceCnt[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_dirtyIn~q\,
	datac => \debounceKEY0|s_previousIn~q\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X67_Y61_N20
\debounceKEY0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~42_combout\ = (\debounceKEY0|s_debounceCnt\(21) & (\debounceKEY0|Add0~41\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(21) & (!\debounceKEY0|Add0~41\))
-- \debounceKEY0|Add0~43\ = CARRY((!\debounceKEY0|s_debounceCnt\(21) & !\debounceKEY0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounceKEY0|Add0~41\,
	combout => \debounceKEY0|Add0~42_combout\,
	cout => \debounceKEY0|Add0~43\);

-- Location: LCCOMB_X67_Y61_N22
\debounceKEY0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~44_combout\ = \debounceKEY0|Add0~43\ $ (\debounceKEY0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounceKEY0|s_debounceCnt\(22),
	cin => \debounceKEY0|Add0~43\,
	combout => \debounceKEY0|Add0~44_combout\);

-- Location: LCCOMB_X68_Y61_N2
\debounceKEY0|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[22]~26_combout\ = (\debounceKEY0|s_debounceCnt[22]~25_combout\ & (((\debounceKEY0|s_debounceCnt[22]~24_combout\ & \debounceKEY0|Add0~44_combout\)) # (!\debounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_previousIn~q\,
	datab => \debounceKEY0|s_debounceCnt[22]~24_combout\,
	datac => \debounceKEY0|s_debounceCnt[22]~25_combout\,
	datad => \debounceKEY0|Add0~44_combout\,
	combout => \debounceKEY0|s_debounceCnt[22]~26_combout\);

-- Location: FF_X68_Y61_N3
\debounceKEY0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(22));

-- Location: LCCOMB_X68_Y61_N14
\debounceKEY0|s_debounceCnt[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[5]~3_combout\ = ((\debounceKEY0|s_debounceCnt\(22)) # ((\debounceKEY0|s_debounceCnt[5]~2_combout\) # (!\debounceKEY0|s_previousIn~q\))) # (!\debounceKEY0|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_dirtyIn~q\,
	datab => \debounceKEY0|s_debounceCnt\(22),
	datac => \debounceKEY0|s_previousIn~q\,
	datad => \debounceKEY0|s_debounceCnt[5]~2_combout\,
	combout => \debounceKEY0|s_debounceCnt[5]~3_combout\);

-- Location: LCCOMB_X66_Y61_N10
\debounceKEY0|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[21]~10_combout\ = (\debounceKEY0|s_previousIn~q\ & (\debounceKEY0|s_debounceCnt[5]~3_combout\ & (\debounceKEY0|Add0~42_combout\ & \debounceKEY0|s_debounceCnt[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_previousIn~q\,
	datab => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	datac => \debounceKEY0|Add0~42_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt[21]~10_combout\);

-- Location: FF_X66_Y61_N11
\debounceKEY0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(21));

-- Location: LCCOMB_X66_Y61_N16
\debounceKEY0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|LessThan0~0_combout\ = (!\debounceKEY0|s_debounceCnt\(21) & !\debounceKEY0|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(21),
	datad => \debounceKEY0|s_debounceCnt\(20),
	combout => \debounceKEY0|LessThan0~0_combout\);

-- Location: LCCOMB_X68_Y61_N30
\debounceKEY0|s_debounceCnt[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt[5]~0_combout\ = (\debounceKEY0|s_dirtyIn~q\ & (((\debounceKEY0|LessThan0~0_combout\ & !\debounceKEY0|LessThan0~7_combout\)) # (!\debounceKEY0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|LessThan0~0_combout\,
	datab => \debounceKEY0|s_debounceCnt\(22),
	datac => \debounceKEY0|s_dirtyIn~q\,
	datad => \debounceKEY0|LessThan0~7_combout\,
	combout => \debounceKEY0|s_debounceCnt[5]~0_combout\);

-- Location: LCCOMB_X67_Y62_N10
\debounceKEY0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~0_combout\ = \debounceKEY0|s_debounceCnt\(0) $ (VCC)
-- \debounceKEY0|Add0~1\ = CARRY(\debounceKEY0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounceKEY0|Add0~0_combout\,
	cout => \debounceKEY0|Add0~1\);

-- Location: LCCOMB_X68_Y61_N0
\debounceKEY0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~23_combout\ = (\debounceKEY0|s_debounceCnt[5]~0_combout\ & (\debounceKEY0|Add0~0_combout\ & \debounceKEY0|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	datac => \debounceKEY0|Add0~0_combout\,
	datad => \debounceKEY0|s_previousIn~q\,
	combout => \debounceKEY0|s_debounceCnt~23_combout\);

-- Location: FF_X68_Y61_N1
\debounceKEY0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~23_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(0));

-- Location: LCCOMB_X67_Y62_N12
\debounceKEY0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~2_combout\ = (\debounceKEY0|s_debounceCnt\(1) & (\debounceKEY0|Add0~1\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(1) & (!\debounceKEY0|Add0~1\))
-- \debounceKEY0|Add0~3\ = CARRY((!\debounceKEY0|s_debounceCnt\(1) & !\debounceKEY0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounceKEY0|Add0~1\,
	combout => \debounceKEY0|Add0~2_combout\,
	cout => \debounceKEY0|Add0~3\);

-- Location: LCCOMB_X67_Y62_N0
\debounceKEY0|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~19_combout\ = (\debounceKEY0|Add0~2_combout\ & (\debounceKEY0|s_previousIn~q\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|Add0~2_combout\,
	datac => \debounceKEY0|s_previousIn~q\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~19_combout\);

-- Location: FF_X67_Y62_N1
\debounceKEY0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~19_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(1));

-- Location: LCCOMB_X67_Y62_N14
\debounceKEY0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~4_combout\ = (\debounceKEY0|s_debounceCnt\(2) & ((GND) # (!\debounceKEY0|Add0~3\))) # (!\debounceKEY0|s_debounceCnt\(2) & (\debounceKEY0|Add0~3\ $ (GND)))
-- \debounceKEY0|Add0~5\ = CARRY((\debounceKEY0|s_debounceCnt\(2)) # (!\debounceKEY0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounceKEY0|Add0~3\,
	combout => \debounceKEY0|Add0~4_combout\,
	cout => \debounceKEY0|Add0~5\);

-- Location: LCCOMB_X67_Y62_N2
\debounceKEY0|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~20_combout\ = (\debounceKEY0|s_previousIn~q\ & (\debounceKEY0|Add0~4_combout\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_previousIn~q\,
	datac => \debounceKEY0|Add0~4_combout\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~20_combout\);

-- Location: FF_X67_Y62_N3
\debounceKEY0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~20_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(2));

-- Location: LCCOMB_X67_Y62_N16
\debounceKEY0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|Add0~6_combout\ = (\debounceKEY0|s_debounceCnt\(3) & (\debounceKEY0|Add0~5\ & VCC)) # (!\debounceKEY0|s_debounceCnt\(3) & (!\debounceKEY0|Add0~5\))
-- \debounceKEY0|Add0~7\ = CARRY((!\debounceKEY0|s_debounceCnt\(3) & !\debounceKEY0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounceKEY0|Add0~5\,
	combout => \debounceKEY0|Add0~6_combout\,
	cout => \debounceKEY0|Add0~7\);

-- Location: LCCOMB_X67_Y62_N4
\debounceKEY0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~21_combout\ = (\debounceKEY0|Add0~6_combout\ & (\debounceKEY0|s_previousIn~q\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|Add0~6_combout\,
	datac => \debounceKEY0|s_previousIn~q\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~21_combout\);

-- Location: FF_X67_Y62_N5
\debounceKEY0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~21_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(3));

-- Location: LCCOMB_X67_Y62_N6
\debounceKEY0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_debounceCnt~22_combout\ = (\debounceKEY0|Add0~8_combout\ & (\debounceKEY0|s_previousIn~q\ & \debounceKEY0|s_debounceCnt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY0|Add0~8_combout\,
	datac => \debounceKEY0|s_previousIn~q\,
	datad => \debounceKEY0|s_debounceCnt[5]~0_combout\,
	combout => \debounceKEY0|s_debounceCnt~22_combout\);

-- Location: FF_X67_Y62_N7
\debounceKEY0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_debounceCnt~22_combout\,
	ena => \debounceKEY0|s_debounceCnt[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_debounceCnt\(4));

-- Location: LCCOMB_X67_Y62_N8
\debounceKEY0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_pulsedOut~5_combout\ = (!\debounceKEY0|s_debounceCnt\(4) & (!\debounceKEY0|s_debounceCnt\(1) & (!\debounceKEY0|s_debounceCnt\(3) & !\debounceKEY0|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_debounceCnt\(4),
	datab => \debounceKEY0|s_debounceCnt\(1),
	datac => \debounceKEY0|s_debounceCnt\(3),
	datad => \debounceKEY0|s_debounceCnt\(2),
	combout => \debounceKEY0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X68_Y61_N20
\debounceKEY0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_pulsedOut~6_combout\ = (\debounceKEY0|s_dirtyIn~q\ & (!\debounceKEY0|s_debounceCnt\(22) & (\debounceKEY0|s_previousIn~q\ & \debounceKEY0|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_dirtyIn~q\,
	datab => \debounceKEY0|s_debounceCnt\(22),
	datac => \debounceKEY0|s_previousIn~q\,
	datad => \debounceKEY0|s_debounceCnt\(0),
	combout => \debounceKEY0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X66_Y61_N20
\debounceKEY0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY0|s_pulsedOut~7_combout\ = (\debounceKEY0|s_pulsedOut~5_combout\ & (\debounceKEY0|s_pulsedOut~6_combout\ & (\debounceKEY0|s_pulsedOut~4_combout\ & !\debounceKEY0|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_pulsedOut~5_combout\,
	datab => \debounceKEY0|s_pulsedOut~6_combout\,
	datac => \debounceKEY0|s_pulsedOut~4_combout\,
	datad => \debounceKEY0|s_debounceCnt\(5),
	combout => \debounceKEY0|s_pulsedOut~7_combout\);

-- Location: FF_X66_Y61_N21
\debounceKEY0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY0|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY0|s_pulsedOut~q\);

-- Location: LCCOMB_X66_Y63_N20
\displayPulseGenerator|s_counter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[23]~72_combout\ = (\displayPulseGenerator|s_counter\(23) & (!\displayPulseGenerator|s_counter[22]~71\)) # (!\displayPulseGenerator|s_counter\(23) & ((\displayPulseGenerator|s_counter[22]~71\) # (GND)))
-- \displayPulseGenerator|s_counter[23]~73\ = CARRY((!\displayPulseGenerator|s_counter[22]~71\) # (!\displayPulseGenerator|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(23),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[22]~71\,
	combout => \displayPulseGenerator|s_counter[23]~72_combout\,
	cout => \displayPulseGenerator|s_counter[23]~73\);

-- Location: LCCOMB_X66_Y63_N22
\displayPulseGenerator|s_counter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[24]~74_combout\ = (\displayPulseGenerator|s_counter\(24) & (\displayPulseGenerator|s_counter[23]~73\ $ (GND))) # (!\displayPulseGenerator|s_counter\(24) & (!\displayPulseGenerator|s_counter[23]~73\ & VCC))
-- \displayPulseGenerator|s_counter[24]~75\ = CARRY((\displayPulseGenerator|s_counter\(24) & !\displayPulseGenerator|s_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(24),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[23]~73\,
	combout => \displayPulseGenerator|s_counter[24]~74_combout\,
	cout => \displayPulseGenerator|s_counter[24]~75\);

-- Location: FF_X66_Y63_N23
\displayPulseGenerator|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[24]~74_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(24));

-- Location: LCCOMB_X66_Y63_N24
\displayPulseGenerator|s_counter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[25]~76_combout\ = \displayPulseGenerator|s_counter[24]~75\ $ (\displayPulseGenerator|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \displayPulseGenerator|s_counter\(25),
	cin => \displayPulseGenerator|s_counter[24]~75\,
	combout => \displayPulseGenerator|s_counter[25]~76_combout\);

-- Location: FF_X66_Y63_N25
\displayPulseGenerator|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[25]~76_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(25));

-- Location: LCCOMB_X66_Y63_N30
\displayPulseGenerator|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan0~0_combout\ = (\displayPulseGenerator|s_counter\(19) & (\displayPulseGenerator|s_counter\(22) & (\displayPulseGenerator|s_counter\(20) & \displayPulseGenerator|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(19),
	datab => \displayPulseGenerator|s_counter\(22),
	datac => \displayPulseGenerator|s_counter\(20),
	datad => \displayPulseGenerator|s_counter\(21),
	combout => \displayPulseGenerator|LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y64_N8
\displayPulseGenerator|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan0~1_combout\ = (\displayPulseGenerator|s_counter\(13) & (\displayPulseGenerator|s_counter\(12) & \displayPulseGenerator|s_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(13),
	datac => \displayPulseGenerator|s_counter\(12),
	datad => \displayPulseGenerator|s_counter\(14),
	combout => \displayPulseGenerator|LessThan0~1_combout\);

-- Location: LCCOMB_X66_Y64_N2
\displayPulseGenerator|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan0~2_combout\ = (\displayPulseGenerator|s_counter\(2) & (\displayPulseGenerator|s_counter\(6) & (\displayPulseGenerator|s_counter\(1) & \displayPulseGenerator|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(2),
	datab => \displayPulseGenerator|s_counter\(6),
	datac => \displayPulseGenerator|s_counter\(1),
	datad => \displayPulseGenerator|s_counter\(0),
	combout => \displayPulseGenerator|LessThan0~2_combout\);

-- Location: LCCOMB_X66_Y64_N0
\displayPulseGenerator|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan0~3_combout\ = (\displayPulseGenerator|s_counter\(5) & (\displayPulseGenerator|s_counter\(4) & \displayPulseGenerator|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(5),
	datac => \displayPulseGenerator|s_counter\(4),
	datad => \displayPulseGenerator|s_counter\(3),
	combout => \displayPulseGenerator|LessThan0~3_combout\);

-- Location: LCCOMB_X66_Y64_N4
\displayPulseGenerator|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan1~1_combout\ = (!\displayPulseGenerator|s_counter\(10) & (!\displayPulseGenerator|s_counter\(7) & (!\displayPulseGenerator|s_counter\(8) & !\displayPulseGenerator|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(10),
	datab => \displayPulseGenerator|s_counter\(7),
	datac => \displayPulseGenerator|s_counter\(8),
	datad => \displayPulseGenerator|s_counter\(9),
	combout => \displayPulseGenerator|LessThan1~1_combout\);

-- Location: LCCOMB_X65_Y64_N10
\displayPulseGenerator|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan0~4_combout\ = (\displayPulseGenerator|s_counter\(11)) # (((\displayPulseGenerator|LessThan0~2_combout\ & \displayPulseGenerator|LessThan0~3_combout\)) # (!\displayPulseGenerator|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|LessThan0~2_combout\,
	datab => \displayPulseGenerator|s_counter\(11),
	datac => \displayPulseGenerator|LessThan0~3_combout\,
	datad => \displayPulseGenerator|LessThan1~1_combout\,
	combout => \displayPulseGenerator|LessThan0~4_combout\);

-- Location: LCCOMB_X65_Y64_N16
\displayPulseGenerator|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan0~5_combout\ = (\displayPulseGenerator|s_counter\(15) & (\displayPulseGenerator|s_counter\(17) & (\displayPulseGenerator|LessThan0~1_combout\ & \displayPulseGenerator|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(15),
	datab => \displayPulseGenerator|s_counter\(17),
	datac => \displayPulseGenerator|LessThan0~1_combout\,
	datad => \displayPulseGenerator|LessThan0~4_combout\,
	combout => \displayPulseGenerator|LessThan0~5_combout\);

-- Location: LCCOMB_X65_Y64_N6
\displayPulseGenerator|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan0~6_combout\ = (\displayPulseGenerator|s_counter\(18)) # ((\displayPulseGenerator|LessThan0~5_combout\) # ((\displayPulseGenerator|s_counter\(17) & \displayPulseGenerator|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(17),
	datab => \displayPulseGenerator|s_counter\(16),
	datac => \displayPulseGenerator|s_counter\(18),
	datad => \displayPulseGenerator|LessThan0~5_combout\,
	combout => \displayPulseGenerator|LessThan0~6_combout\);

-- Location: LCCOMB_X65_Y64_N20
\displayPulseGenerator|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan0~7_combout\ = (\displayPulseGenerator|s_counter\(23) & (\displayPulseGenerator|s_counter\(25) & (\displayPulseGenerator|LessThan0~0_combout\ & \displayPulseGenerator|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(23),
	datab => \displayPulseGenerator|s_counter\(25),
	datac => \displayPulseGenerator|LessThan0~0_combout\,
	datad => \displayPulseGenerator|LessThan0~6_combout\,
	combout => \displayPulseGenerator|LessThan0~7_combout\);

-- Location: LCCOMB_X65_Y64_N30
\displayPulseGenerator|count_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|count_proc~0_combout\ = (\debounceKEY0|s_pulsedOut~q\) # ((\displayPulseGenerator|LessThan0~7_combout\) # ((\displayPulseGenerator|s_counter\(25) & \displayPulseGenerator|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_pulsedOut~q\,
	datab => \displayPulseGenerator|s_counter\(25),
	datac => \displayPulseGenerator|s_counter\(24),
	datad => \displayPulseGenerator|LessThan0~7_combout\,
	combout => \displayPulseGenerator|count_proc~0_combout\);

-- Location: FF_X66_Y64_N7
\displayPulseGenerator|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[0]~26_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(0));

-- Location: LCCOMB_X66_Y64_N8
\displayPulseGenerator|s_counter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[1]~28_combout\ = (\displayPulseGenerator|s_counter\(1) & (!\displayPulseGenerator|s_counter[0]~27\)) # (!\displayPulseGenerator|s_counter\(1) & ((\displayPulseGenerator|s_counter[0]~27\) # (GND)))
-- \displayPulseGenerator|s_counter[1]~29\ = CARRY((!\displayPulseGenerator|s_counter[0]~27\) # (!\displayPulseGenerator|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(1),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[0]~27\,
	combout => \displayPulseGenerator|s_counter[1]~28_combout\,
	cout => \displayPulseGenerator|s_counter[1]~29\);

-- Location: FF_X66_Y64_N9
\displayPulseGenerator|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[1]~28_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(1));

-- Location: LCCOMB_X66_Y64_N10
\displayPulseGenerator|s_counter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[2]~30_combout\ = (\displayPulseGenerator|s_counter\(2) & (\displayPulseGenerator|s_counter[1]~29\ $ (GND))) # (!\displayPulseGenerator|s_counter\(2) & (!\displayPulseGenerator|s_counter[1]~29\ & VCC))
-- \displayPulseGenerator|s_counter[2]~31\ = CARRY((\displayPulseGenerator|s_counter\(2) & !\displayPulseGenerator|s_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(2),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[1]~29\,
	combout => \displayPulseGenerator|s_counter[2]~30_combout\,
	cout => \displayPulseGenerator|s_counter[2]~31\);

-- Location: FF_X66_Y64_N11
\displayPulseGenerator|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[2]~30_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(2));

-- Location: LCCOMB_X66_Y64_N12
\displayPulseGenerator|s_counter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[3]~32_combout\ = (\displayPulseGenerator|s_counter\(3) & (!\displayPulseGenerator|s_counter[2]~31\)) # (!\displayPulseGenerator|s_counter\(3) & ((\displayPulseGenerator|s_counter[2]~31\) # (GND)))
-- \displayPulseGenerator|s_counter[3]~33\ = CARRY((!\displayPulseGenerator|s_counter[2]~31\) # (!\displayPulseGenerator|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(3),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[2]~31\,
	combout => \displayPulseGenerator|s_counter[3]~32_combout\,
	cout => \displayPulseGenerator|s_counter[3]~33\);

-- Location: FF_X66_Y64_N13
\displayPulseGenerator|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[3]~32_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(3));

-- Location: LCCOMB_X66_Y64_N14
\displayPulseGenerator|s_counter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[4]~34_combout\ = (\displayPulseGenerator|s_counter\(4) & (\displayPulseGenerator|s_counter[3]~33\ $ (GND))) # (!\displayPulseGenerator|s_counter\(4) & (!\displayPulseGenerator|s_counter[3]~33\ & VCC))
-- \displayPulseGenerator|s_counter[4]~35\ = CARRY((\displayPulseGenerator|s_counter\(4) & !\displayPulseGenerator|s_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(4),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[3]~33\,
	combout => \displayPulseGenerator|s_counter[4]~34_combout\,
	cout => \displayPulseGenerator|s_counter[4]~35\);

-- Location: FF_X66_Y64_N15
\displayPulseGenerator|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[4]~34_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(4));

-- Location: LCCOMB_X66_Y64_N16
\displayPulseGenerator|s_counter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[5]~36_combout\ = (\displayPulseGenerator|s_counter\(5) & (!\displayPulseGenerator|s_counter[4]~35\)) # (!\displayPulseGenerator|s_counter\(5) & ((\displayPulseGenerator|s_counter[4]~35\) # (GND)))
-- \displayPulseGenerator|s_counter[5]~37\ = CARRY((!\displayPulseGenerator|s_counter[4]~35\) # (!\displayPulseGenerator|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(5),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[4]~35\,
	combout => \displayPulseGenerator|s_counter[5]~36_combout\,
	cout => \displayPulseGenerator|s_counter[5]~37\);

-- Location: FF_X66_Y64_N17
\displayPulseGenerator|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[5]~36_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(5));

-- Location: LCCOMB_X66_Y64_N18
\displayPulseGenerator|s_counter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[6]~38_combout\ = (\displayPulseGenerator|s_counter\(6) & (\displayPulseGenerator|s_counter[5]~37\ $ (GND))) # (!\displayPulseGenerator|s_counter\(6) & (!\displayPulseGenerator|s_counter[5]~37\ & VCC))
-- \displayPulseGenerator|s_counter[6]~39\ = CARRY((\displayPulseGenerator|s_counter\(6) & !\displayPulseGenerator|s_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(6),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[5]~37\,
	combout => \displayPulseGenerator|s_counter[6]~38_combout\,
	cout => \displayPulseGenerator|s_counter[6]~39\);

-- Location: FF_X66_Y64_N19
\displayPulseGenerator|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[6]~38_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(6));

-- Location: LCCOMB_X66_Y64_N20
\displayPulseGenerator|s_counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[7]~40_combout\ = (\displayPulseGenerator|s_counter\(7) & (!\displayPulseGenerator|s_counter[6]~39\)) # (!\displayPulseGenerator|s_counter\(7) & ((\displayPulseGenerator|s_counter[6]~39\) # (GND)))
-- \displayPulseGenerator|s_counter[7]~41\ = CARRY((!\displayPulseGenerator|s_counter[6]~39\) # (!\displayPulseGenerator|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(7),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[6]~39\,
	combout => \displayPulseGenerator|s_counter[7]~40_combout\,
	cout => \displayPulseGenerator|s_counter[7]~41\);

-- Location: FF_X66_Y64_N21
\displayPulseGenerator|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[7]~40_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(7));

-- Location: LCCOMB_X66_Y64_N22
\displayPulseGenerator|s_counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[8]~42_combout\ = (\displayPulseGenerator|s_counter\(8) & (\displayPulseGenerator|s_counter[7]~41\ $ (GND))) # (!\displayPulseGenerator|s_counter\(8) & (!\displayPulseGenerator|s_counter[7]~41\ & VCC))
-- \displayPulseGenerator|s_counter[8]~43\ = CARRY((\displayPulseGenerator|s_counter\(8) & !\displayPulseGenerator|s_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(8),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[7]~41\,
	combout => \displayPulseGenerator|s_counter[8]~42_combout\,
	cout => \displayPulseGenerator|s_counter[8]~43\);

-- Location: FF_X66_Y64_N23
\displayPulseGenerator|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[8]~42_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(8));

-- Location: LCCOMB_X66_Y64_N24
\displayPulseGenerator|s_counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[9]~44_combout\ = (\displayPulseGenerator|s_counter\(9) & (!\displayPulseGenerator|s_counter[8]~43\)) # (!\displayPulseGenerator|s_counter\(9) & ((\displayPulseGenerator|s_counter[8]~43\) # (GND)))
-- \displayPulseGenerator|s_counter[9]~45\ = CARRY((!\displayPulseGenerator|s_counter[8]~43\) # (!\displayPulseGenerator|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(9),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[8]~43\,
	combout => \displayPulseGenerator|s_counter[9]~44_combout\,
	cout => \displayPulseGenerator|s_counter[9]~45\);

-- Location: FF_X66_Y64_N25
\displayPulseGenerator|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[9]~44_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(9));

-- Location: LCCOMB_X66_Y64_N26
\displayPulseGenerator|s_counter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[10]~46_combout\ = (\displayPulseGenerator|s_counter\(10) & (\displayPulseGenerator|s_counter[9]~45\ $ (GND))) # (!\displayPulseGenerator|s_counter\(10) & (!\displayPulseGenerator|s_counter[9]~45\ & VCC))
-- \displayPulseGenerator|s_counter[10]~47\ = CARRY((\displayPulseGenerator|s_counter\(10) & !\displayPulseGenerator|s_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(10),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[9]~45\,
	combout => \displayPulseGenerator|s_counter[10]~46_combout\,
	cout => \displayPulseGenerator|s_counter[10]~47\);

-- Location: FF_X66_Y64_N27
\displayPulseGenerator|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[10]~46_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(10));

-- Location: LCCOMB_X66_Y64_N28
\displayPulseGenerator|s_counter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[11]~48_combout\ = (\displayPulseGenerator|s_counter\(11) & (!\displayPulseGenerator|s_counter[10]~47\)) # (!\displayPulseGenerator|s_counter\(11) & ((\displayPulseGenerator|s_counter[10]~47\) # (GND)))
-- \displayPulseGenerator|s_counter[11]~49\ = CARRY((!\displayPulseGenerator|s_counter[10]~47\) # (!\displayPulseGenerator|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(11),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[10]~47\,
	combout => \displayPulseGenerator|s_counter[11]~48_combout\,
	cout => \displayPulseGenerator|s_counter[11]~49\);

-- Location: FF_X66_Y64_N29
\displayPulseGenerator|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[11]~48_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(11));

-- Location: LCCOMB_X66_Y64_N30
\displayPulseGenerator|s_counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[12]~50_combout\ = (\displayPulseGenerator|s_counter\(12) & (\displayPulseGenerator|s_counter[11]~49\ $ (GND))) # (!\displayPulseGenerator|s_counter\(12) & (!\displayPulseGenerator|s_counter[11]~49\ & VCC))
-- \displayPulseGenerator|s_counter[12]~51\ = CARRY((\displayPulseGenerator|s_counter\(12) & !\displayPulseGenerator|s_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(12),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[11]~49\,
	combout => \displayPulseGenerator|s_counter[12]~50_combout\,
	cout => \displayPulseGenerator|s_counter[12]~51\);

-- Location: FF_X66_Y64_N31
\displayPulseGenerator|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[12]~50_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(12));

-- Location: LCCOMB_X66_Y63_N0
\displayPulseGenerator|s_counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[13]~52_combout\ = (\displayPulseGenerator|s_counter\(13) & (!\displayPulseGenerator|s_counter[12]~51\)) # (!\displayPulseGenerator|s_counter\(13) & ((\displayPulseGenerator|s_counter[12]~51\) # (GND)))
-- \displayPulseGenerator|s_counter[13]~53\ = CARRY((!\displayPulseGenerator|s_counter[12]~51\) # (!\displayPulseGenerator|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(13),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[12]~51\,
	combout => \displayPulseGenerator|s_counter[13]~52_combout\,
	cout => \displayPulseGenerator|s_counter[13]~53\);

-- Location: FF_X65_Y64_N15
\displayPulseGenerator|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \displayPulseGenerator|s_counter[13]~52_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(13));

-- Location: LCCOMB_X66_Y63_N2
\displayPulseGenerator|s_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[14]~54_combout\ = (\displayPulseGenerator|s_counter\(14) & (\displayPulseGenerator|s_counter[13]~53\ $ (GND))) # (!\displayPulseGenerator|s_counter\(14) & (!\displayPulseGenerator|s_counter[13]~53\ & VCC))
-- \displayPulseGenerator|s_counter[14]~55\ = CARRY((\displayPulseGenerator|s_counter\(14) & !\displayPulseGenerator|s_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(14),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[13]~53\,
	combout => \displayPulseGenerator|s_counter[14]~54_combout\,
	cout => \displayPulseGenerator|s_counter[14]~55\);

-- Location: FF_X65_Y64_N13
\displayPulseGenerator|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \displayPulseGenerator|s_counter[14]~54_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(14));

-- Location: LCCOMB_X66_Y63_N4
\displayPulseGenerator|s_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[15]~56_combout\ = (\displayPulseGenerator|s_counter\(15) & (!\displayPulseGenerator|s_counter[14]~55\)) # (!\displayPulseGenerator|s_counter\(15) & ((\displayPulseGenerator|s_counter[14]~55\) # (GND)))
-- \displayPulseGenerator|s_counter[15]~57\ = CARRY((!\displayPulseGenerator|s_counter[14]~55\) # (!\displayPulseGenerator|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(15),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[14]~55\,
	combout => \displayPulseGenerator|s_counter[15]~56_combout\,
	cout => \displayPulseGenerator|s_counter[15]~57\);

-- Location: FF_X65_Y64_N19
\displayPulseGenerator|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \displayPulseGenerator|s_counter[15]~56_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(15));

-- Location: LCCOMB_X66_Y63_N6
\displayPulseGenerator|s_counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[16]~58_combout\ = (\displayPulseGenerator|s_counter\(16) & (\displayPulseGenerator|s_counter[15]~57\ $ (GND))) # (!\displayPulseGenerator|s_counter\(16) & (!\displayPulseGenerator|s_counter[15]~57\ & VCC))
-- \displayPulseGenerator|s_counter[16]~59\ = CARRY((\displayPulseGenerator|s_counter\(16) & !\displayPulseGenerator|s_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(16),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[15]~57\,
	combout => \displayPulseGenerator|s_counter[16]~58_combout\,
	cout => \displayPulseGenerator|s_counter[16]~59\);

-- Location: FF_X66_Y63_N7
\displayPulseGenerator|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[16]~58_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(16));

-- Location: LCCOMB_X66_Y63_N8
\displayPulseGenerator|s_counter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[17]~60_combout\ = (\displayPulseGenerator|s_counter\(17) & (!\displayPulseGenerator|s_counter[16]~59\)) # (!\displayPulseGenerator|s_counter\(17) & ((\displayPulseGenerator|s_counter[16]~59\) # (GND)))
-- \displayPulseGenerator|s_counter[17]~61\ = CARRY((!\displayPulseGenerator|s_counter[16]~59\) # (!\displayPulseGenerator|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(17),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[16]~59\,
	combout => \displayPulseGenerator|s_counter[17]~60_combout\,
	cout => \displayPulseGenerator|s_counter[17]~61\);

-- Location: FF_X65_Y64_N5
\displayPulseGenerator|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \displayPulseGenerator|s_counter[17]~60_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(17));

-- Location: LCCOMB_X66_Y63_N10
\displayPulseGenerator|s_counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[18]~62_combout\ = (\displayPulseGenerator|s_counter\(18) & (\displayPulseGenerator|s_counter[17]~61\ $ (GND))) # (!\displayPulseGenerator|s_counter\(18) & (!\displayPulseGenerator|s_counter[17]~61\ & VCC))
-- \displayPulseGenerator|s_counter[18]~63\ = CARRY((\displayPulseGenerator|s_counter\(18) & !\displayPulseGenerator|s_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(18),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[17]~61\,
	combout => \displayPulseGenerator|s_counter[18]~62_combout\,
	cout => \displayPulseGenerator|s_counter[18]~63\);

-- Location: FF_X66_Y63_N11
\displayPulseGenerator|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[18]~62_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(18));

-- Location: LCCOMB_X66_Y63_N12
\displayPulseGenerator|s_counter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[19]~64_combout\ = (\displayPulseGenerator|s_counter\(19) & (!\displayPulseGenerator|s_counter[18]~63\)) # (!\displayPulseGenerator|s_counter\(19) & ((\displayPulseGenerator|s_counter[18]~63\) # (GND)))
-- \displayPulseGenerator|s_counter[19]~65\ = CARRY((!\displayPulseGenerator|s_counter[18]~63\) # (!\displayPulseGenerator|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(19),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[18]~63\,
	combout => \displayPulseGenerator|s_counter[19]~64_combout\,
	cout => \displayPulseGenerator|s_counter[19]~65\);

-- Location: FF_X66_Y63_N13
\displayPulseGenerator|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[19]~64_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(19));

-- Location: LCCOMB_X66_Y63_N14
\displayPulseGenerator|s_counter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[20]~66_combout\ = (\displayPulseGenerator|s_counter\(20) & (\displayPulseGenerator|s_counter[19]~65\ $ (GND))) # (!\displayPulseGenerator|s_counter\(20) & (!\displayPulseGenerator|s_counter[19]~65\ & VCC))
-- \displayPulseGenerator|s_counter[20]~67\ = CARRY((\displayPulseGenerator|s_counter\(20) & !\displayPulseGenerator|s_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(20),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[19]~65\,
	combout => \displayPulseGenerator|s_counter[20]~66_combout\,
	cout => \displayPulseGenerator|s_counter[20]~67\);

-- Location: FF_X66_Y63_N15
\displayPulseGenerator|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[20]~66_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(20));

-- Location: LCCOMB_X66_Y63_N16
\displayPulseGenerator|s_counter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[21]~68_combout\ = (\displayPulseGenerator|s_counter\(21) & (!\displayPulseGenerator|s_counter[20]~67\)) # (!\displayPulseGenerator|s_counter\(21) & ((\displayPulseGenerator|s_counter[20]~67\) # (GND)))
-- \displayPulseGenerator|s_counter[21]~69\ = CARRY((!\displayPulseGenerator|s_counter[20]~67\) # (!\displayPulseGenerator|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(21),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[20]~67\,
	combout => \displayPulseGenerator|s_counter[21]~68_combout\,
	cout => \displayPulseGenerator|s_counter[21]~69\);

-- Location: FF_X66_Y63_N17
\displayPulseGenerator|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[21]~68_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(21));

-- Location: LCCOMB_X66_Y63_N18
\displayPulseGenerator|s_counter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|s_counter[22]~70_combout\ = (\displayPulseGenerator|s_counter\(22) & (\displayPulseGenerator|s_counter[21]~69\ $ (GND))) # (!\displayPulseGenerator|s_counter\(22) & (!\displayPulseGenerator|s_counter[21]~69\ & VCC))
-- \displayPulseGenerator|s_counter[22]~71\ = CARRY((\displayPulseGenerator|s_counter\(22) & !\displayPulseGenerator|s_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayPulseGenerator|s_counter\(22),
	datad => VCC,
	cin => \displayPulseGenerator|s_counter[21]~69\,
	combout => \displayPulseGenerator|s_counter[22]~70_combout\,
	cout => \displayPulseGenerator|s_counter[22]~71\);

-- Location: FF_X66_Y63_N19
\displayPulseGenerator|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[22]~70_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(22));

-- Location: FF_X66_Y63_N21
\displayPulseGenerator|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|s_counter[23]~72_combout\,
	sclr => \displayPulseGenerator|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|s_counter\(23));

-- Location: LCCOMB_X65_Y64_N22
\displayPulseGenerator|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan1~2_combout\ = (((\displayPulseGenerator|LessThan1~1_combout\ & !\displayPulseGenerator|s_counter\(6))) # (!\displayPulseGenerator|LessThan0~1_combout\)) # (!\displayPulseGenerator|s_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|LessThan1~1_combout\,
	datab => \displayPulseGenerator|s_counter\(11),
	datac => \displayPulseGenerator|LessThan0~1_combout\,
	datad => \displayPulseGenerator|s_counter\(6),
	combout => \displayPulseGenerator|LessThan1~2_combout\);

-- Location: LCCOMB_X65_Y64_N26
\displayPulseGenerator|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan1~0_combout\ = (((!\displayPulseGenerator|s_counter\(17) & !\displayPulseGenerator|s_counter\(16))) # (!\displayPulseGenerator|s_counter\(18))) # (!\displayPulseGenerator|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|LessThan0~0_combout\,
	datab => \displayPulseGenerator|s_counter\(17),
	datac => \displayPulseGenerator|s_counter\(18),
	datad => \displayPulseGenerator|s_counter\(16),
	combout => \displayPulseGenerator|LessThan1~0_combout\);

-- Location: LCCOMB_X65_Y64_N28
\displayPulseGenerator|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan1~3_combout\ = (\displayPulseGenerator|LessThan1~0_combout\) # ((\displayPulseGenerator|LessThan1~2_combout\ & (!\displayPulseGenerator|s_counter\(17) & !\displayPulseGenerator|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|LessThan1~2_combout\,
	datab => \displayPulseGenerator|s_counter\(17),
	datac => \displayPulseGenerator|LessThan1~0_combout\,
	datad => \displayPulseGenerator|s_counter\(15),
	combout => \displayPulseGenerator|LessThan1~3_combout\);

-- Location: LCCOMB_X65_Y64_N24
\displayPulseGenerator|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayPulseGenerator|LessThan1~4_combout\ = (\displayPulseGenerator|s_counter\(25)) # ((\displayPulseGenerator|s_counter\(24) & ((\displayPulseGenerator|s_counter\(23)) # (!\displayPulseGenerator|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|s_counter\(23),
	datab => \displayPulseGenerator|s_counter\(25),
	datac => \displayPulseGenerator|s_counter\(24),
	datad => \displayPulseGenerator|LessThan1~3_combout\,
	combout => \displayPulseGenerator|LessThan1~4_combout\);

-- Location: FF_X65_Y64_N25
\displayPulseGenerator|blink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displayPulseGenerator|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayPulseGenerator|blink~q\);

-- Location: LCCOMB_X62_Y59_N10
\debounceKEY1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~0_combout\ = \debounceKEY1|s_debounceCnt\(0) $ (VCC)
-- \debounceKEY1|Add0~1\ = CARRY(\debounceKEY1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounceKEY1|Add0~0_combout\,
	cout => \debounceKEY1|Add0~1\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X63_Y59_N18
\s_key2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_key2~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \s_key2~0_combout\);

-- Location: FF_X63_Y59_N19
s_key2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s_key2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_key2~q\);

-- Location: LCCOMB_X63_Y59_N8
\debounceKEY1|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_dirtyIn~feeder_combout\ = \s_key2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_key2~q\,
	combout => \debounceKEY1|s_dirtyIn~feeder_combout\);

-- Location: FF_X63_Y59_N9
\debounceKEY1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_dirtyIn~q\);

-- Location: FF_X62_Y59_N27
\debounceKEY1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounceKEY1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_previousIn~q\);

-- Location: LCCOMB_X61_Y59_N2
\debounceKEY1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_pulsedOut~5_combout\ = (!\debounceKEY1|s_debounceCnt\(2) & (!\debounceKEY1|s_debounceCnt\(4) & (!\debounceKEY1|s_debounceCnt\(1) & !\debounceKEY1|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(2),
	datab => \debounceKEY1|s_debounceCnt\(4),
	datac => \debounceKEY1|s_debounceCnt\(1),
	datad => \debounceKEY1|s_debounceCnt\(3),
	combout => \debounceKEY1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X62_Y59_N20
\debounceKEY1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~10_combout\ = (\debounceKEY1|s_debounceCnt\(5) & (\debounceKEY1|Add0~9\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(5) & (!\debounceKEY1|Add0~9\))
-- \debounceKEY1|Add0~11\ = CARRY((!\debounceKEY1|s_debounceCnt\(5) & !\debounceKEY1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounceKEY1|Add0~9\,
	combout => \debounceKEY1|Add0~10_combout\,
	cout => \debounceKEY1|Add0~11\);

-- Location: LCCOMB_X62_Y59_N22
\debounceKEY1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~12_combout\ = (\debounceKEY1|s_debounceCnt\(6) & ((GND) # (!\debounceKEY1|Add0~11\))) # (!\debounceKEY1|s_debounceCnt\(6) & (\debounceKEY1|Add0~11\ $ (GND)))
-- \debounceKEY1|Add0~13\ = CARRY((\debounceKEY1|s_debounceCnt\(6)) # (!\debounceKEY1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounceKEY1|Add0~11\,
	combout => \debounceKEY1|Add0~12_combout\,
	cout => \debounceKEY1|Add0~13\);

-- Location: LCCOMB_X60_Y59_N28
\debounceKEY1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~1_combout\ = (\debounceKEY1|s_debounceCnt[17]~0_combout\ & ((\debounceKEY1|Add0~12_combout\) # (!\debounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_previousIn~q\,
	datac => \debounceKEY1|Add0~12_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~0_combout\,
	combout => \debounceKEY1|s_debounceCnt~1_combout\);

-- Location: FF_X60_Y59_N29
\debounceKEY1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~1_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(6));

-- Location: LCCOMB_X62_Y59_N24
\debounceKEY1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~14_combout\ = (\debounceKEY1|s_debounceCnt\(7) & (\debounceKEY1|Add0~13\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(7) & (!\debounceKEY1|Add0~13\))
-- \debounceKEY1|Add0~15\ = CARRY((!\debounceKEY1|s_debounceCnt\(7) & !\debounceKEY1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounceKEY1|Add0~13\,
	combout => \debounceKEY1|Add0~14_combout\,
	cout => \debounceKEY1|Add0~15\);

-- Location: LCCOMB_X61_Y59_N24
\debounceKEY1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~12_combout\ = (\debounceKEY1|Add0~14_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceKEY1|Add0~14_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~12_combout\);

-- Location: FF_X61_Y59_N25
\debounceKEY1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~12_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(7));

-- Location: LCCOMB_X62_Y59_N26
\debounceKEY1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~16_combout\ = (\debounceKEY1|s_debounceCnt\(8) & ((GND) # (!\debounceKEY1|Add0~15\))) # (!\debounceKEY1|s_debounceCnt\(8) & (\debounceKEY1|Add0~15\ $ (GND)))
-- \debounceKEY1|Add0~17\ = CARRY((\debounceKEY1|s_debounceCnt\(8)) # (!\debounceKEY1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounceKEY1|Add0~15\,
	combout => \debounceKEY1|Add0~16_combout\,
	cout => \debounceKEY1|Add0~17\);

-- Location: LCCOMB_X60_Y59_N18
\debounceKEY1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~13_combout\ = (\debounceKEY1|s_debounceCnt[17]~0_combout\ & ((\debounceKEY1|Add0~16_combout\) # (!\debounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt[17]~0_combout\,
	datab => \debounceKEY1|s_previousIn~q\,
	datad => \debounceKEY1|Add0~16_combout\,
	combout => \debounceKEY1|s_debounceCnt~13_combout\);

-- Location: FF_X60_Y59_N19
\debounceKEY1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~13_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(8));

-- Location: LCCOMB_X62_Y59_N28
\debounceKEY1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~18_combout\ = (\debounceKEY1|s_debounceCnt\(9) & (\debounceKEY1|Add0~17\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(9) & (!\debounceKEY1|Add0~17\))
-- \debounceKEY1|Add0~19\ = CARRY((!\debounceKEY1|s_debounceCnt\(9) & !\debounceKEY1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounceKEY1|Add0~17\,
	combout => \debounceKEY1|Add0~18_combout\,
	cout => \debounceKEY1|Add0~19\);

-- Location: LCCOMB_X60_Y59_N8
\debounceKEY1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~14_combout\ = (\debounceKEY1|s_debounceCnt[17]~0_combout\ & ((\debounceKEY1|Add0~18_combout\) # (!\debounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_previousIn~q\,
	datac => \debounceKEY1|Add0~18_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~0_combout\,
	combout => \debounceKEY1|s_debounceCnt~14_combout\);

-- Location: FF_X60_Y59_N9
\debounceKEY1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~14_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(9));

-- Location: LCCOMB_X62_Y59_N30
\debounceKEY1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~20_combout\ = (\debounceKEY1|s_debounceCnt\(10) & ((GND) # (!\debounceKEY1|Add0~19\))) # (!\debounceKEY1|s_debounceCnt\(10) & (\debounceKEY1|Add0~19\ $ (GND)))
-- \debounceKEY1|Add0~21\ = CARRY((\debounceKEY1|s_debounceCnt\(10)) # (!\debounceKEY1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounceKEY1|Add0~19\,
	combout => \debounceKEY1|Add0~20_combout\,
	cout => \debounceKEY1|Add0~21\);

-- Location: LCCOMB_X60_Y59_N26
\debounceKEY1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~15_combout\ = (\debounceKEY1|Add0~20_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|Add0~20_combout\,
	datac => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~15_combout\);

-- Location: FF_X60_Y59_N27
\debounceKEY1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~15_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(10));

-- Location: LCCOMB_X62_Y58_N0
\debounceKEY1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~22_combout\ = (\debounceKEY1|s_debounceCnt\(11) & (\debounceKEY1|Add0~21\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(11) & (!\debounceKEY1|Add0~21\))
-- \debounceKEY1|Add0~23\ = CARRY((!\debounceKEY1|s_debounceCnt\(11) & !\debounceKEY1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounceKEY1|Add0~21\,
	combout => \debounceKEY1|Add0~22_combout\,
	cout => \debounceKEY1|Add0~23\);

-- Location: LCCOMB_X61_Y59_N10
\debounceKEY1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~16_combout\ = (\debounceKEY1|s_debounceCnt[17]~0_combout\ & ((\debounceKEY1|Add0~22_combout\) # (!\debounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt[17]~0_combout\,
	datab => \debounceKEY1|s_previousIn~q\,
	datad => \debounceKEY1|Add0~22_combout\,
	combout => \debounceKEY1|s_debounceCnt~16_combout\);

-- Location: FF_X61_Y59_N11
\debounceKEY1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~16_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(11));

-- Location: LCCOMB_X62_Y58_N2
\debounceKEY1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~24_combout\ = (\debounceKEY1|s_debounceCnt\(12) & ((GND) # (!\debounceKEY1|Add0~23\))) # (!\debounceKEY1|s_debounceCnt\(12) & (\debounceKEY1|Add0~23\ $ (GND)))
-- \debounceKEY1|Add0~25\ = CARRY((\debounceKEY1|s_debounceCnt\(12)) # (!\debounceKEY1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounceKEY1|Add0~23\,
	combout => \debounceKEY1|Add0~24_combout\,
	cout => \debounceKEY1|Add0~25\);

-- Location: LCCOMB_X60_Y59_N0
\debounceKEY1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~8_combout\ = (\debounceKEY1|s_debounceCnt[17]~4_combout\ & \debounceKEY1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	datad => \debounceKEY1|Add0~24_combout\,
	combout => \debounceKEY1|s_debounceCnt~8_combout\);

-- Location: FF_X60_Y59_N1
\debounceKEY1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~8_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(12));

-- Location: LCCOMB_X62_Y58_N4
\debounceKEY1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~26_combout\ = (\debounceKEY1|s_debounceCnt\(13) & (\debounceKEY1|Add0~25\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(13) & (!\debounceKEY1|Add0~25\))
-- \debounceKEY1|Add0~27\ = CARRY((!\debounceKEY1|s_debounceCnt\(13) & !\debounceKEY1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounceKEY1|Add0~25\,
	combout => \debounceKEY1|Add0~26_combout\,
	cout => \debounceKEY1|Add0~27\);

-- Location: LCCOMB_X61_Y59_N28
\debounceKEY1|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~9_combout\ = (\debounceKEY1|Add0~26_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceKEY1|Add0~26_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~9_combout\);

-- Location: FF_X61_Y59_N29
\debounceKEY1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~9_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(13));

-- Location: LCCOMB_X62_Y58_N6
\debounceKEY1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~28_combout\ = (\debounceKEY1|s_debounceCnt\(14) & ((GND) # (!\debounceKEY1|Add0~27\))) # (!\debounceKEY1|s_debounceCnt\(14) & (\debounceKEY1|Add0~27\ $ (GND)))
-- \debounceKEY1|Add0~29\ = CARRY((\debounceKEY1|s_debounceCnt\(14)) # (!\debounceKEY1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounceKEY1|Add0~27\,
	combout => \debounceKEY1|Add0~28_combout\,
	cout => \debounceKEY1|Add0~29\);

-- Location: LCCOMB_X61_Y59_N4
\debounceKEY1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~17_combout\ = (\debounceKEY1|s_debounceCnt[17]~0_combout\ & ((\debounceKEY1|Add0~28_combout\) # (!\debounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_previousIn~q\,
	datac => \debounceKEY1|Add0~28_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~0_combout\,
	combout => \debounceKEY1|s_debounceCnt~17_combout\);

-- Location: FF_X61_Y59_N5
\debounceKEY1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~17_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(14));

-- Location: LCCOMB_X60_Y59_N12
\debounceKEY1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_pulsedOut~3_combout\ = (!\debounceKEY1|s_debounceCnt\(19) & (!\debounceKEY1|s_debounceCnt\(18) & (!\debounceKEY1|s_debounceCnt\(11) & !\debounceKEY1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(19),
	datab => \debounceKEY1|s_debounceCnt\(18),
	datac => \debounceKEY1|s_debounceCnt\(11),
	datad => \debounceKEY1|s_debounceCnt\(14),
	combout => \debounceKEY1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X60_Y59_N4
\debounceKEY1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_pulsedOut~2_combout\ = (!\debounceKEY1|s_debounceCnt\(10) & (!\debounceKEY1|s_debounceCnt\(9) & (!\debounceKEY1|s_debounceCnt\(7) & !\debounceKEY1|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(10),
	datab => \debounceKEY1|s_debounceCnt\(9),
	datac => \debounceKEY1|s_debounceCnt\(7),
	datad => \debounceKEY1|s_debounceCnt\(8),
	combout => \debounceKEY1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X62_Y58_N8
\debounceKEY1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~30_combout\ = (\debounceKEY1|s_debounceCnt\(15) & (\debounceKEY1|Add0~29\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(15) & (!\debounceKEY1|Add0~29\))
-- \debounceKEY1|Add0~31\ = CARRY((!\debounceKEY1|s_debounceCnt\(15) & !\debounceKEY1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounceKEY1|Add0~29\,
	combout => \debounceKEY1|Add0~30_combout\,
	cout => \debounceKEY1|Add0~31\);

-- Location: LCCOMB_X60_Y59_N30
\debounceKEY1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~5_combout\ = (\debounceKEY1|s_debounceCnt[17]~4_combout\ & \debounceKEY1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	datad => \debounceKEY1|Add0~30_combout\,
	combout => \debounceKEY1|s_debounceCnt~5_combout\);

-- Location: FF_X60_Y59_N31
\debounceKEY1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~5_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(15));

-- Location: LCCOMB_X62_Y58_N10
\debounceKEY1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~32_combout\ = (\debounceKEY1|s_debounceCnt\(16) & ((GND) # (!\debounceKEY1|Add0~31\))) # (!\debounceKEY1|s_debounceCnt\(16) & (\debounceKEY1|Add0~31\ $ (GND)))
-- \debounceKEY1|Add0~33\ = CARRY((\debounceKEY1|s_debounceCnt\(16)) # (!\debounceKEY1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounceKEY1|Add0~31\,
	combout => \debounceKEY1|Add0~32_combout\,
	cout => \debounceKEY1|Add0~33\);

-- Location: LCCOMB_X60_Y59_N16
\debounceKEY1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~6_combout\ = (\debounceKEY1|s_debounceCnt[17]~4_combout\ & \debounceKEY1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	datad => \debounceKEY1|Add0~32_combout\,
	combout => \debounceKEY1|s_debounceCnt~6_combout\);

-- Location: FF_X60_Y59_N17
\debounceKEY1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~6_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(16));

-- Location: LCCOMB_X62_Y58_N12
\debounceKEY1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~34_combout\ = (\debounceKEY1|s_debounceCnt\(17) & (\debounceKEY1|Add0~33\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(17) & (!\debounceKEY1|Add0~33\))
-- \debounceKEY1|Add0~35\ = CARRY((!\debounceKEY1|s_debounceCnt\(17) & !\debounceKEY1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounceKEY1|Add0~33\,
	combout => \debounceKEY1|Add0~34_combout\,
	cout => \debounceKEY1|Add0~35\);

-- Location: LCCOMB_X61_Y58_N0
\debounceKEY1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~7_combout\ = (\debounceKEY1|Add0~34_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceKEY1|Add0~34_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~7_combout\);

-- Location: FF_X61_Y58_N1
\debounceKEY1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~7_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(17));

-- Location: LCCOMB_X60_Y59_N14
\debounceKEY1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_pulsedOut~0_combout\ = (!\debounceKEY1|s_debounceCnt\(15) & (!\debounceKEY1|s_debounceCnt\(6) & (!\debounceKEY1|s_debounceCnt\(17) & !\debounceKEY1|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(15),
	datab => \debounceKEY1|s_debounceCnt\(6),
	datac => \debounceKEY1|s_debounceCnt\(17),
	datad => \debounceKEY1|s_debounceCnt\(16),
	combout => \debounceKEY1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X61_Y59_N26
\debounceKEY1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_pulsedOut~1_combout\ = (!\debounceKEY1|s_debounceCnt\(12) & (!\debounceKEY1|s_debounceCnt\(13) & (!\debounceKEY1|s_debounceCnt\(21) & !\debounceKEY1|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(12),
	datab => \debounceKEY1|s_debounceCnt\(13),
	datac => \debounceKEY1|s_debounceCnt\(21),
	datad => \debounceKEY1|s_debounceCnt\(20),
	combout => \debounceKEY1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X60_Y59_N10
\debounceKEY1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_pulsedOut~4_combout\ = (\debounceKEY1|s_pulsedOut~3_combout\ & (\debounceKEY1|s_pulsedOut~2_combout\ & (\debounceKEY1|s_pulsedOut~0_combout\ & \debounceKEY1|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_pulsedOut~3_combout\,
	datab => \debounceKEY1|s_pulsedOut~2_combout\,
	datac => \debounceKEY1|s_pulsedOut~0_combout\,
	datad => \debounceKEY1|s_pulsedOut~1_combout\,
	combout => \debounceKEY1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X61_Y59_N16
\debounceKEY1|s_debounceCnt[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[17]~2_combout\ = (\debounceKEY1|s_debounceCnt\(0)) # (((\debounceKEY1|s_debounceCnt\(5)) # (!\debounceKEY1|s_pulsedOut~4_combout\)) # (!\debounceKEY1|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(0),
	datab => \debounceKEY1|s_pulsedOut~5_combout\,
	datac => \debounceKEY1|s_debounceCnt\(5),
	datad => \debounceKEY1|s_pulsedOut~4_combout\,
	combout => \debounceKEY1|s_debounceCnt[17]~2_combout\);

-- Location: LCCOMB_X61_Y59_N30
\debounceKEY1|s_debounceCnt[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[17]~3_combout\ = (((\debounceKEY1|s_debounceCnt\(22)) # (\debounceKEY1|s_debounceCnt[17]~2_combout\)) # (!\debounceKEY1|s_previousIn~q\)) # (!\debounceKEY1|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_dirtyIn~q\,
	datab => \debounceKEY1|s_previousIn~q\,
	datac => \debounceKEY1|s_debounceCnt\(22),
	datad => \debounceKEY1|s_debounceCnt[17]~2_combout\,
	combout => \debounceKEY1|s_debounceCnt[17]~3_combout\);

-- Location: LCCOMB_X62_Y58_N14
\debounceKEY1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~36_combout\ = (\debounceKEY1|s_debounceCnt\(18) & ((GND) # (!\debounceKEY1|Add0~35\))) # (!\debounceKEY1|s_debounceCnt\(18) & (\debounceKEY1|Add0~35\ $ (GND)))
-- \debounceKEY1|Add0~37\ = CARRY((\debounceKEY1|s_debounceCnt\(18)) # (!\debounceKEY1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounceKEY1|Add0~35\,
	combout => \debounceKEY1|Add0~36_combout\,
	cout => \debounceKEY1|Add0~37\);

-- Location: LCCOMB_X61_Y59_N14
\debounceKEY1|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[18]~18_combout\ = (\debounceKEY1|s_debounceCnt[17]~0_combout\ & (\debounceKEY1|s_debounceCnt[17]~3_combout\ & ((\debounceKEY1|Add0~36_combout\) # (!\debounceKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt[17]~0_combout\,
	datab => \debounceKEY1|s_previousIn~q\,
	datac => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	datad => \debounceKEY1|Add0~36_combout\,
	combout => \debounceKEY1|s_debounceCnt[18]~18_combout\);

-- Location: FF_X61_Y59_N15
\debounceKEY1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(18));

-- Location: LCCOMB_X60_Y59_N2
\debounceKEY1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|LessThan0~4_combout\ = (\debounceKEY1|s_debounceCnt\(12)) # ((\debounceKEY1|s_debounceCnt\(13)) # ((\debounceKEY1|s_debounceCnt\(10) & \debounceKEY1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(10),
	datab => \debounceKEY1|s_debounceCnt\(12),
	datac => \debounceKEY1|s_debounceCnt\(11),
	datad => \debounceKEY1|s_debounceCnt\(13),
	combout => \debounceKEY1|LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y59_N20
\debounceKEY1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|LessThan0~5_combout\ = (\debounceKEY1|s_debounceCnt\(16)) # ((\debounceKEY1|s_debounceCnt\(15)) # ((\debounceKEY1|s_debounceCnt\(14) & \debounceKEY1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(14),
	datab => \debounceKEY1|s_debounceCnt\(16),
	datac => \debounceKEY1|s_debounceCnt\(15),
	datad => \debounceKEY1|LessThan0~4_combout\,
	combout => \debounceKEY1|LessThan0~5_combout\);

-- Location: LCCOMB_X60_Y59_N6
\debounceKEY1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|LessThan0~6_combout\ = (\debounceKEY1|s_debounceCnt\(19) & (\debounceKEY1|s_debounceCnt\(18) & ((\debounceKEY1|s_debounceCnt\(17)) # (\debounceKEY1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(19),
	datab => \debounceKEY1|s_debounceCnt\(18),
	datac => \debounceKEY1|s_debounceCnt\(17),
	datad => \debounceKEY1|LessThan0~5_combout\,
	combout => \debounceKEY1|LessThan0~6_combout\);

-- Location: LCCOMB_X60_Y59_N24
\debounceKEY1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|LessThan0~0_combout\ = (\debounceKEY1|s_debounceCnt\(19) & (\debounceKEY1|s_debounceCnt\(8) & (\debounceKEY1|s_debounceCnt\(18) & \debounceKEY1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(19),
	datab => \debounceKEY1|s_debounceCnt\(8),
	datac => \debounceKEY1|s_debounceCnt\(18),
	datad => \debounceKEY1|s_debounceCnt\(14),
	combout => \debounceKEY1|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y59_N20
\debounceKEY1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|LessThan0~1_combout\ = (\debounceKEY1|s_debounceCnt\(11) & \debounceKEY1|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceKEY1|s_debounceCnt\(11),
	datad => \debounceKEY1|s_debounceCnt\(9),
	combout => \debounceKEY1|LessThan0~1_combout\);

-- Location: LCCOMB_X62_Y59_N2
\debounceKEY1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|LessThan0~2_combout\ = (\debounceKEY1|s_debounceCnt\(6) & ((\debounceKEY1|s_debounceCnt\(5)) # ((\debounceKEY1|s_debounceCnt\(0)) # (!\debounceKEY1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(6),
	datab => \debounceKEY1|s_debounceCnt\(5),
	datac => \debounceKEY1|s_debounceCnt\(0),
	datad => \debounceKEY1|s_pulsedOut~5_combout\,
	combout => \debounceKEY1|LessThan0~2_combout\);

-- Location: LCCOMB_X62_Y59_N4
\debounceKEY1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|LessThan0~3_combout\ = (\debounceKEY1|LessThan0~0_combout\ & (\debounceKEY1|LessThan0~1_combout\ & ((\debounceKEY1|s_debounceCnt\(7)) # (\debounceKEY1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|LessThan0~0_combout\,
	datab => \debounceKEY1|s_debounceCnt\(7),
	datac => \debounceKEY1|LessThan0~1_combout\,
	datad => \debounceKEY1|LessThan0~2_combout\,
	combout => \debounceKEY1|LessThan0~3_combout\);

-- Location: LCCOMB_X61_Y59_N0
\debounceKEY1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|LessThan0~7_combout\ = (\debounceKEY1|s_debounceCnt\(20)) # ((\debounceKEY1|s_debounceCnt\(21)) # ((\debounceKEY1|LessThan0~6_combout\) # (\debounceKEY1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(20),
	datab => \debounceKEY1|s_debounceCnt\(21),
	datac => \debounceKEY1|LessThan0~6_combout\,
	datad => \debounceKEY1|LessThan0~3_combout\,
	combout => \debounceKEY1|LessThan0~7_combout\);

-- Location: LCCOMB_X61_Y59_N6
\debounceKEY1|s_debounceCnt[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[17]~0_combout\ = (\debounceKEY1|s_dirtyIn~q\ & ((!\debounceKEY1|LessThan0~7_combout\) # (!\debounceKEY1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_dirtyIn~q\,
	datac => \debounceKEY1|s_debounceCnt\(22),
	datad => \debounceKEY1|LessThan0~7_combout\,
	combout => \debounceKEY1|s_debounceCnt[17]~0_combout\);

-- Location: LCCOMB_X62_Y58_N16
\debounceKEY1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~38_combout\ = (\debounceKEY1|s_debounceCnt\(19) & (\debounceKEY1|Add0~37\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(19) & (!\debounceKEY1|Add0~37\))
-- \debounceKEY1|Add0~39\ = CARRY((!\debounceKEY1|s_debounceCnt\(19) & !\debounceKEY1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounceKEY1|Add0~37\,
	combout => \debounceKEY1|Add0~38_combout\,
	cout => \debounceKEY1|Add0~39\);

-- Location: LCCOMB_X60_Y59_N22
\debounceKEY1|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[19]~19_combout\ = (\debounceKEY1|s_debounceCnt[17]~0_combout\ & (\debounceKEY1|s_debounceCnt[17]~3_combout\ & ((\debounceKEY1|Add0~38_combout\) # (!\debounceKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt[17]~0_combout\,
	datab => \debounceKEY1|s_previousIn~q\,
	datac => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	datad => \debounceKEY1|Add0~38_combout\,
	combout => \debounceKEY1|s_debounceCnt[19]~19_combout\);

-- Location: FF_X60_Y59_N23
\debounceKEY1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(19));

-- Location: LCCOMB_X62_Y58_N18
\debounceKEY1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~40_combout\ = (\debounceKEY1|s_debounceCnt\(20) & ((GND) # (!\debounceKEY1|Add0~39\))) # (!\debounceKEY1|s_debounceCnt\(20) & (\debounceKEY1|Add0~39\ $ (GND)))
-- \debounceKEY1|Add0~41\ = CARRY((\debounceKEY1|s_debounceCnt\(20)) # (!\debounceKEY1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounceKEY1|Add0~39\,
	combout => \debounceKEY1|Add0~40_combout\,
	cout => \debounceKEY1|Add0~41\);

-- Location: LCCOMB_X62_Y58_N28
\debounceKEY1|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[20]~10_combout\ = (\debounceKEY1|Add0~40_combout\ & (\debounceKEY1|s_debounceCnt[17]~3_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|Add0~40_combout\,
	datac => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt[20]~10_combout\);

-- Location: FF_X62_Y58_N29
\debounceKEY1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(20));

-- Location: LCCOMB_X62_Y58_N20
\debounceKEY1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~42_combout\ = (\debounceKEY1|s_debounceCnt\(21) & (\debounceKEY1|Add0~41\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(21) & (!\debounceKEY1|Add0~41\))
-- \debounceKEY1|Add0~43\ = CARRY((!\debounceKEY1|s_debounceCnt\(21) & !\debounceKEY1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounceKEY1|Add0~41\,
	combout => \debounceKEY1|Add0~42_combout\,
	cout => \debounceKEY1|Add0~43\);

-- Location: LCCOMB_X62_Y58_N30
\debounceKEY1|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[21]~11_combout\ = (\debounceKEY1|Add0~42_combout\ & (\debounceKEY1|s_debounceCnt[17]~3_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|Add0~42_combout\,
	datac => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt[21]~11_combout\);

-- Location: FF_X62_Y58_N31
\debounceKEY1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(21));

-- Location: LCCOMB_X62_Y58_N22
\debounceKEY1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~44_combout\ = \debounceKEY1|Add0~43\ $ (\debounceKEY1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounceKEY1|s_debounceCnt\(22),
	cin => \debounceKEY1|Add0~43\,
	combout => \debounceKEY1|Add0~44_combout\);

-- Location: LCCOMB_X61_Y59_N22
\debounceKEY1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[22]~25_combout\ = (\debounceKEY1|s_dirtyIn~q\ & ((\debounceKEY1|s_debounceCnt\(22) & ((!\debounceKEY1|LessThan0~7_combout\))) # (!\debounceKEY1|s_debounceCnt\(22) & (\debounceKEY1|s_debounceCnt[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_dirtyIn~q\,
	datab => \debounceKEY1|s_debounceCnt[17]~2_combout\,
	datac => \debounceKEY1|s_debounceCnt\(22),
	datad => \debounceKEY1|LessThan0~7_combout\,
	combout => \debounceKEY1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X62_Y58_N24
\debounceKEY1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[22]~26_combout\ = (\debounceKEY1|s_previousIn~q\ & (\debounceKEY1|Add0~44_combout\ & (\debounceKEY1|s_debounceCnt[22]~25_combout\))) # (!\debounceKEY1|s_previousIn~q\ & (((\debounceKEY1|s_debounceCnt[17]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|Add0~44_combout\,
	datab => \debounceKEY1|s_previousIn~q\,
	datac => \debounceKEY1|s_debounceCnt[22]~25_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~0_combout\,
	combout => \debounceKEY1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X62_Y58_N25
\debounceKEY1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(22));

-- Location: LCCOMB_X61_Y59_N20
\debounceKEY1|s_debounceCnt[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt[17]~4_combout\ = (\debounceKEY1|s_dirtyIn~q\ & (\debounceKEY1|s_previousIn~q\ & ((!\debounceKEY1|LessThan0~7_combout\) # (!\debounceKEY1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_dirtyIn~q\,
	datab => \debounceKEY1|s_previousIn~q\,
	datac => \debounceKEY1|s_debounceCnt\(22),
	datad => \debounceKEY1|LessThan0~7_combout\,
	combout => \debounceKEY1|s_debounceCnt[17]~4_combout\);

-- Location: LCCOMB_X62_Y59_N6
\debounceKEY1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~24_combout\ = (\debounceKEY1|Add0~0_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|Add0~0_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~24_combout\);

-- Location: FF_X62_Y59_N7
\debounceKEY1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~24_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(0));

-- Location: LCCOMB_X62_Y59_N12
\debounceKEY1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~2_combout\ = (\debounceKEY1|s_debounceCnt\(1) & (\debounceKEY1|Add0~1\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(1) & (!\debounceKEY1|Add0~1\))
-- \debounceKEY1|Add0~3\ = CARRY((!\debounceKEY1|s_debounceCnt\(1) & !\debounceKEY1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounceKEY1|Add0~1\,
	combout => \debounceKEY1|Add0~2_combout\,
	cout => \debounceKEY1|Add0~3\);

-- Location: LCCOMB_X62_Y59_N0
\debounceKEY1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~20_combout\ = (\debounceKEY1|Add0~2_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|Add0~2_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~20_combout\);

-- Location: FF_X62_Y59_N1
\debounceKEY1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~20_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(1));

-- Location: LCCOMB_X62_Y59_N14
\debounceKEY1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~4_combout\ = (\debounceKEY1|s_debounceCnt\(2) & ((GND) # (!\debounceKEY1|Add0~3\))) # (!\debounceKEY1|s_debounceCnt\(2) & (\debounceKEY1|Add0~3\ $ (GND)))
-- \debounceKEY1|Add0~5\ = CARRY((\debounceKEY1|s_debounceCnt\(2)) # (!\debounceKEY1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounceKEY1|Add0~3\,
	combout => \debounceKEY1|Add0~4_combout\,
	cout => \debounceKEY1|Add0~5\);

-- Location: LCCOMB_X61_Y59_N12
\debounceKEY1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~21_combout\ = (\debounceKEY1|Add0~4_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|Add0~4_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~21_combout\);

-- Location: FF_X61_Y59_N13
\debounceKEY1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~21_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(2));

-- Location: LCCOMB_X62_Y59_N16
\debounceKEY1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~6_combout\ = (\debounceKEY1|s_debounceCnt\(3) & (\debounceKEY1|Add0~5\ & VCC)) # (!\debounceKEY1|s_debounceCnt\(3) & (!\debounceKEY1|Add0~5\))
-- \debounceKEY1|Add0~7\ = CARRY((!\debounceKEY1|s_debounceCnt\(3) & !\debounceKEY1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounceKEY1|Add0~5\,
	combout => \debounceKEY1|Add0~6_combout\,
	cout => \debounceKEY1|Add0~7\);

-- Location: LCCOMB_X61_Y59_N18
\debounceKEY1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~22_combout\ = (\debounceKEY1|Add0~6_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|Add0~6_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~22_combout\);

-- Location: FF_X61_Y59_N19
\debounceKEY1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~22_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(3));

-- Location: LCCOMB_X62_Y59_N18
\debounceKEY1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|Add0~8_combout\ = (\debounceKEY1|s_debounceCnt\(4) & ((GND) # (!\debounceKEY1|Add0~7\))) # (!\debounceKEY1|s_debounceCnt\(4) & (\debounceKEY1|Add0~7\ $ (GND)))
-- \debounceKEY1|Add0~9\ = CARRY((\debounceKEY1|s_debounceCnt\(4)) # (!\debounceKEY1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounceKEY1|Add0~7\,
	combout => \debounceKEY1|Add0~8_combout\,
	cout => \debounceKEY1|Add0~9\);

-- Location: LCCOMB_X61_Y59_N8
\debounceKEY1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~23_combout\ = (\debounceKEY1|Add0~8_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|Add0~8_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~23_combout\);

-- Location: FF_X61_Y59_N9
\debounceKEY1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~23_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(4));

-- Location: LCCOMB_X62_Y59_N8
\debounceKEY1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_debounceCnt~27_combout\ = (\debounceKEY1|Add0~10_combout\ & \debounceKEY1|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceKEY1|Add0~10_combout\,
	datad => \debounceKEY1|s_debounceCnt[17]~4_combout\,
	combout => \debounceKEY1|s_debounceCnt~27_combout\);

-- Location: FF_X62_Y59_N9
\debounceKEY1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_debounceCnt~27_combout\,
	ena => \debounceKEY1|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_debounceCnt\(5));

-- Location: LCCOMB_X63_Y59_N26
\debounceKEY1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_pulsedOut~6_combout\ = (\debounceKEY1|s_previousIn~q\ & (\debounceKEY1|s_debounceCnt\(0) & (\debounceKEY1|s_dirtyIn~q\ & !\debounceKEY1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_previousIn~q\,
	datab => \debounceKEY1|s_debounceCnt\(0),
	datac => \debounceKEY1|s_dirtyIn~q\,
	datad => \debounceKEY1|s_debounceCnt\(22),
	combout => \debounceKEY1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X65_Y59_N2
\debounceKEY1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceKEY1|s_pulsedOut~7_combout\ = (!\debounceKEY1|s_debounceCnt\(5) & (\debounceKEY1|s_pulsedOut~5_combout\ & (\debounceKEY1|s_pulsedOut~6_combout\ & \debounceKEY1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY1|s_debounceCnt\(5),
	datab => \debounceKEY1|s_pulsedOut~5_combout\,
	datac => \debounceKEY1|s_pulsedOut~6_combout\,
	datad => \debounceKEY1|s_pulsedOut~4_combout\,
	combout => \debounceKEY1|s_pulsedOut~7_combout\);

-- Location: FF_X65_Y59_N3
\debounceKEY1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceKEY1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceKEY1|s_pulsedOut~q\);

-- Location: LCCOMB_X66_Y61_N30
\s_startStop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startStop~0_combout\ = !\s_startStop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_startStop~q\,
	combout => \s_startStop~0_combout\);

-- Location: FF_X66_Y61_N31
s_startStop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceKEY1|s_pulsedOut~q\,
	d => \s_startStop~0_combout\,
	clrn => \debounceKEY0|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_startStop~q\);

-- Location: LCCOMB_X65_Y61_N16
\counter|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~3_combout\ = (!\debounceKEY0|s_pulsedOut~q\ & !\counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_pulsedOut~q\,
	datac => \counter|s_count\(0),
	combout => \counter|s_count~3_combout\);

-- Location: LCCOMB_X62_Y61_N6
\counterPulseGenerator|s_cnt[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[0]~26_combout\ = \counterPulseGenerator|s_cnt\(0) $ (VCC)
-- \counterPulseGenerator|s_cnt[0]~27\ = CARRY(\counterPulseGenerator|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(0),
	datad => VCC,
	combout => \counterPulseGenerator|s_cnt[0]~26_combout\,
	cout => \counterPulseGenerator|s_cnt[0]~27\);

-- Location: LCCOMB_X63_Y60_N0
\counterPulseGenerator|s_cnt[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[0]~28_combout\ = (\debounceKEY0|s_pulsedOut~q\) # (!\counterPulseGenerator|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_pulsedOut~q\,
	datad => \counterPulseGenerator|Equal0~8_combout\,
	combout => \counterPulseGenerator|s_cnt[0]~28_combout\);

-- Location: FF_X62_Y61_N7
\counterPulseGenerator|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[0]~26_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(0));

-- Location: LCCOMB_X62_Y61_N8
\counterPulseGenerator|s_cnt[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[1]~29_combout\ = (\counterPulseGenerator|s_cnt\(1) & (!\counterPulseGenerator|s_cnt[0]~27\)) # (!\counterPulseGenerator|s_cnt\(1) & ((\counterPulseGenerator|s_cnt[0]~27\) # (GND)))
-- \counterPulseGenerator|s_cnt[1]~30\ = CARRY((!\counterPulseGenerator|s_cnt[0]~27\) # (!\counterPulseGenerator|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(1),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[0]~27\,
	combout => \counterPulseGenerator|s_cnt[1]~29_combout\,
	cout => \counterPulseGenerator|s_cnt[1]~30\);

-- Location: FF_X62_Y61_N9
\counterPulseGenerator|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[1]~29_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(1));

-- Location: LCCOMB_X62_Y61_N10
\counterPulseGenerator|s_cnt[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[2]~31_combout\ = (\counterPulseGenerator|s_cnt\(2) & (\counterPulseGenerator|s_cnt[1]~30\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(2) & (!\counterPulseGenerator|s_cnt[1]~30\ & VCC))
-- \counterPulseGenerator|s_cnt[2]~32\ = CARRY((\counterPulseGenerator|s_cnt\(2) & !\counterPulseGenerator|s_cnt[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(2),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[1]~30\,
	combout => \counterPulseGenerator|s_cnt[2]~31_combout\,
	cout => \counterPulseGenerator|s_cnt[2]~32\);

-- Location: FF_X62_Y61_N11
\counterPulseGenerator|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[2]~31_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(2));

-- Location: LCCOMB_X62_Y61_N12
\counterPulseGenerator|s_cnt[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[3]~33_combout\ = (\counterPulseGenerator|s_cnt\(3) & (!\counterPulseGenerator|s_cnt[2]~32\)) # (!\counterPulseGenerator|s_cnt\(3) & ((\counterPulseGenerator|s_cnt[2]~32\) # (GND)))
-- \counterPulseGenerator|s_cnt[3]~34\ = CARRY((!\counterPulseGenerator|s_cnt[2]~32\) # (!\counterPulseGenerator|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(3),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[2]~32\,
	combout => \counterPulseGenerator|s_cnt[3]~33_combout\,
	cout => \counterPulseGenerator|s_cnt[3]~34\);

-- Location: FF_X62_Y61_N13
\counterPulseGenerator|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[3]~33_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(3));

-- Location: LCCOMB_X62_Y61_N14
\counterPulseGenerator|s_cnt[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[4]~35_combout\ = (\counterPulseGenerator|s_cnt\(4) & (\counterPulseGenerator|s_cnt[3]~34\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(4) & (!\counterPulseGenerator|s_cnt[3]~34\ & VCC))
-- \counterPulseGenerator|s_cnt[4]~36\ = CARRY((\counterPulseGenerator|s_cnt\(4) & !\counterPulseGenerator|s_cnt[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(4),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[3]~34\,
	combout => \counterPulseGenerator|s_cnt[4]~35_combout\,
	cout => \counterPulseGenerator|s_cnt[4]~36\);

-- Location: FF_X62_Y61_N15
\counterPulseGenerator|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[4]~35_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(4));

-- Location: LCCOMB_X62_Y61_N16
\counterPulseGenerator|s_cnt[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[5]~37_combout\ = (\counterPulseGenerator|s_cnt\(5) & (!\counterPulseGenerator|s_cnt[4]~36\)) # (!\counterPulseGenerator|s_cnt\(5) & ((\counterPulseGenerator|s_cnt[4]~36\) # (GND)))
-- \counterPulseGenerator|s_cnt[5]~38\ = CARRY((!\counterPulseGenerator|s_cnt[4]~36\) # (!\counterPulseGenerator|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(5),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[4]~36\,
	combout => \counterPulseGenerator|s_cnt[5]~37_combout\,
	cout => \counterPulseGenerator|s_cnt[5]~38\);

-- Location: FF_X62_Y61_N17
\counterPulseGenerator|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[5]~37_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(5));

-- Location: LCCOMB_X62_Y61_N18
\counterPulseGenerator|s_cnt[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[6]~39_combout\ = (\counterPulseGenerator|s_cnt\(6) & (\counterPulseGenerator|s_cnt[5]~38\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(6) & (!\counterPulseGenerator|s_cnt[5]~38\ & VCC))
-- \counterPulseGenerator|s_cnt[6]~40\ = CARRY((\counterPulseGenerator|s_cnt\(6) & !\counterPulseGenerator|s_cnt[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(6),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[5]~38\,
	combout => \counterPulseGenerator|s_cnt[6]~39_combout\,
	cout => \counterPulseGenerator|s_cnt[6]~40\);

-- Location: FF_X62_Y61_N19
\counterPulseGenerator|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[6]~39_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(6));

-- Location: LCCOMB_X62_Y61_N20
\counterPulseGenerator|s_cnt[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[7]~41_combout\ = (\counterPulseGenerator|s_cnt\(7) & (!\counterPulseGenerator|s_cnt[6]~40\)) # (!\counterPulseGenerator|s_cnt\(7) & ((\counterPulseGenerator|s_cnt[6]~40\) # (GND)))
-- \counterPulseGenerator|s_cnt[7]~42\ = CARRY((!\counterPulseGenerator|s_cnt[6]~40\) # (!\counterPulseGenerator|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(7),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[6]~40\,
	combout => \counterPulseGenerator|s_cnt[7]~41_combout\,
	cout => \counterPulseGenerator|s_cnt[7]~42\);

-- Location: FF_X62_Y61_N21
\counterPulseGenerator|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[7]~41_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(7));

-- Location: LCCOMB_X62_Y61_N22
\counterPulseGenerator|s_cnt[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[8]~43_combout\ = (\counterPulseGenerator|s_cnt\(8) & (\counterPulseGenerator|s_cnt[7]~42\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(8) & (!\counterPulseGenerator|s_cnt[7]~42\ & VCC))
-- \counterPulseGenerator|s_cnt[8]~44\ = CARRY((\counterPulseGenerator|s_cnt\(8) & !\counterPulseGenerator|s_cnt[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(8),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[7]~42\,
	combout => \counterPulseGenerator|s_cnt[8]~43_combout\,
	cout => \counterPulseGenerator|s_cnt[8]~44\);

-- Location: FF_X62_Y61_N23
\counterPulseGenerator|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[8]~43_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(8));

-- Location: LCCOMB_X62_Y61_N24
\counterPulseGenerator|s_cnt[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[9]~45_combout\ = (\counterPulseGenerator|s_cnt\(9) & (!\counterPulseGenerator|s_cnt[8]~44\)) # (!\counterPulseGenerator|s_cnt\(9) & ((\counterPulseGenerator|s_cnt[8]~44\) # (GND)))
-- \counterPulseGenerator|s_cnt[9]~46\ = CARRY((!\counterPulseGenerator|s_cnt[8]~44\) # (!\counterPulseGenerator|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(9),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[8]~44\,
	combout => \counterPulseGenerator|s_cnt[9]~45_combout\,
	cout => \counterPulseGenerator|s_cnt[9]~46\);

-- Location: FF_X62_Y61_N25
\counterPulseGenerator|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[9]~45_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(9));

-- Location: LCCOMB_X62_Y61_N26
\counterPulseGenerator|s_cnt[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[10]~47_combout\ = (\counterPulseGenerator|s_cnt\(10) & (\counterPulseGenerator|s_cnt[9]~46\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(10) & (!\counterPulseGenerator|s_cnt[9]~46\ & VCC))
-- \counterPulseGenerator|s_cnt[10]~48\ = CARRY((\counterPulseGenerator|s_cnt\(10) & !\counterPulseGenerator|s_cnt[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(10),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[9]~46\,
	combout => \counterPulseGenerator|s_cnt[10]~47_combout\,
	cout => \counterPulseGenerator|s_cnt[10]~48\);

-- Location: FF_X62_Y61_N27
\counterPulseGenerator|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[10]~47_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(10));

-- Location: LCCOMB_X62_Y61_N28
\counterPulseGenerator|s_cnt[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[11]~49_combout\ = (\counterPulseGenerator|s_cnt\(11) & (!\counterPulseGenerator|s_cnt[10]~48\)) # (!\counterPulseGenerator|s_cnt\(11) & ((\counterPulseGenerator|s_cnt[10]~48\) # (GND)))
-- \counterPulseGenerator|s_cnt[11]~50\ = CARRY((!\counterPulseGenerator|s_cnt[10]~48\) # (!\counterPulseGenerator|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(11),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[10]~48\,
	combout => \counterPulseGenerator|s_cnt[11]~49_combout\,
	cout => \counterPulseGenerator|s_cnt[11]~50\);

-- Location: FF_X62_Y61_N29
\counterPulseGenerator|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[11]~49_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(11));

-- Location: LCCOMB_X62_Y61_N30
\counterPulseGenerator|s_cnt[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[12]~51_combout\ = (\counterPulseGenerator|s_cnt\(12) & (\counterPulseGenerator|s_cnt[11]~50\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(12) & (!\counterPulseGenerator|s_cnt[11]~50\ & VCC))
-- \counterPulseGenerator|s_cnt[12]~52\ = CARRY((\counterPulseGenerator|s_cnt\(12) & !\counterPulseGenerator|s_cnt[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(12),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[11]~50\,
	combout => \counterPulseGenerator|s_cnt[12]~51_combout\,
	cout => \counterPulseGenerator|s_cnt[12]~52\);

-- Location: FF_X62_Y61_N31
\counterPulseGenerator|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[12]~51_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(12));

-- Location: LCCOMB_X62_Y60_N0
\counterPulseGenerator|s_cnt[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[13]~53_combout\ = (\counterPulseGenerator|s_cnt\(13) & (!\counterPulseGenerator|s_cnt[12]~52\)) # (!\counterPulseGenerator|s_cnt\(13) & ((\counterPulseGenerator|s_cnt[12]~52\) # (GND)))
-- \counterPulseGenerator|s_cnt[13]~54\ = CARRY((!\counterPulseGenerator|s_cnt[12]~52\) # (!\counterPulseGenerator|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(13),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[12]~52\,
	combout => \counterPulseGenerator|s_cnt[13]~53_combout\,
	cout => \counterPulseGenerator|s_cnt[13]~54\);

-- Location: FF_X62_Y60_N1
\counterPulseGenerator|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[13]~53_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(13));

-- Location: LCCOMB_X62_Y60_N2
\counterPulseGenerator|s_cnt[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[14]~55_combout\ = (\counterPulseGenerator|s_cnt\(14) & (\counterPulseGenerator|s_cnt[13]~54\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(14) & (!\counterPulseGenerator|s_cnt[13]~54\ & VCC))
-- \counterPulseGenerator|s_cnt[14]~56\ = CARRY((\counterPulseGenerator|s_cnt\(14) & !\counterPulseGenerator|s_cnt[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(14),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[13]~54\,
	combout => \counterPulseGenerator|s_cnt[14]~55_combout\,
	cout => \counterPulseGenerator|s_cnt[14]~56\);

-- Location: FF_X62_Y60_N3
\counterPulseGenerator|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[14]~55_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(14));

-- Location: LCCOMB_X62_Y60_N4
\counterPulseGenerator|s_cnt[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[15]~57_combout\ = (\counterPulseGenerator|s_cnt\(15) & (!\counterPulseGenerator|s_cnt[14]~56\)) # (!\counterPulseGenerator|s_cnt\(15) & ((\counterPulseGenerator|s_cnt[14]~56\) # (GND)))
-- \counterPulseGenerator|s_cnt[15]~58\ = CARRY((!\counterPulseGenerator|s_cnt[14]~56\) # (!\counterPulseGenerator|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(15),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[14]~56\,
	combout => \counterPulseGenerator|s_cnt[15]~57_combout\,
	cout => \counterPulseGenerator|s_cnt[15]~58\);

-- Location: FF_X62_Y60_N5
\counterPulseGenerator|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[15]~57_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(15));

-- Location: LCCOMB_X62_Y60_N6
\counterPulseGenerator|s_cnt[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[16]~59_combout\ = (\counterPulseGenerator|s_cnt\(16) & (\counterPulseGenerator|s_cnt[15]~58\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(16) & (!\counterPulseGenerator|s_cnt[15]~58\ & VCC))
-- \counterPulseGenerator|s_cnt[16]~60\ = CARRY((\counterPulseGenerator|s_cnt\(16) & !\counterPulseGenerator|s_cnt[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(16),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[15]~58\,
	combout => \counterPulseGenerator|s_cnt[16]~59_combout\,
	cout => \counterPulseGenerator|s_cnt[16]~60\);

-- Location: FF_X62_Y60_N7
\counterPulseGenerator|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[16]~59_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(16));

-- Location: LCCOMB_X62_Y60_N8
\counterPulseGenerator|s_cnt[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[17]~61_combout\ = (\counterPulseGenerator|s_cnt\(17) & (!\counterPulseGenerator|s_cnt[16]~60\)) # (!\counterPulseGenerator|s_cnt\(17) & ((\counterPulseGenerator|s_cnt[16]~60\) # (GND)))
-- \counterPulseGenerator|s_cnt[17]~62\ = CARRY((!\counterPulseGenerator|s_cnt[16]~60\) # (!\counterPulseGenerator|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(17),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[16]~60\,
	combout => \counterPulseGenerator|s_cnt[17]~61_combout\,
	cout => \counterPulseGenerator|s_cnt[17]~62\);

-- Location: FF_X62_Y60_N9
\counterPulseGenerator|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[17]~61_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(17));

-- Location: LCCOMB_X62_Y60_N10
\counterPulseGenerator|s_cnt[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[18]~63_combout\ = (\counterPulseGenerator|s_cnt\(18) & (\counterPulseGenerator|s_cnt[17]~62\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(18) & (!\counterPulseGenerator|s_cnt[17]~62\ & VCC))
-- \counterPulseGenerator|s_cnt[18]~64\ = CARRY((\counterPulseGenerator|s_cnt\(18) & !\counterPulseGenerator|s_cnt[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(18),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[17]~62\,
	combout => \counterPulseGenerator|s_cnt[18]~63_combout\,
	cout => \counterPulseGenerator|s_cnt[18]~64\);

-- Location: FF_X62_Y60_N11
\counterPulseGenerator|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[18]~63_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(18));

-- Location: LCCOMB_X62_Y60_N12
\counterPulseGenerator|s_cnt[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[19]~65_combout\ = (\counterPulseGenerator|s_cnt\(19) & (!\counterPulseGenerator|s_cnt[18]~64\)) # (!\counterPulseGenerator|s_cnt\(19) & ((\counterPulseGenerator|s_cnt[18]~64\) # (GND)))
-- \counterPulseGenerator|s_cnt[19]~66\ = CARRY((!\counterPulseGenerator|s_cnt[18]~64\) # (!\counterPulseGenerator|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(19),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[18]~64\,
	combout => \counterPulseGenerator|s_cnt[19]~65_combout\,
	cout => \counterPulseGenerator|s_cnt[19]~66\);

-- Location: FF_X62_Y60_N13
\counterPulseGenerator|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[19]~65_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(19));

-- Location: LCCOMB_X62_Y60_N14
\counterPulseGenerator|s_cnt[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[20]~67_combout\ = (\counterPulseGenerator|s_cnt\(20) & (\counterPulseGenerator|s_cnt[19]~66\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(20) & (!\counterPulseGenerator|s_cnt[19]~66\ & VCC))
-- \counterPulseGenerator|s_cnt[20]~68\ = CARRY((\counterPulseGenerator|s_cnt\(20) & !\counterPulseGenerator|s_cnt[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(20),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[19]~66\,
	combout => \counterPulseGenerator|s_cnt[20]~67_combout\,
	cout => \counterPulseGenerator|s_cnt[20]~68\);

-- Location: FF_X62_Y60_N15
\counterPulseGenerator|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[20]~67_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(20));

-- Location: LCCOMB_X62_Y60_N16
\counterPulseGenerator|s_cnt[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[21]~69_combout\ = (\counterPulseGenerator|s_cnt\(21) & (!\counterPulseGenerator|s_cnt[20]~68\)) # (!\counterPulseGenerator|s_cnt\(21) & ((\counterPulseGenerator|s_cnt[20]~68\) # (GND)))
-- \counterPulseGenerator|s_cnt[21]~70\ = CARRY((!\counterPulseGenerator|s_cnt[20]~68\) # (!\counterPulseGenerator|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(21),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[20]~68\,
	combout => \counterPulseGenerator|s_cnt[21]~69_combout\,
	cout => \counterPulseGenerator|s_cnt[21]~70\);

-- Location: FF_X62_Y60_N17
\counterPulseGenerator|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[21]~69_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(21));

-- Location: LCCOMB_X62_Y60_N18
\counterPulseGenerator|s_cnt[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[22]~71_combout\ = (\counterPulseGenerator|s_cnt\(22) & (\counterPulseGenerator|s_cnt[21]~70\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(22) & (!\counterPulseGenerator|s_cnt[21]~70\ & VCC))
-- \counterPulseGenerator|s_cnt[22]~72\ = CARRY((\counterPulseGenerator|s_cnt\(22) & !\counterPulseGenerator|s_cnt[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(22),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[21]~70\,
	combout => \counterPulseGenerator|s_cnt[22]~71_combout\,
	cout => \counterPulseGenerator|s_cnt[22]~72\);

-- Location: FF_X62_Y60_N19
\counterPulseGenerator|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[22]~71_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(22));

-- Location: LCCOMB_X62_Y60_N20
\counterPulseGenerator|s_cnt[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[23]~73_combout\ = (\counterPulseGenerator|s_cnt\(23) & (!\counterPulseGenerator|s_cnt[22]~72\)) # (!\counterPulseGenerator|s_cnt\(23) & ((\counterPulseGenerator|s_cnt[22]~72\) # (GND)))
-- \counterPulseGenerator|s_cnt[23]~74\ = CARRY((!\counterPulseGenerator|s_cnt[22]~72\) # (!\counterPulseGenerator|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterPulseGenerator|s_cnt\(23),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[22]~72\,
	combout => \counterPulseGenerator|s_cnt[23]~73_combout\,
	cout => \counterPulseGenerator|s_cnt[23]~74\);

-- Location: FF_X62_Y60_N21
\counterPulseGenerator|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[23]~73_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(23));

-- Location: LCCOMB_X62_Y60_N28
\counterPulseGenerator|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|Equal0~6_combout\ = (((!\counterPulseGenerator|s_cnt\(23)) # (!\counterPulseGenerator|s_cnt\(20))) # (!\counterPulseGenerator|s_cnt\(22))) # (!\counterPulseGenerator|s_cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(21),
	datab => \counterPulseGenerator|s_cnt\(22),
	datac => \counterPulseGenerator|s_cnt\(20),
	datad => \counterPulseGenerator|s_cnt\(23),
	combout => \counterPulseGenerator|Equal0~6_combout\);

-- Location: LCCOMB_X62_Y60_N30
\counterPulseGenerator|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|Equal0~5_combout\ = (\counterPulseGenerator|s_cnt\(16)) # (((\counterPulseGenerator|s_cnt\(18)) # (!\counterPulseGenerator|s_cnt\(17))) # (!\counterPulseGenerator|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(16),
	datab => \counterPulseGenerator|s_cnt\(19),
	datac => \counterPulseGenerator|s_cnt\(17),
	datad => \counterPulseGenerator|s_cnt\(18),
	combout => \counterPulseGenerator|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y60_N22
\counterPulseGenerator|s_cnt[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[24]~75_combout\ = (\counterPulseGenerator|s_cnt\(24) & (\counterPulseGenerator|s_cnt[23]~74\ $ (GND))) # (!\counterPulseGenerator|s_cnt\(24) & (!\counterPulseGenerator|s_cnt[23]~74\ & VCC))
-- \counterPulseGenerator|s_cnt[24]~76\ = CARRY((\counterPulseGenerator|s_cnt\(24) & !\counterPulseGenerator|s_cnt[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(24),
	datad => VCC,
	cin => \counterPulseGenerator|s_cnt[23]~74\,
	combout => \counterPulseGenerator|s_cnt[24]~75_combout\,
	cout => \counterPulseGenerator|s_cnt[24]~76\);

-- Location: FF_X62_Y60_N23
\counterPulseGenerator|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[24]~75_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(24));

-- Location: LCCOMB_X62_Y60_N24
\counterPulseGenerator|s_cnt[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|s_cnt[25]~77_combout\ = \counterPulseGenerator|s_cnt[24]~76\ $ (\counterPulseGenerator|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \counterPulseGenerator|s_cnt\(25),
	cin => \counterPulseGenerator|s_cnt[24]~76\,
	combout => \counterPulseGenerator|s_cnt[25]~77_combout\);

-- Location: FF_X62_Y60_N25
\counterPulseGenerator|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|s_cnt[25]~77_combout\,
	sclr => \counterPulseGenerator|s_cnt[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|s_cnt\(25));

-- Location: LCCOMB_X62_Y60_N26
\counterPulseGenerator|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|Equal0~7_combout\ = (\counterPulseGenerator|s_cnt\(24)) # (!\counterPulseGenerator|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counterPulseGenerator|s_cnt\(24),
	datad => \counterPulseGenerator|s_cnt\(25),
	combout => \counterPulseGenerator|Equal0~7_combout\);

-- Location: LCCOMB_X62_Y61_N2
\counterPulseGenerator|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|Equal0~1_combout\ = (\counterPulseGenerator|s_cnt\(7)) # (((!\counterPulseGenerator|s_cnt\(5)) # (!\counterPulseGenerator|s_cnt\(4))) # (!\counterPulseGenerator|s_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(7),
	datab => \counterPulseGenerator|s_cnt\(6),
	datac => \counterPulseGenerator|s_cnt\(4),
	datad => \counterPulseGenerator|s_cnt\(5),
	combout => \counterPulseGenerator|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y60_N14
\counterPulseGenerator|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|Equal0~3_combout\ = (((!\counterPulseGenerator|s_cnt\(12)) # (!\counterPulseGenerator|s_cnt\(13))) # (!\counterPulseGenerator|s_cnt\(15))) # (!\counterPulseGenerator|s_cnt\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(14),
	datab => \counterPulseGenerator|s_cnt\(15),
	datac => \counterPulseGenerator|s_cnt\(13),
	datad => \counterPulseGenerator|s_cnt\(12),
	combout => \counterPulseGenerator|Equal0~3_combout\);

-- Location: LCCOMB_X62_Y61_N0
\counterPulseGenerator|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|Equal0~0_combout\ = (((!\counterPulseGenerator|s_cnt\(3)) # (!\counterPulseGenerator|s_cnt\(2))) # (!\counterPulseGenerator|s_cnt\(1))) # (!\counterPulseGenerator|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(0),
	datab => \counterPulseGenerator|s_cnt\(1),
	datac => \counterPulseGenerator|s_cnt\(2),
	datad => \counterPulseGenerator|s_cnt\(3),
	combout => \counterPulseGenerator|Equal0~0_combout\);

-- Location: LCCOMB_X62_Y61_N4
\counterPulseGenerator|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|Equal0~2_combout\ = (\counterPulseGenerator|s_cnt\(10)) # ((\counterPulseGenerator|s_cnt\(9)) # ((\counterPulseGenerator|s_cnt\(8)) # (\counterPulseGenerator|s_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|s_cnt\(10),
	datab => \counterPulseGenerator|s_cnt\(9),
	datac => \counterPulseGenerator|s_cnt\(8),
	datad => \counterPulseGenerator|s_cnt\(11),
	combout => \counterPulseGenerator|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y60_N20
\counterPulseGenerator|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|Equal0~4_combout\ = (\counterPulseGenerator|Equal0~1_combout\) # ((\counterPulseGenerator|Equal0~3_combout\) # ((\counterPulseGenerator|Equal0~0_combout\) # (\counterPulseGenerator|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|Equal0~1_combout\,
	datab => \counterPulseGenerator|Equal0~3_combout\,
	datac => \counterPulseGenerator|Equal0~0_combout\,
	datad => \counterPulseGenerator|Equal0~2_combout\,
	combout => \counterPulseGenerator|Equal0~4_combout\);

-- Location: LCCOMB_X63_Y60_N18
\counterPulseGenerator|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|Equal0~8_combout\ = (\counterPulseGenerator|Equal0~6_combout\) # ((\counterPulseGenerator|Equal0~5_combout\) # ((\counterPulseGenerator|Equal0~7_combout\) # (\counterPulseGenerator|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterPulseGenerator|Equal0~6_combout\,
	datab => \counterPulseGenerator|Equal0~5_combout\,
	datac => \counterPulseGenerator|Equal0~7_combout\,
	datad => \counterPulseGenerator|Equal0~4_combout\,
	combout => \counterPulseGenerator|Equal0~8_combout\);

-- Location: LCCOMB_X63_Y60_N28
\counterPulseGenerator|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterPulseGenerator|pulse~0_combout\ = (!\debounceKEY0|s_pulsedOut~q\ & !\counterPulseGenerator|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_pulsedOut~q\,
	datad => \counterPulseGenerator|Equal0~8_combout\,
	combout => \counterPulseGenerator|pulse~0_combout\);

-- Location: FF_X63_Y60_N29
\counterPulseGenerator|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counterPulseGenerator|pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterPulseGenerator|pulse~q\);

-- Location: LCCOMB_X65_Y61_N28
\counter|s_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[3]~1_combout\ = (\debounceKEY0|s_pulsedOut~q\) # ((\s_startStop~q\ & \counterPulseGenerator|pulse~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startStop~q\,
	datac => \debounceKEY0|s_pulsedOut~q\,
	datad => \counterPulseGenerator|pulse~q\,
	combout => \counter|s_count[3]~1_combout\);

-- Location: FF_X65_Y61_N17
\counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter|s_count~3_combout\,
	ena => \counter|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(0));

-- Location: LCCOMB_X65_Y61_N30
\counter|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~2_combout\ = (!\debounceKEY0|s_pulsedOut~q\ & (\counter|s_count\(1) $ (!\counter|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceKEY0|s_pulsedOut~q\,
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(0),
	combout => \counter|s_count~2_combout\);

-- Location: FF_X65_Y61_N31
\counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter|s_count~2_combout\,
	ena => \counter|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(1));

-- Location: LCCOMB_X65_Y61_N24
\counter|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~0_combout\ = (!\debounceKEY0|s_pulsedOut~q\ & (\counter|s_count\(2) $ (((!\counter|s_count\(1) & !\counter|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(1),
	datab => \counter|s_count\(0),
	datac => \counter|s_count\(2),
	datad => \debounceKEY0|s_pulsedOut~q\,
	combout => \counter|s_count~0_combout\);

-- Location: FF_X65_Y61_N25
\counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter|s_count~0_combout\,
	ena => \counter|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(2));

-- Location: LCCOMB_X65_Y61_N10
\counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~0_combout\ = \counter|s_count\(3) $ (((\counter|s_count\(0)) # ((\counter|s_count\(1)) # (\counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \counter|s_count\(0),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(2),
	combout => \counter|Add0~0_combout\);

-- Location: LCCOMB_X65_Y61_N6
\counter|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~4_combout\ = (!\debounceKEY0|s_pulsedOut~q\ & !\counter|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceKEY0|s_pulsedOut~q\,
	datad => \counter|Add0~0_combout\,
	combout => \counter|s_count~4_combout\);

-- Location: FF_X65_Y61_N7
\counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter|s_count~4_combout\,
	ena => \counter|s_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(3));

-- Location: LCCOMB_X66_Y61_N12
\sevenSegmentDisplay|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~8_combout\ = (\counter|s_count\(3) & (\counter|s_count\(0) & (\counter|s_count\(1) $ (\counter|s_count\(2))))) # (!\counter|s_count\(3) & (!\counter|s_count\(1) & (\counter|s_count\(0) $ (\counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(3),
	datad => \counter|s_count\(2),
	combout => \sevenSegmentDisplay|decOut_n~8_combout\);

-- Location: LCCOMB_X66_Y61_N6
\sevenSegmentDisplay|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~19_combout\ = (\sevenSegmentDisplay|decOut_n~8_combout\) # ((!\displayPulseGenerator|blink~q\ & !\s_startStop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|blink~q\,
	datac => \s_startStop~q\,
	datad => \sevenSegmentDisplay|decOut_n~8_combout\,
	combout => \sevenSegmentDisplay|decOut_n~19_combout\);

-- Location: LCCOMB_X66_Y61_N18
\sevenSegmentDisplay|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~9_combout\ = (\counter|s_count\(1) & ((\counter|s_count\(0) & (\counter|s_count\(3))) # (!\counter|s_count\(0) & ((\counter|s_count\(2)))))) # (!\counter|s_count\(1) & (\counter|s_count\(2) & (\counter|s_count\(0) $ 
-- (\counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(3),
	datad => \counter|s_count\(2),
	combout => \sevenSegmentDisplay|decOut_n~9_combout\);

-- Location: LCCOMB_X66_Y61_N8
\sevenSegmentDisplay|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~20_combout\ = (\sevenSegmentDisplay|decOut_n~9_combout\) # ((!\displayPulseGenerator|blink~q\ & !\s_startStop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|blink~q\,
	datac => \s_startStop~q\,
	datad => \sevenSegmentDisplay|decOut_n~9_combout\,
	combout => \sevenSegmentDisplay|decOut_n~20_combout\);

-- Location: LCCOMB_X66_Y61_N28
\sevenSegmentDisplay|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~10_combout\ = (\counter|s_count\(3) & (\counter|s_count\(2) & ((\counter|s_count\(1)) # (!\counter|s_count\(0))))) # (!\counter|s_count\(3) & (!\counter|s_count\(0) & (\counter|s_count\(1) & !\counter|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(3),
	datad => \counter|s_count\(2),
	combout => \sevenSegmentDisplay|decOut_n~10_combout\);

-- Location: LCCOMB_X66_Y61_N2
\sevenSegmentDisplay|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~21_combout\ = (\sevenSegmentDisplay|decOut_n~10_combout\) # ((!\displayPulseGenerator|blink~q\ & !\s_startStop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|blink~q\,
	datac => \s_startStop~q\,
	datad => \sevenSegmentDisplay|decOut_n~10_combout\,
	combout => \sevenSegmentDisplay|decOut_n~21_combout\);

-- Location: LCCOMB_X65_Y61_N22
\sevenSegmentDisplay|decOut_n[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n[3]~11_combout\ = (\counter|s_count\(3) & (\counter|s_count\(0) & (\counter|s_count\(1) & \counter|s_count\(2)))) # (!\counter|s_count\(3) & (!\counter|s_count\(0) & (!\counter|s_count\(1) & !\counter|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \counter|s_count\(0),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(2),
	combout => \sevenSegmentDisplay|decOut_n[3]~11_combout\);

-- Location: LCCOMB_X65_Y61_N20
\sevenSegmentDisplay|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|Equal7~0_combout\ = (\counter|s_count\(3) & (\counter|s_count\(0) & (\counter|s_count\(1) & \counter|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \counter|s_count\(0),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(2),
	combout => \sevenSegmentDisplay|Equal7~0_combout\);

-- Location: LCCOMB_X65_Y61_N4
\sevenSegmentDisplay|decOut_n[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n[3]~12_combout\ = (\counter|s_count\(3) & ((\counter|s_count\(0)) # ((\counter|s_count\(2)) # (!\counter|s_count\(1))))) # (!\counter|s_count\(3) & ((\counter|s_count\(0) & (\counter|s_count\(1) $ (\counter|s_count\(2)))) # 
-- (!\counter|s_count\(0) & ((\counter|s_count\(1)) # (!\counter|s_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \counter|s_count\(0),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(2),
	combout => \sevenSegmentDisplay|decOut_n[3]~12_combout\);

-- Location: LCCOMB_X66_Y61_N24
\s_enableDisplay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_enableDisplay~0_combout\ = (\displayPulseGenerator|blink~q\) # (\s_startStop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|blink~q\,
	datac => \s_startStop~q\,
	combout => \s_enableDisplay~0_combout\);

-- Location: LCCOMB_X65_Y61_N18
\sevenSegmentDisplay|decOut_n[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n[3]~13_combout\ = ((\sevenSegmentDisplay|decOut_n[3]~11_combout\ & (\sevenSegmentDisplay|Equal7~0_combout\)) # (!\sevenSegmentDisplay|decOut_n[3]~11_combout\ & ((!\sevenSegmentDisplay|decOut_n[3]~12_combout\)))) # 
-- (!\s_enableDisplay~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegmentDisplay|decOut_n[3]~11_combout\,
	datab => \sevenSegmentDisplay|Equal7~0_combout\,
	datac => \sevenSegmentDisplay|decOut_n[3]~12_combout\,
	datad => \s_enableDisplay~0_combout\,
	combout => \sevenSegmentDisplay|decOut_n[3]~13_combout\);

-- Location: LCCOMB_X66_Y61_N14
\sevenSegmentDisplay|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~14_combout\ = (\counter|s_count\(1) & (\counter|s_count\(0) & (!\counter|s_count\(3)))) # (!\counter|s_count\(1) & ((\counter|s_count\(2) & ((!\counter|s_count\(3)))) # (!\counter|s_count\(2) & (\counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(3),
	datad => \counter|s_count\(2),
	combout => \sevenSegmentDisplay|decOut_n~14_combout\);

-- Location: LCCOMB_X66_Y61_N4
\sevenSegmentDisplay|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~22_combout\ = (\sevenSegmentDisplay|decOut_n~14_combout\) # ((!\displayPulseGenerator|blink~q\ & !\s_startStop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayPulseGenerator|blink~q\,
	datab => \sevenSegmentDisplay|decOut_n~14_combout\,
	datac => \s_startStop~q\,
	combout => \sevenSegmentDisplay|decOut_n~22_combout\);

-- Location: LCCOMB_X66_Y61_N0
\sevenSegmentDisplay|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~15_combout\ = (\counter|s_count\(1) & (!\counter|s_count\(0) & !\counter|s_count\(2))) # (!\counter|s_count\(1) & (\counter|s_count\(0) & \counter|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(0),
	datad => \counter|s_count\(2),
	combout => \sevenSegmentDisplay|decOut_n~15_combout\);

-- Location: LCCOMB_X66_Y61_N22
\sevenSegmentDisplay|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n~16_combout\ = ((\counter|s_count\(0) & (\sevenSegmentDisplay|decOut_n~15_combout\ $ (!\counter|s_count\(3)))) # (!\counter|s_count\(0) & (\sevenSegmentDisplay|decOut_n~15_combout\ & !\counter|s_count\(3)))) # 
-- (!\s_enableDisplay~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \sevenSegmentDisplay|decOut_n~15_combout\,
	datac => \counter|s_count\(3),
	datad => \s_enableDisplay~0_combout\,
	combout => \sevenSegmentDisplay|decOut_n~16_combout\);

-- Location: LCCOMB_X65_Y61_N12
\sevenSegmentDisplay|decOut_n[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n[6]~17_combout\ = (\counter|s_count\(3) & (!\counter|s_count\(0) & (!\counter|s_count\(1) & \counter|s_count\(2)))) # (!\counter|s_count\(3) & (\counter|s_count\(0) & (\counter|s_count\(1) $ (!\counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \counter|s_count\(0),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(2),
	combout => \sevenSegmentDisplay|decOut_n[6]~17_combout\);

-- Location: LCCOMB_X65_Y61_N26
\sevenSegmentDisplay|decOut_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDisplay|decOut_n[6]~18_combout\ = ((\sevenSegmentDisplay|decOut_n[3]~11_combout\ & ((!\sevenSegmentDisplay|Equal7~0_combout\))) # (!\sevenSegmentDisplay|decOut_n[3]~11_combout\ & (\sevenSegmentDisplay|decOut_n[6]~17_combout\))) # 
-- (!\s_enableDisplay~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenSegmentDisplay|decOut_n[6]~17_combout\,
	datab => \sevenSegmentDisplay|Equal7~0_combout\,
	datac => \sevenSegmentDisplay|decOut_n[3]~11_combout\,
	datad => \s_enableDisplay~0_combout\,
	combout => \sevenSegmentDisplay|decOut_n[6]~18_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


