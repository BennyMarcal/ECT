-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/17/2022 11:22:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MiniProjeto_Demo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MiniProjeto_Demo_vhd_vec_tst IS
END MiniProjeto_Demo_vhd_vec_tst;
ARCHITECTURE MiniProjeto_Demo_arch OF MiniProjeto_Demo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(0 DOWNTO 0);
COMPONENT MiniProjeto_Demo
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MiniProjeto_Demo
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX0 => HEX0,
	KEY => KEY,
	LEDR => LEDR,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
LOOP
	KEY(0) <= '0';
	WAIT FOR 10000 ps;
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_0;

-- SW
t_prcs_SW: PROCESS
BEGIN
	SW <= '0';
WAIT;
END PROCESS t_prcs_SW;

-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '1';
WAIT;
END PROCESS t_prcs_SW_0;
END MiniProjeto_Demo_arch;
