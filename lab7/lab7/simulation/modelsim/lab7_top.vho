-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "11/06/2017 05:18:49"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab7_top IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END lab7_top;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~3_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~15_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU|Add0~10\ : std_logic;
SIGNAL \CPU|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~11_combout\ : std_logic;
SIGNAL \CPU|statemachine|mem_cmd[0]~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~16_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~19_combout\ : std_logic;
SIGNAL \CPU|mem_addr[2]~3_combout\ : std_logic;
SIGNAL \CPU|mem_addr[3]~4_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~11_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr26~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~12_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux11~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux11~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|loadir~combout\ : std_logic;
SIGNAL \CPU|instructionReg|out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|statemachine|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor7~combout\ : std_logic;
SIGNAL \CPU|statemachine|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~31_combout\ : std_logic;
SIGNAL \CPU|statemachine|Equal3~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~5_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~3_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~8_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~7_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~9_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~10_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~29_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr13~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr13~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr29~combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux10~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux10~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load5~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load6~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load4~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load3~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load2~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~5_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~17_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~17_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~27_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~14_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~12_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~4_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~5_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~30_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~4_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~22_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr18~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~18_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~10_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr18~combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~20_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~2_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~20_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~26_combout\ : std_logic;
SIGNAL \CPU|statemachine|loada~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~13_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr23~0_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[5]~5_combout\ : std_logic;
SIGNAL \CPU|mem_addr[6]~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \x[7]~14_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux6~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux4~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector4~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector4~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector4~2_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[12]~13_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[13]~9_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[14]~10_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[15]~11_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[11]~12_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[10]~25_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[10]~14_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[9]~15_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[9]~23_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[8]~8_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[8]~13_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[7]~7_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[7]~11_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[6]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[6]~9_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~22\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~26\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~30\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~38\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~66\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~62\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~54\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~58\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~42\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~46\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~49_sumout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux0~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~14_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~16_combout\ : std_logic;
SIGNAL \CPU|statemachine|loads~combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr20~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr20~combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR6|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector0~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector0~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[14]~17_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~45_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[14]~18_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR4|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector1~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector1~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[13]~15_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~41_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[13]~16_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux2~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux2~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector2~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector2~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector2~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[12]~21_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~57_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[12]~22_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux3~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux3~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR7|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector3~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector3~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector3~2_combout\ : std_logic;
SIGNAL \CPU|DP|bRegister|out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Bin[11]~19_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~53_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[11]~20_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux4~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux5~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR7|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR6|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector5~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector5~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector5~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~61_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[10]~26_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux5~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux6~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector6~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR2|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector6~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector6~2_combout\ : std_logic;
SIGNAL \CPU|DP|bRegister|out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~65_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[9]~24_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux6~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux7~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux7~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR4|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector7~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector7~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector7~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~37_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[8]~14_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux7~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux8~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux8~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector8~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR2|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector8~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector8~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[7]~12_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux8~0_combout\ : std_logic;
SIGNAL \CPU|mem_addr[7]~7_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux12~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux12~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector12~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector12~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector12~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[4]~7_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[4]~4_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[3]~3_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \x[2]~15_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux13~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux13~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector13~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector13~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector13~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[3]~5_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[2]~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[2]~3_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[1]~1_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \x[0]~12_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux15~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux15~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector15~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR2|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector15~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector15~2_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[0]~0_combout\ : std_logic;
SIGNAL \CPU|DP|bRegister|out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~34_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~2\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~6\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~10\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~14\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~18\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[5]~feeder_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux10~0_combout\ : std_logic;
SIGNAL \CPU|mem_addr[5]~6_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \x[1]~9_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \x[6]~8_combout\ : std_logic;
SIGNAL \x[9]~7_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr13~combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr11~combout\ : std_logic;
SIGNAL \CPU|muxintoregister|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load7~combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector11~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector11~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector11~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[4]~8_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux11~0_combout\ : std_logic;
SIGNAL \CPU|mem_addr[4]~5_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \x[4]~5_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[1]~1_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[1]~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux14~0_combout\ : std_logic;
SIGNAL \CPU|mem_addr[1]~2_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \x[15]~2_combout\ : std_logic;
SIGNAL \CPU|instructionReg|out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|statemachine|Equal4~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|Equal7~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr34~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr34~combout\ : std_logic;
SIGNAL \CPU|mem_addr[0]~1_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \x[5]~11_combout\ : std_logic;
SIGNAL \x[8]~10_combout\ : std_logic;
SIGNAL \CPU|muxintoregister|Mux2~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux9~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux9~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector9~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector9~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector9~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[6]~10_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux9~0_combout\ : std_logic;
SIGNAL \e1~4_combout\ : std_logic;
SIGNAL \x[12]~4_combout\ : std_logic;
SIGNAL \CPU|instructionReg|out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|statemachine|Equal0~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~7_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~8_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~9_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr30~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~28_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr30~4_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr30~5_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~19_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr30~2_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr30~3_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~25_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~23_combout\ : std_logic;
SIGNAL \CPU|statemachine|next_reset_state[3]~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr5~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr5~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr5~3_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr30~6_combout\ : std_logic;
SIGNAL \write~combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \x[11]~3_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[2]~4_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux13~0_combout\ : std_logic;
SIGNAL \e1~3_combout\ : std_logic;
SIGNAL \e1~combout\ : std_logic;
SIGNAL \x[3]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[1]~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[3]~6_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux12~0_combout\ : std_logic;
SIGNAL \e1~1_combout\ : std_logic;
SIGNAL \x[14]~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|Equal5~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|loadadr~0_combout\ : std_logic;
SIGNAL \e1~2_combout\ : std_logic;
SIGNAL \x[13]~0_combout\ : std_logic;
SIGNAL \CPU|instructionReg|out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|statemachine|Equal4~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~6_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|statemachine|WideOr5~2_combout\ : std_logic;
SIGNAL \CPU|statemachine|next_reset_state[1]~5_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~24_combout\ : std_logic;
SIGNAL \CPU|statemachine|next_reset_state[2]~3_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|Equal6~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~18_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr30~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|next_reset_state[3]~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|next_reset_state[3]~2_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~6_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~21_combout\ : std_logic;
SIGNAL \CPU|statemachine|next_reset_state[4]~6_combout\ : std_logic;
SIGNAL \CPU|statemachine|next_reset_state[4]~7_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~13_combout\ : std_logic;
SIGNAL \CPU|statemachine|always0~15_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr9~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|next_reset_state[0]~4_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideNor16~21_combout\ : std_logic;
SIGNAL \CPU|statemachine|WideOr30~combout\ : std_logic;
SIGNAL \CPU|Add0~26\ : std_logic;
SIGNAL \CPU|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|Add0~30\ : std_logic;
SIGNAL \CPU|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|Add0~34\ : std_logic;
SIGNAL \CPU|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|Add0~14\ : std_logic;
SIGNAL \CPU|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|Add0~18\ : std_logic;
SIGNAL \CPU|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|Add0~6\ : std_logic;
SIGNAL \CPU|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|Add0~2\ : std_logic;
SIGNAL \CPU|Add0~9_sumout\ : std_logic;
SIGNAL \e1~0_combout\ : std_logic;
SIGNAL \x[10]~13_combout\ : std_logic;
SIGNAL \CPU|muxintoregister|Mux0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux14~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux14~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector14~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector14~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector14~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[0]~feeder_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux15~0_combout\ : std_logic;
SIGNAL \e2~combout\ : std_logic;
SIGNAL \ledREG|out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|DP|cRegister|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|bRegister|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|PCReg|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DP|aRegister|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|statemachine|STATE|out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CPU|instructionReg|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|statemachine|mem_cmd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CPU|DataAddress|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR7|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR0|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR1|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR3|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR2|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR4|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR6|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR5|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|bRegister|ALT_INV_out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|bRegister|ALT_INV_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instructionReg|ALT_INV_out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|cRegister|ALT_INV_out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~31_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~30_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[9]~15_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[10]~14_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[10]~26_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[10]~25_combout\ : std_logic;
SIGNAL \CPU|DP|aRegister|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|ALT_INV_Bin[9]~24_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[9]~23_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[12]~13_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR5|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR6|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR4|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR2|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR3|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR1|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR0|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR7|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[11]~12_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[15]~11_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[14]~10_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[13]~9_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[8]~8_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[12]~22_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[12]~21_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[11]~20_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[11]~19_combout\ : std_logic;
SIGNAL \CPU|DP|bRegister|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rtl~10_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~5_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~4_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[14]~18_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[14]~17_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[13]~16_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[13]~15_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr29~combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr26~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[7]~7_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[6]~6_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[5]~5_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~3_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[4]~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[3]~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector12~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[2]~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[1]~1_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[8]~14_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[8]~13_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_e1~combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \CPU|muxintoregister|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CPU|instructionReg|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|muxintoregister|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \CPU|muxintoregister|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr13~combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr11~combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[0]~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[7]~12_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[7]~11_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[6]~10_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[6]~9_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~9_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~8_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[4]~8_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[4]~7_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[3]~6_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[3]~5_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[2]~4_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[2]~3_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[1]~2_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[1]~1_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[1]~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr30~5_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr30~4_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr13~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr13~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~29_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr5~3_combout\ : std_logic;
SIGNAL \ALT_INV_e1~4_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_next_reset_state[4]~6_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~28_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr30~3_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr30~2_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~27_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr5~2_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr9~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr18~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_loada~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~26_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~21_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_loadadr~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~25_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~24_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr5~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~23_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~22_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~21_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_loadir~combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_next_reset_state[3]~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_next_reset_state[3]~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr30~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~20_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~20_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~19_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr30~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~18_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~17_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr20~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_loads~combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~16_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~15_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~14_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~7_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr23~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~13_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~12_combout\ : std_logic;
SIGNAL \ALT_INV_e1~3_combout\ : std_logic;
SIGNAL \CPU|DataAddress|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_e1~2_combout\ : std_logic;
SIGNAL \ALT_INV_e1~1_combout\ : std_logic;
SIGNAL \ALT_INV_e1~0_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[6]~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr34~combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~11_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideOr34~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~10_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~19_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_mem_cmd\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CPU|statemachine|ALT_INV_mem_cmd[0]~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~9_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~8_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~18_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~17_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~7_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~16_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~6_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~15_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~14_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~13_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~12_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~11_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~10_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~9_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~8_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor7~combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~7_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~6_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~5_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~4_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~3_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~2_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~1_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|ALT_INV_WideNor16~0_combout\ : std_logic;
SIGNAL \CPU|statemachine|STATE|ALT_INV_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PCReg|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \CPU|DP|cRegister|out\(15) & 
\CPU|DP|cRegister|out\(14) & \CPU|DP|cRegister|out\(13) & \CPU|DP|cRegister|out\(12) & \CPU|DP|cRegister|out\(11) & \CPU|DP|cRegister|out\(10) & \CPU|DP|cRegister|out\(9) & \CPU|DP|cRegister|out\(8) & \CPU|DP|cRegister|out\(7) & 
\CPU|DP|cRegister|out\(6) & \CPU|DP|cRegister|out\(5) & \CPU|DP|cRegister|out\(4) & \CPU|DP|cRegister|out\(3) & \CPU|DP|cRegister|out\(2) & \CPU|DP|cRegister|out\(1) & \CPU|DP|cRegister|out\(0));

\MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\CPU|mem_addr[7]~7_combout\ & \CPU|mem_addr[6]~0_combout\ & \CPU|mem_addr[5]~6_combout\ & \CPU|mem_addr[4]~5_combout\ & \CPU|mem_addr[3]~4_combout\ & \CPU|mem_addr[2]~3_combout\ & 
\CPU|mem_addr[1]~2_combout\ & \CPU|mem_addr[0]~1_combout\);

\MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\CPU|mem_addr[7]~7_combout\ & \CPU|mem_addr[6]~0_combout\ & \CPU|mem_addr[5]~6_combout\ & \CPU|mem_addr[4]~5_combout\ & \CPU|mem_addr[3]~4_combout\ & \CPU|mem_addr[2]~3_combout\ & 
\CPU|mem_addr[1]~2_combout\ & \CPU|mem_addr[0]~1_combout\);

\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\MEM|mem_rtl_0|auto_generated|ram_block1a1\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\MEM|mem_rtl_0|auto_generated|ram_block1a2\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\MEM|mem_rtl_0|auto_generated|ram_block1a3\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\MEM|mem_rtl_0|auto_generated|ram_block1a4\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\MEM|mem_rtl_0|auto_generated|ram_block1a5\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\MEM|mem_rtl_0|auto_generated|ram_block1a6\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\MEM|mem_rtl_0|auto_generated|ram_block1a7\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\MEM|mem_rtl_0|auto_generated|ram_block1a8\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\MEM|mem_rtl_0|auto_generated|ram_block1a9\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\MEM|mem_rtl_0|auto_generated|ram_block1a10\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\MEM|mem_rtl_0|auto_generated|ram_block1a11\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\MEM|mem_rtl_0|auto_generated|ram_block1a12\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\MEM|mem_rtl_0|auto_generated|ram_block1a13\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\MEM|mem_rtl_0|auto_generated|ram_block1a14\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\MEM|mem_rtl_0|auto_generated|ram_block1a15\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\CPU|DP|bRegister|ALT_INV_out[12]~DUPLICATE_q\ <= NOT \CPU|DP|bRegister|out[12]~DUPLICATE_q\;
\CPU|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\ <= NOT \CPU|DP|bRegister|out[9]~DUPLICATE_q\;
\CPU|DP|bRegister|ALT_INV_out[0]~DUPLICATE_q\ <= NOT \CPU|DP|bRegister|out[0]~DUPLICATE_q\;
\CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\ <= NOT \CPU|instructionReg|out[11]~DUPLICATE_q\;
\CPU|instructionReg|ALT_INV_out[15]~DUPLICATE_q\ <= NOT \CPU|instructionReg|out[15]~DUPLICATE_q\;
\CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\ <= NOT \CPU|instructionReg|out[14]~DUPLICATE_q\;
\CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\ <= NOT \CPU|instructionReg|out[13]~DUPLICATE_q\;
\CPU|DP|cRegister|ALT_INV_out[14]~DUPLICATE_q\ <= NOT \CPU|DP|cRegister|out[14]~DUPLICATE_q\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\CPU|statemachine|ALT_INV_always0~31_combout\ <= NOT \CPU|statemachine|always0~31_combout\;
\CPU|statemachine|ALT_INV_always0~30_combout\ <= NOT \CPU|statemachine|always0~30_combout\;
\CPU|DP|ALT_INV_Ain[9]~15_combout\ <= NOT \CPU|DP|Ain[9]~15_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux5~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux5~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux4~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux4~0_combout\;
\CPU|DP|ALT_INV_Ain[10]~14_combout\ <= NOT \CPU|DP|Ain[10]~14_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux0~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux3~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux3~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux1~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux1~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux2~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux2~0_combout\;
\CPU|DP|ALT_INV_Bin[10]~26_combout\ <= NOT \CPU|DP|Bin[10]~26_combout\;
\CPU|DP|ALT_INV_Bin[10]~25_combout\ <= NOT \CPU|DP|Bin[10]~25_combout\;
\CPU|DP|aRegister|ALT_INV_out\(10) <= NOT \CPU|DP|aRegister|out\(10);
\CPU|DP|ALT_INV_Bin[9]~24_combout\ <= NOT \CPU|DP|Bin[9]~24_combout\;
\CPU|DP|ALT_INV_Bin[9]~23_combout\ <= NOT \CPU|DP|Bin[9]~23_combout\;
\CPU|DP|aRegister|ALT_INV_out\(9) <= NOT \CPU|DP|aRegister|out\(9);
\CPU|DP|muxintoregister|ALT_INV_Mux6~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux6~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux6~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux6~0_combout\;
\CPU|DP|ALT_INV_Ain[12]~13_combout\ <= NOT \CPU|DP|Ain[12]~13_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector5~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector5~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|toR5|out\(10);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|toR6|out\(10);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|toR4|out\(10);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector5~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector5~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|toR2|out\(10);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|toR3|out\(10);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|toR1|out\(10);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|toR0|out\(10);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|toR7|out\(10);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector4~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector4~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|toR5|out\(11);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|toR6|out\(11);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|toR4|out\(11);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector4~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector4~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|toR2|out\(11);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|toR3|out\(11);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|toR1|out\(11);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|toR0|out\(11);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|toR7|out\(11);
\CPU|DP|ALT_INV_Ain[11]~12_combout\ <= NOT \CPU|DP|Ain[11]~12_combout\;
\CPU|DP|ALT_INV_Ain[15]~11_combout\ <= NOT \CPU|DP|Ain[15]~11_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector0~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector0~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|toR5|out\(15);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|toR6|out\(15);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|toR4|out\(15);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector0~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector0~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|toR2|out\(15);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|toR3|out\(15);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|toR1|out\(15);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|toR0|out\(15);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|toR7|out\(15);
\CPU|DP|ALT_INV_Ain[14]~10_combout\ <= NOT \CPU|DP|Ain[14]~10_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector3~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector3~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|toR5|out\(12);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|toR6|out\(12);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|toR4|out\(12);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector3~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector3~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|toR2|out\(12);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|toR3|out\(12);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|toR1|out\(12);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|toR0|out\(12);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|toR7|out\(12);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector1~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector1~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|toR5|out\(14);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|toR6|out\(14);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|toR4|out\(14);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector1~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector1~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|toR2|out\(14);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|toR3|out\(14);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|toR1|out\(14);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|toR0|out\(14);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|toR7|out\(14);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector2~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector2~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|toR5|out\(13);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|toR6|out\(13);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|toR4|out\(13);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector2~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector2~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|toR2|out\(13);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|toR3|out\(13);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|toR1|out\(13);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|toR0|out\(13);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|toR7|out\(13);
\CPU|DP|ALT_INV_Ain[13]~9_combout\ <= NOT \CPU|DP|Ain[13]~9_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux7~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux7~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux7~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux8~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux8~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux8~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux8~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux9~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux9~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux9~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux9~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux10~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux10~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux10~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux10~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux11~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux11~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux11~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux11~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux12~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux12~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux12~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux12~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux13~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux13~0_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector6~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector6~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|toR5|out\(9);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|toR6|out\(9);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|toR4|out\(9);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector6~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector6~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|toR2|out\(9);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|toR3|out\(9);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|toR1|out\(9);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|toR0|out\(9);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|toR7|out\(9);
\CPU|DP|ALT_INV_Ain[8]~8_combout\ <= NOT \CPU|DP|Ain[8]~8_combout\;
\CPU|DP|ALT_INV_Bin[12]~22_combout\ <= NOT \CPU|DP|Bin[12]~22_combout\;
\CPU|DP|ALT_INV_Bin[12]~21_combout\ <= NOT \CPU|DP|Bin[12]~21_combout\;
\CPU|DP|aRegister|ALT_INV_out\(12) <= NOT \CPU|DP|aRegister|out\(12);
\CPU|DP|ALT_INV_Bin[11]~20_combout\ <= NOT \CPU|DP|Bin[11]~20_combout\;
\CPU|DP|ALT_INV_Bin[11]~19_combout\ <= NOT \CPU|DP|Bin[11]~19_combout\;
\CPU|DP|bRegister|ALT_INV_out\(10) <= NOT \CPU|DP|bRegister|out\(10);
\CPU|DP|bRegister|ALT_INV_out\(11) <= NOT \CPU|DP|bRegister|out\(11);
\CPU|DP|aRegister|ALT_INV_out\(11) <= NOT \CPU|DP|aRegister|out\(11);
\ALT_INV_rtl~10_combout\ <= NOT \rtl~10_combout\;
\ALT_INV_rtl~5_combout\ <= NOT \rtl~5_combout\;
\ALT_INV_rtl~4_combout\ <= NOT \rtl~4_combout\;
\CPU|DP|aRegister|ALT_INV_out\(15) <= NOT \CPU|DP|aRegister|out\(15);
\CPU|DP|ALT_INV_Bin[14]~18_combout\ <= NOT \CPU|DP|Bin[14]~18_combout\;
\CPU|DP|ALT_INV_Bin[14]~17_combout\ <= NOT \CPU|DP|Bin[14]~17_combout\;
\CPU|DP|bRegister|ALT_INV_out\(15) <= NOT \CPU|DP|bRegister|out\(15);
\CPU|DP|aRegister|ALT_INV_out\(14) <= NOT \CPU|DP|aRegister|out\(14);
\CPU|DP|ALT_INV_Bin[13]~16_combout\ <= NOT \CPU|DP|Bin[13]~16_combout\;
\CPU|DP|ALT_INV_Bin[13]~15_combout\ <= NOT \CPU|DP|Bin[13]~15_combout\;
\CPU|DP|bRegister|ALT_INV_out\(12) <= NOT \CPU|DP|bRegister|out\(12);
\CPU|DP|bRegister|ALT_INV_out\(14) <= NOT \CPU|DP|bRegister|out\(14);
\CPU|DP|bRegister|ALT_INV_out\(13) <= NOT \CPU|DP|bRegister|out\(13);
\CPU|DP|aRegister|ALT_INV_out\(13) <= NOT \CPU|DP|aRegister|out\(13);
\CPU|DP|muxintoregister|ALT_INV_Mux14~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux14~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux14~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux14~0_combout\;
\CPU|statemachine|ALT_INV_WideOr29~combout\ <= NOT \CPU|statemachine|WideOr29~combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux15~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux15~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux15~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux15~0_combout\;
\CPU|statemachine|ALT_INV_WideOr26~0_combout\ <= NOT \CPU|statemachine|WideOr26~0_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector7~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector7~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|toR5|out\(8);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|toR6|out\(8);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|toR4|out\(8);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector7~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector7~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|toR2|out\(8);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|toR3|out\(8);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|toR1|out\(8);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|toR0|out\(8);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|toR7|out\(8);
\CPU|DP|ALT_INV_Ain[7]~7_combout\ <= NOT \CPU|DP|Ain[7]~7_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector8~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector8~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|toR5|out\(7);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|toR6|out\(7);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|toR4|out\(7);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector8~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector8~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|toR2|out\(7);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|toR3|out\(7);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|toR1|out\(7);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|toR0|out\(7);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|toR7|out\(7);
\CPU|DP|ALT_INV_Ain[6]~6_combout\ <= NOT \CPU|DP|Ain[6]~6_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector9~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector9~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|toR5|out\(6);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|toR6|out\(6);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|toR4|out\(6);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector9~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector9~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|toR2|out\(6);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|toR3|out\(6);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|toR1|out\(6);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|toR0|out\(6);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|toR7|out\(6);
\CPU|DP|ALT_INV_Ain[5]~5_combout\ <= NOT \CPU|DP|Ain[5]~5_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector10~4_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector10~4_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|toR5|out\(5);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|toR6|out\(5);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|toR4|out\(5);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector10~3_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector10~3_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|toR2|out\(5);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|toR3|out\(5);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|toR1|out\(5);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|toR0|out\(5);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|toR7|out\(5);
\CPU|DP|ALT_INV_Ain[4]~4_combout\ <= NOT \CPU|DP|Ain[4]~4_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector11~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector11~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|toR5|out\(4);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|toR6|out\(4);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|toR4|out\(4);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector11~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector11~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|toR2|out\(4);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|toR3|out\(4);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|toR1|out\(4);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|toR0|out\(4);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|toR7|out\(4);
\CPU|DP|ALT_INV_Ain[3]~3_combout\ <= NOT \CPU|DP|Ain[3]~3_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector12~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector12~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|toR5|out\(3);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|toR6|out\(3);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|toR4|out\(3);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector12~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector12~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|toR2|out\(3);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|toR3|out\(3);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|toR1|out\(3);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|toR0|out\(3);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|toR7|out\(3);
\CPU|DP|ALT_INV_Ain[2]~2_combout\ <= NOT \CPU|DP|Ain[2]~2_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector13~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector13~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|toR5|out\(2);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|toR6|out\(2);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|toR4|out\(2);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector13~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector13~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|toR2|out\(2);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|toR3|out\(2);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|toR1|out\(2);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|toR0|out\(2);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|toR7|out\(2);
\CPU|DP|ALT_INV_Ain[1]~1_combout\ <= NOT \CPU|DP|Ain[1]~1_combout\;
\CPU|DP|ALT_INV_Bin[8]~14_combout\ <= NOT \CPU|DP|Bin[8]~14_combout\;
\CPU|DP|ALT_INV_Bin[8]~13_combout\ <= NOT \CPU|DP|Bin[8]~13_combout\;
\CPU|DP|bRegister|ALT_INV_out\(9) <= NOT \CPU|DP|bRegister|out\(9);
\CPU|DP|aRegister|ALT_INV_out\(8) <= NOT \CPU|DP|aRegister|out\(8);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector14~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector14~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|toR5|out\(1);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|toR6|out\(1);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|toR4|out\(1);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector14~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector14~0_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|toR2|out\(1);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|toR3|out\(1);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|toR1|out\(1);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|toR0|out\(1);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|toR7|out\(1);
\ALT_INV_e1~combout\ <= NOT \e1~combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector15~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector15~1_combout\;
\CPU|DP|REGFILE|toR5|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|toR5|out\(0);
\CPU|DP|REGFILE|toR6|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|toR6|out\(0);
\CPU|DP|REGFILE|toR4|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|toR4|out\(0);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector15~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector15~0_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector10~2_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector10~1_combout\;
\CPU|DP|REGFILE|toR2|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|toR2|out\(0);
\CPU|DP|REGFILE|toR3|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|toR3|out\(0);
\CPU|DP|REGFILE|toR1|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|toR1|out\(0);
\CPU|DP|REGFILE|toR0|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|toR0|out\(0);
\CPU|DP|REGFILE|toR7|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|toR7|out\(0);
\CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector10~0_combout\;
\CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\ <= NOT \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\;
\CPU|muxintoregister|ALT_INV_Mux0~0_combout\ <= NOT \CPU|muxintoregister|Mux0~0_combout\;
\CPU|instructionReg|ALT_INV_out\(2) <= NOT \CPU|instructionReg|out\(2);
\CPU|instructionReg|ALT_INV_out\(7) <= NOT \CPU|instructionReg|out\(7);
\CPU|instructionReg|ALT_INV_out\(10) <= NOT \CPU|instructionReg|out\(10);
\CPU|muxintoregister|ALT_INV_Mux2~0_combout\ <= NOT \CPU|muxintoregister|Mux2~0_combout\;
\CPU|instructionReg|ALT_INV_out\(0) <= NOT \CPU|instructionReg|out\(0);
\CPU|instructionReg|ALT_INV_out\(5) <= NOT \CPU|instructionReg|out\(5);
\CPU|instructionReg|ALT_INV_out\(8) <= NOT \CPU|instructionReg|out\(8);
\CPU|muxintoregister|ALT_INV_Mux1~0_combout\ <= NOT \CPU|muxintoregister|Mux1~0_combout\;
\CPU|instructionReg|ALT_INV_out\(1) <= NOT \CPU|instructionReg|out\(1);
\CPU|instructionReg|ALT_INV_out\(6) <= NOT \CPU|instructionReg|out\(6);
\CPU|instructionReg|ALT_INV_out\(9) <= NOT \CPU|instructionReg|out\(9);
\CPU|statemachine|ALT_INV_WideOr13~combout\ <= NOT \CPU|statemachine|WideOr13~combout\;
\CPU|statemachine|ALT_INV_WideOr11~combout\ <= NOT \CPU|statemachine|WideOr11~combout\;
\CPU|DP|ALT_INV_Ain[0]~0_combout\ <= NOT \CPU|DP|Ain[0]~0_combout\;
\CPU|DP|ALT_INV_Bin[7]~12_combout\ <= NOT \CPU|DP|Bin[7]~12_combout\;
\CPU|DP|ALT_INV_Bin[7]~11_combout\ <= NOT \CPU|DP|Bin[7]~11_combout\;
\CPU|DP|bRegister|ALT_INV_out\(8) <= NOT \CPU|DP|bRegister|out\(8);
\CPU|DP|aRegister|ALT_INV_out\(7) <= NOT \CPU|DP|aRegister|out\(7);
\CPU|DP|ALT_INV_Bin[6]~10_combout\ <= NOT \CPU|DP|Bin[6]~10_combout\;
\CPU|DP|ALT_INV_Bin[6]~9_combout\ <= NOT \CPU|DP|Bin[6]~9_combout\;
\CPU|DP|bRegister|ALT_INV_out\(7) <= NOT \CPU|DP|bRegister|out\(7);
\CPU|DP|aRegister|ALT_INV_out\(6) <= NOT \CPU|DP|aRegister|out\(6);
\ALT_INV_rtl~9_combout\ <= NOT \rtl~9_combout\;
\ALT_INV_rtl~8_combout\ <= NOT \rtl~8_combout\;
\CPU|DP|bRegister|ALT_INV_out\(6) <= NOT \CPU|DP|bRegister|out\(6);
\CPU|DP|aRegister|ALT_INV_out\(5) <= NOT \CPU|DP|aRegister|out\(5);
\CPU|DP|ALT_INV_Bin[4]~8_combout\ <= NOT \CPU|DP|Bin[4]~8_combout\;
\CPU|DP|ALT_INV_Bin[4]~7_combout\ <= NOT \CPU|DP|Bin[4]~7_combout\;
\CPU|DP|bRegister|ALT_INV_out\(5) <= NOT \CPU|DP|bRegister|out\(5);
\CPU|DP|aRegister|ALT_INV_out\(4) <= NOT \CPU|DP|aRegister|out\(4);
\CPU|DP|ALT_INV_Bin[3]~6_combout\ <= NOT \CPU|DP|Bin[3]~6_combout\;
\CPU|DP|ALT_INV_Bin[3]~5_combout\ <= NOT \CPU|DP|Bin[3]~5_combout\;
\CPU|DP|bRegister|ALT_INV_out\(4) <= NOT \CPU|DP|bRegister|out\(4);
\CPU|DP|aRegister|ALT_INV_out\(3) <= NOT \CPU|DP|aRegister|out\(3);
\CPU|DP|ALT_INV_Bin[2]~4_combout\ <= NOT \CPU|DP|Bin[2]~4_combout\;
\CPU|DP|ALT_INV_Bin[2]~3_combout\ <= NOT \CPU|DP|Bin[2]~3_combout\;
\CPU|DP|bRegister|ALT_INV_out\(3) <= NOT \CPU|DP|bRegister|out\(3);
\CPU|DP|aRegister|ALT_INV_out\(2) <= NOT \CPU|DP|aRegister|out\(2);
\CPU|DP|ALT_INV_Bin[1]~2_combout\ <= NOT \CPU|DP|Bin[1]~2_combout\;
\CPU|DP|ALT_INV_Bin[1]~1_combout\ <= NOT \CPU|DP|Bin[1]~1_combout\;
\CPU|DP|bRegister|ALT_INV_out\(2) <= NOT \CPU|DP|bRegister|out\(2);
\CPU|DP|ALT_INV_Bin[1]~0_combout\ <= NOT \CPU|DP|Bin[1]~0_combout\;
\CPU|DP|aRegister|ALT_INV_out\(1) <= NOT \CPU|DP|aRegister|out\(1);
\CPU|statemachine|ALT_INV_WideOr30~5_combout\ <= NOT \CPU|statemachine|WideOr30~5_combout\;
\CPU|statemachine|ALT_INV_WideOr30~4_combout\ <= NOT \CPU|statemachine|WideOr30~4_combout\;
\CPU|statemachine|ALT_INV_WideOr13~1_combout\ <= NOT \CPU|statemachine|WideOr13~1_combout\;
\CPU|statemachine|ALT_INV_WideOr13~0_combout\ <= NOT \CPU|statemachine|WideOr13~0_combout\;
\CPU|statemachine|ALT_INV_always0~29_combout\ <= NOT \CPU|statemachine|always0~29_combout\;
\CPU|statemachine|ALT_INV_WideOr5~3_combout\ <= NOT \CPU|statemachine|WideOr5~3_combout\;
\ALT_INV_e1~4_combout\ <= NOT \e1~4_combout\;
\CPU|statemachine|ALT_INV_next_reset_state[4]~6_combout\ <= NOT \CPU|statemachine|next_reset_state[4]~6_combout\;
\CPU|statemachine|ALT_INV_always0~28_combout\ <= NOT \CPU|statemachine|always0~28_combout\;
\CPU|statemachine|ALT_INV_WideOr30~3_combout\ <= NOT \CPU|statemachine|WideOr30~3_combout\;
\CPU|statemachine|ALT_INV_WideOr30~2_combout\ <= NOT \CPU|statemachine|WideOr30~2_combout\;
\CPU|statemachine|ALT_INV_always0~27_combout\ <= NOT \CPU|statemachine|always0~27_combout\;
\CPU|statemachine|ALT_INV_WideOr5~2_combout\ <= NOT \CPU|statemachine|WideOr5~2_combout\;
\CPU|statemachine|ALT_INV_WideOr9~0_combout\ <= NOT \CPU|statemachine|WideOr9~0_combout\;
\CPU|statemachine|ALT_INV_WideOr18~0_combout\ <= NOT \CPU|statemachine|WideOr18~0_combout\;
\CPU|statemachine|ALT_INV_loada~0_combout\ <= NOT \CPU|statemachine|loada~0_combout\;
\CPU|statemachine|ALT_INV_always0~26_combout\ <= NOT \CPU|statemachine|always0~26_combout\;
\CPU|statemachine|ALT_INV_WideNor16~21_combout\ <= NOT \CPU|statemachine|WideNor16~21_combout\;
\CPU|statemachine|ALT_INV_loadadr~0_combout\ <= NOT \CPU|statemachine|loadadr~0_combout\;
\CPU|statemachine|ALT_INV_always0~25_combout\ <= NOT \CPU|statemachine|always0~25_combout\;
\CPU|statemachine|ALT_INV_always0~24_combout\ <= NOT \CPU|statemachine|always0~24_combout\;
\CPU|statemachine|ALT_INV_WideOr5~1_combout\ <= NOT \CPU|statemachine|WideOr5~1_combout\;
\CPU|statemachine|ALT_INV_WideOr5~0_combout\ <= NOT \CPU|statemachine|WideOr5~0_combout\;
\CPU|statemachine|ALT_INV_always0~23_combout\ <= NOT \CPU|statemachine|always0~23_combout\;
\CPU|statemachine|ALT_INV_always0~22_combout\ <= NOT \CPU|statemachine|always0~22_combout\;
\CPU|statemachine|ALT_INV_always0~21_combout\ <= NOT \CPU|statemachine|always0~21_combout\;
\CPU|statemachine|ALT_INV_loadir~combout\ <= NOT \CPU|statemachine|loadir~combout\;
\CPU|statemachine|ALT_INV_next_reset_state[3]~1_combout\ <= NOT \CPU|statemachine|next_reset_state[3]~1_combout\;
\CPU|statemachine|ALT_INV_next_reset_state[3]~0_combout\ <= NOT \CPU|statemachine|next_reset_state[3]~0_combout\;
\CPU|statemachine|ALT_INV_WideOr30~1_combout\ <= NOT \CPU|statemachine|WideOr30~1_combout\;
\CPU|statemachine|ALT_INV_always0~20_combout\ <= NOT \CPU|statemachine|always0~20_combout\;
\CPU|statemachine|ALT_INV_WideNor16~20_combout\ <= NOT \CPU|statemachine|WideNor16~20_combout\;
\CPU|statemachine|ALT_INV_always0~19_combout\ <= NOT \CPU|statemachine|always0~19_combout\;
\CPU|statemachine|ALT_INV_WideOr30~0_combout\ <= NOT \CPU|statemachine|WideOr30~0_combout\;
\CPU|statemachine|ALT_INV_always0~18_combout\ <= NOT \CPU|statemachine|always0~18_combout\;
\CPU|statemachine|ALT_INV_Equal6~0_combout\ <= NOT \CPU|statemachine|Equal6~0_combout\;
\CPU|statemachine|ALT_INV_always0~17_combout\ <= NOT \CPU|statemachine|always0~17_combout\;
\CPU|statemachine|ALT_INV_WideOr20~0_combout\ <= NOT \CPU|statemachine|WideOr20~0_combout\;
\CPU|statemachine|ALT_INV_loads~combout\ <= NOT \CPU|statemachine|loads~combout\;
\CPU|statemachine|ALT_INV_always0~16_combout\ <= NOT \CPU|statemachine|always0~16_combout\;
\CPU|statemachine|ALT_INV_always0~15_combout\ <= NOT \CPU|statemachine|always0~15_combout\;
\CPU|statemachine|ALT_INV_always0~14_combout\ <= NOT \CPU|statemachine|always0~14_combout\;
\ALT_INV_rtl~7_combout\ <= NOT \rtl~7_combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\CPU|DP|bRegister|ALT_INV_out\(0) <= NOT \CPU|DP|bRegister|out\(0);
\CPU|instructionReg|ALT_INV_out\(3) <= NOT \CPU|instructionReg|out\(3);
\CPU|DP|bRegister|ALT_INV_out\(1) <= NOT \CPU|DP|bRegister|out\(1);
\CPU|instructionReg|ALT_INV_out\(4) <= NOT \CPU|instructionReg|out\(4);
\CPU|statemachine|ALT_INV_WideOr23~0_combout\ <= NOT \CPU|statemachine|WideOr23~0_combout\;
\CPU|statemachine|ALT_INV_always0~13_combout\ <= NOT \CPU|statemachine|always0~13_combout\;
\CPU|statemachine|ALT_INV_always0~12_combout\ <= NOT \CPU|statemachine|always0~12_combout\;
\CPU|DP|aRegister|ALT_INV_out\(0) <= NOT \CPU|DP|aRegister|out\(0);
\ALT_INV_e1~3_combout\ <= NOT \e1~3_combout\;
\CPU|DataAddress|ALT_INV_out\(2) <= NOT \CPU|DataAddress|out\(2);
\CPU|DataAddress|ALT_INV_out\(1) <= NOT \CPU|DataAddress|out\(1);
\ALT_INV_e1~2_combout\ <= NOT \e1~2_combout\;
\CPU|DataAddress|ALT_INV_out\(0) <= NOT \CPU|DataAddress|out\(0);
\CPU|DataAddress|ALT_INV_out\(8) <= NOT \CPU|DataAddress|out\(8);
\ALT_INV_e1~1_combout\ <= NOT \e1~1_combout\;
\CPU|DataAddress|ALT_INV_out\(4) <= NOT \CPU|DataAddress|out\(4);
\CPU|DataAddress|ALT_INV_out\(3) <= NOT \CPU|DataAddress|out\(3);
\ALT_INV_e1~0_combout\ <= NOT \e1~0_combout\;
\CPU|DataAddress|ALT_INV_out\(7) <= NOT \CPU|DataAddress|out\(7);
\CPU|DataAddress|ALT_INV_out\(5) <= NOT \CPU|DataAddress|out\(5);
\CPU|ALT_INV_mem_addr[6]~0_combout\ <= NOT \CPU|mem_addr[6]~0_combout\;
\CPU|statemachine|ALT_INV_WideOr34~combout\ <= NOT \CPU|statemachine|WideOr34~combout\;
\CPU|statemachine|ALT_INV_always0~11_combout\ <= NOT \CPU|statemachine|always0~11_combout\;
\CPU|statemachine|ALT_INV_WideOr34~0_combout\ <= NOT \CPU|statemachine|WideOr34~0_combout\;
\CPU|statemachine|ALT_INV_always0~10_combout\ <= NOT \CPU|statemachine|always0~10_combout\;
\CPU|statemachine|ALT_INV_WideNor16~19_combout\ <= NOT \CPU|statemachine|WideNor16~19_combout\;
\CPU|DataAddress|ALT_INV_out\(6) <= NOT \CPU|DataAddress|out\(6);
\CPU|statemachine|ALT_INV_mem_cmd\(0) <= NOT \CPU|statemachine|mem_cmd\(0);
\CPU|statemachine|ALT_INV_mem_cmd[0]~0_combout\ <= NOT \CPU|statemachine|mem_cmd[0]~0_combout\;
\CPU|statemachine|ALT_INV_always0~9_combout\ <= NOT \CPU|statemachine|always0~9_combout\;
\CPU|statemachine|ALT_INV_always0~8_combout\ <= NOT \CPU|statemachine|always0~8_combout\;
\CPU|statemachine|ALT_INV_Equal7~0_combout\ <= NOT \CPU|statemachine|Equal7~0_combout\;
\CPU|statemachine|ALT_INV_WideNor16~18_combout\ <= NOT \CPU|statemachine|WideNor16~18_combout\;
\CPU|statemachine|ALT_INV_WideNor16~17_combout\ <= NOT \CPU|statemachine|WideNor16~17_combout\;
\CPU|statemachine|ALT_INV_always0~7_combout\ <= NOT \CPU|statemachine|always0~7_combout\;
\CPU|statemachine|ALT_INV_Equal0~1_combout\ <= NOT \CPU|statemachine|Equal0~1_combout\;
\CPU|statemachine|ALT_INV_WideNor16~16_combout\ <= NOT \CPU|statemachine|WideNor16~16_combout\;
\CPU|statemachine|ALT_INV_always0~6_combout\ <= NOT \CPU|statemachine|always0~6_combout\;
\CPU|statemachine|ALT_INV_WideNor16~15_combout\ <= NOT \CPU|statemachine|WideNor16~15_combout\;
\CPU|statemachine|ALT_INV_always0~5_combout\ <= NOT \CPU|statemachine|always0~5_combout\;
\CPU|statemachine|ALT_INV_WideNor16~14_combout\ <= NOT \CPU|statemachine|WideNor16~14_combout\;
\CPU|statemachine|ALT_INV_always0~4_combout\ <= NOT \CPU|statemachine|always0~4_combout\;
\CPU|statemachine|ALT_INV_always0~3_combout\ <= NOT \CPU|statemachine|always0~3_combout\;
\CPU|statemachine|ALT_INV_WideNor16~13_combout\ <= NOT \CPU|statemachine|WideNor16~13_combout\;
\CPU|statemachine|ALT_INV_always0~2_combout\ <= NOT \CPU|statemachine|always0~2_combout\;
\CPU|statemachine|ALT_INV_always0~1_combout\ <= NOT \CPU|statemachine|always0~1_combout\;
\CPU|statemachine|ALT_INV_WideNor16~12_combout\ <= NOT \CPU|statemachine|WideNor16~12_combout\;
\CPU|statemachine|ALT_INV_Equal1~0_combout\ <= NOT \CPU|statemachine|Equal1~0_combout\;
\CPU|statemachine|ALT_INV_always0~0_combout\ <= NOT \CPU|statemachine|always0~0_combout\;
\CPU|statemachine|ALT_INV_WideNor16~11_combout\ <= NOT \CPU|statemachine|WideNor16~11_combout\;
\CPU|statemachine|ALT_INV_WideNor16~10_combout\ <= NOT \CPU|statemachine|WideNor16~10_combout\;
\CPU|statemachine|ALT_INV_WideNor16~9_combout\ <= NOT \CPU|statemachine|WideNor16~9_combout\;
\CPU|statemachine|ALT_INV_WideNor16~8_combout\ <= NOT \CPU|statemachine|WideNor16~8_combout\;
\CPU|statemachine|ALT_INV_WideNor7~combout\ <= NOT \CPU|statemachine|WideNor7~combout\;
\CPU|statemachine|ALT_INV_WideNor16~7_combout\ <= NOT \CPU|statemachine|WideNor16~7_combout\;
\CPU|statemachine|ALT_INV_Equal2~0_combout\ <= NOT \CPU|statemachine|Equal2~0_combout\;
\CPU|statemachine|ALT_INV_WideNor16~6_combout\ <= NOT \CPU|statemachine|WideNor16~6_combout\;
\CPU|statemachine|ALT_INV_WideNor16~5_combout\ <= NOT \CPU|statemachine|WideNor16~5_combout\;
\CPU|statemachine|ALT_INV_WideNor16~4_combout\ <= NOT \CPU|statemachine|WideNor16~4_combout\;
\CPU|statemachine|ALT_INV_Equal3~0_combout\ <= NOT \CPU|statemachine|Equal3~0_combout\;
\CPU|statemachine|ALT_INV_Equal0~0_combout\ <= NOT \CPU|statemachine|Equal0~0_combout\;
\CPU|statemachine|ALT_INV_WideNor16~3_combout\ <= NOT \CPU|statemachine|WideNor16~3_combout\;
\CPU|statemachine|ALT_INV_Equal4~1_combout\ <= NOT \CPU|statemachine|Equal4~1_combout\;
\CPU|statemachine|ALT_INV_WideNor16~2_combout\ <= NOT \CPU|statemachine|WideNor16~2_combout\;
\CPU|statemachine|ALT_INV_WideNor16~1_combout\ <= NOT \CPU|statemachine|WideNor16~1_combout\;
\CPU|statemachine|ALT_INV_Equal5~0_combout\ <= NOT \CPU|statemachine|Equal5~0_combout\;
\CPU|statemachine|ALT_INV_Equal4~0_combout\ <= NOT \CPU|statemachine|Equal4~0_combout\;
\CPU|instructionReg|ALT_INV_out\(12) <= NOT \CPU|instructionReg|out\(12);
\CPU|instructionReg|ALT_INV_out\(11) <= NOT \CPU|instructionReg|out\(11);
\CPU|instructionReg|ALT_INV_out\(15) <= NOT \CPU|instructionReg|out\(15);
\CPU|instructionReg|ALT_INV_out\(14) <= NOT \CPU|instructionReg|out\(14);
\CPU|instructionReg|ALT_INV_out\(13) <= NOT \CPU|instructionReg|out\(13);
\CPU|statemachine|ALT_INV_WideNor16~0_combout\ <= NOT \CPU|statemachine|WideNor16~0_combout\;
\CPU|statemachine|STATE|ALT_INV_out\(4) <= NOT \CPU|statemachine|STATE|out\(4);
\CPU|statemachine|STATE|ALT_INV_out\(1) <= NOT \CPU|statemachine|STATE|out\(1);
\CPU|statemachine|STATE|ALT_INV_out\(0) <= NOT \CPU|statemachine|STATE|out\(0);
\CPU|statemachine|STATE|ALT_INV_out\(2) <= NOT \CPU|statemachine|STATE|out\(2);
\CPU|statemachine|STATE|ALT_INV_out\(3) <= NOT \CPU|statemachine|STATE|out\(3);
\CPU|DP|CMP|ALT_INV_Add0~65_sumout\ <= NOT \CPU|DP|CMP|Add0~65_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~61_sumout\ <= NOT \CPU|DP|CMP|Add0~61_sumout\;
\CPU|DP|cRegister|ALT_INV_out\(10) <= NOT \CPU|DP|cRegister|out\(10);
\CPU|DP|cRegister|ALT_INV_out\(9) <= NOT \CPU|DP|cRegister|out\(9);
\CPU|DP|CMP|ALT_INV_Add0~57_sumout\ <= NOT \CPU|DP|CMP|Add0~57_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~53_sumout\ <= NOT \CPU|DP|CMP|Add0~53_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~45_sumout\ <= NOT \CPU|DP|CMP|Add0~45_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~41_sumout\ <= NOT \CPU|DP|CMP|Add0~41_sumout\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a1\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a2\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a3\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a4\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a5\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a6\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a7\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a8\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a9\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a10\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a11\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a12\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a13\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a14\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a15\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\CPU|DP|CMP|ALT_INV_Add0~37_sumout\ <= NOT \CPU|DP|CMP|Add0~37_sumout\;
\CPU|DP|cRegister|ALT_INV_out\(12) <= NOT \CPU|DP|cRegister|out\(12);
\CPU|DP|cRegister|ALT_INV_out\(11) <= NOT \CPU|DP|cRegister|out\(11);
\CPU|DP|cRegister|ALT_INV_out\(15) <= NOT \CPU|DP|cRegister|out\(15);
\CPU|DP|cRegister|ALT_INV_out\(13) <= NOT \CPU|DP|cRegister|out\(13);
\CPU|DP|CMP|ALT_INV_Add0~29_sumout\ <= NOT \CPU|DP|CMP|Add0~29_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~25_sumout\ <= NOT \CPU|DP|CMP|Add0~25_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~21_sumout\ <= NOT \CPU|DP|CMP|Add0~21_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~17_sumout\ <= NOT \CPU|DP|CMP|Add0~17_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~13_sumout\ <= NOT \CPU|DP|CMP|Add0~13_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~9_sumout\ <= NOT \CPU|DP|CMP|Add0~9_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~5_sumout\ <= NOT \CPU|DP|CMP|Add0~5_sumout\;
\CPU|DP|cRegister|ALT_INV_out\(8) <= NOT \CPU|DP|cRegister|out\(8);
\CPU|DP|CMP|ALT_INV_Add0~1_sumout\ <= NOT \CPU|DP|CMP|Add0~1_sumout\;
\CPU|DP|cRegister|ALT_INV_out\(7) <= NOT \CPU|DP|cRegister|out\(7);
\CPU|DP|cRegister|ALT_INV_out\(6) <= NOT \CPU|DP|cRegister|out\(6);
\CPU|DP|cRegister|ALT_INV_out\(5) <= NOT \CPU|DP|cRegister|out\(5);
\CPU|DP|cRegister|ALT_INV_out\(4) <= NOT \CPU|DP|cRegister|out\(4);
\CPU|DP|cRegister|ALT_INV_out\(3) <= NOT \CPU|DP|cRegister|out\(3);
\CPU|DP|cRegister|ALT_INV_out\(2) <= NOT \CPU|DP|cRegister|out\(2);
\CPU|DP|cRegister|ALT_INV_out\(1) <= NOT \CPU|DP|cRegister|out\(1);
\CPU|PCReg|ALT_INV_out\(2) <= NOT \CPU|PCReg|out\(2);
\CPU|PCReg|ALT_INV_out\(1) <= NOT \CPU|PCReg|out\(1);
\CPU|PCReg|ALT_INV_out\(0) <= NOT \CPU|PCReg|out\(0);
\CPU|PCReg|ALT_INV_out\(8) <= NOT \CPU|PCReg|out\(8);
\CPU|PCReg|ALT_INV_out\(4) <= NOT \CPU|PCReg|out\(4);
\CPU|PCReg|ALT_INV_out\(3) <= NOT \CPU|PCReg|out\(3);
\CPU|PCReg|ALT_INV_out\(7) <= NOT \CPU|PCReg|out\(7);
\CPU|PCReg|ALT_INV_out\(5) <= NOT \CPU|PCReg|out\(5);
\CPU|PCReg|ALT_INV_out\(6) <= NOT \CPU|PCReg|out\(6);
\CPU|DP|cRegister|ALT_INV_out\(0) <= NOT \CPU|DP|cRegister|out\(0);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledREG|out\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledREG|out\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledREG|out\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledREG|out\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledREG|out\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledREG|out\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledREG|out\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledREG|out\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X21_Y3_N30
\CPU|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~25_sumout\ = SUM(( \CPU|PCReg|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|Add0~26\ = CARRY(( \CPU|PCReg|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(0),
	cin => GND,
	sumout => \CPU|Add0~25_sumout\,
	cout => \CPU|Add0~26\);

-- Location: LABCELL_X19_Y3_N9
\CPU|statemachine|WideNor16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~3_combout\ = ( !\CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(3) & (!\CPU|statemachine|STATE|out\(2) & (!\CPU|statemachine|STATE|out\(1) & \CPU|statemachine|STATE|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|WideNor16~3_combout\);

-- Location: LABCELL_X19_Y3_N24
\CPU|statemachine|WideNor16~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~15_combout\ = ( \CPU|statemachine|STATE|out\(0) & ( (\CPU|statemachine|STATE|out\(3) & (\CPU|statemachine|STATE|out\(2) & (\CPU|statemachine|STATE|out\(1) & \CPU|statemachine|STATE|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|WideNor16~15_combout\);

-- Location: LABCELL_X19_Y3_N30
\CPU|statemachine|WideNor16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~1_combout\ = ( !\CPU|statemachine|STATE|out\(2) & ( (\CPU|statemachine|STATE|out\(4) & (\CPU|statemachine|STATE|out\(1) & (!\CPU|statemachine|STATE|out\(3) & !\CPU|statemachine|STATE|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(0),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(2),
	combout => \CPU|statemachine|WideNor16~1_combout\);

-- Location: LABCELL_X19_Y3_N15
\CPU|statemachine|WideNor16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~2_combout\ = ( \CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(3) & (!\CPU|statemachine|STATE|out\(2) & (\CPU|statemachine|STATE|out\(1) & \CPU|statemachine|STATE|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|WideNor16~2_combout\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: MLABCELL_X21_Y3_N51
\CPU|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~9_sumout\ = SUM(( \CPU|PCReg|out\(7) ) + ( GND ) + ( \CPU|Add0~2\ ))
-- \CPU|Add0~10\ = CARRY(( \CPU|PCReg|out\(7) ) + ( GND ) + ( \CPU|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PCReg|ALT_INV_out\(7),
	cin => \CPU|Add0~2\,
	sumout => \CPU|Add0~9_sumout\,
	cout => \CPU|Add0~10\);

-- Location: MLABCELL_X21_Y3_N54
\CPU|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~21_sumout\ = SUM(( \CPU|PCReg|out\(8) ) + ( GND ) + ( \CPU|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PCReg|ALT_INV_out\(8),
	cin => \CPU|Add0~10\,
	sumout => \CPU|Add0~21_sumout\);

-- Location: LABCELL_X18_Y3_N48
\CPU|statemachine|WideNor16~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~11_combout\ = ( \CPU|statemachine|STATE|out\(3) & ( !\CPU|statemachine|STATE|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|statemachine|STATE|ALT_INV_out\(2),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(3),
	combout => \CPU|statemachine|WideNor16~11_combout\);

-- Location: LABCELL_X18_Y3_N12
\CPU|statemachine|mem_cmd[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|mem_cmd[0]~0_combout\ = ( \CPU|statemachine|WideNor16~11_combout\ & ( (\CPU|statemachine|STATE|out\(0) & (\CPU|statemachine|STATE|out\(4) & !\CPU|statemachine|STATE|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|ALT_INV_WideNor16~11_combout\,
	combout => \CPU|statemachine|mem_cmd[0]~0_combout\);

-- Location: LABCELL_X18_Y3_N57
\CPU|statemachine|WideNor16~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~16_combout\ = ( !\CPU|statemachine|STATE|out\(3) & ( (\CPU|statemachine|STATE|out\(4) & (!\CPU|statemachine|STATE|out\(1) & (\CPU|statemachine|STATE|out\(0) & \CPU|statemachine|STATE|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(2),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(3),
	combout => \CPU|statemachine|WideNor16~16_combout\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X18_Y3_N15
\CPU|statemachine|WideNor16~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~19_combout\ = ( \CPU|statemachine|WideNor16~11_combout\ & ( (\CPU|statemachine|STATE|out\(4) & (!\CPU|statemachine|STATE|out\(0) & !\CPU|statemachine|STATE|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|ALT_INV_WideNor16~11_combout\,
	combout => \CPU|statemachine|WideNor16~19_combout\);

-- Location: MLABCELL_X15_Y5_N48
\CPU|mem_addr[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[2]~3_combout\ = ( \CPU|DataAddress|out\(2) & ( (!\CPU|statemachine|WideOr34~combout\) # (\CPU|PCReg|out\(2)) ) ) # ( !\CPU|DataAddress|out\(2) & ( (\CPU|statemachine|WideOr34~combout\ & \CPU|PCReg|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	datac => \CPU|PCReg|ALT_INV_out\(2),
	dataf => \CPU|DataAddress|ALT_INV_out\(2),
	combout => \CPU|mem_addr[2]~3_combout\);

-- Location: LABCELL_X16_Y5_N42
\CPU|mem_addr[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[3]~4_combout\ = ( \CPU|statemachine|WideOr34~combout\ & ( \CPU|PCReg|out\(3) ) ) # ( !\CPU|statemachine|WideOr34~combout\ & ( \CPU|DataAddress|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(3),
	datad => \CPU|DataAddress|ALT_INV_out\(3),
	dataf => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	combout => \CPU|mem_addr[3]~4_combout\);

-- Location: LABCELL_X17_Y5_N9
\CPU|statemachine|always0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~11_combout\ = ( \CPU|statemachine|always0~6_combout\ & ( (!\CPU|statemachine|WideNor16~16_combout\ & (\CPU|statemachine|WideNor16~0_combout\ & !\CPU|statemachine|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~16_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~0_combout\,
	datad => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~6_combout\,
	combout => \CPU|statemachine|always0~11_combout\);

-- Location: LABCELL_X17_Y5_N24
\CPU|statemachine|WideOr26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr26~0_combout\ = ( !\CPU|statemachine|always0~11_combout\ & ( (!\CPU|statemachine|always0~9_combout\) # (!\CPU|statemachine|WideNor16~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~11_combout\,
	combout => \CPU|statemachine|WideOr26~0_combout\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X19_Y3_N18
\CPU|statemachine|WideNor16~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~12_combout\ = ( !\CPU|statemachine|STATE|out\(2) & ( (!\CPU|statemachine|STATE|out\(1) & (!\CPU|statemachine|STATE|out\(3) & (!\CPU|statemachine|STATE|out\(4) & \CPU|statemachine|STATE|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(0),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(2),
	combout => \CPU|statemachine|WideNor16~12_combout\);

-- Location: LABCELL_X18_Y5_N30
\CPU|DP|muxintoregister|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux11~0_combout\ = ( \CPU|DP|cRegister|out\(4) & ( \CPU|instructionReg|out\(4) & ( (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\))) ) ) ) # ( 
-- !\CPU|DP|cRegister|out\(4) & ( \CPU|instructionReg|out\(4) & ( (\CPU|statemachine|WideNor16~12_combout\ & (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) ) ) ) # ( 
-- \CPU|DP|cRegister|out\(4) & ( !\CPU|instructionReg|out\(4) & ( (!\CPU|statemachine|WideNor16~12_combout\ & (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000000000000110010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~11_combout\,
	datae => \CPU|DP|cRegister|ALT_INV_out\(4),
	dataf => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|muxintoregister|Mux11~0_combout\);

-- Location: MLABCELL_X15_Y5_N57
\CPU|DP|muxintoregister|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux11~1_combout\ = ( \CPU|DP|muxintoregister|Mux11~0_combout\ ) # ( !\CPU|DP|muxintoregister|Mux11~0_combout\ & ( (!\CPU|statemachine|WideOr26~0_combout\ & ((!\e1~combout\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a4\)) # 
-- (\e1~combout\ & ((\SW[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datab => \ALT_INV_e1~combout\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux11~0_combout\,
	combout => \CPU|DP|muxintoregister|Mux11~1_combout\);

-- Location: LABCELL_X18_Y3_N54
\CPU|statemachine|loadir\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|loadir~combout\ = ( \CPU|statemachine|WideNor16~11_combout\ & ( (\CPU|statemachine|STATE|out\(4) & (\CPU|statemachine|STATE|out\(0) & \CPU|statemachine|STATE|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|ALT_INV_WideNor16~11_combout\,
	combout => \CPU|statemachine|loadir~combout\);

-- Location: FF_X19_Y5_N37
\CPU|instructionReg|out[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[11]~3_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out[11]~DUPLICATE_q\);

-- Location: FF_X19_Y5_N16
\CPU|instructionReg|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[15]~2_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(15));

-- Location: LABCELL_X18_Y4_N18
\CPU|statemachine|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal0~0_combout\ = ( \CPU|statemachine|STATE|out\(2) & ( !\CPU|statemachine|STATE|out\(1) & ( (\CPU|statemachine|STATE|out\(3) & (\CPU|statemachine|STATE|out\(4) & (\CPU|instructionReg|out\(15) & !\CPU|statemachine|STATE|out\(0)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datac => \CPU|instructionReg|ALT_INV_out\(15),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datae => \CPU|statemachine|STATE|ALT_INV_out\(2),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(1),
	combout => \CPU|statemachine|Equal0~0_combout\);

-- Location: LABCELL_X18_Y4_N0
\CPU|statemachine|WideNor7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor7~combout\ = ( \CPU|statemachine|Equal0~0_combout\ & ( (\CPU|instructionReg|out[13]~DUPLICATE_q\ & (!\CPU|instructionReg|out\(14) & !\CPU|instructionReg|out[11]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	datac => \CPU|instructionReg|ALT_INV_out\(14),
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|statemachine|ALT_INV_Equal0~0_combout\,
	combout => \CPU|statemachine|WideNor7~combout\);

-- Location: LABCELL_X18_Y4_N6
\CPU|statemachine|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal2~0_combout\ = ( \CPU|statemachine|Equal0~0_combout\ & ( (!\CPU|instructionReg|out\(12) & (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|instructionReg|out\(14) & \CPU|instructionReg|out[13]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|instructionReg|ALT_INV_out\(14),
	datad => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|statemachine|ALT_INV_Equal0~0_combout\,
	combout => \CPU|statemachine|Equal2~0_combout\);

-- Location: LABCELL_X18_Y4_N3
\CPU|statemachine|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal1~0_combout\ = ( \CPU|statemachine|Equal0~0_combout\ & ( (\CPU|instructionReg|out\(14) & (!\CPU|instructionReg|out[13]~DUPLICATE_q\ & (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & !\CPU|instructionReg|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(14),
	datab => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|instructionReg|ALT_INV_out\(12),
	dataf => \CPU|statemachine|ALT_INV_Equal0~0_combout\,
	combout => \CPU|statemachine|Equal1~0_combout\);

-- Location: LABCELL_X18_Y4_N42
\CPU|statemachine|always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~1_combout\ = ( !\CPU|statemachine|WideNor16~12_combout\ & ( \CPU|statemachine|Equal0~0_combout\ & ( (!\CPU|instructionReg|out\(12)) # (((!\CPU|instructionReg|out\(14)) # (\CPU|instructionReg|out[13]~DUPLICATE_q\)) # 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\)) ) ) ) # ( !\CPU|statemachine|WideNor16~12_combout\ & ( !\CPU|statemachine|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111011111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|instructionReg|ALT_INV_out\(14),
	datad => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	dataf => \CPU|statemachine|ALT_INV_Equal0~0_combout\,
	combout => \CPU|statemachine|always0~1_combout\);

-- Location: LABCELL_X19_Y3_N27
\CPU|statemachine|always0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~31_combout\ = ( \CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(3) & (((\CPU|statemachine|STATE|out\(1) & !\CPU|statemachine|STATE|out\(4))))) # (\CPU|statemachine|STATE|out\(3) & 
-- (!\CPU|statemachine|STATE|out\(2) & ((!\CPU|statemachine|STATE|out\(4)) # (\CPU|statemachine|STATE|out\(1))))) ) ) # ( !\CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(4)) # ((\CPU|statemachine|STATE|out\(3) & 
-- (!\CPU|statemachine|STATE|out\(2) & \CPU|statemachine|STATE|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110000010001001110000001000100111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|always0~31_combout\);

-- Location: LABCELL_X18_Y4_N9
\CPU|statemachine|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal3~0_combout\ = ( \CPU|statemachine|Equal0~0_combout\ & ( (\CPU|instructionReg|out\(12) & (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|instructionReg|out\(14) & \CPU|instructionReg|out[13]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|instructionReg|ALT_INV_out\(14),
	datad => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|statemachine|ALT_INV_Equal0~0_combout\,
	combout => \CPU|statemachine|Equal3~0_combout\);

-- Location: LABCELL_X18_Y4_N24
\CPU|statemachine|always0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~5_combout\ = ( !\CPU|statemachine|always0~31_combout\ & ( !\CPU|statemachine|Equal3~0_combout\ & ( (!\CPU|statemachine|WideNor7~combout\ & (!\CPU|statemachine|Equal2~0_combout\ & (!\CPU|statemachine|Equal1~0_combout\ & 
-- \CPU|statemachine|always0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor7~combout\,
	datab => \CPU|statemachine|ALT_INV_Equal2~0_combout\,
	datac => \CPU|statemachine|ALT_INV_Equal1~0_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~1_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~31_combout\,
	dataf => \CPU|statemachine|ALT_INV_Equal3~0_combout\,
	combout => \CPU|statemachine|always0~5_combout\);

-- Location: LABCELL_X19_Y4_N33
\CPU|statemachine|always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~3_combout\ = ( !\CPU|statemachine|STATE|out\(4) & ( (!\CPU|statemachine|STATE|out\(3) & (\CPU|statemachine|STATE|out\(2) & \CPU|statemachine|STATE|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(4),
	combout => \CPU|statemachine|always0~3_combout\);

-- Location: LABCELL_X19_Y4_N0
\CPU|statemachine|WideNor16~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~8_combout\ = ( !\CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(4) & (\CPU|statemachine|STATE|out\(2) & (!\CPU|statemachine|STATE|out\(3) & !\CPU|statemachine|STATE|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|WideNor16~8_combout\);

-- Location: LABCELL_X18_Y4_N12
\CPU|statemachine|WideNor16~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~7_combout\ = ( !\CPU|statemachine|STATE|out\(4) & ( \CPU|statemachine|STATE|out\(0) & ( (\CPU|statemachine|STATE|out\(3) & (!\CPU|statemachine|STATE|out\(2) & !\CPU|statemachine|STATE|out\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datae => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|WideNor16~7_combout\);

-- Location: LABCELL_X19_Y4_N54
\CPU|statemachine|WideNor16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~9_combout\ = ( !\CPU|statemachine|STATE|out\(2) & ( (!\CPU|statemachine|STATE|out\(4) & (\CPU|statemachine|STATE|out\(0) & (!\CPU|statemachine|STATE|out\(3) & \CPU|statemachine|STATE|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(2),
	combout => \CPU|statemachine|WideNor16~9_combout\);

-- Location: LABCELL_X19_Y4_N45
\CPU|statemachine|WideNor16~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~10_combout\ = ( \CPU|statemachine|STATE|out\(1) & ( !\CPU|statemachine|STATE|out\(2) & ( (!\CPU|statemachine|STATE|out\(4) & (!\CPU|statemachine|STATE|out\(0) & !\CPU|statemachine|STATE|out\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datae => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(2),
	combout => \CPU|statemachine|WideNor16~10_combout\);

-- Location: LABCELL_X19_Y4_N30
\CPU|statemachine|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~0_combout\ = ( \CPU|statemachine|STATE|out\(0) & ( (\CPU|statemachine|STATE|out\(4) & (\CPU|statemachine|STATE|out\(3) & (!\CPU|statemachine|STATE|out\(2) & \CPU|statemachine|STATE|out\(1)))) ) ) # ( 
-- !\CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(2) & ((!\CPU|statemachine|STATE|out\(4) & (!\CPU|statemachine|STATE|out\(3) & !\CPU|statemachine|STATE|out\(1))) # (\CPU|statemachine|STATE|out\(4) & (\CPU|statemachine|STATE|out\(3) & 
-- \CPU|statemachine|STATE|out\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010000100000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|always0~0_combout\);

-- Location: LABCELL_X19_Y4_N51
\CPU|statemachine|always0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~29_combout\ = ( !\CPU|statemachine|Equal1~0_combout\ & ( (!\CPU|statemachine|WideNor16~9_combout\ & (!\CPU|statemachine|WideNor16~10_combout\ & (!\CPU|statemachine|always0~0_combout\ & \CPU|statemachine|always0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~9_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~10_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~0_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~1_combout\,
	dataf => \CPU|statemachine|ALT_INV_Equal1~0_combout\,
	combout => \CPU|statemachine|always0~29_combout\);

-- Location: LABCELL_X19_Y4_N12
\CPU|statemachine|WideOr13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr13~0_combout\ = ( \CPU|statemachine|WideNor16~7_combout\ & ( \CPU|statemachine|always0~29_combout\ & ( ((!\CPU|statemachine|WideNor16~13_combout\ & (!\CPU|statemachine|always0~3_combout\ & !\CPU|statemachine|WideNor7~combout\))) # 
-- (\CPU|statemachine|WideNor16~8_combout\) ) ) ) # ( !\CPU|statemachine|WideNor16~7_combout\ & ( \CPU|statemachine|always0~29_combout\ & ( \CPU|statemachine|WideNor16~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~13_combout\,
	datab => \CPU|statemachine|ALT_INV_always0~3_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~8_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor7~combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~7_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~29_combout\,
	combout => \CPU|statemachine|WideOr13~0_combout\);

-- Location: LABCELL_X18_Y4_N51
\CPU|statemachine|WideOr13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr13~1_combout\ = ( !\CPU|statemachine|WideOr13~0_combout\ & ( (!\CPU|statemachine|always0~5_combout\) # ((!\CPU|statemachine|WideNor16~3_combout\) # (\CPU|statemachine|WideNor16~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~5_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~15_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~3_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr13~0_combout\,
	combout => \CPU|statemachine|WideOr13~1_combout\);

-- Location: MLABCELL_X15_Y4_N30
\CPU|statemachine|WideOr29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr29~combout\ = ( \CPU|statemachine|always0~6_combout\ & ( \CPU|statemachine|WideOr13~1_combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & ((!\CPU|statemachine|WideNor16~0_combout\) # ((\CPU|statemachine|Equal5~0_combout\) # 
-- (\CPU|statemachine|WideNor16~16_combout\)))) ) ) ) # ( !\CPU|statemachine|always0~6_combout\ & ( \CPU|statemachine|WideOr13~1_combout\ & ( !\CPU|statemachine|WideNor16~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~0_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~16_combout\,
	datad => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~6_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr13~1_combout\,
	combout => \CPU|statemachine|WideOr29~combout\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X18_Y5_N36
\CPU|DP|muxintoregister|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux10~0_combout\ = ( \CPU|DP|cRegister|out\(5) & ( \CPU|instructionReg|out\(5) & ( (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\))) ) ) ) # ( 
-- !\CPU|DP|cRegister|out\(5) & ( \CPU|instructionReg|out\(5) & ( (\CPU|statemachine|WideNor16~12_combout\ & (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) ) ) ) # ( 
-- \CPU|DP|cRegister|out\(5) & ( !\CPU|instructionReg|out\(5) & ( (!\CPU|statemachine|WideNor16~12_combout\ & (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000000000000110010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~11_combout\,
	datae => \CPU|DP|cRegister|ALT_INV_out\(5),
	dataf => \CPU|instructionReg|ALT_INV_out\(5),
	combout => \CPU|DP|muxintoregister|Mux10~0_combout\);

-- Location: MLABCELL_X15_Y5_N54
\CPU|DP|muxintoregister|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux10~1_combout\ = ( \CPU|DP|muxintoregister|Mux10~0_combout\ ) # ( !\CPU|DP|muxintoregister|Mux10~0_combout\ & ( (!\CPU|statemachine|WideOr26~0_combout\ & ((!\e1~combout\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a5\)) # 
-- (\e1~combout\ & ((\SW[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datab => \ALT_INV_e1~combout\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux10~0_combout\,
	combout => \CPU|DP|muxintoregister|Mux10~1_combout\);

-- Location: FF_X16_Y5_N53
\CPU|DP|REGFILE|toR7|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(5));

-- Location: LABCELL_X16_Y4_N0
\CPU|DP|REGFILE|load5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load5~0_combout\ = ( !\CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|statemachine|WideOr29~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datab => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr29~combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|load5~0_combout\);

-- Location: FF_X15_Y5_N55
\CPU|DP|REGFILE|toR5|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux10~1_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(5));

-- Location: LABCELL_X16_Y4_N54
\CPU|DP|REGFILE|load6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load6~0_combout\ = (!\CPU|statemachine|WideOr29~combout\ & (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr29~combout\,
	datab => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|load6~0_combout\);

-- Location: FF_X16_Y4_N37
\CPU|DP|REGFILE|toR6|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(5));

-- Location: LABCELL_X16_Y3_N0
\CPU|DP|REGFILE|load4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load4~0_combout\ = ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|statemachine|WideOr29~combout\ & (!\CPU|muxintoregister|Mux1~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideOr29~combout\,
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|load4~0_combout\);

-- Location: FF_X16_Y3_N50
\CPU|DP|REGFILE|toR4|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(5));

-- Location: LABCELL_X16_Y3_N48
\CPU|DP|REGFILE|chooser|Selector10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~4_combout\ = ( \CPU|DP|REGFILE|toR4|out\(5) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\)) # (\CPU|DP|REGFILE|toR5|out\(5)))) # 
-- (\CPU|muxintoregister|Mux1~0_combout\ & (((\CPU|DP|REGFILE|toR6|out\(5) & !\CPU|muxintoregister|Mux2~0_combout\)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(5) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & 
-- (\CPU|DP|REGFILE|toR5|out\(5) & ((\CPU|muxintoregister|Mux2~0_combout\)))) # (\CPU|muxintoregister|Mux1~0_combout\ & (((\CPU|DP|REGFILE|toR6|out\(5) & !\CPU|muxintoregister|Mux2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011010001001100111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR5|ALT_INV_out\(5),
	datab => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datac => \CPU|DP|REGFILE|toR6|ALT_INV_out\(5),
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(5),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~4_combout\);

-- Location: LABCELL_X16_Y4_N24
\CPU|DP|REGFILE|load3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load3~0_combout\ = ( \CPU|muxintoregister|Mux1~0_combout\ & ( (!\CPU|statemachine|WideOr29~combout\ & (!\CPU|muxintoregister|Mux0~0_combout\ & \CPU|muxintoregister|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr29~combout\,
	datab => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|load3~0_combout\);

-- Location: FF_X16_Y4_N2
\CPU|DP|REGFILE|toR3|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(5));

-- Location: MLABCELL_X15_Y2_N27
\CPU|DP|REGFILE|toR1|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[5]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux10~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux10~1_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[5]~feeder_combout\);

-- Location: LABCELL_X16_Y4_N21
\CPU|DP|REGFILE|load1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load1~0_combout\ = ( !\CPU|statemachine|WideOr29~combout\ & ( (\CPU|muxintoregister|Mux2~0_combout\ & (!\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr29~combout\,
	combout => \CPU|DP|REGFILE|load1~0_combout\);

-- Location: FF_X15_Y2_N28
\CPU|DP|REGFILE|toR1|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[5]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(5));

-- Location: LABCELL_X16_Y4_N3
\CPU|DP|REGFILE|load0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load0~0_combout\ = ( !\CPU|statemachine|WideOr29~combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & (!\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datab => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr29~combout\,
	combout => \CPU|DP|REGFILE|load0~0_combout\);

-- Location: FF_X16_Y5_N2
\CPU|DP|REGFILE|toR0|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(5));

-- Location: LABCELL_X16_Y4_N15
\CPU|DP|REGFILE|chooser|Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~2_combout\ = (!\CPU|muxintoregister|Mux0~0_combout\ & \CPU|muxintoregister|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~2_combout\);

-- Location: LABCELL_X16_Y4_N27
\CPU|DP|REGFILE|load2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load2~0_combout\ = ( !\CPU|muxintoregister|Mux2~0_combout\ & ( (!\CPU|statemachine|WideOr29~combout\ & (!\CPU|muxintoregister|Mux0~0_combout\ & \CPU|muxintoregister|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr29~combout\,
	datab => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|load2~0_combout\);

-- Location: FF_X16_Y2_N8
\CPU|DP|REGFILE|toR2|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(5));

-- Location: LABCELL_X16_Y4_N9
\CPU|DP|REGFILE|chooser|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~1_combout\ = ( \CPU|muxintoregister|Mux1~0_combout\ & ( (!\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\) ) ) # ( !\CPU|muxintoregister|Mux1~0_combout\ & ( 
-- (!\CPU|muxintoregister|Mux0~0_combout\ & \CPU|muxintoregister|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~1_combout\);

-- Location: LABCELL_X16_Y2_N6
\CPU|DP|REGFILE|chooser|Selector10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~3_combout\ = ( \CPU|DP|REGFILE|toR2|out\(5) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) # (\CPU|DP|REGFILE|toR1|out\(5)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(5) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(5) & !\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(5) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(5)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(5))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(5) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(5)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR3|ALT_INV_out\(5),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(5),
	datac => \CPU|DP|REGFILE|toR0|ALT_INV_out\(5),
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(5),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~3_combout\);

-- Location: LABCELL_X17_Y3_N6
\CPU|DP|REGFILE|chooser|Selector10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~5_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~3_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\)) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((\CPU|DP|REGFILE|toR7|out\(5))))) # (\CPU|DP|REGFILE|chooser|Selector10~4_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~3_combout\ & ( ((\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- \CPU|DP|REGFILE|toR7|out\(5))) # (\CPU|DP|REGFILE|chooser|Selector10~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111110001101111111111000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \CPU|DP|REGFILE|toR7|ALT_INV_out\(5),
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~4_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~3_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~5_combout\);

-- Location: LABCELL_X16_Y4_N6
\CPU|statemachine|always0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~17_combout\ = ( \CPU|statemachine|always0~5_combout\ & ( (\CPU|statemachine|WideNor16~1_combout\ & (!\CPU|statemachine|WideNor16~15_combout\ & (!\CPU|statemachine|WideNor16~3_combout\ & !\CPU|statemachine|Equal4~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~1_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~15_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~3_combout\,
	datad => \CPU|statemachine|ALT_INV_Equal4~1_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~5_combout\,
	combout => \CPU|statemachine|always0~17_combout\);

-- Location: LABCELL_X18_Y3_N24
\CPU|statemachine|WideNor16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~17_combout\ = ( \CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(3) & (\CPU|statemachine|STATE|out\(2) & \CPU|statemachine|STATE|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|WideNor16~17_combout\);

-- Location: LABCELL_X18_Y3_N27
\CPU|statemachine|always0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~27_combout\ = ( \CPU|statemachine|WideNor16~17_combout\ & ( (!\CPU|statemachine|STATE|out\(4) & (\CPU|statemachine|always0~1_combout\ & !\CPU|statemachine|always0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datac => \CPU|statemachine|ALT_INV_always0~1_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideNor16~17_combout\,
	combout => \CPU|statemachine|always0~27_combout\);

-- Location: LABCELL_X18_Y2_N48
\CPU|statemachine|WideNor16~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~14_combout\ = ( \CPU|statemachine|STATE|out\(3) & ( (\CPU|statemachine|STATE|out\(2) & (\CPU|statemachine|STATE|out\(1) & (!\CPU|statemachine|STATE|out\(4) & !\CPU|statemachine|STATE|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datae => \CPU|statemachine|STATE|ALT_INV_out\(3),
	combout => \CPU|statemachine|WideNor16~14_combout\);

-- Location: LABCELL_X19_Y4_N27
\CPU|statemachine|always0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~12_combout\ = ( !\CPU|statemachine|Equal1~0_combout\ & ( (!\CPU|statemachine|always0~0_combout\ & \CPU|statemachine|always0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_always0~0_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~1_combout\,
	dataf => \CPU|statemachine|ALT_INV_Equal1~0_combout\,
	combout => \CPU|statemachine|always0~12_combout\);

-- Location: LABCELL_X18_Y2_N24
\CPU|statemachine|WideNor16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~4_combout\ = ( !\CPU|statemachine|STATE|out\(1) & ( (\CPU|statemachine|STATE|out\(2) & (\CPU|statemachine|STATE|out\(3) & (!\CPU|statemachine|STATE|out\(4) & !\CPU|statemachine|STATE|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datae => \CPU|statemachine|STATE|ALT_INV_out\(1),
	combout => \CPU|statemachine|WideNor16~4_combout\);

-- Location: LABCELL_X18_Y2_N45
\CPU|statemachine|WideNor16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~5_combout\ = ( \CPU|statemachine|STATE|out\(1) & ( (!\CPU|statemachine|STATE|out\(4) & (\CPU|statemachine|STATE|out\(3) & (\CPU|statemachine|STATE|out\(0) & !\CPU|statemachine|STATE|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datae => \CPU|statemachine|STATE|ALT_INV_out\(1),
	combout => \CPU|statemachine|WideNor16~5_combout\);

-- Location: LABCELL_X19_Y3_N12
\CPU|statemachine|always0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~30_combout\ = ( \CPU|statemachine|STATE|out\(0) & ( (\CPU|statemachine|STATE|out\(1) & ((!\CPU|statemachine|STATE|out\(3) & ((!\CPU|statemachine|STATE|out\(4)))) # (\CPU|statemachine|STATE|out\(3) & 
-- (!\CPU|statemachine|STATE|out\(2) & \CPU|statemachine|STATE|out\(4))))) ) ) # ( !\CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(3) & (((!\CPU|statemachine|STATE|out\(4))))) # (\CPU|statemachine|STATE|out\(3) & 
-- (!\CPU|statemachine|STATE|out\(2) & (!\CPU|statemachine|STATE|out\(1) $ (\CPU|statemachine|STATE|out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000100111010100000010000001010000001000000101000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|always0~30_combout\);

-- Location: LABCELL_X18_Y4_N27
\CPU|statemachine|always0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~4_combout\ = ( !\CPU|statemachine|always0~30_combout\ & ( !\CPU|statemachine|WideNor16~7_combout\ & ( (!\CPU|statemachine|WideNor7~combout\ & (!\CPU|statemachine|Equal2~0_combout\ & (\CPU|statemachine|always0~1_combout\ & 
-- !\CPU|statemachine|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor7~combout\,
	datab => \CPU|statemachine|ALT_INV_Equal2~0_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~1_combout\,
	datad => \CPU|statemachine|ALT_INV_Equal1~0_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~30_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideNor16~7_combout\,
	combout => \CPU|statemachine|always0~4_combout\);

-- Location: LABCELL_X19_Y2_N15
\CPU|statemachine|always0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~22_combout\ = ( !\CPU|statemachine|WideNor16~5_combout\ & ( \CPU|statemachine|always0~4_combout\ & ( (!\CPU|statemachine|WideNor16~6_combout\ & (!\CPU|statemachine|WideNor16~4_combout\ & !\CPU|statemachine|Equal3~0_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~6_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~4_combout\,
	datac => \CPU|statemachine|ALT_INV_Equal3~0_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~5_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~4_combout\,
	combout => \CPU|statemachine|always0~22_combout\);

-- Location: LABCELL_X19_Y2_N24
\CPU|statemachine|WideOr18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr18~0_combout\ = ( \CPU|statemachine|always0~12_combout\ & ( \CPU|statemachine|always0~22_combout\ & ( (\CPU|statemachine|WideNor16~10_combout\) # (\CPU|statemachine|WideNor16~14_combout\) ) ) ) # ( 
-- !\CPU|statemachine|always0~12_combout\ & ( \CPU|statemachine|always0~22_combout\ & ( \CPU|statemachine|WideNor16~14_combout\ ) ) ) # ( \CPU|statemachine|always0~12_combout\ & ( !\CPU|statemachine|always0~22_combout\ & ( 
-- \CPU|statemachine|WideNor16~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100110011001100110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideNor16~14_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~10_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~12_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~22_combout\,
	combout => \CPU|statemachine|WideOr18~0_combout\);

-- Location: LABCELL_X17_Y5_N12
\CPU|statemachine|WideNor16~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~18_combout\ = ( \CPU|statemachine|WideNor16~17_combout\ & ( \CPU|statemachine|STATE|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|ALT_INV_WideNor16~17_combout\,
	combout => \CPU|statemachine|WideNor16~18_combout\);

-- Location: LABCELL_X16_Y5_N15
\CPU|statemachine|always0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~10_combout\ = ( \CPU|statemachine|always0~6_combout\ & ( (!\CPU|statemachine|Equal5~0_combout\ & \CPU|statemachine|WideNor16~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~18_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~6_combout\,
	combout => \CPU|statemachine|always0~10_combout\);

-- Location: LABCELL_X17_Y2_N21
\CPU|statemachine|WideOr18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr18~combout\ = ( \CPU|statemachine|WideOr18~0_combout\ & ( \CPU|statemachine|always0~10_combout\ ) ) # ( !\CPU|statemachine|WideOr18~0_combout\ & ( \CPU|statemachine|always0~10_combout\ ) ) # ( \CPU|statemachine|WideOr18~0_combout\ 
-- & ( !\CPU|statemachine|always0~10_combout\ ) ) # ( !\CPU|statemachine|WideOr18~0_combout\ & ( !\CPU|statemachine|always0~10_combout\ & ( ((\CPU|statemachine|always0~21_combout\) # (\CPU|statemachine|always0~27_combout\)) # 
-- (\CPU|statemachine|always0~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~17_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~27_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~21_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr18~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~10_combout\,
	combout => \CPU|statemachine|WideOr18~combout\);

-- Location: FF_X17_Y3_N2
\CPU|DP|bRegister|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector10~5_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(5));

-- Location: LABCELL_X17_Y3_N33
\rtl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (!\CPU|instructionReg|out\(3) & ((\CPU|DP|bRegister|out\(5)))) # (\CPU|instructionReg|out\(3) & (\CPU|DP|bRegister|out\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(3),
	datac => \CPU|DP|bRegister|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(5),
	combout => \rtl~8_combout\);

-- Location: LABCELL_X19_Y3_N33
\CPU|statemachine|WideNor16~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~20_combout\ = ( !\CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(4) & \CPU|statemachine|STATE|out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|WideNor16~20_combout\);

-- Location: LABCELL_X16_Y4_N30
\CPU|statemachine|always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~2_combout\ = ( !\CPU|statemachine|Equal1~0_combout\ & ( \CPU|statemachine|always0~1_combout\ & ( (!\CPU|statemachine|always0~0_combout\ & (!\CPU|statemachine|WideNor16~9_combout\ & (!\CPU|statemachine|WideNor16~8_combout\ & 
-- !\CPU|statemachine|WideNor16~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~0_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~9_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~8_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~10_combout\,
	datae => \CPU|statemachine|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~1_combout\,
	combout => \CPU|statemachine|always0~2_combout\);

-- Location: LABCELL_X16_Y4_N48
\CPU|statemachine|always0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~20_combout\ = ( \CPU|statemachine|always0~2_combout\ & ( (\CPU|statemachine|STATE|out\(2) & (!\CPU|statemachine|WideNor7~combout\ & (\CPU|statemachine|WideNor16~20_combout\ & !\CPU|statemachine|STATE|out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datab => \CPU|statemachine|ALT_INV_WideNor7~combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~20_combout\,
	datad => \CPU|statemachine|STATE|ALT_INV_out\(3),
	dataf => \CPU|statemachine|ALT_INV_always0~2_combout\,
	combout => \CPU|statemachine|always0~20_combout\);

-- Location: LABCELL_X16_Y4_N39
\CPU|statemachine|always0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~26_combout\ = (\CPU|statemachine|always0~4_combout\ & \CPU|statemachine|WideNor16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_always0~4_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~6_combout\,
	combout => \CPU|statemachine|always0~26_combout\);

-- Location: LABCELL_X17_Y2_N36
\CPU|statemachine|loada~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|loada~0_combout\ = ( \CPU|statemachine|always0~20_combout\ & ( \CPU|statemachine|always0~26_combout\ ) ) # ( !\CPU|statemachine|always0~20_combout\ & ( \CPU|statemachine|always0~26_combout\ ) ) # ( \CPU|statemachine|always0~20_combout\ & 
-- ( !\CPU|statemachine|always0~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|statemachine|ALT_INV_always0~20_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~26_combout\,
	combout => \CPU|statemachine|loada~0_combout\);

-- Location: FF_X17_Y3_N8
\CPU|DP|aRegister|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector10~5_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(5));

-- Location: LABCELL_X19_Y4_N6
\CPU|statemachine|always0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~13_combout\ = ( !\CPU|statemachine|Equal4~1_combout\ & ( \CPU|statemachine|always0~5_combout\ & ( (!\CPU|statemachine|WideNor16~3_combout\ & (\CPU|statemachine|WideNor16~2_combout\ & (!\CPU|statemachine|WideNor16~15_combout\ & 
-- !\CPU|statemachine|WideNor16~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~3_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~2_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~15_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~1_combout\,
	datae => \CPU|statemachine|ALT_INV_Equal4~1_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~5_combout\,
	combout => \CPU|statemachine|always0~13_combout\);

-- Location: LABCELL_X19_Y4_N21
\CPU|statemachine|WideOr23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr23~0_combout\ = ( \CPU|statemachine|always0~12_combout\ & ( !\CPU|statemachine|always0~13_combout\ & ( (!\CPU|statemachine|WideNor16~8_combout\ & (!\CPU|statemachine|WideNor16~10_combout\ & !\CPU|statemachine|WideNor16~9_combout\)) 
-- ) ) ) # ( !\CPU|statemachine|always0~12_combout\ & ( !\CPU|statemachine|always0~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~8_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~10_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~9_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~12_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~13_combout\,
	combout => \CPU|statemachine|WideOr23~0_combout\);

-- Location: LABCELL_X16_Y5_N9
\CPU|DP|Ain[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[5]~5_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & (\CPU|DP|aRegister|out\(5) & \CPU|statemachine|WideOr23~0_combout\)) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (\CPU|DP|aRegister|out\(5) & \CPU|statemachine|WideOr23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|DP|aRegister|ALT_INV_out\(5),
	datad => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[5]~5_combout\);

-- Location: LABCELL_X16_Y5_N57
\CPU|mem_addr[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[6]~0_combout\ = ( \CPU|statemachine|WideOr34~combout\ & ( \CPU|PCReg|out\(6) ) ) # ( !\CPU|statemachine|WideOr34~combout\ & ( \CPU|DataAddress|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(6),
	datad => \CPU|DataAddress|ALT_INV_out\(6),
	dataf => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	combout => \CPU|mem_addr[6]~0_combout\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X12_Y4_N21
\x[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[7]~14_combout\ = ( \e1~combout\ & ( \SW[7]~input_o\ ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a7\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datae => \ALT_INV_e1~combout\,
	combout => \x[7]~14_combout\);

-- Location: FF_X12_Y4_N23
\CPU|instructionReg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[7]~14_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(7));

-- Location: LABCELL_X16_Y5_N36
\CPU|DP|muxintoregister|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux6~0_combout\ = ( \CPU|statemachine|always0~11_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (\CPU|instructionReg|out\(7) & \CPU|statemachine|WideNor16~12_combout\) ) ) ) # ( !\CPU|statemachine|always0~11_combout\ & ( 
-- \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & (((\CPU|DP|cRegister|out\(9) & !\CPU|statemachine|WideNor16~19_combout\)))) # (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(7))) ) ) ) # ( 
-- \CPU|statemachine|always0~11_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (\CPU|instructionReg|out\(7) & \CPU|statemachine|WideNor16~12_combout\) ) ) ) # ( !\CPU|statemachine|always0~11_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(9)))) # (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000101010100110000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(7),
	datab => \CPU|DP|cRegister|ALT_INV_out\(9),
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~11_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|muxintoregister|Mux6~0_combout\);

-- Location: MLABCELL_X15_Y3_N24
\CPU|DP|muxintoregister|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux4~0_combout\ = ( \CPU|statemachine|WideNor16~12_combout\ & ( \e1~combout\ & ( \CPU|instructionReg|out\(7) ) ) ) # ( !\CPU|statemachine|WideNor16~12_combout\ & ( \e1~combout\ & ( (\CPU|DP|cRegister|out\(11) & 
-- \CPU|statemachine|WideOr26~0_combout\) ) ) ) # ( \CPU|statemachine|WideNor16~12_combout\ & ( !\e1~combout\ & ( \CPU|instructionReg|out\(7) ) ) ) # ( !\CPU|statemachine|WideNor16~12_combout\ & ( !\e1~combout\ & ( (!\CPU|statemachine|WideOr26~0_combout\ & 
-- ((\MEM|mem_rtl_0|auto_generated|ram_block1a11\))) # (\CPU|statemachine|WideOr26~0_combout\ & (\CPU|DP|cRegister|out\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100110011001100000101000001010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|cRegister|ALT_INV_out\(11),
	datab => \CPU|instructionReg|ALT_INV_out\(7),
	datac => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux4~0_combout\);

-- Location: FF_X16_Y3_N5
\CPU|DP|REGFILE|toR6|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(11));

-- Location: FF_X15_Y3_N50
\CPU|DP|REGFILE|toR5|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(11));

-- Location: FF_X15_Y3_N22
\CPU|DP|REGFILE|toR4|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(11));

-- Location: LABCELL_X16_Y3_N6
\CPU|DP|REGFILE|chooser|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector4~1_combout\ = ( \CPU|muxintoregister|Mux2~0_combout\ & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (\CPU|DP|REGFILE|toR5|out\(11) & !\CPU|muxintoregister|Mux1~0_combout\) ) ) ) # ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR4|out\(11)))) # (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010101010011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR6|ALT_INV_out\(11),
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(11),
	datac => \CPU|DP|REGFILE|toR4|ALT_INV_out\(11),
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector4~1_combout\);

-- Location: FF_X16_Y2_N17
\CPU|DP|REGFILE|toR7|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(11));

-- Location: MLABCELL_X15_Y2_N36
\CPU|DP|REGFILE|toR1|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[11]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux4~0_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[11]~feeder_combout\);

-- Location: FF_X15_Y2_N38
\CPU|DP|REGFILE|toR1|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[11]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(11));

-- Location: MLABCELL_X15_Y3_N12
\CPU|DP|REGFILE|toR0|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[11]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux4~0_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[11]~feeder_combout\);

-- Location: FF_X15_Y3_N14
\CPU|DP|REGFILE|toR0|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[11]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(11));

-- Location: FF_X16_Y2_N22
\CPU|DP|REGFILE|toR2|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(11));

-- Location: FF_X16_Y2_N31
\CPU|DP|REGFILE|toR3|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(11));

-- Location: MLABCELL_X15_Y3_N18
\CPU|DP|REGFILE|chooser|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector4~0_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR2|out\(11) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR3|out\(11) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR1|out\(11) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR0|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(11),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(11),
	datac => \CPU|DP|REGFILE|toR2|ALT_INV_out\(11),
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(11),
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector4~0_combout\);

-- Location: LABCELL_X16_Y3_N42
\CPU|DP|REGFILE|chooser|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector4~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector4~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\)) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ 
-- & ((\CPU|DP|REGFILE|toR7|out\(11))))) # (\CPU|DP|REGFILE|chooser|Selector4~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector4~0_combout\ & ( ((\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \CPU|DP|REGFILE|toR7|out\(11))) # 
-- (\CPU|DP|REGFILE|chooser|Selector4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111110110011101111111011001110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector4~1_combout\,
	datac => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|DP|REGFILE|toR7|ALT_INV_out\(11),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector4~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector4~2_combout\);

-- Location: FF_X16_Y3_N41
\CPU|DP|bRegister|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector4~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(11));

-- Location: FF_X13_Y2_N23
\CPU|DP|aRegister|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector3~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(12));

-- Location: LABCELL_X17_Y4_N27
\CPU|DP|Ain[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[12]~13_combout\ = (\CPU|statemachine|WideOr23~0_combout\ & (\CPU|DP|aRegister|out\(12) & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000100000001010000010000000101000001000000010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|DP|aRegister|ALT_INV_out\(12),
	datad => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[12]~13_combout\);

-- Location: FF_X17_Y2_N52
\CPU|DP|aRegister|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector2~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(13));

-- Location: LABCELL_X17_Y2_N51
\CPU|DP|Ain[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[13]~9_combout\ = ( \CPU|DP|aRegister|out\(13) & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & \CPU|statemachine|WideOr23~0_combout\) ) ) ) # ( \CPU|DP|aRegister|out\(13) & ( 
-- !\CPU|statemachine|always0~9_combout\ & ( \CPU|statemachine|WideOr23~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datae => \CPU|DP|aRegister|ALT_INV_out\(13),
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[13]~9_combout\);

-- Location: FF_X13_Y2_N8
\CPU|DP|bRegister|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector3~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(12));

-- Location: FF_X13_Y2_N56
\CPU|DP|aRegister|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector1~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(14));

-- Location: LABCELL_X17_Y4_N0
\CPU|DP|Ain[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[14]~10_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( (\CPU|statemachine|WideOr23~0_combout\ & (!\CPU|statemachine|WideNor16~19_combout\ & \CPU|DP|aRegister|out\(14))) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (\CPU|statemachine|WideOr23~0_combout\ & \CPU|DP|aRegister|out\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(14),
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[14]~10_combout\);

-- Location: LABCELL_X13_Y4_N30
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \CPU|instructionReg|out\(3) & ( \CPU|DP|bRegister|out\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|bRegister|ALT_INV_out\(14),
	dataf => \CPU|instructionReg|ALT_INV_out\(3),
	combout => \rtl~4_combout\);

-- Location: FF_X12_Y3_N23
\CPU|DP|aRegister|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector0~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(15));

-- Location: LABCELL_X13_Y4_N15
\CPU|DP|Ain[15]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[15]~11_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & (\CPU|DP|aRegister|out\(15) & \CPU|statemachine|WideOr23~0_combout\)) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (\CPU|DP|aRegister|out\(15) & \CPU|statemachine|WideOr23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|DP|aRegister|ALT_INV_out\(15),
	datad => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[15]~11_combout\);

-- Location: LABCELL_X13_Y4_N33
\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = ( \CPU|instructionReg|out\(4) & ( !\CPU|instructionReg|out\(3) ) ) # ( !\CPU|instructionReg|out\(4) & ( \CPU|instructionReg|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(3),
	dataf => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \rtl~5_combout\);

-- Location: FF_X17_Y3_N44
\CPU|DP|aRegister|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector4~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(11));

-- Location: LABCELL_X17_Y4_N18
\CPU|DP|Ain[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[11]~12_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & (\CPU|statemachine|WideOr23~0_combout\ & \CPU|DP|aRegister|out\(11))) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (\CPU|statemachine|WideOr23~0_combout\ & \CPU|DP|aRegister|out\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(11),
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[11]~12_combout\);

-- Location: FF_X12_Y3_N11
\CPU|DP|bRegister|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector6~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(9));

-- Location: LABCELL_X12_Y3_N0
\CPU|DP|Bin[10]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[10]~25_combout\ = ( \CPU|DP|bRegister|out\(9) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(11)) ) ) # ( !\CPU|DP|bRegister|out\(9) & ( (\CPU|DP|bRegister|out\(11) & \CPU|instructionReg|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|bRegister|ALT_INV_out\(11),
	datad => \CPU|instructionReg|ALT_INV_out\(4),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(9),
	combout => \CPU|DP|Bin[10]~25_combout\);

-- Location: FF_X12_Y3_N26
\CPU|DP|aRegister|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector5~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(10));

-- Location: LABCELL_X17_Y4_N15
\CPU|DP|Ain[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[10]~14_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( (\CPU|statemachine|WideOr23~0_combout\ & (\CPU|DP|aRegister|out\(10) & !\CPU|statemachine|WideNor16~19_combout\)) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (\CPU|statemachine|WideOr23~0_combout\ & \CPU|DP|aRegister|out\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datab => \CPU|DP|aRegister|ALT_INV_out\(10),
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[10]~14_combout\);

-- Location: FF_X12_Y3_N5
\CPU|DP|aRegister|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector6~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(9));

-- Location: LABCELL_X17_Y4_N54
\CPU|DP|Ain[9]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[9]~15_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & (\CPU|statemachine|WideOr23~0_combout\ & \CPU|DP|aRegister|out\(9))) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (\CPU|statemachine|WideOr23~0_combout\ & \CPU|DP|aRegister|out\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(9),
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[9]~15_combout\);

-- Location: LABCELL_X12_Y3_N30
\CPU|DP|Bin[9]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[9]~23_combout\ = (!\CPU|instructionReg|out\(4) & (\CPU|DP|bRegister|out\(8))) # (\CPU|instructionReg|out\(4) & ((\CPU|DP|bRegister|out\(10))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|bRegister|ALT_INV_out\(8),
	datac => \CPU|DP|bRegister|ALT_INV_out\(10),
	datad => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[9]~23_combout\);

-- Location: FF_X12_Y3_N41
\CPU|DP|aRegister|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector7~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(8));

-- Location: LABCELL_X18_Y5_N48
\CPU|DP|Ain[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[8]~8_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|DP|aRegister|out\(8) & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111011100000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(8),
	dataf => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	combout => \CPU|DP|Ain[8]~8_combout\);

-- Location: LABCELL_X12_Y3_N54
\CPU|DP|Bin[8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[8]~13_combout\ = ( \CPU|DP|bRegister|out\(7) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(9)) ) ) # ( !\CPU|DP|bRegister|out\(7) & ( (\CPU|DP|bRegister|out\(9) & \CPU|instructionReg|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|bRegister|ALT_INV_out\(9),
	datad => \CPU|instructionReg|ALT_INV_out\(4),
	datae => \CPU|DP|bRegister|ALT_INV_out\(7),
	combout => \CPU|DP|Bin[8]~13_combout\);

-- Location: FF_X17_Y3_N11
\CPU|DP|aRegister|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector8~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(7));

-- Location: LABCELL_X17_Y3_N48
\CPU|DP|Ain[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[7]~7_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( (\CPU|DP|aRegister|out\(7) & (!\CPU|statemachine|WideNor16~19_combout\ & \CPU|statemachine|WideOr23~0_combout\)) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (\CPU|DP|aRegister|out\(7) & \CPU|statemachine|WideOr23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|aRegister|ALT_INV_out\(7),
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datad => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[7]~7_combout\);

-- Location: LABCELL_X12_Y3_N42
\CPU|DP|Bin[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[7]~11_combout\ = ( \CPU|DP|bRegister|out\(6) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(8)) ) ) # ( !\CPU|DP|bRegister|out\(6) & ( (\CPU|DP|bRegister|out\(8) & \CPU|instructionReg|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|bRegister|ALT_INV_out\(8),
	datad => \CPU|instructionReg|ALT_INV_out\(4),
	datae => \CPU|DP|bRegister|ALT_INV_out\(6),
	combout => \CPU|DP|Bin[7]~11_combout\);

-- Location: FF_X12_Y3_N14
\CPU|DP|aRegister|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector9~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(6));

-- Location: LABCELL_X18_Y5_N6
\CPU|DP|Ain[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[6]~6_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (\CPU|DP|aRegister|out\(6) & !\CPU|statemachine|WideNor16~19_combout\) ) ) ) # ( \CPU|statemachine|WideOr23~0_combout\ & ( 
-- !\CPU|statemachine|always0~9_combout\ & ( \CPU|DP|aRegister|out\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|aRegister|ALT_INV_out\(6),
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[6]~6_combout\);

-- Location: LABCELL_X17_Y3_N21
\CPU|DP|Bin[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[6]~9_combout\ = ( \CPU|DP|bRegister|out\(5) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(7)) ) ) # ( !\CPU|DP|bRegister|out\(5) & ( (\CPU|instructionReg|out\(4) & \CPU|DP|bRegister|out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(7),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(5),
	combout => \CPU|DP|Bin[6]~9_combout\);

-- Location: LABCELL_X17_Y5_N48
\CPU|DP|CMP|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~21_sumout\ = SUM(( !\CPU|instructionReg|out\(11) $ (((!\CPU|instructionReg|out\(4) & ((!\rtl~8_combout\))) # (\CPU|instructionReg|out\(4) & (!\CPU|DP|bRegister|out\(6))))) ) + ( \CPU|DP|Ain[5]~5_combout\ ) + ( \CPU|DP|CMP|Add0~18\ ))
-- \CPU|DP|CMP|Add0~22\ = CARRY(( !\CPU|instructionReg|out\(11) $ (((!\CPU|instructionReg|out\(4) & ((!\rtl~8_combout\))) # (\CPU|instructionReg|out\(4) & (!\CPU|DP|bRegister|out\(6))))) ) + ( \CPU|DP|Ain[5]~5_combout\ ) + ( \CPU|DP|CMP|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(6),
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \ALT_INV_rtl~8_combout\,
	dataf => \CPU|DP|ALT_INV_Ain[5]~5_combout\,
	cin => \CPU|DP|CMP|Add0~18\,
	sumout => \CPU|DP|CMP|Add0~21_sumout\,
	cout => \CPU|DP|CMP|Add0~22\);

-- Location: LABCELL_X17_Y5_N51
\CPU|DP|CMP|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~25_sumout\ = SUM(( \CPU|DP|Ain[6]~6_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(6))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[6]~9_combout\))))) ) + ( \CPU|DP|CMP|Add0~22\ 
-- ))
-- \CPU|DP|CMP|Add0~26\ = CARRY(( \CPU|DP|Ain[6]~6_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(6))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[6]~9_combout\))))) ) + ( \CPU|DP|CMP|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100111001001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(6),
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datad => \CPU|DP|ALT_INV_Ain[6]~6_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[6]~9_combout\,
	cin => \CPU|DP|CMP|Add0~22\,
	sumout => \CPU|DP|CMP|Add0~25_sumout\,
	cout => \CPU|DP|CMP|Add0~26\);

-- Location: LABCELL_X17_Y5_N54
\CPU|DP|CMP|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~29_sumout\ = SUM(( \CPU|DP|Ain[7]~7_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(7))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[7]~11_combout\))))) ) + ( \CPU|DP|CMP|Add0~26\ 
-- ))
-- \CPU|DP|CMP|Add0~30\ = CARRY(( \CPU|DP|Ain[7]~7_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(7))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[7]~11_combout\))))) ) + ( \CPU|DP|CMP|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|bRegister|ALT_INV_out\(7),
	datad => \CPU|DP|ALT_INV_Ain[7]~7_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[7]~11_combout\,
	cin => \CPU|DP|CMP|Add0~26\,
	sumout => \CPU|DP|CMP|Add0~29_sumout\,
	cout => \CPU|DP|CMP|Add0~30\);

-- Location: LABCELL_X17_Y5_N57
\CPU|DP|CMP|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~37_sumout\ = SUM(( \CPU|DP|Ain[8]~8_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(8))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[8]~13_combout\))))) ) + ( \CPU|DP|CMP|Add0~30\ 
-- ))
-- \CPU|DP|CMP|Add0~38\ = CARRY(( \CPU|DP|Ain[8]~8_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(8))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[8]~13_combout\))))) ) + ( \CPU|DP|CMP|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|bRegister|ALT_INV_out\(8),
	datad => \CPU|DP|ALT_INV_Ain[8]~8_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[8]~13_combout\,
	cin => \CPU|DP|CMP|Add0~30\,
	sumout => \CPU|DP|CMP|Add0~37_sumout\,
	cout => \CPU|DP|CMP|Add0~38\);

-- Location: LABCELL_X17_Y4_N30
\CPU|DP|CMP|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~65_sumout\ = SUM(( \CPU|DP|Ain[9]~15_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out[9]~DUPLICATE_q\)) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[9]~23_combout\))))) ) 
-- + ( \CPU|DP|CMP|Add0~38\ ))
-- \CPU|DP|CMP|Add0~66\ = CARRY(( \CPU|DP|Ain[9]~15_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out[9]~DUPLICATE_q\)) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[9]~23_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\,
	datad => \CPU|DP|ALT_INV_Ain[9]~15_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[9]~23_combout\,
	cin => \CPU|DP|CMP|Add0~38\,
	sumout => \CPU|DP|CMP|Add0~65_sumout\,
	cout => \CPU|DP|CMP|Add0~66\);

-- Location: LABCELL_X17_Y4_N33
\CPU|DP|CMP|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~61_sumout\ = SUM(( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(10))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[10]~25_combout\))))) ) + ( \CPU|DP|Ain[10]~14_combout\ ) + ( 
-- \CPU|DP|CMP|Add0~66\ ))
-- \CPU|DP|CMP|Add0~62\ = CARRY(( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(10))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[10]~25_combout\))))) ) + ( \CPU|DP|Ain[10]~14_combout\ ) + ( 
-- \CPU|DP|CMP|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(10),
	datad => \CPU|DP|ALT_INV_Bin[10]~25_combout\,
	dataf => \CPU|DP|ALT_INV_Ain[10]~14_combout\,
	cin => \CPU|DP|CMP|Add0~66\,
	sumout => \CPU|DP|CMP|Add0~61_sumout\,
	cout => \CPU|DP|CMP|Add0~62\);

-- Location: LABCELL_X17_Y4_N36
\CPU|DP|CMP|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~53_sumout\ = SUM(( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(11))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[11]~19_combout\))))) ) + ( \CPU|DP|Ain[11]~12_combout\ ) + ( 
-- \CPU|DP|CMP|Add0~62\ ))
-- \CPU|DP|CMP|Add0~54\ = CARRY(( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(11))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[11]~19_combout\))))) ) + ( \CPU|DP|Ain[11]~12_combout\ ) + ( 
-- \CPU|DP|CMP|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101100101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(11),
	datad => \CPU|DP|ALT_INV_Bin[11]~19_combout\,
	dataf => \CPU|DP|ALT_INV_Ain[11]~12_combout\,
	cin => \CPU|DP|CMP|Add0~62\,
	sumout => \CPU|DP|CMP|Add0~53_sumout\,
	cout => \CPU|DP|CMP|Add0~54\);

-- Location: LABCELL_X17_Y4_N39
\CPU|DP|CMP|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~57_sumout\ = SUM(( \CPU|DP|Ain[12]~13_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out[12]~DUPLICATE_q\)) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[12]~21_combout\))))) 
-- ) + ( \CPU|DP|CMP|Add0~54\ ))
-- \CPU|DP|CMP|Add0~58\ = CARRY(( \CPU|DP|Ain[12]~13_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out[12]~DUPLICATE_q\)) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[12]~21_combout\))))) ) + 
-- ( \CPU|DP|CMP|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out[12]~DUPLICATE_q\,
	datad => \CPU|DP|ALT_INV_Ain[12]~13_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[12]~21_combout\,
	cin => \CPU|DP|CMP|Add0~54\,
	sumout => \CPU|DP|CMP|Add0~57_sumout\,
	cout => \CPU|DP|CMP|Add0~58\);

-- Location: LABCELL_X17_Y4_N42
\CPU|DP|CMP|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~41_sumout\ = SUM(( \CPU|DP|Ain[13]~9_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(13))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[13]~15_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~58\ ))
-- \CPU|DP|CMP|Add0~42\ = CARRY(( \CPU|DP|Ain[13]~9_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(13))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[13]~15_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(13),
	datad => \CPU|DP|ALT_INV_Ain[13]~9_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[13]~15_combout\,
	cin => \CPU|DP|CMP|Add0~58\,
	sumout => \CPU|DP|CMP|Add0~41_sumout\,
	cout => \CPU|DP|CMP|Add0~42\);

-- Location: LABCELL_X17_Y4_N45
\CPU|DP|CMP|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~45_sumout\ = SUM(( \CPU|DP|Ain[14]~10_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(14))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[14]~17_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~42\ ))
-- \CPU|DP|CMP|Add0~46\ = CARRY(( \CPU|DP|Ain[14]~10_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(14))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[14]~17_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(14),
	datad => \CPU|DP|ALT_INV_Ain[14]~10_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[14]~17_combout\,
	cin => \CPU|DP|CMP|Add0~42\,
	sumout => \CPU|DP|CMP|Add0~45_sumout\,
	cout => \CPU|DP|CMP|Add0~46\);

-- Location: LABCELL_X17_Y4_N48
\CPU|DP|CMP|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~49_sumout\ = SUM(( \CPU|DP|Ain[15]~11_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\rtl~5_combout\ & (!\CPU|DP|bRegister|out\(15))) # (\rtl~5_combout\ & ((!\rtl~4_combout\))))) ) + ( \CPU|DP|CMP|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|bRegister|ALT_INV_out\(15),
	datac => \ALT_INV_rtl~4_combout\,
	datad => \CPU|DP|ALT_INV_Ain[15]~11_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	cin => \CPU|DP|CMP|Add0~46\,
	sumout => \CPU|DP|CMP|Add0~49_sumout\);

-- Location: LABCELL_X13_Y4_N12
\rtl~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = ( \rtl~4_combout\ & ( (\CPU|DP|bRegister|out\(15)) # (\rtl~5_combout\) ) ) # ( !\rtl~4_combout\ & ( (!\rtl~5_combout\ & \CPU|DP|bRegister|out\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~5_combout\,
	datad => \CPU|DP|bRegister|ALT_INV_out\(15),
	dataf => \ALT_INV_rtl~4_combout\,
	combout => \rtl~10_combout\);

-- Location: LABCELL_X13_Y4_N3
\CPU|DP|CMP|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux0~0_combout\ = ( \CPU|DP|aRegister|out\(15) & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\rtl~10_combout\ & (!\CPU|statemachine|WideNor16~19_combout\ & \CPU|statemachine|WideOr23~0_combout\))) # 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\rtl~10_combout\)) ) ) ) # ( !\CPU|DP|aRegister|out\(15) & ( \CPU|statemachine|always0~9_combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & !\rtl~10_combout\) ) ) ) # ( \CPU|DP|aRegister|out\(15) & ( 
-- !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\rtl~10_combout\ & \CPU|statemachine|WideOr23~0_combout\)) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\rtl~10_combout\)) ) ) ) # ( !\CPU|DP|aRegister|out\(15) & ( 
-- !\CPU|statemachine|always0~9_combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & !\rtl~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000110011001000100010001000100010001100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \ALT_INV_rtl~10_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datad => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datae => \CPU|DP|aRegister|ALT_INV_out\(15),
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|CMP|Mux0~0_combout\);

-- Location: LABCELL_X19_Y4_N48
\CPU|statemachine|always0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~14_combout\ = ( \CPU|statemachine|always0~5_combout\ & ( \CPU|statemachine|WideNor16~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_WideNor16~15_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~5_combout\,
	combout => \CPU|statemachine|always0~14_combout\);

-- Location: LABCELL_X19_Y4_N57
\CPU|statemachine|always0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~16_combout\ = ( \CPU|statemachine|WideNor16~9_combout\ & ( (!\CPU|statemachine|WideNor16~10_combout\ & \CPU|statemachine|always0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_WideNor16~10_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~12_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideNor16~9_combout\,
	combout => \CPU|statemachine|always0~16_combout\);

-- Location: LABCELL_X19_Y2_N36
\CPU|statemachine|loads\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|loads~combout\ = ( !\CPU|statemachine|WideNor16~5_combout\ & ( \CPU|statemachine|always0~4_combout\ & ( (\CPU|statemachine|WideNor16~4_combout\ & !\CPU|statemachine|WideNor16~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideNor16~4_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~6_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~5_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~4_combout\,
	combout => \CPU|statemachine|loads~combout\);

-- Location: LABCELL_X19_Y4_N39
\CPU|statemachine|WideOr20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr20~0_combout\ = ( !\CPU|statemachine|loads~combout\ & ( (!\CPU|statemachine|always0~16_combout\ & !\CPU|statemachine|always0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_always0~16_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~13_combout\,
	dataf => \CPU|statemachine|ALT_INV_loads~combout\,
	combout => \CPU|statemachine|WideOr20~0_combout\);

-- Location: LABCELL_X19_Y4_N24
\CPU|statemachine|WideOr20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr20~combout\ = ( \CPU|statemachine|WideOr20~0_combout\ & ( (((\CPU|statemachine|WideNor16~19_combout\ & \CPU|statemachine|always0~9_combout\)) # (\CPU|statemachine|always0~15_combout\)) # (\CPU|statemachine|always0~14_combout\) ) ) 
-- # ( !\CPU|statemachine|WideOr20~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~14_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~15_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr20~0_combout\,
	combout => \CPU|statemachine|WideOr20~combout\);

-- Location: FF_X17_Y4_N49
\CPU|DP|cRegister|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|CMP|Add0~49_sumout\,
	asdata => \CPU|DP|CMP|Mux0~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(15));

-- Location: MLABCELL_X15_Y3_N33
\CPU|DP|muxintoregister|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux0~0_combout\ = ( \CPU|statemachine|WideNor16~12_combout\ & ( \e1~combout\ & ( \CPU|instructionReg|out\(7) ) ) ) # ( !\CPU|statemachine|WideNor16~12_combout\ & ( \e1~combout\ & ( (\CPU|statemachine|WideOr26~0_combout\ & 
-- \CPU|DP|cRegister|out\(15)) ) ) ) # ( \CPU|statemachine|WideNor16~12_combout\ & ( !\e1~combout\ & ( \CPU|instructionReg|out\(7) ) ) ) # ( !\CPU|statemachine|WideNor16~12_combout\ & ( !\e1~combout\ & ( (!\CPU|statemachine|WideOr26~0_combout\ & 
-- (\MEM|mem_rtl_0|auto_generated|ram_block1a15\)) # (\CPU|statemachine|WideOr26~0_combout\ & ((\CPU|DP|cRegister|out\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001111111100000101000001010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datab => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	datac => \CPU|DP|cRegister|ALT_INV_out\(15),
	datad => \CPU|instructionReg|ALT_INV_out\(7),
	datae => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux0~0_combout\);

-- Location: FF_X17_Y3_N31
\CPU|DP|REGFILE|toR7|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(15));

-- Location: FF_X15_Y3_N34
\CPU|DP|REGFILE|toR5|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux0~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(15));

-- Location: LABCELL_X13_Y3_N30
\CPU|DP|REGFILE|toR6|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR6|out[15]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|toR6|out[15]~feeder_combout\);

-- Location: FF_X13_Y3_N32
\CPU|DP|REGFILE|toR6|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR6|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(15));

-- Location: FF_X13_Y3_N2
\CPU|DP|REGFILE|toR4|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(15));

-- Location: LABCELL_X13_Y3_N0
\CPU|DP|REGFILE|chooser|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector0~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(15) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & (((!\CPU|muxintoregister|Mux1~0_combout\) # (\CPU|DP|REGFILE|toR6|out\(15))))) # 
-- (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(15) & (!\CPU|muxintoregister|Mux1~0_combout\))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(15) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & 
-- (((\CPU|muxintoregister|Mux1~0_combout\ & \CPU|DP|REGFILE|toR6|out\(15))))) # (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(15) & (!\CPU|muxintoregister|Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000110101011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(15),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(15),
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(15),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector0~1_combout\);

-- Location: FF_X18_Y3_N40
\CPU|DP|REGFILE|toR2|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(15));

-- Location: FF_X15_Y3_N41
\CPU|DP|REGFILE|toR0|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(15));

-- Location: FF_X12_Y3_N34
\CPU|DP|REGFILE|toR3|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(15));

-- Location: LABCELL_X13_Y3_N57
\CPU|DP|REGFILE|toR1|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[15]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[15]~feeder_combout\);

-- Location: FF_X13_Y3_N59
\CPU|DP|REGFILE|toR1|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(15));

-- Location: LABCELL_X13_Y3_N15
\CPU|DP|REGFILE|chooser|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector0~0_combout\ = ( \CPU|DP|REGFILE|toR1|out\(15) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\) # (\CPU|DP|REGFILE|toR2|out\(15)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR1|out\(15) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR2|out\(15) & \CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR1|out\(15) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ 
-- & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(15))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(15)))) ) ) ) # ( !\CPU|DP|REGFILE|toR1|out\(15) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(15))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR2|ALT_INV_out\(15),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(15),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(15),
	datae => \CPU|DP|REGFILE|toR1|ALT_INV_out\(15),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector0~0_combout\);

-- Location: LABCELL_X12_Y3_N21
\CPU|DP|REGFILE|chooser|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector0~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(15) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|chooser|Selector0~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(15) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|chooser|Selector0~1_combout\) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector0~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) # 
-- (\CPU|DP|REGFILE|chooser|Selector0~1_combout\)) # (\CPU|DP|REGFILE|toR7|out\(15)) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector0~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(15) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111111101011111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(15),
	datac => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector0~1_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector0~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector0~2_combout\);

-- Location: FF_X12_Y3_N52
\CPU|DP|bRegister|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector0~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(15));

-- Location: LABCELL_X17_Y4_N12
\CPU|DP|Bin[14]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[14]~17_combout\ = ( \CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(15) ) ) # ( !\CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|bRegister|ALT_INV_out\(13),
	datad => \CPU|DP|bRegister|ALT_INV_out\(15),
	dataf => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[14]~17_combout\);

-- Location: LABCELL_X17_Y4_N24
\CPU|DP|cRegister|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[14]~feeder_combout\ = \CPU|DP|CMP|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DP|CMP|ALT_INV_Add0~45_sumout\,
	combout => \CPU|DP|cRegister|out[14]~feeder_combout\);

-- Location: LABCELL_X13_Y4_N24
\CPU|DP|Bin[14]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[14]~18_combout\ = ( \CPU|DP|Bin[14]~17_combout\ & ( (\CPU|DP|bRegister|out\(14)) # (\CPU|DP|Bin[1]~0_combout\) ) ) # ( !\CPU|DP|Bin[14]~17_combout\ & ( (!\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|bRegister|out\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(14),
	dataf => \CPU|DP|ALT_INV_Bin[14]~17_combout\,
	combout => \CPU|DP|Bin[14]~18_combout\);

-- Location: LABCELL_X13_Y4_N21
\CPU|DP|CMP|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux1~0_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|aRegister|out\(14) & (!\CPU|statemachine|WideNor16~19_combout\ & 
-- \CPU|DP|Bin[14]~18_combout\))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (((!\CPU|DP|Bin[14]~18_combout\)))) ) ) ) # ( !\CPU|statemachine|WideOr23~0_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & 
-- !\CPU|DP|Bin[14]~18_combout\) ) ) ) # ( \CPU|statemachine|WideOr23~0_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|aRegister|out\(14) & \CPU|DP|Bin[14]~18_combout\)) # 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[14]~18_combout\))) ) ) ) # ( !\CPU|statemachine|WideOr23~0_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & !\CPU|DP|Bin[14]~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110101000000001111000000000000111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|aRegister|ALT_INV_out\(14),
	datab => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|DP|ALT_INV_Bin[14]~18_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|CMP|Mux1~0_combout\);

-- Location: FF_X17_Y4_N25
\CPU|DP|cRegister|out[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[14]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux1~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out[14]~DUPLICATE_q\);

-- Location: FF_X17_Y4_N26
\CPU|DP|cRegister|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[14]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux1~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(14));

-- Location: M10K_X14_Y5_N0
\MEM|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000140000000E00000000081600000006120000000D109000000C06A00000060400000006000000000D008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab7_top.ram0_RAM_15119.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:MEM|altsyncram:mem_rtl_0|altsyncram_65r1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \write~combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X15_Y3_N9
\CPU|DP|muxintoregister|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux1~0_combout\ = ( \CPU|instructionReg|out\(7) & ( \e1~combout\ & ( ((\CPU|DP|cRegister|out[14]~DUPLICATE_q\ & \CPU|statemachine|WideOr26~0_combout\)) # (\CPU|statemachine|WideNor16~12_combout\) ) ) ) # ( 
-- !\CPU|instructionReg|out\(7) & ( \e1~combout\ & ( (\CPU|DP|cRegister|out[14]~DUPLICATE_q\ & (!\CPU|statemachine|WideNor16~12_combout\ & \CPU|statemachine|WideOr26~0_combout\)) ) ) ) # ( \CPU|instructionReg|out\(7) & ( !\e1~combout\ & ( 
-- ((!\CPU|statemachine|WideOr26~0_combout\ & ((\MEM|mem_rtl_0|auto_generated|ram_block1a14\))) # (\CPU|statemachine|WideOr26~0_combout\ & (\CPU|DP|cRegister|out[14]~DUPLICATE_q\))) # (\CPU|statemachine|WideNor16~12_combout\) ) ) ) # ( 
-- !\CPU|instructionReg|out\(7) & ( !\e1~combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & ((!\CPU|statemachine|WideOr26~0_combout\ & ((\MEM|mem_rtl_0|auto_generated|ram_block1a14\))) # (\CPU|statemachine|WideOr26~0_combout\ & 
-- (\CPU|DP|cRegister|out[14]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110111011100000000010001000011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|cRegister|ALT_INV_out[14]~DUPLICATE_q\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datad => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datae => \CPU|instructionReg|ALT_INV_out\(7),
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux1~0_combout\);

-- Location: FF_X16_Y2_N43
\CPU|DP|REGFILE|toR7|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(14));

-- Location: MLABCELL_X15_Y3_N57
\CPU|DP|REGFILE|toR4|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR4|out[14]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|toR4|out[14]~feeder_combout\);

-- Location: FF_X15_Y3_N59
\CPU|DP|REGFILE|toR4|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR4|out[14]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(14));

-- Location: FF_X15_Y3_N11
\CPU|DP|REGFILE|toR5|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux1~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(14));

-- Location: FF_X16_Y3_N32
\CPU|DP|REGFILE|toR6|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(14));

-- Location: LABCELL_X13_Y2_N24
\CPU|DP|REGFILE|chooser|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector1~1_combout\ = ( \CPU|muxintoregister|Mux2~0_combout\ & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (\CPU|DP|REGFILE|toR5|out\(14) & !\CPU|muxintoregister|Mux1~0_combout\) ) ) ) # ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(14))) # (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR4|ALT_INV_out\(14),
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(14),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(14),
	datae => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector1~1_combout\);

-- Location: MLABCELL_X15_Y2_N24
\CPU|DP|REGFILE|toR1|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[14]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[14]~feeder_combout\);

-- Location: FF_X15_Y2_N26
\CPU|DP|REGFILE|toR1|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[14]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(14));

-- Location: FF_X15_Y3_N4
\CPU|DP|REGFILE|toR0|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(14));

-- Location: MLABCELL_X15_Y2_N12
\CPU|DP|REGFILE|toR3|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[14]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[14]~feeder_combout\);

-- Location: FF_X15_Y2_N14
\CPU|DP|REGFILE|toR3|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[14]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(14));

-- Location: FF_X15_Y2_N44
\CPU|DP|REGFILE|toR2|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(14));

-- Location: MLABCELL_X15_Y2_N42
\CPU|DP|REGFILE|chooser|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector1~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(14) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) # (\CPU|DP|REGFILE|toR1|out\(14)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(14) 
-- & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(14) & !\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(14) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(14))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(14)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(14) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(14))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(14),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(14),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(14),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(14),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector1~0_combout\);

-- Location: LABCELL_X13_Y2_N54
\CPU|DP|REGFILE|chooser|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector1~2_combout\ = ( \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector1~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector1~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(14)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector1~0_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\) # (\CPU|DP|REGFILE|chooser|Selector1~1_combout\) ) ) ) # ( 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector1~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector1~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(14)) ) ) ) # ( !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( 
-- !\CPU|DP|REGFILE|chooser|Selector1~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111110011111111111111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|REGFILE|toR7|ALT_INV_out\(14),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector1~1_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datae => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector1~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector1~2_combout\);

-- Location: FF_X13_Y2_N29
\CPU|DP|bRegister|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector1~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(14));

-- Location: LABCELL_X13_Y2_N48
\CPU|DP|Bin[13]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[13]~15_combout\ = ( \CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(14) ) ) # ( !\CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|bRegister|ALT_INV_out\(12),
	datac => \CPU|DP|bRegister|ALT_INV_out\(14),
	dataf => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[13]~15_combout\);

-- Location: LABCELL_X17_Y4_N21
\CPU|DP|cRegister|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[13]~feeder_combout\ = ( \CPU|DP|CMP|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~41_sumout\,
	combout => \CPU|DP|cRegister|out[13]~feeder_combout\);

-- Location: LABCELL_X13_Y2_N51
\CPU|DP|Bin[13]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[13]~16_combout\ = ( \CPU|DP|Bin[13]~15_combout\ & ( (\CPU|DP|Bin[1]~0_combout\) # (\CPU|DP|bRegister|out\(13)) ) ) # ( !\CPU|DP|Bin[13]~15_combout\ & ( (\CPU|DP|bRegister|out\(13) & !\CPU|DP|Bin[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(13),
	datac => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[13]~15_combout\,
	combout => \CPU|DP|Bin[13]~16_combout\);

-- Location: LABCELL_X17_Y2_N12
\CPU|DP|CMP|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux2~0_combout\ = ( \CPU|DP|Bin[13]~16_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|instructionReg|out\(11) & (\CPU|DP|aRegister|out\(13) & (!\CPU|statemachine|WideNor16~19_combout\ & \CPU|statemachine|WideOr23~0_combout\))) ) 
-- ) ) # ( !\CPU|DP|Bin[13]~16_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( \CPU|instructionReg|out\(11) ) ) ) # ( \CPU|DP|Bin[13]~16_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|instructionReg|out\(11) & (\CPU|DP|aRegister|out\(13) 
-- & \CPU|statemachine|WideOr23~0_combout\)) ) ) ) # ( !\CPU|DP|Bin[13]~16_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( \CPU|instructionReg|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000010001001010101010101010000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(11),
	datab => \CPU|DP|aRegister|ALT_INV_out\(13),
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datad => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datae => \CPU|DP|ALT_INV_Bin[13]~16_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|CMP|Mux2~0_combout\);

-- Location: FF_X17_Y4_N22
\CPU|DP|cRegister|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[13]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux2~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(13));

-- Location: MLABCELL_X15_Y3_N0
\CPU|DP|muxintoregister|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux2~0_combout\ = ( \CPU|DP|cRegister|out\(13) & ( \e1~combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & (\CPU|statemachine|WideOr26~0_combout\)) # (\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|instructionReg|out\(7)))) 
-- ) ) ) # ( !\CPU|DP|cRegister|out\(13) & ( \e1~combout\ & ( (\CPU|statemachine|WideNor16~12_combout\ & \CPU|instructionReg|out\(7)) ) ) ) # ( \CPU|DP|cRegister|out\(13) & ( !\e1~combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & 
-- (((\CPU|statemachine|WideOr26~0_combout\)) # (\MEM|mem_rtl_0|auto_generated|ram_block1a13\))) # (\CPU|statemachine|WideNor16~12_combout\ & (((\CPU|instructionReg|out\(7))))) ) ) ) # ( !\CPU|DP|cRegister|out\(13) & ( !\e1~combout\ & ( 
-- (!\CPU|statemachine|WideNor16~12_combout\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a13\ & (!\CPU|statemachine|WideOr26~0_combout\))) # (\CPU|statemachine|WideNor16~12_combout\ & (((\CPU|instructionReg|out\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010011000111111100000000001100110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(7),
	datae => \CPU|DP|cRegister|ALT_INV_out\(13),
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux2~0_combout\);

-- Location: FF_X16_Y3_N7
\CPU|DP|REGFILE|toR4|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(13));

-- Location: FF_X16_Y3_N23
\CPU|DP|REGFILE|toR6|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(13));

-- Location: FF_X15_Y3_N8
\CPU|DP|REGFILE|toR5|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(13));

-- Location: LABCELL_X17_Y2_N33
\CPU|DP|REGFILE|chooser|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector2~1_combout\ = ( \CPU|muxintoregister|Mux2~0_combout\ & ( \CPU|DP|REGFILE|toR5|out\(13) & ( (!\CPU|muxintoregister|Mux1~0_combout\ & \CPU|muxintoregister|Mux0~0_combout\) ) ) ) # ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- \CPU|DP|REGFILE|toR5|out\(13) & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(13))) # (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(13)))))) ) ) ) # ( 
-- !\CPU|muxintoregister|Mux2~0_combout\ & ( !\CPU|DP|REGFILE|toR5|out\(13) & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(13))) # (\CPU|muxintoregister|Mux1~0_combout\ & 
-- ((\CPU|DP|REGFILE|toR6|out\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000000000000000000010100110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR4|ALT_INV_out\(13),
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(13),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datae => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|DP|REGFILE|toR5|ALT_INV_out\(13),
	combout => \CPU|DP|REGFILE|chooser|Selector2~1_combout\);

-- Location: FF_X15_Y3_N2
\CPU|DP|REGFILE|toR0|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux2~0_combout\,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(13));

-- Location: MLABCELL_X15_Y2_N57
\CPU|DP|REGFILE|toR1|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[13]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[13]~feeder_combout\);

-- Location: FF_X15_Y2_N58
\CPU|DP|REGFILE|toR1|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[13]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(13));

-- Location: MLABCELL_X15_Y2_N15
\CPU|DP|REGFILE|toR3|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[13]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[13]~feeder_combout\);

-- Location: FF_X15_Y2_N16
\CPU|DP|REGFILE|toR3|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[13]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(13));

-- Location: FF_X16_Y2_N49
\CPU|DP|REGFILE|toR2|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(13));

-- Location: LABCELL_X17_Y2_N57
\CPU|DP|REGFILE|chooser|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector2~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(13) & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) # (\CPU|DP|REGFILE|toR3|out\(13)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(13) 
-- & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|toR3|out\(13) & !\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(13) & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR0|out\(13))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR1|out\(13)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(13) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR0|out\(13))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR1|out\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR0|ALT_INV_out\(13),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(13),
	datac => \CPU|DP|REGFILE|toR3|ALT_INV_out\(13),
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(13),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector2~0_combout\);

-- Location: FF_X16_Y2_N4
\CPU|DP|REGFILE|toR7|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(13));

-- Location: LABCELL_X17_Y2_N45
\CPU|DP|REGFILE|chooser|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector2~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|toR7|out\(13) & ( (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) # (\CPU|DP|REGFILE|chooser|Selector2~1_combout\) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|toR7|out\(13) & ( ((\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) # (\CPU|DP|REGFILE|chooser|Selector2~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector2~1_combout\) ) ) ) # ( 
-- \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|toR7|out\(13) & ( \CPU|DP|REGFILE|chooser|Selector2~1_combout\ ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|toR7|out\(13) & ( 
-- ((\CPU|DP|REGFILE|chooser|Selector2~0_combout\ & !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010101010101010101011111111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector2~1_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector2~0_combout\,
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|toR7|ALT_INV_out\(13),
	combout => \CPU|DP|REGFILE|chooser|Selector2~2_combout\);

-- Location: FF_X17_Y2_N47
\CPU|DP|bRegister|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector2~2_combout\,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(13));

-- Location: LABCELL_X13_Y4_N57
\CPU|DP|Bin[12]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[12]~21_combout\ = ( \CPU|DP|bRegister|out\(13) & ( (\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(11)) ) ) # ( !\CPU|DP|bRegister|out\(13) & ( (\CPU|DP|bRegister|out\(11) & !\CPU|instructionReg|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(11),
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(13),
	combout => \CPU|DP|Bin[12]~21_combout\);

-- Location: LABCELL_X17_Y4_N6
\CPU|DP|cRegister|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[12]~feeder_combout\ = ( \CPU|DP|CMP|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~57_sumout\,
	combout => \CPU|DP|cRegister|out[12]~feeder_combout\);

-- Location: LABCELL_X13_Y4_N54
\CPU|DP|Bin[12]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[12]~22_combout\ = ( \CPU|DP|bRegister|out[12]~DUPLICATE_q\ & ( (!\CPU|DP|Bin[1]~0_combout\) # (\CPU|DP|Bin[12]~21_combout\) ) ) # ( !\CPU|DP|bRegister|out[12]~DUPLICATE_q\ & ( (\CPU|DP|Bin[12]~21_combout\ & \CPU|DP|Bin[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|ALT_INV_Bin[12]~21_combout\,
	datac => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	dataf => \CPU|DP|bRegister|ALT_INV_out[12]~DUPLICATE_q\,
	combout => \CPU|DP|Bin[12]~22_combout\);

-- Location: LABCELL_X13_Y4_N39
\CPU|DP|CMP|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux3~0_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[12]~22_combout\ & (((\CPU|instructionReg|out[11]~DUPLICATE_q\)))) # (\CPU|DP|Bin[12]~22_combout\ & (\CPU|DP|aRegister|out\(12) 
-- & (!\CPU|statemachine|WideNor16~19_combout\ & !\CPU|instructionReg|out[11]~DUPLICATE_q\))) ) ) ) # ( !\CPU|statemachine|WideOr23~0_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[12]~22_combout\ & 
-- \CPU|instructionReg|out[11]~DUPLICATE_q\) ) ) ) # ( \CPU|statemachine|WideOr23~0_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[12]~22_combout\ & ((\CPU|instructionReg|out[11]~DUPLICATE_q\))) # (\CPU|DP|Bin[12]~22_combout\ & 
-- (\CPU|DP|aRegister|out\(12) & !\CPU|instructionReg|out[11]~DUPLICATE_q\)) ) ) ) # ( !\CPU|statemachine|WideOr23~0_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[12]~22_combout\ & \CPU|instructionReg|out[11]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000100011010101000000000101010100001000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[12]~22_combout\,
	datab => \CPU|DP|aRegister|ALT_INV_out\(12),
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datae => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|CMP|Mux3~0_combout\);

-- Location: FF_X17_Y4_N7
\CPU|DP|cRegister|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[12]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux3~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(12));

-- Location: MLABCELL_X15_Y3_N42
\CPU|DP|muxintoregister|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux3~0_combout\ = ( \CPU|instructionReg|out\(7) & ( \e1~combout\ & ( ((\CPU|statemachine|WideOr26~0_combout\ & \CPU|DP|cRegister|out\(12))) # (\CPU|statemachine|WideNor16~12_combout\) ) ) ) # ( !\CPU|instructionReg|out\(7) & ( 
-- \e1~combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & (\CPU|statemachine|WideOr26~0_combout\ & \CPU|DP|cRegister|out\(12))) ) ) ) # ( \CPU|instructionReg|out\(7) & ( !\e1~combout\ & ( ((!\CPU|statemachine|WideOr26~0_combout\ & 
-- (\MEM|mem_rtl_0|auto_generated|ram_block1a12\)) # (\CPU|statemachine|WideOr26~0_combout\ & ((\CPU|DP|cRegister|out\(12))))) # (\CPU|statemachine|WideNor16~12_combout\) ) ) ) # ( !\CPU|instructionReg|out\(7) & ( !\e1~combout\ & ( 
-- (!\CPU|statemachine|WideNor16~12_combout\ & ((!\CPU|statemachine|WideOr26~0_combout\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a12\)) # (\CPU|statemachine|WideOr26~0_combout\ & ((\CPU|DP|cRegister|out\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100110111111100000000000011000011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datad => \CPU|DP|cRegister|ALT_INV_out\(12),
	datae => \CPU|instructionReg|ALT_INV_out\(7),
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux3~0_combout\);

-- Location: LABCELL_X16_Y2_N45
\CPU|DP|REGFILE|toR7|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR7|out[12]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux3~0_combout\,
	combout => \CPU|DP|REGFILE|toR7|out[12]~feeder_combout\);

-- Location: FF_X16_Y2_N46
\CPU|DP|REGFILE|toR7|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR7|out[12]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(12));

-- Location: FF_X15_Y3_N32
\CPU|DP|REGFILE|toR5|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux3~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(12));

-- Location: FF_X16_Y3_N52
\CPU|DP|REGFILE|toR4|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux3~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(12));

-- Location: FF_X13_Y3_N40
\CPU|DP|REGFILE|toR6|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux3~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(12));

-- Location: LABCELL_X13_Y2_N9
\CPU|DP|REGFILE|chooser|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector3~1_combout\ = ( \CPU|muxintoregister|Mux2~0_combout\ & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (\CPU|DP|REGFILE|toR5|out\(12) & !\CPU|muxintoregister|Mux1~0_combout\) ) ) ) # ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(12))) # (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR5|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|toR4|ALT_INV_out\(12),
	datac => \CPU|DP|REGFILE|toR6|ALT_INV_out\(12),
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector3~1_combout\);

-- Location: FF_X15_Y3_N38
\CPU|DP|REGFILE|toR0|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux3~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(12));

-- Location: MLABCELL_X15_Y2_N33
\CPU|DP|REGFILE|toR3|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[12]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux3~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[12]~feeder_combout\);

-- Location: FF_X15_Y2_N34
\CPU|DP|REGFILE|toR3|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[12]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(12));

-- Location: MLABCELL_X15_Y2_N39
\CPU|DP|REGFILE|toR1|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[12]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux3~0_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[12]~feeder_combout\);

-- Location: FF_X15_Y2_N41
\CPU|DP|REGFILE|toR1|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[12]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(12));

-- Location: FF_X15_Y2_N11
\CPU|DP|REGFILE|toR2|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux3~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(12));

-- Location: MLABCELL_X15_Y2_N9
\CPU|DP|REGFILE|chooser|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector3~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(12) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) # (\CPU|DP|REGFILE|toR1|out\(12)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(12) 
-- & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(12) & !\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(12) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(12))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(12)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(12) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(12))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR0|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|toR3|ALT_INV_out\(12),
	datac => \CPU|DP|REGFILE|toR1|ALT_INV_out\(12),
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(12),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector3~0_combout\);

-- Location: LABCELL_X13_Y2_N21
\CPU|DP|REGFILE|chooser|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector3~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector3~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(12) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|chooser|Selector3~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector3~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) # 
-- (\CPU|DP|REGFILE|chooser|Selector3~1_combout\)) # (\CPU|DP|REGFILE|toR7|out\(12)) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector3~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(12) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector3~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector3~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(12) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector3~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111111011111110111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector3~1_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector3~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector3~2_combout\);

-- Location: FF_X13_Y2_N7
\CPU|DP|bRegister|out[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector3~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out[12]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N24
\CPU|DP|Bin[11]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[11]~19_combout\ = ( \CPU|DP|bRegister|out[12]~DUPLICATE_q\ & ( \CPU|DP|bRegister|out\(10) ) ) # ( !\CPU|DP|bRegister|out[12]~DUPLICATE_q\ & ( \CPU|DP|bRegister|out\(10) & ( !\CPU|instructionReg|out\(4) ) ) ) # ( 
-- \CPU|DP|bRegister|out[12]~DUPLICATE_q\ & ( !\CPU|DP|bRegister|out\(10) & ( \CPU|instructionReg|out\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(4),
	datae => \CPU|DP|bRegister|ALT_INV_out[12]~DUPLICATE_q\,
	dataf => \CPU|DP|bRegister|ALT_INV_out\(10),
	combout => \CPU|DP|Bin[11]~19_combout\);

-- Location: LABCELL_X17_Y4_N57
\CPU|DP|cRegister|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[11]~feeder_combout\ = \CPU|DP|CMP|Add0~53_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|CMP|ALT_INV_Add0~53_sumout\,
	combout => \CPU|DP|cRegister|out[11]~feeder_combout\);

-- Location: LABCELL_X12_Y4_N30
\CPU|DP|Bin[11]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[11]~20_combout\ = ( \CPU|DP|Bin[11]~19_combout\ & ( (\CPU|DP|bRegister|out\(11)) # (\CPU|DP|Bin[1]~0_combout\) ) ) # ( !\CPU|DP|Bin[11]~19_combout\ & ( (!\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|bRegister|out\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(11),
	dataf => \CPU|DP|ALT_INV_Bin[11]~19_combout\,
	combout => \CPU|DP|Bin[11]~20_combout\);

-- Location: MLABCELL_X15_Y4_N24
\CPU|DP|CMP|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux4~0_combout\ = ( \CPU|statemachine|WideNor16~19_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[11]~20_combout\ & \CPU|instructionReg|out\(11)) ) ) ) # ( !\CPU|statemachine|WideNor16~19_combout\ & ( 
-- \CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[11]~20_combout\ & (((\CPU|instructionReg|out\(11))))) # (\CPU|DP|Bin[11]~20_combout\ & (\CPU|DP|aRegister|out\(11) & (\CPU|statemachine|WideOr23~0_combout\ & !\CPU|instructionReg|out\(11)))) ) ) ) # ( 
-- \CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[11]~20_combout\ & (((\CPU|instructionReg|out\(11))))) # (\CPU|DP|Bin[11]~20_combout\ & (\CPU|DP|aRegister|out\(11) & (\CPU|statemachine|WideOr23~0_combout\ 
-- & !\CPU|instructionReg|out\(11)))) ) ) ) # ( !\CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[11]~20_combout\ & (((\CPU|instructionReg|out\(11))))) # (\CPU|DP|Bin[11]~20_combout\ & 
-- (\CPU|DP|aRegister|out\(11) & (\CPU|statemachine|WideOr23~0_combout\ & !\CPU|instructionReg|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101010000000011010101000000001101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[11]~20_combout\,
	datab => \CPU|DP|aRegister|ALT_INV_out\(11),
	datac => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(11),
	datae => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|CMP|Mux4~0_combout\);

-- Location: FF_X17_Y4_N58
\CPU|DP|cRegister|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[11]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux4~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(11));

-- Location: MLABCELL_X15_Y3_N51
\CPU|DP|muxintoregister|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux5~0_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( \e1~combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & (\CPU|DP|cRegister|out\(10) & ((\CPU|statemachine|WideOr26~0_combout\)))) # 
-- (\CPU|statemachine|WideNor16~12_combout\ & (((\CPU|instructionReg|out\(7))))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( \e1~combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & (\CPU|DP|cRegister|out\(10) & 
-- ((\CPU|statemachine|WideOr26~0_combout\)))) # (\CPU|statemachine|WideNor16~12_combout\ & (((\CPU|instructionReg|out\(7))))) ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( !\e1~combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & 
-- (((!\CPU|statemachine|WideOr26~0_combout\)) # (\CPU|DP|cRegister|out\(10)))) # (\CPU|statemachine|WideNor16~12_combout\ & (((\CPU|instructionReg|out\(7))))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( !\e1~combout\ & ( 
-- (!\CPU|statemachine|WideNor16~12_combout\ & (\CPU|DP|cRegister|out\(10) & ((\CPU|statemachine|WideOr26~0_combout\)))) # (\CPU|statemachine|WideNor16~12_combout\ & (((\CPU|instructionReg|out\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011111100110101001100000011010100110000001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|cRegister|ALT_INV_out\(10),
	datab => \CPU|instructionReg|ALT_INV_out\(7),
	datac => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datad => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux5~0_combout\);

-- Location: LABCELL_X16_Y2_N12
\CPU|DP|REGFILE|toR7|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR7|out[10]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux5~0_combout\,
	combout => \CPU|DP|REGFILE|toR7|out[10]~feeder_combout\);

-- Location: FF_X16_Y2_N13
\CPU|DP|REGFILE|toR7|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR7|out[10]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(10));

-- Location: LABCELL_X16_Y3_N18
\CPU|DP|REGFILE|toR6|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR6|out[10]~feeder_combout\ = \CPU|DP|muxintoregister|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|muxintoregister|ALT_INV_Mux5~0_combout\,
	combout => \CPU|DP|REGFILE|toR6|out[10]~feeder_combout\);

-- Location: FF_X16_Y3_N19
\CPU|DP|REGFILE|toR6|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR6|out[10]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(10));

-- Location: FF_X15_Y3_N53
\CPU|DP|REGFILE|toR5|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux5~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(10));

-- Location: FF_X15_Y3_N47
\CPU|DP|REGFILE|toR4|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(10));

-- Location: LABCELL_X13_Y3_N24
\CPU|DP|REGFILE|chooser|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector5~1_combout\ = ( \CPU|muxintoregister|Mux0~0_combout\ & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|DP|REGFILE|toR5|out\(10) & !\CPU|muxintoregister|Mux1~0_combout\) ) ) ) # ( \CPU|muxintoregister|Mux0~0_combout\ & ( 
-- !\CPU|muxintoregister|Mux2~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR4|out\(10)))) # (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011111010100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR6|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(10),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|toR4|ALT_INV_out\(10),
	datae => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector5~1_combout\);

-- Location: MLABCELL_X15_Y3_N15
\CPU|DP|REGFILE|toR0|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[10]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux5~0_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[10]~feeder_combout\);

-- Location: FF_X15_Y3_N16
\CPU|DP|REGFILE|toR0|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[10]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(10));

-- Location: FF_X13_Y3_N19
\CPU|DP|REGFILE|toR1|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(10));

-- Location: FF_X13_Y4_N25
\CPU|DP|REGFILE|toR3|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(10));

-- Location: FF_X13_Y4_N44
\CPU|DP|REGFILE|toR2|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(10));

-- Location: LABCELL_X13_Y4_N42
\CPU|DP|REGFILE|chooser|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector5~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(10) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) # (\CPU|DP|REGFILE|toR1|out\(10)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(10) 
-- & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(10) & !\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(10) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(10))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(10)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(10) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(10))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR0|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(10),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(10),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(10),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector5~0_combout\);

-- Location: LABCELL_X12_Y3_N24
\CPU|DP|REGFILE|chooser|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector5~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector5~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\))) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(10)))) # (\CPU|DP|REGFILE|chooser|Selector5~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector5~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(10) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011111110111001101111111011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector5~1_combout\,
	datac => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector5~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector5~2_combout\);

-- Location: FF_X12_Y3_N58
\CPU|DP|bRegister|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector5~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(10));

-- Location: LABCELL_X17_Y4_N9
\CPU|DP|cRegister|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[10]~feeder_combout\ = ( \CPU|DP|CMP|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~61_sumout\,
	combout => \CPU|DP|cRegister|out[10]~feeder_combout\);

-- Location: LABCELL_X12_Y4_N39
\CPU|DP|Bin[10]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[10]~26_combout\ = ( \CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|bRegister|out\(10) & ( \CPU|DP|Bin[10]~25_combout\ ) ) ) # ( !\CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|bRegister|out\(10) ) ) # ( \CPU|DP|Bin[1]~0_combout\ & ( !\CPU|DP|bRegister|out\(10) 
-- & ( \CPU|DP|Bin[10]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|ALT_INV_Bin[10]~25_combout\,
	datae => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	dataf => \CPU|DP|bRegister|ALT_INV_out\(10),
	combout => \CPU|DP|Bin[10]~26_combout\);

-- Location: MLABCELL_X15_Y4_N57
\CPU|DP|CMP|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux5~0_combout\ = ( \CPU|statemachine|WideNor16~19_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[10]~26_combout\ & \CPU|instructionReg|out\(11)) ) ) ) # ( !\CPU|statemachine|WideNor16~19_combout\ & ( 
-- \CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[10]~26_combout\ & (\CPU|instructionReg|out\(11))) # (\CPU|DP|Bin[10]~26_combout\ & (!\CPU|instructionReg|out\(11) & (\CPU|DP|aRegister|out\(10) & \CPU|statemachine|WideOr23~0_combout\))) ) ) ) # ( 
-- \CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[10]~26_combout\ & (\CPU|instructionReg|out\(11))) # (\CPU|DP|Bin[10]~26_combout\ & (!\CPU|instructionReg|out\(11) & (\CPU|DP|aRegister|out\(10) & 
-- \CPU|statemachine|WideOr23~0_combout\))) ) ) ) # ( !\CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|DP|Bin[10]~26_combout\ & (\CPU|instructionReg|out\(11))) # (\CPU|DP|Bin[10]~26_combout\ & 
-- (!\CPU|instructionReg|out\(11) & (\CPU|DP|aRegister|out\(10) & \CPU|statemachine|WideOr23~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100110001000100010011000100010001001100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[10]~26_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|aRegister|ALT_INV_out\(10),
	datad => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|CMP|Mux5~0_combout\);

-- Location: FF_X17_Y4_N10
\CPU|DP|cRegister|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[10]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux5~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(10));

-- Location: MLABCELL_X15_Y5_N24
\CPU|DP|muxintoregister|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux6~1_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( \e1~combout\ & ( ((\SW[9]~input_o\ & (!\CPU|statemachine|WideNor16~12_combout\ & !\CPU|statemachine|WideOr26~0_combout\))) # 
-- (\CPU|DP|muxintoregister|Mux6~0_combout\) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( \e1~combout\ & ( ((\SW[9]~input_o\ & (!\CPU|statemachine|WideNor16~12_combout\ & !\CPU|statemachine|WideOr26~0_combout\))) # 
-- (\CPU|DP|muxintoregister|Mux6~0_combout\) ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( !\e1~combout\ & ( ((!\CPU|statemachine|WideNor16~12_combout\ & !\CPU|statemachine|WideOr26~0_combout\)) # (\CPU|DP|muxintoregister|Mux6~0_combout\) ) ) ) # 
-- ( !\MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( !\e1~combout\ & ( \CPU|DP|muxintoregister|Mux6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110000001111111101000000111111110100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datad => \CPU|DP|muxintoregister|ALT_INV_Mux6~0_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux6~1_combout\);

-- Location: FF_X16_Y4_N58
\CPU|DP|REGFILE|toR7|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux6~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(9));

-- Location: FF_X15_Y5_N25
\CPU|DP|REGFILE|toR5|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux6~1_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(9));

-- Location: FF_X16_Y4_N34
\CPU|DP|REGFILE|toR6|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux6~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(9));

-- Location: FF_X13_Y3_N50
\CPU|DP|REGFILE|toR4|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux6~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(9));

-- Location: LABCELL_X13_Y3_N48
\CPU|DP|REGFILE|chooser|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector6~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(9) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\)) # (\CPU|DP|REGFILE|toR5|out\(9)))) # 
-- (\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|DP|REGFILE|toR6|out\(9))))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(9) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & 
-- (\CPU|DP|REGFILE|toR5|out\(9) & (\CPU|muxintoregister|Mux2~0_combout\))) # (\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|DP|REGFILE|toR6|out\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010010100101010001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(9),
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(9),
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(9),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector6~1_combout\);

-- Location: FF_X16_Y5_N40
\CPU|DP|REGFILE|toR0|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux6~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(9));

-- Location: LABCELL_X13_Y5_N18
\CPU|DP|REGFILE|toR3|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[9]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux6~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux6~1_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[9]~feeder_combout\);

-- Location: FF_X13_Y5_N20
\CPU|DP|REGFILE|toR3|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[9]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(9));

-- Location: LABCELL_X16_Y2_N24
\CPU|DP|REGFILE|toR2|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR2|out[9]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux6~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux6~1_combout\,
	combout => \CPU|DP|REGFILE|toR2|out[9]~feeder_combout\);

-- Location: FF_X16_Y2_N25
\CPU|DP|REGFILE|toR2|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR2|out[9]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(9));

-- Location: LABCELL_X13_Y5_N3
\CPU|DP|REGFILE|toR1|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[9]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux6~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux6~1_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[9]~feeder_combout\);

-- Location: FF_X13_Y5_N4
\CPU|DP|REGFILE|toR1|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[9]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(9));

-- Location: LABCELL_X13_Y3_N45
\CPU|DP|REGFILE|chooser|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector6~0_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR2|out\(9) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR1|out\(9) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR3|out\(9) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR0|out\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR0|ALT_INV_out\(9),
	datab => \CPU|DP|REGFILE|toR3|ALT_INV_out\(9),
	datac => \CPU|DP|REGFILE|toR2|ALT_INV_out\(9),
	datad => \CPU|DP|REGFILE|toR1|ALT_INV_out\(9),
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector6~0_combout\);

-- Location: LABCELL_X12_Y3_N3
\CPU|DP|REGFILE|chooser|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector6~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector6~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\))) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(9)))) # (\CPU|DP|REGFILE|chooser|Selector6~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector6~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(9) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111111011111000111111101111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(9),
	datab => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector6~1_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector6~2_combout\);

-- Location: FF_X12_Y3_N10
\CPU|DP|bRegister|out[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector6~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out[9]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y4_N3
\CPU|DP|cRegister|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[9]~feeder_combout\ = ( \CPU|DP|CMP|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~65_sumout\,
	combout => \CPU|DP|cRegister|out[9]~feeder_combout\);

-- Location: LABCELL_X12_Y3_N33
\CPU|DP|Bin[9]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[9]~24_combout\ = ( \CPU|DP|Bin[9]~23_combout\ & ( (\CPU|DP|bRegister|out\(9)) # (\CPU|DP|Bin[1]~0_combout\) ) ) # ( !\CPU|DP|Bin[9]~23_combout\ & ( (!\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|bRegister|out\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(9),
	dataf => \CPU|DP|ALT_INV_Bin[9]~23_combout\,
	combout => \CPU|DP|Bin[9]~24_combout\);

-- Location: MLABCELL_X15_Y3_N36
\CPU|DP|CMP|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux6~0_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( \CPU|instructionReg|out\(11) & ( !\CPU|DP|Bin[9]~24_combout\ ) ) ) # ( !\CPU|statemachine|WideOr23~0_combout\ & ( \CPU|instructionReg|out\(11) & ( !\CPU|DP|Bin[9]~24_combout\ ) ) ) 
-- # ( \CPU|statemachine|WideOr23~0_combout\ & ( !\CPU|instructionReg|out\(11) & ( (\CPU|DP|Bin[9]~24_combout\ & (\CPU|DP|aRegister|out\(9) & ((!\CPU|statemachine|always0~9_combout\) # (!\CPU|statemachine|WideNor16~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[9]~24_combout\,
	datab => \CPU|DP|aRegister|ALT_INV_out\(9),
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	dataf => \CPU|instructionReg|ALT_INV_out\(11),
	combout => \CPU|DP|CMP|Mux6~0_combout\);

-- Location: FF_X17_Y4_N4
\CPU|DP|cRegister|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[9]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux6~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(9));

-- Location: MLABCELL_X15_Y4_N15
\CPU|DP|muxintoregister|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux7~0_combout\ = ( !\CPU|statemachine|WideNor16~19_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(8)))) # 
-- (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(7))))) ) ) ) # ( \CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|always0~11_combout\ & 
-- ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(8)))) # (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(7))))) ) ) ) # ( !\CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(8)))) # (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000001100010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(7),
	datab => \CPU|statemachine|ALT_INV_always0~11_combout\,
	datac => \CPU|DP|cRegister|ALT_INV_out\(8),
	datad => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|muxintoregister|Mux7~0_combout\);

-- Location: MLABCELL_X15_Y4_N51
\CPU|DP|muxintoregister|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux7~1_combout\ = ( \CPU|DP|muxintoregister|Mux7~0_combout\ ) # ( !\CPU|DP|muxintoregister|Mux7~0_combout\ & ( (!\CPU|statemachine|WideOr26~0_combout\ & ((!\e1~combout\ & ((\MEM|mem_rtl_0|auto_generated|ram_block1a8\))) # 
-- (\e1~combout\ & (\SW[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datab => \ALT_INV_e1~combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\,
	combout => \CPU|DP|muxintoregister|Mux7~1_combout\);

-- Location: FF_X15_Y4_N14
\CPU|DP|REGFILE|toR7|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux7~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(8));

-- Location: MLABCELL_X15_Y3_N54
\CPU|DP|REGFILE|toR4|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR4|out[8]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux7~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux7~1_combout\,
	combout => \CPU|DP|REGFILE|toR4|out[8]~feeder_combout\);

-- Location: FF_X15_Y3_N56
\CPU|DP|REGFILE|toR4|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR4|out[8]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(8));

-- Location: FF_X15_Y4_N53
\CPU|DP|REGFILE|toR5|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux7~1_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(8));

-- Location: FF_X15_Y4_N10
\CPU|DP|REGFILE|toR6|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux7~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(8));

-- Location: LABCELL_X13_Y3_N36
\CPU|DP|REGFILE|chooser|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector7~1_combout\ = ( \CPU|muxintoregister|Mux1~0_combout\ & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|DP|REGFILE|toR6|out\(8)) ) ) ) # ( !\CPU|muxintoregister|Mux1~0_combout\ & ( 
-- \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(8))) # (\CPU|muxintoregister|Mux2~0_combout\ & ((\CPU|DP|REGFILE|toR5|out\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010011010100110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR4|ALT_INV_out\(8),
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(8),
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(8),
	datae => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector7~1_combout\);

-- Location: MLABCELL_X15_Y2_N54
\CPU|DP|REGFILE|toR1|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[8]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux7~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux7~1_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[8]~feeder_combout\);

-- Location: FF_X15_Y2_N55
\CPU|DP|REGFILE|toR1|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[8]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(8));

-- Location: FF_X13_Y4_N19
\CPU|DP|REGFILE|toR3|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux7~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(8));

-- Location: FF_X15_Y3_N29
\CPU|DP|REGFILE|toR0|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux7~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(8));

-- Location: FF_X13_Y4_N1
\CPU|DP|REGFILE|toR2|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux7~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(8));

-- Location: LABCELL_X12_Y3_N6
\CPU|DP|REGFILE|chooser|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector7~0_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR2|out\(8) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR3|out\(8) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR1|out\(8) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR0|out\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(8),
	datab => \CPU|DP|REGFILE|toR3|ALT_INV_out\(8),
	datac => \CPU|DP|REGFILE|toR0|ALT_INV_out\(8),
	datad => \CPU|DP|REGFILE|toR2|ALT_INV_out\(8),
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector7~0_combout\);

-- Location: LABCELL_X12_Y3_N39
\CPU|DP|REGFILE|chooser|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector7~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector7~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(8) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|chooser|Selector7~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector7~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) # 
-- (\CPU|DP|REGFILE|chooser|Selector7~1_combout\)) # (\CPU|DP|REGFILE|toR7|out\(8)) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector7~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(8) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector7~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector7~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(8) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector7~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111111111111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(8),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~1_combout\,
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector7~2_combout\);

-- Location: FF_X12_Y3_N8
\CPU|DP|bRegister|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector7~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(8));

-- Location: LABCELL_X18_Y5_N24
\CPU|DP|cRegister|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[8]~feeder_combout\ = ( \CPU|DP|CMP|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~37_sumout\,
	combout => \CPU|DP|cRegister|out[8]~feeder_combout\);

-- Location: LABCELL_X12_Y3_N15
\CPU|DP|Bin[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[8]~14_combout\ = ( \CPU|DP|bRegister|out\(8) & ( (!\CPU|DP|Bin[1]~0_combout\) # (\CPU|DP|Bin[8]~13_combout\) ) ) # ( !\CPU|DP|bRegister|out\(8) & ( (\CPU|DP|Bin[8]~13_combout\ & \CPU|DP|Bin[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|ALT_INV_Bin[8]~13_combout\,
	datad => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	dataf => \CPU|DP|bRegister|ALT_INV_out\(8),
	combout => \CPU|DP|Bin[8]~14_combout\);

-- Location: LABCELL_X13_Y5_N12
\CPU|DP|CMP|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux7~0_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( \CPU|statemachine|WideOr23~0_combout\ & ( (!\CPU|instructionReg|out\(11) & (\CPU|DP|aRegister|out\(8) & (!\CPU|statemachine|WideNor16~19_combout\ & \CPU|DP|Bin[8]~14_combout\))) # 
-- (\CPU|instructionReg|out\(11) & (((!\CPU|DP|Bin[8]~14_combout\)))) ) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( \CPU|statemachine|WideOr23~0_combout\ & ( (!\CPU|instructionReg|out\(11) & (\CPU|DP|aRegister|out\(8) & \CPU|DP|Bin[8]~14_combout\)) # 
-- (\CPU|instructionReg|out\(11) & ((!\CPU|DP|Bin[8]~14_combout\))) ) ) ) # ( \CPU|statemachine|always0~9_combout\ & ( !\CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|instructionReg|out\(11) & !\CPU|DP|Bin[8]~14_combout\) ) ) ) # ( 
-- !\CPU|statemachine|always0~9_combout\ & ( !\CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|instructionReg|out\(11) & !\CPU|DP|Bin[8]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101001000100101010100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(11),
	datab => \CPU|DP|aRegister|ALT_INV_out\(8),
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datad => \CPU|DP|ALT_INV_Bin[8]~14_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~9_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	combout => \CPU|DP|CMP|Mux7~0_combout\);

-- Location: FF_X18_Y5_N25
\CPU|DP|cRegister|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[8]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux7~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(8));

-- Location: MLABCELL_X15_Y4_N6
\CPU|DP|muxintoregister|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux8~0_combout\ = ( !\CPU|statemachine|WideNor16~19_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(7)))) # 
-- (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(7))))) ) ) ) # ( \CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|always0~11_combout\ & 
-- ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(7)))) # (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(7))))) ) ) ) # ( !\CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(7)))) # (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datab => \CPU|statemachine|ALT_INV_always0~11_combout\,
	datac => \CPU|instructionReg|ALT_INV_out\(7),
	datad => \CPU|DP|cRegister|ALT_INV_out\(7),
	datae => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|muxintoregister|Mux8~0_combout\);

-- Location: MLABCELL_X15_Y4_N48
\CPU|DP|muxintoregister|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux8~1_combout\ = ( \CPU|DP|muxintoregister|Mux8~0_combout\ ) # ( !\CPU|DP|muxintoregister|Mux8~0_combout\ & ( (!\CPU|statemachine|WideOr26~0_combout\ & ((!\e1~combout\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a7\)) # 
-- (\e1~combout\ & ((\SW[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datab => \ALT_INV_e1~combout\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \CPU|DP|muxintoregister|Mux8~1_combout\);

-- Location: FF_X15_Y4_N40
\CPU|DP|REGFILE|toR7|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux8~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(7));

-- Location: FF_X15_Y3_N44
\CPU|DP|REGFILE|toR4|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux8~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(7));

-- Location: FF_X15_Y4_N23
\CPU|DP|REGFILE|toR6|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux8~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(7));

-- Location: FF_X15_Y4_N49
\CPU|DP|REGFILE|toR5|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux8~1_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(7));

-- Location: LABCELL_X17_Y3_N45
\CPU|DP|REGFILE|chooser|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector8~1_combout\ = ( \CPU|muxintoregister|Mux0~0_combout\ & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|DP|REGFILE|toR5|out\(7) & !\CPU|muxintoregister|Mux1~0_combout\) ) ) ) # ( \CPU|muxintoregister|Mux0~0_combout\ & ( 
-- !\CPU|muxintoregister|Mux2~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(7))) # (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010011001100000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR4|ALT_INV_out\(7),
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(7),
	datac => \CPU|DP|REGFILE|toR5|ALT_INV_out\(7),
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector8~1_combout\);

-- Location: FF_X13_Y4_N28
\CPU|DP|REGFILE|toR3|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux8~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(7));

-- Location: MLABCELL_X15_Y2_N3
\CPU|DP|REGFILE|toR1|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[7]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux8~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux8~1_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[7]~feeder_combout\);

-- Location: FF_X15_Y2_N4
\CPU|DP|REGFILE|toR1|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[7]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(7));

-- Location: FF_X15_Y3_N26
\CPU|DP|REGFILE|toR0|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux8~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(7));

-- Location: LABCELL_X16_Y2_N27
\CPU|DP|REGFILE|toR2|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR2|out[7]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux8~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux8~1_combout\,
	combout => \CPU|DP|REGFILE|toR2|out[7]~feeder_combout\);

-- Location: FF_X16_Y2_N28
\CPU|DP|REGFILE|toR2|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR2|out[7]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(7));

-- Location: LABCELL_X16_Y2_N54
\CPU|DP|REGFILE|chooser|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector8~0_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR2|out\(7) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR1|out\(7) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR3|out\(7) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR0|out\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR3|ALT_INV_out\(7),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(7),
	datac => \CPU|DP|REGFILE|toR0|ALT_INV_out\(7),
	datad => \CPU|DP|REGFILE|toR2|ALT_INV_out\(7),
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector8~0_combout\);

-- Location: LABCELL_X17_Y3_N9
\CPU|DP|REGFILE|chooser|Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector8~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector8~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\)) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ 
-- & ((\CPU|DP|REGFILE|toR7|out\(7))))) # (\CPU|DP|REGFILE|chooser|Selector8~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector8~0_combout\ & ( ((\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \CPU|DP|REGFILE|toR7|out\(7))) # 
-- (\CPU|DP|REGFILE|chooser|Selector8~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111110001101111111111000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \CPU|DP|REGFILE|toR7|ALT_INV_out\(7),
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector8~1_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector8~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector8~2_combout\);

-- Location: FF_X17_Y3_N23
\CPU|DP|bRegister|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector8~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(7));

-- Location: LABCELL_X19_Y5_N57
\CPU|DP|cRegister|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[7]~feeder_combout\ = ( \CPU|DP|CMP|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~29_sumout\,
	combout => \CPU|DP|cRegister|out[7]~feeder_combout\);

-- Location: LABCELL_X17_Y3_N51
\CPU|DP|Bin[7]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[7]~12_combout\ = ( \CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|Bin[7]~11_combout\ ) ) # ( !\CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|bRegister|out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|ALT_INV_Bin[7]~11_combout\,
	datad => \CPU|DP|bRegister|ALT_INV_out\(7),
	dataf => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	combout => \CPU|DP|Bin[7]~12_combout\);

-- Location: LABCELL_X17_Y3_N57
\CPU|DP|CMP|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux8~0_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|statemachine|WideNor16~19_combout\ & (\CPU|DP|aRegister|out\(7) & 
-- \CPU|DP|Bin[7]~12_combout\))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (((!\CPU|DP|Bin[7]~12_combout\)))) ) ) ) # ( !\CPU|statemachine|WideOr23~0_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & 
-- !\CPU|DP|Bin[7]~12_combout\) ) ) ) # ( \CPU|statemachine|WideOr23~0_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|aRegister|out\(7) & \CPU|DP|Bin[7]~12_combout\)) # 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[7]~12_combout\))) ) ) ) # ( !\CPU|statemachine|WideOr23~0_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & !\CPU|DP|Bin[7]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110011000000001111000000000000111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|DP|aRegister|ALT_INV_out\(7),
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|DP|ALT_INV_Bin[7]~12_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|CMP|Mux8~0_combout\);

-- Location: FF_X19_Y5_N59
\CPU|DP|cRegister|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[7]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux8~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(7));

-- Location: FF_X16_Y5_N35
\CPU|DataAddress|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(7),
	sload => VCC,
	ena => \CPU|statemachine|loadadr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(7));

-- Location: MLABCELL_X15_Y5_N15
\CPU|mem_addr[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[7]~7_combout\ = ( \CPU|statemachine|WideOr34~combout\ & ( \CPU|PCReg|out\(7) ) ) # ( !\CPU|statemachine|WideOr34~combout\ & ( \CPU|DataAddress|out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DataAddress|ALT_INV_out\(7),
	datad => \CPU|PCReg|ALT_INV_out\(7),
	dataf => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	combout => \CPU|mem_addr[7]~7_combout\);

-- Location: LABCELL_X18_Y5_N39
\CPU|DP|muxintoregister|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux12~0_combout\ = ( \CPU|DP|cRegister|out\(3) & ( \CPU|instructionReg|out\(3) & ( (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\))) ) ) ) # ( 
-- !\CPU|DP|cRegister|out\(3) & ( \CPU|instructionReg|out\(3) & ( (\CPU|statemachine|WideNor16~12_combout\ & (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) ) ) ) # ( 
-- \CPU|DP|cRegister|out\(3) & ( !\CPU|instructionReg|out\(3) & ( (!\CPU|statemachine|WideNor16~12_combout\ & (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001000000000110000001000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~11_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datae => \CPU|DP|cRegister|ALT_INV_out\(3),
	dataf => \CPU|instructionReg|ALT_INV_out\(3),
	combout => \CPU|DP|muxintoregister|Mux12~0_combout\);

-- Location: MLABCELL_X15_Y5_N21
\CPU|DP|muxintoregister|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux12~1_combout\ = ( \CPU|DP|muxintoregister|Mux12~0_combout\ ) # ( !\CPU|DP|muxintoregister|Mux12~0_combout\ & ( (!\CPU|statemachine|WideOr26~0_combout\ & ((!\e1~combout\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a3\)) # 
-- (\e1~combout\ & ((\SW[3]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datab => \ALT_INV_e1~combout\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \CPU|DP|muxintoregister|Mux12~1_combout\);

-- Location: FF_X15_Y5_N23
\CPU|DP|REGFILE|toR5|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux12~1_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(3));

-- Location: FF_X16_Y3_N35
\CPU|DP|REGFILE|toR6|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux12~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(3));

-- Location: FF_X16_Y3_N14
\CPU|DP|REGFILE|toR4|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux12~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(3));

-- Location: LABCELL_X16_Y3_N12
\CPU|DP|REGFILE|chooser|Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector12~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(3) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & (((!\CPU|muxintoregister|Mux1~0_combout\) # (\CPU|DP|REGFILE|toR6|out\(3))))) # 
-- (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(3) & ((!\CPU|muxintoregister|Mux1~0_combout\)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(3) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & 
-- (((\CPU|DP|REGFILE|toR6|out\(3) & \CPU|muxintoregister|Mux1~0_combout\)))) # (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(3) & ((!\CPU|muxintoregister|Mux1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000011001101110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR5|ALT_INV_out\(3),
	datab => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datac => \CPU|DP|REGFILE|toR6|ALT_INV_out\(3),
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(3),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector12~1_combout\);

-- Location: FF_X16_Y5_N28
\CPU|DP|REGFILE|toR7|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux12~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(3));

-- Location: LABCELL_X13_Y5_N24
\CPU|DP|REGFILE|toR0|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[3]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux12~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux12~1_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[3]~feeder_combout\);

-- Location: FF_X13_Y5_N26
\CPU|DP|REGFILE|toR0|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[3]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(3));

-- Location: LABCELL_X13_Y5_N6
\CPU|DP|REGFILE|toR1|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[3]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux12~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux12~1_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[3]~feeder_combout\);

-- Location: FF_X13_Y5_N8
\CPU|DP|REGFILE|toR1|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[3]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(3));

-- Location: LABCELL_X13_Y5_N48
\CPU|DP|REGFILE|toR3|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[3]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux12~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux12~1_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[3]~feeder_combout\);

-- Location: FF_X13_Y5_N50
\CPU|DP|REGFILE|toR3|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[3]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(3));

-- Location: FF_X16_Y2_N20
\CPU|DP|REGFILE|toR2|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux12~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(3));

-- Location: LABCELL_X16_Y2_N18
\CPU|DP|REGFILE|chooser|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector12~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(3) & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) # (\CPU|DP|REGFILE|toR3|out\(3)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(3) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|toR3|out\(3) & !\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(3) & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR0|out\(3))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR1|out\(3)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(3) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR0|out\(3))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR1|out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR0|ALT_INV_out\(3),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(3),
	datac => \CPU|DP|REGFILE|toR3|ALT_INV_out\(3),
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(3),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector12~0_combout\);

-- Location: LABCELL_X17_Y3_N18
\CPU|DP|REGFILE|chooser|Selector12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector12~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector12~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\)) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((\CPU|DP|REGFILE|toR7|out\(3))))) # (\CPU|DP|REGFILE|chooser|Selector12~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector12~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(3) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector12~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111111011101010111111101110101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector12~1_combout\,
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \CPU|DP|REGFILE|toR7|ALT_INV_out\(3),
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector12~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector12~2_combout\);

-- Location: FF_X17_Y3_N5
\CPU|DP|bRegister|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector12~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(3));

-- Location: LABCELL_X17_Y3_N3
\CPU|DP|Bin[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[4]~7_combout\ = (!\CPU|instructionReg|out\(4) & ((\CPU|DP|bRegister|out\(3)))) # (\CPU|instructionReg|out\(4) & (\CPU|DP|bRegister|out\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(5),
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(3),
	combout => \CPU|DP|Bin[4]~7_combout\);

-- Location: FF_X17_Y3_N38
\CPU|DP|aRegister|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector11~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(4));

-- Location: LABCELL_X16_Y5_N18
\CPU|DP|Ain[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[4]~4_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & (\CPU|DP|aRegister|out\(4) & \CPU|statemachine|WideOr23~0_combout\)) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (\CPU|DP|aRegister|out\(4) & \CPU|statemachine|WideOr23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|DP|aRegister|ALT_INV_out\(4),
	datad => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|Ain[4]~4_combout\);

-- Location: FF_X17_Y3_N40
\CPU|DP|aRegister|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector12~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(3));

-- Location: LABCELL_X17_Y5_N27
\CPU|DP|Ain[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[3]~3_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|DP|aRegister|out\(3) & ((!\CPU|statemachine|always0~9_combout\) # (!\CPU|statemachine|WideNor16~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(3),
	dataf => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	combout => \CPU|DP|Ain[3]~3_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X12_Y5_N0
\x[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2]~15_combout\ = ( \e1~combout\ & ( \SW[2]~input_o\ ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_e1~combout\,
	combout => \x[2]~15_combout\);

-- Location: FF_X12_Y5_N2
\CPU|instructionReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[2]~15_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(2));

-- Location: LABCELL_X18_Y5_N15
\CPU|DP|muxintoregister|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux13~0_combout\ = ( \CPU|statemachine|always0~9_combout\ & ( !\CPU|statemachine|always0~11_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(2)))) # 
-- (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(2))))) ) ) ) # ( !\CPU|statemachine|always0~9_combout\ & ( !\CPU|statemachine|always0~11_combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(2)))) # 
-- (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(2),
	datac => \CPU|DP|cRegister|ALT_INV_out\(2),
	datad => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~9_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~11_combout\,
	combout => \CPU|DP|muxintoregister|Mux13~0_combout\);

-- Location: MLABCELL_X15_Y5_N9
\CPU|DP|muxintoregister|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux13~1_combout\ = ( \CPU|DP|muxintoregister|Mux13~0_combout\ & ( \e1~combout\ ) ) # ( !\CPU|DP|muxintoregister|Mux13~0_combout\ & ( \e1~combout\ & ( (\SW[2]~input_o\ & !\CPU|statemachine|WideOr26~0_combout\) ) ) ) # ( 
-- \CPU|DP|muxintoregister|Mux13~0_combout\ & ( !\e1~combout\ ) ) # ( !\CPU|DP|muxintoregister|Mux13~0_combout\ & ( !\e1~combout\ & ( (\MEM|mem_rtl_0|auto_generated|ram_block1a2\ & !\CPU|statemachine|WideOr26~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111111111111111100110011000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datad => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datae => \CPU|DP|muxintoregister|ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux13~1_combout\);

-- Location: FF_X16_Y4_N25
\CPU|DP|REGFILE|toR7|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(2));

-- Location: FF_X15_Y5_N10
\CPU|DP|REGFILE|toR5|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux13~1_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(2));

-- Location: FF_X13_Y3_N13
\CPU|DP|REGFILE|toR6|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(2));

-- Location: FF_X13_Y4_N11
\CPU|DP|REGFILE|toR4|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(2));

-- Location: LABCELL_X13_Y4_N9
\CPU|DP|REGFILE|chooser|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector13~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(2) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & (((!\CPU|muxintoregister|Mux1~0_combout\) # (\CPU|DP|REGFILE|toR6|out\(2))))) # 
-- (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(2) & ((!\CPU|muxintoregister|Mux1~0_combout\)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(2) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & 
-- (((\CPU|DP|REGFILE|toR6|out\(2) & \CPU|muxintoregister|Mux1~0_combout\)))) # (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(2) & ((!\CPU|muxintoregister|Mux1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR5|ALT_INV_out\(2),
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(2),
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(2),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector13~1_combout\);

-- Location: FF_X13_Y5_N17
\CPU|DP|REGFILE|toR1|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(2));

-- Location: FF_X13_Y5_N46
\CPU|DP|REGFILE|toR3|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(2));

-- Location: FF_X13_Y5_N59
\CPU|DP|REGFILE|toR0|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(2));

-- Location: FF_X15_Y2_N53
\CPU|DP|REGFILE|toR2|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(2));

-- Location: MLABCELL_X15_Y2_N51
\CPU|DP|REGFILE|chooser|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector13~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(2) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) # (\CPU|DP|REGFILE|toR1|out\(2)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(2) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(2) & !\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(2) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(2)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(2))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(2) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(2)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(2),
	datab => \CPU|DP|REGFILE|toR3|ALT_INV_out\(2),
	datac => \CPU|DP|REGFILE|toR0|ALT_INV_out\(2),
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(2),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector13~0_combout\);

-- Location: LABCELL_X13_Y2_N0
\CPU|DP|REGFILE|chooser|Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector13~2_combout\ = ( \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector13~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector13~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(2)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector13~0_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\) # (\CPU|DP|REGFILE|chooser|Selector13~1_combout\) ) ) ) # ( 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector13~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector13~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(2)) ) ) ) # ( !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( 
-- !\CPU|DP|REGFILE|chooser|Selector13~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector13~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010111110101111111111111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(2),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector13~1_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datae => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector13~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector13~2_combout\);

-- Location: FF_X13_Y2_N41
\CPU|DP|bRegister|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector13~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(2));

-- Location: LABCELL_X17_Y3_N12
\CPU|DP|Bin[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[3]~5_combout\ = (!\CPU|instructionReg|out\(4) & (\CPU|DP|bRegister|out\(2))) # (\CPU|instructionReg|out\(4) & ((\CPU|DP|bRegister|out\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(2),
	datab => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[3]~5_combout\);

-- Location: FF_X13_Y2_N2
\CPU|DP|aRegister|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector13~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(2));

-- Location: LABCELL_X17_Y5_N6
\CPU|DP|Ain[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[2]~2_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|DP|aRegister|out\(2) & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(2),
	dataf => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	combout => \CPU|DP|Ain[2]~2_combout\);

-- Location: LABCELL_X13_Y2_N42
\CPU|DP|Bin[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[2]~3_combout\ = ( \CPU|DP|bRegister|out\(1) & ( \CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(3) ) ) ) # ( !\CPU|DP|bRegister|out\(1) & ( \CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(3) ) ) ) # ( \CPU|DP|bRegister|out\(1) & 
-- ( !\CPU|instructionReg|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|bRegister|ALT_INV_out\(3),
	datae => \CPU|DP|bRegister|ALT_INV_out\(1),
	dataf => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[2]~3_combout\);

-- Location: FF_X13_Y2_N17
\CPU|DP|aRegister|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector14~2_combout\,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(1));

-- Location: LABCELL_X17_Y5_N15
\CPU|DP|Ain[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[1]~1_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|DP|aRegister|out\(1) & ((!\CPU|statemachine|always0~9_combout\) # (!\CPU|statemachine|WideNor16~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(1),
	dataf => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	combout => \CPU|DP|Ain[1]~1_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X12_Y4_N15
\x[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0]~12_combout\ = ( \e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( \SW[0]~input_o\ ) ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ ) ) # ( \e1~combout\ & ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_e1~combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \x[0]~12_combout\);

-- Location: FF_X12_Y4_N17
\CPU|instructionReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[0]~12_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(0));

-- Location: MLABCELL_X15_Y4_N42
\CPU|DP|muxintoregister|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux15~0_combout\ = ( !\CPU|statemachine|WideNor16~19_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(0)))) # 
-- (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(0))))) ) ) ) # ( \CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|always0~11_combout\ & 
-- ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(0)))) # (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(0))))) ) ) ) # ( !\CPU|statemachine|WideNor16~19_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( 
-- (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~12_combout\ & ((\CPU|DP|cRegister|out\(0)))) # (\CPU|statemachine|WideNor16~12_combout\ & (\CPU|instructionReg|out\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(0),
	datab => \CPU|DP|cRegister|ALT_INV_out\(0),
	datac => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~11_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|muxintoregister|Mux15~0_combout\);

-- Location: MLABCELL_X15_Y4_N18
\CPU|DP|muxintoregister|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux15~1_combout\ = ( \e1~combout\ & ( ((!\CPU|statemachine|WideOr26~0_combout\ & \SW[0]~input_o\)) # (\CPU|DP|muxintoregister|Mux15~0_combout\) ) ) # ( !\e1~combout\ & ( ((\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & 
-- !\CPU|statemachine|WideOr26~0_combout\)) # (\CPU|DP|muxintoregister|Mux15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datab => \CPU|DP|muxintoregister|ALT_INV_Mux15~0_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux15~1_combout\);

-- Location: FF_X15_Y4_N43
\CPU|DP|REGFILE|toR7|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(0));

-- Location: FF_X15_Y4_N56
\CPU|DP|REGFILE|toR6|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(0));

-- Location: FF_X15_Y4_N2
\CPU|DP|REGFILE|toR5|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(0));

-- Location: FF_X16_Y3_N26
\CPU|DP|REGFILE|toR4|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(0));

-- Location: LABCELL_X16_Y3_N24
\CPU|DP|REGFILE|chooser|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector15~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(0) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\) # (\CPU|DP|REGFILE|toR5|out\(0))))) # 
-- (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(0) & ((!\CPU|muxintoregister|Mux2~0_combout\)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(0) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & 
-- (((\CPU|DP|REGFILE|toR5|out\(0) & \CPU|muxintoregister|Mux2~0_combout\)))) # (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(0) & ((!\CPU|muxintoregister|Mux2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000011001101110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR6|ALT_INV_out\(0),
	datab => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datac => \CPU|DP|REGFILE|toR5|ALT_INV_out\(0),
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(0),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector15~1_combout\);

-- Location: MLABCELL_X15_Y2_N0
\CPU|DP|REGFILE|toR1|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[0]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux15~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux15~1_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[0]~feeder_combout\);

-- Location: FF_X15_Y2_N1
\CPU|DP|REGFILE|toR1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(0));

-- Location: FF_X16_Y4_N4
\CPU|DP|REGFILE|toR3|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(0));

-- Location: LABCELL_X11_Y4_N0
\CPU|DP|REGFILE|toR0|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[0]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux15~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux15~1_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[0]~feeder_combout\);

-- Location: FF_X11_Y4_N1
\CPU|DP|REGFILE|toR0|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(0));

-- Location: LABCELL_X13_Y4_N48
\CPU|DP|REGFILE|toR2|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR2|out[0]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux15~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux15~1_combout\,
	combout => \CPU|DP|REGFILE|toR2|out[0]~feeder_combout\);

-- Location: FF_X13_Y4_N49
\CPU|DP|REGFILE|toR2|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR2|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(0));

-- Location: LABCELL_X16_Y3_N30
\CPU|DP|REGFILE|chooser|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector15~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(0) & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) # (\CPU|DP|REGFILE|toR3|out\(0)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(0) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|toR3|out\(0) & !\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(0) & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(0)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(0))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(0) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(0)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(0),
	datab => \CPU|DP|REGFILE|toR3|ALT_INV_out\(0),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \CPU|DP|REGFILE|toR0|ALT_INV_out\(0),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(0),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector15~0_combout\);

-- Location: LABCELL_X16_Y3_N21
\CPU|DP|REGFILE|chooser|Selector15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector15~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector15~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\)) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((\CPU|DP|REGFILE|toR7|out\(0))))) # (\CPU|DP|REGFILE|chooser|Selector15~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector15~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(0) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector15~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111110101111001111111010111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \CPU|DP|REGFILE|toR7|ALT_INV_out\(0),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector15~1_combout\,
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector15~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector15~2_combout\);

-- Location: FF_X17_Y5_N1
\CPU|DP|aRegister|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector15~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(0));

-- Location: LABCELL_X17_Y5_N0
\CPU|DP|Ain[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[0]~0_combout\ = ( \CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|DP|aRegister|out\(0) & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(0),
	dataf => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	combout => \CPU|DP|Ain[0]~0_combout\);

-- Location: FF_X16_Y3_N38
\CPU|DP|bRegister|out[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector15~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out[0]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N39
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( \CPU|DP|bRegister|out[0]~DUPLICATE_q\ & ( !\CPU|instructionReg|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|DP|bRegister|ALT_INV_out[0]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out\(3),
	combout => \rtl~0_combout\);

-- Location: LABCELL_X17_Y5_N30
\CPU|DP|CMP|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~34_cout\ = CARRY(( \CPU|instructionReg|out\(11) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	cin => GND,
	cout => \CPU|DP|CMP|Add0~34_cout\);

-- Location: LABCELL_X17_Y5_N33
\CPU|DP|CMP|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~1_sumout\ = SUM(( \CPU|DP|Ain[0]~0_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|instructionReg|out\(4) & ((!\rtl~0_combout\))) # (\CPU|instructionReg|out\(4) & (!\CPU|DP|bRegister|out\(1))))) ) + ( \CPU|DP|CMP|Add0~34_cout\ ))
-- \CPU|DP|CMP|Add0~2\ = CARRY(( \CPU|DP|Ain[0]~0_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|instructionReg|out\(4) & ((!\rtl~0_combout\))) # (\CPU|instructionReg|out\(4) & (!\CPU|DP|bRegister|out\(1))))) ) + ( \CPU|DP|CMP|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010010011100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(1),
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|ALT_INV_Ain[0]~0_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	cin => \CPU|DP|CMP|Add0~34_cout\,
	sumout => \CPU|DP|CMP|Add0~1_sumout\,
	cout => \CPU|DP|CMP|Add0~2\);

-- Location: LABCELL_X17_Y5_N36
\CPU|DP|CMP|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~5_sumout\ = SUM(( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(1))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[1]~1_combout\))))) ) + ( \CPU|DP|Ain[1]~1_combout\ ) + ( \CPU|DP|CMP|Add0~2\ ))
-- \CPU|DP|CMP|Add0~6\ = CARRY(( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(1))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[1]~1_combout\))))) ) + ( \CPU|DP|Ain[1]~1_combout\ ) + ( \CPU|DP|CMP|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|bRegister|ALT_INV_out\(1),
	datad => \CPU|DP|ALT_INV_Bin[1]~1_combout\,
	dataf => \CPU|DP|ALT_INV_Ain[1]~1_combout\,
	cin => \CPU|DP|CMP|Add0~2\,
	sumout => \CPU|DP|CMP|Add0~5_sumout\,
	cout => \CPU|DP|CMP|Add0~6\);

-- Location: LABCELL_X17_Y5_N39
\CPU|DP|CMP|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~9_sumout\ = SUM(( \CPU|DP|Ain[2]~2_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(2))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[2]~3_combout\))))) ) + ( \CPU|DP|CMP|Add0~6\ ))
-- \CPU|DP|CMP|Add0~10\ = CARRY(( \CPU|DP|Ain[2]~2_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(2))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[2]~3_combout\))))) ) + ( \CPU|DP|CMP|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|bRegister|ALT_INV_out\(2),
	datad => \CPU|DP|ALT_INV_Ain[2]~2_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[2]~3_combout\,
	cin => \CPU|DP|CMP|Add0~6\,
	sumout => \CPU|DP|CMP|Add0~9_sumout\,
	cout => \CPU|DP|CMP|Add0~10\);

-- Location: LABCELL_X17_Y5_N42
\CPU|DP|CMP|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~13_sumout\ = SUM(( \CPU|DP|Ain[3]~3_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(3))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[3]~5_combout\))))) ) + ( \CPU|DP|CMP|Add0~10\ 
-- ))
-- \CPU|DP|CMP|Add0~14\ = CARRY(( \CPU|DP|Ain[3]~3_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(3))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[3]~5_combout\))))) ) + ( \CPU|DP|CMP|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|bRegister|ALT_INV_out\(3),
	datad => \CPU|DP|ALT_INV_Ain[3]~3_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[3]~5_combout\,
	cin => \CPU|DP|CMP|Add0~10\,
	sumout => \CPU|DP|CMP|Add0~13_sumout\,
	cout => \CPU|DP|CMP|Add0~14\);

-- Location: LABCELL_X17_Y5_N45
\CPU|DP|CMP|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~17_sumout\ = SUM(( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(4))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[4]~7_combout\))))) ) + ( \CPU|DP|Ain[4]~4_combout\ ) + ( \CPU|DP|CMP|Add0~14\ 
-- ))
-- \CPU|DP|CMP|Add0~18\ = CARRY(( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(4))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[4]~7_combout\))))) ) + ( \CPU|DP|Ain[4]~4_combout\ ) + ( \CPU|DP|CMP|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|bRegister|ALT_INV_out\(4),
	datad => \CPU|DP|ALT_INV_Bin[4]~7_combout\,
	dataf => \CPU|DP|ALT_INV_Ain[4]~4_combout\,
	cin => \CPU|DP|CMP|Add0~14\,
	sumout => \CPU|DP|CMP|Add0~17_sumout\,
	cout => \CPU|DP|CMP|Add0~18\);

-- Location: LABCELL_X18_Y5_N27
\CPU|DP|cRegister|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[5]~feeder_combout\ = ( \CPU|DP|CMP|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~21_sumout\,
	combout => \CPU|DP|cRegister|out[5]~feeder_combout\);

-- Location: LABCELL_X17_Y3_N30
\rtl~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (!\CPU|instructionReg|out\(4) & (\rtl~8_combout\)) # (\CPU|instructionReg|out\(4) & ((\CPU|DP|bRegister|out\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instructionReg|ALT_INV_out\(4),
	datac => \ALT_INV_rtl~8_combout\,
	datad => \CPU|DP|bRegister|ALT_INV_out\(6),
	combout => \rtl~9_combout\);

-- Location: LABCELL_X17_Y3_N24
\CPU|DP|CMP|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux10~0_combout\ = ( \CPU|DP|aRegister|out\(5) & ( \rtl~9_combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|statemachine|WideOr23~0_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # 
-- (!\CPU|statemachine|always0~9_combout\)))) ) ) ) # ( \CPU|DP|aRegister|out\(5) & ( !\rtl~9_combout\ & ( \CPU|instructionReg|out[11]~DUPLICATE_q\ ) ) ) # ( !\CPU|DP|aRegister|out\(5) & ( !\rtl~9_combout\ & ( \CPU|instructionReg|out[11]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datae => \CPU|DP|aRegister|ALT_INV_out\(5),
	dataf => \ALT_INV_rtl~9_combout\,
	combout => \CPU|DP|CMP|Mux10~0_combout\);

-- Location: FF_X18_Y5_N29
\CPU|DP|cRegister|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[5]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux10~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(5));

-- Location: FF_X16_Y5_N56
\CPU|DataAddress|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(5),
	sload => VCC,
	ena => \CPU|statemachine|loadadr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(5));

-- Location: LABCELL_X16_Y5_N54
\CPU|mem_addr[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[5]~6_combout\ = ( \CPU|PCReg|out\(5) & ( (\CPU|DataAddress|out\(5)) # (\CPU|statemachine|WideOr34~combout\) ) ) # ( !\CPU|PCReg|out\(5) & ( (!\CPU|statemachine|WideOr34~combout\ & \CPU|DataAddress|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	datad => \CPU|DataAddress|ALT_INV_out\(5),
	dataf => \CPU|PCReg|ALT_INV_out\(5),
	combout => \CPU|mem_addr[5]~6_combout\);

-- Location: LABCELL_X12_Y4_N48
\x[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[1]~9_combout\ = ( \e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( \SW[1]~input_o\ ) ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ ) ) # ( \e1~combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( 
-- \SW[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_e1~combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \x[1]~9_combout\);

-- Location: FF_X12_Y4_N50
\CPU|instructionReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[1]~9_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(1));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X12_Y5_N48
\x[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[6]~8_combout\ = ( \e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( \SW[6]~input_o\ ) ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a6\ ) ) # ( \e1~combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( 
-- \SW[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_e1~combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \x[6]~8_combout\);

-- Location: FF_X12_Y5_N50
\CPU|instructionReg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[6]~8_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(6));

-- Location: LABCELL_X12_Y5_N9
\x[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[9]~7_combout\ = ( \e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( \SW[9]~input_o\ ) ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ ) ) # ( \e1~combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( 
-- \SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_e1~combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \x[9]~7_combout\);

-- Location: FF_X12_Y5_N10
\CPU|instructionReg|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[9]~7_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(9));

-- Location: LABCELL_X18_Y4_N36
\CPU|statemachine|WideOr13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr13~combout\ = ( \CPU|statemachine|WideNor16~18_combout\ & ( \CPU|statemachine|WideOr13~1_combout\ & ( (!\CPU|statemachine|always0~6_combout\) # (\CPU|statemachine|Equal5~0_combout\) ) ) ) # ( 
-- !\CPU|statemachine|WideNor16~18_combout\ & ( \CPU|statemachine|WideOr13~1_combout\ & ( ((!\CPU|statemachine|always0~6_combout\) # ((!\CPU|statemachine|WideNor16~16_combout\ & !\CPU|statemachine|WideNor16~0_combout\))) # 
-- (\CPU|statemachine|Equal5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~16_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~0_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~6_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~18_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr13~1_combout\,
	combout => \CPU|statemachine|WideOr13~combout\);

-- Location: LABCELL_X16_Y4_N18
\CPU|statemachine|WideOr11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr11~combout\ = ( !\CPU|statemachine|always0~26_combout\ & ( (!\CPU|statemachine|always0~17_combout\ & (!\CPU|statemachine|always0~20_combout\ & !\CPU|statemachine|WideNor16~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_always0~17_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~20_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~26_combout\,
	combout => \CPU|statemachine|WideOr11~combout\);

-- Location: LABCELL_X16_Y4_N42
\CPU|muxintoregister|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|muxintoregister|Mux1~0_combout\ = ( \CPU|statemachine|WideOr11~combout\ & ( (!\CPU|statemachine|WideOr13~combout\ & ((\CPU|instructionReg|out\(6)))) # (\CPU|statemachine|WideOr13~combout\ & (\CPU|instructionReg|out\(1))) ) ) # ( 
-- !\CPU|statemachine|WideOr11~combout\ & ( \CPU|instructionReg|out\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(1),
	datab => \CPU|instructionReg|ALT_INV_out\(6),
	datac => \CPU|instructionReg|ALT_INV_out\(9),
	datad => \CPU|statemachine|ALT_INV_WideOr13~combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr11~combout\,
	combout => \CPU|muxintoregister|Mux1~0_combout\);

-- Location: LABCELL_X16_Y4_N57
\CPU|DP|REGFILE|load7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load7~combout\ = (!\CPU|statemachine|WideOr29~combout\ & (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|muxintoregister|Mux0~0_combout\ & \CPU|muxintoregister|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr29~combout\,
	datab => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|load7~combout\);

-- Location: FF_X16_Y4_N29
\CPU|DP|REGFILE|toR7|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(4));

-- Location: FF_X16_Y3_N20
\CPU|DP|REGFILE|toR6|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(4));

-- Location: FF_X15_Y5_N58
\CPU|DP|REGFILE|toR5|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux11~1_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(4));

-- Location: FF_X16_Y3_N56
\CPU|DP|REGFILE|toR4|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(4));

-- Location: LABCELL_X16_Y3_N54
\CPU|DP|REGFILE|chooser|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector11~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(4) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & (((!\CPU|muxintoregister|Mux1~0_combout\)) # (\CPU|DP|REGFILE|toR6|out\(4)))) # 
-- (\CPU|muxintoregister|Mux2~0_combout\ & (((\CPU|DP|REGFILE|toR5|out\(4) & !\CPU|muxintoregister|Mux1~0_combout\)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(4) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & 
-- (\CPU|DP|REGFILE|toR6|out\(4) & ((\CPU|muxintoregister|Mux1~0_combout\)))) # (\CPU|muxintoregister|Mux2~0_combout\ & (((\CPU|DP|REGFILE|toR5|out\(4) & !\CPU|muxintoregister|Mux1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011010001001100111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR6|ALT_INV_out\(4),
	datab => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datac => \CPU|DP|REGFILE|toR5|ALT_INV_out\(4),
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(4),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector11~1_combout\);

-- Location: MLABCELL_X15_Y2_N18
\CPU|DP|REGFILE|toR1|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[4]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux11~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux11~1_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[4]~feeder_combout\);

-- Location: FF_X15_Y2_N19
\CPU|DP|REGFILE|toR1|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[4]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(4));

-- Location: LABCELL_X13_Y5_N51
\CPU|DP|REGFILE|toR3|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[4]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux11~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux11~1_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[4]~feeder_combout\);

-- Location: FF_X13_Y5_N52
\CPU|DP|REGFILE|toR3|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[4]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(4));

-- Location: FF_X16_Y5_N4
\CPU|DP|REGFILE|toR0|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(4));

-- Location: FF_X16_Y2_N38
\CPU|DP|REGFILE|toR2|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(4));

-- Location: LABCELL_X16_Y2_N36
\CPU|DP|REGFILE|chooser|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector11~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(4) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) # (\CPU|DP|REGFILE|toR1|out\(4)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(4) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(4) & !\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(4) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(4)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(4))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(4) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(4)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(4),
	datab => \CPU|DP|REGFILE|toR3|ALT_INV_out\(4),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \CPU|DP|REGFILE|toR0|ALT_INV_out\(4),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(4),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector11~0_combout\);

-- Location: LABCELL_X17_Y3_N36
\CPU|DP|REGFILE|chooser|Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector11~2_combout\ = ( \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector11~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(4)) ) ) # ( !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( 
-- ((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & \CPU|DP|REGFILE|chooser|Selector11~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111010111110101111100001111110011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(4),
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector11~1_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector11~0_combout\,
	datae => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector11~2_combout\);

-- Location: FF_X17_Y3_N14
\CPU|DP|bRegister|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector11~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(4));

-- Location: LABCELL_X18_Y5_N51
\CPU|DP|cRegister|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[4]~feeder_combout\ = ( \CPU|DP|CMP|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~17_sumout\,
	combout => \CPU|DP|cRegister|out[4]~feeder_combout\);

-- Location: LABCELL_X17_Y3_N0
\CPU|DP|Bin[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[4]~8_combout\ = (!\CPU|DP|Bin[1]~0_combout\ & (\CPU|DP|bRegister|out\(4))) # (\CPU|DP|Bin[1]~0_combout\ & ((\CPU|DP|Bin[4]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|bRegister|ALT_INV_out\(4),
	datac => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datad => \CPU|DP|ALT_INV_Bin[4]~7_combout\,
	combout => \CPU|DP|Bin[4]~8_combout\);

-- Location: LABCELL_X18_Y5_N57
\CPU|DP|CMP|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux11~0_combout\ = ( \CPU|DP|aRegister|out\(4) & ( \CPU|DP|Bin[4]~8_combout\ & ( (\CPU|statemachine|WideOr23~0_combout\ & (!\CPU|instructionReg|out\(11) & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) 
-- ) ) ) # ( \CPU|DP|aRegister|out\(4) & ( !\CPU|DP|Bin[4]~8_combout\ & ( \CPU|instructionReg|out\(11) ) ) ) # ( !\CPU|DP|aRegister|out\(4) & ( !\CPU|DP|Bin[4]~8_combout\ & ( \CPU|instructionReg|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datac => \CPU|instructionReg|ALT_INV_out\(11),
	datad => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datae => \CPU|DP|aRegister|ALT_INV_out\(4),
	dataf => \CPU|DP|ALT_INV_Bin[4]~8_combout\,
	combout => \CPU|DP|CMP|Mux11~0_combout\);

-- Location: FF_X18_Y5_N52
\CPU|DP|cRegister|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[4]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux11~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(4));

-- Location: FF_X16_Y5_N32
\CPU|DataAddress|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(4),
	sload => VCC,
	ena => \CPU|statemachine|loadadr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(4));

-- Location: LABCELL_X16_Y5_N30
\CPU|mem_addr[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[4]~5_combout\ = ( \CPU|DataAddress|out\(4) & ( \CPU|statemachine|WideOr34~combout\ & ( \CPU|PCReg|out\(4) ) ) ) # ( !\CPU|DataAddress|out\(4) & ( \CPU|statemachine|WideOr34~combout\ & ( \CPU|PCReg|out\(4) ) ) ) # ( \CPU|DataAddress|out\(4) & 
-- ( !\CPU|statemachine|WideOr34~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PCReg|ALT_INV_out\(4),
	datae => \CPU|DataAddress|ALT_INV_out\(4),
	dataf => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	combout => \CPU|mem_addr[4]~5_combout\);

-- Location: LABCELL_X12_Y5_N24
\x[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[4]~5_combout\ = ( \e1~combout\ & ( \SW[4]~input_o\ ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a4\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_e1~combout\,
	combout => \x[4]~5_combout\);

-- Location: FF_X12_Y5_N26
\CPU|instructionReg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[4]~5_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(4));

-- Location: FF_X16_Y3_N37
\CPU|DP|bRegister|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector15~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(0));

-- Location: LABCELL_X13_Y2_N39
\CPU|DP|Bin[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[1]~1_combout\ = ( \CPU|DP|bRegister|out\(0) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(2)) ) ) # ( !\CPU|DP|bRegister|out\(0) & ( (\CPU|instructionReg|out\(4) & \CPU|DP|bRegister|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(2),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(0),
	combout => \CPU|DP|Bin[1]~1_combout\);

-- Location: LABCELL_X19_Y5_N0
\CPU|DP|cRegister|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[1]~feeder_combout\ = ( \CPU|DP|CMP|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~5_sumout\,
	combout => \CPU|DP|cRegister|out[1]~feeder_combout\);

-- Location: LABCELL_X13_Y2_N36
\CPU|DP|Bin[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[1]~2_combout\ = ( \CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|Bin[1]~1_combout\ ) ) # ( !\CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|bRegister|out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|ALT_INV_Bin[1]~1_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(1),
	dataf => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	combout => \CPU|DP|Bin[1]~2_combout\);

-- Location: LABCELL_X19_Y5_N24
\CPU|DP|CMP|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux14~0_combout\ = ( \CPU|DP|aRegister|out\(1) & ( \CPU|statemachine|WideOr23~0_combout\ & ( (!\CPU|instructionReg|out\(11) & (\CPU|DP|Bin[1]~2_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) 
-- # (\CPU|instructionReg|out\(11) & (((!\CPU|DP|Bin[1]~2_combout\)))) ) ) ) # ( !\CPU|DP|aRegister|out\(1) & ( \CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|instructionReg|out\(11) & !\CPU|DP|Bin[1]~2_combout\) ) ) ) # ( \CPU|DP|aRegister|out\(1) & ( 
-- !\CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|instructionReg|out\(11) & !\CPU|DP|Bin[1]~2_combout\) ) ) ) # ( !\CPU|DP|aRegister|out\(1) & ( !\CPU|statemachine|WideOr23~0_combout\ & ( (\CPU|instructionReg|out\(11) & !\CPU|DP|Bin[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datac => \CPU|instructionReg|ALT_INV_out\(11),
	datad => \CPU|DP|ALT_INV_Bin[1]~2_combout\,
	datae => \CPU|DP|aRegister|ALT_INV_out\(1),
	dataf => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	combout => \CPU|DP|CMP|Mux14~0_combout\);

-- Location: FF_X19_Y5_N1
\CPU|DP|cRegister|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[1]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux14~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(1));

-- Location: FF_X16_Y5_N23
\CPU|DataAddress|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(1),
	sload => VCC,
	ena => \CPU|statemachine|loadadr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(1));

-- Location: LABCELL_X16_Y5_N21
\CPU|mem_addr[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[1]~2_combout\ = (!\CPU|statemachine|WideOr34~combout\ & ((\CPU|DataAddress|out\(1)))) # (\CPU|statemachine|WideOr34~combout\ & (\CPU|PCReg|out\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(1),
	datac => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	datad => \CPU|DataAddress|ALT_INV_out\(1),
	combout => \CPU|mem_addr[1]~2_combout\);

-- Location: LABCELL_X19_Y5_N15
\x[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[15]~2_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (!\e1~0_combout\) # ((!\e1~1_combout\) # ((!\e1~3_combout\) # (!\e1~2_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~0_combout\,
	datab => \ALT_INV_e1~1_combout\,
	datac => \ALT_INV_e1~3_combout\,
	datad => \ALT_INV_e1~2_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \x[15]~2_combout\);

-- Location: FF_X19_Y5_N17
\CPU|instructionReg|out[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[15]~2_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out[15]~DUPLICATE_q\);

-- Location: FF_X19_Y5_N11
\CPU|instructionReg|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[13]~0_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(13));

-- Location: LABCELL_X18_Y3_N18
\CPU|statemachine|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal4~0_combout\ = ( !\CPU|instructionReg|out\(12) & ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ & ( (\CPU|statemachine|STATE|out\(4) & (!\CPU|statemachine|STATE|out\(1) & (!\CPU|statemachine|STATE|out\(0) & 
-- \CPU|statemachine|STATE|out\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datae => \CPU|instructionReg|ALT_INV_out\(12),
	dataf => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	combout => \CPU|statemachine|Equal4~0_combout\);

-- Location: LABCELL_X19_Y5_N54
\CPU|statemachine|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal7~0_combout\ = ( \CPU|statemachine|Equal4~0_combout\ & ( (!\CPU|instructionReg|out\(14) & (\CPU|instructionReg|out[15]~DUPLICATE_q\ & (!\CPU|statemachine|STATE|out\(3) & !\CPU|instructionReg|out\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(14),
	datab => \CPU|instructionReg|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datad => \CPU|instructionReg|ALT_INV_out\(13),
	dataf => \CPU|statemachine|ALT_INV_Equal4~0_combout\,
	combout => \CPU|statemachine|Equal7~0_combout\);

-- Location: LABCELL_X16_Y5_N0
\CPU|statemachine|WideOr34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr34~0_combout\ = ( \CPU|statemachine|always0~7_combout\ & ( \CPU|statemachine|always0~6_combout\ & ( (((!\CPU|statemachine|WideNor16~0_combout\ & \CPU|statemachine|Equal7~0_combout\)) # (\CPU|statemachine|Equal5~0_combout\)) # 
-- (\CPU|statemachine|WideNor16~16_combout\) ) ) ) # ( !\CPU|statemachine|always0~7_combout\ & ( \CPU|statemachine|always0~6_combout\ & ( (\CPU|statemachine|Equal5~0_combout\) # (\CPU|statemachine|WideNor16~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~0_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~16_combout\,
	datac => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	datad => \CPU|statemachine|ALT_INV_Equal7~0_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~7_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~6_combout\,
	combout => \CPU|statemachine|WideOr34~0_combout\);

-- Location: LABCELL_X16_Y5_N24
\CPU|statemachine|WideOr34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr34~combout\ = ( !\CPU|statemachine|always0~11_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & (!\CPU|statemachine|mem_cmd[0]~0_combout\ & (!\CPU|statemachine|WideOr34~0_combout\ & 
-- !\CPU|statemachine|always0~10_combout\))) ) ) ) # ( !\CPU|statemachine|always0~11_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideOr34~0_combout\ & !\CPU|statemachine|always0~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_mem_cmd[0]~0_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr34~0_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~10_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~11_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|statemachine|WideOr34~combout\);

-- Location: MLABCELL_X15_Y5_N51
\CPU|mem_addr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[0]~1_combout\ = ( \CPU|PCReg|out\(0) & ( (\CPU|DataAddress|out\(0)) # (\CPU|statemachine|WideOr34~combout\) ) ) # ( !\CPU|PCReg|out\(0) & ( (!\CPU|statemachine|WideOr34~combout\ & \CPU|DataAddress|out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	datad => \CPU|DataAddress|ALT_INV_out\(0),
	dataf => \CPU|PCReg|ALT_INV_out\(0),
	combout => \CPU|mem_addr[0]~1_combout\);

-- Location: LABCELL_X12_Y5_N42
\x[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[5]~11_combout\ = ( \e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( \SW[5]~input_o\ ) ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ ) ) # ( \e1~combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( 
-- \SW[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_e1~combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \x[5]~11_combout\);

-- Location: FF_X12_Y5_N44
\CPU|instructionReg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[5]~11_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(5));

-- Location: LABCELL_X12_Y4_N6
\x[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[8]~10_combout\ = ( \e1~combout\ & ( \SW[8]~input_o\ ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a8\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datac => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_e1~combout\,
	combout => \x[8]~10_combout\);

-- Location: FF_X12_Y4_N7
\CPU|instructionReg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[8]~10_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(8));

-- Location: LABCELL_X16_Y4_N36
\CPU|muxintoregister|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|muxintoregister|Mux2~0_combout\ = ( \CPU|statemachine|WideOr13~combout\ & ( (!\CPU|statemachine|WideOr11~combout\ & (\CPU|instructionReg|out\(8))) # (\CPU|statemachine|WideOr11~combout\ & ((\CPU|instructionReg|out\(0)))) ) ) # ( 
-- !\CPU|statemachine|WideOr13~combout\ & ( (!\CPU|statemachine|WideOr11~combout\ & ((\CPU|instructionReg|out\(8)))) # (\CPU|statemachine|WideOr11~combout\ & (\CPU|instructionReg|out\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(5),
	datab => \CPU|instructionReg|ALT_INV_out\(8),
	datac => \CPU|statemachine|ALT_INV_WideOr11~combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(0),
	dataf => \CPU|statemachine|ALT_INV_WideOr13~combout\,
	combout => \CPU|muxintoregister|Mux2~0_combout\);

-- Location: LABCELL_X16_Y4_N45
\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ = ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & \CPU|muxintoregister|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\);

-- Location: LABCELL_X18_Y5_N33
\CPU|DP|muxintoregister|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux9~0_combout\ = ( \CPU|DP|cRegister|out\(6) & ( \CPU|instructionReg|out\(6) & ( (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\))) ) ) ) # ( 
-- !\CPU|DP|cRegister|out\(6) & ( \CPU|instructionReg|out\(6) & ( (\CPU|statemachine|WideNor16~12_combout\ & (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) ) ) ) # ( 
-- \CPU|DP|cRegister|out\(6) & ( !\CPU|instructionReg|out\(6) & ( (!\CPU|statemachine|WideNor16~12_combout\ & (!\CPU|statemachine|always0~11_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001000000000110000001000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~11_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datae => \CPU|DP|cRegister|ALT_INV_out\(6),
	dataf => \CPU|instructionReg|ALT_INV_out\(6),
	combout => \CPU|DP|muxintoregister|Mux9~0_combout\);

-- Location: MLABCELL_X15_Y5_N18
\CPU|DP|muxintoregister|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux9~1_combout\ = ( \CPU|DP|muxintoregister|Mux9~0_combout\ ) # ( !\CPU|DP|muxintoregister|Mux9~0_combout\ & ( (!\CPU|statemachine|WideOr26~0_combout\ & ((!\e1~combout\ & (\MEM|mem_rtl_0|auto_generated|ram_block1a6\)) # 
-- (\e1~combout\ & ((\SW[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datab => \ALT_INV_e1~combout\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux9~0_combout\,
	combout => \CPU|DP|muxintoregister|Mux9~1_combout\);

-- Location: FF_X16_Y4_N55
\CPU|DP|REGFILE|toR7|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux9~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(6));

-- Location: FF_X15_Y5_N19
\CPU|DP|REGFILE|toR5|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux9~1_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(6));

-- Location: FF_X16_Y3_N44
\CPU|DP|REGFILE|toR4|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux9~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(6));

-- Location: FF_X16_Y3_N1
\CPU|DP|REGFILE|toR6|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux9~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(6));

-- Location: LABCELL_X13_Y3_N21
\CPU|DP|REGFILE|chooser|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector9~1_combout\ = ( \CPU|muxintoregister|Mux0~0_combout\ & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|DP|REGFILE|toR5|out\(6) & !\CPU|muxintoregister|Mux1~0_combout\) ) ) ) # ( \CPU|muxintoregister|Mux0~0_combout\ & ( 
-- !\CPU|muxintoregister|Mux2~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(6))) # (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000111100000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR5|ALT_INV_out\(6),
	datab => \CPU|DP|REGFILE|toR4|ALT_INV_out\(6),
	datac => \CPU|DP|REGFILE|toR6|ALT_INV_out\(6),
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector9~1_combout\);

-- Location: MLABCELL_X15_Y2_N30
\CPU|DP|REGFILE|toR3|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[6]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux9~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux9~1_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[6]~feeder_combout\);

-- Location: FF_X15_Y2_N31
\CPU|DP|REGFILE|toR3|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[6]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(6));

-- Location: LABCELL_X13_Y5_N0
\CPU|DP|REGFILE|toR1|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[6]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux9~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux9~1_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[6]~feeder_combout\);

-- Location: FF_X13_Y5_N1
\CPU|DP|REGFILE|toR1|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[6]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(6));

-- Location: LABCELL_X13_Y5_N33
\CPU|DP|REGFILE|toR0|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[6]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux9~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux9~1_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[6]~feeder_combout\);

-- Location: FF_X13_Y5_N34
\CPU|DP|REGFILE|toR0|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[6]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(6));

-- Location: FF_X16_Y2_N41
\CPU|DP|REGFILE|toR2|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux9~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(6));

-- Location: LABCELL_X12_Y3_N48
\CPU|DP|REGFILE|chooser|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector9~0_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR2|out\(6) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR3|out\(6) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR1|out\(6) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR0|out\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR3|ALT_INV_out\(6),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(6),
	datac => \CPU|DP|REGFILE|toR0|ALT_INV_out\(6),
	datad => \CPU|DP|REGFILE|toR2|ALT_INV_out\(6),
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector9~0_combout\);

-- Location: LABCELL_X12_Y3_N12
\CPU|DP|REGFILE|chooser|Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector9~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector9~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\))) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(6)))) # (\CPU|DP|REGFILE|chooser|Selector9~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector9~0_combout\ & ( ((\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- \CPU|DP|REGFILE|toR7|out\(6))) # (\CPU|DP|REGFILE|chooser|Selector9~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111110111111000111111011111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \CPU|DP|REGFILE|toR7|ALT_INV_out\(6),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector9~1_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector9~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector9~2_combout\);

-- Location: FF_X12_Y3_N44
\CPU|DP|bRegister|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector9~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(6));

-- Location: LABCELL_X18_Y5_N42
\CPU|DP|cRegister|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[6]~feeder_combout\ = ( \CPU|DP|CMP|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~25_sumout\,
	combout => \CPU|DP|cRegister|out[6]~feeder_combout\);

-- Location: LABCELL_X13_Y5_N36
\CPU|DP|Bin[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[6]~10_combout\ = ( \CPU|DP|bRegister|out\(6) & ( \CPU|DP|Bin[6]~9_combout\ ) ) # ( !\CPU|DP|bRegister|out\(6) & ( \CPU|DP|Bin[6]~9_combout\ & ( \CPU|DP|Bin[1]~0_combout\ ) ) ) # ( \CPU|DP|bRegister|out\(6) & ( !\CPU|DP|Bin[6]~9_combout\ & ( 
-- !\CPU|DP|Bin[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datae => \CPU|DP|bRegister|ALT_INV_out\(6),
	dataf => \CPU|DP|ALT_INV_Bin[6]~9_combout\,
	combout => \CPU|DP|Bin[6]~10_combout\);

-- Location: LABCELL_X18_Y5_N21
\CPU|DP|CMP|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux9~0_combout\ = ( \CPU|DP|aRegister|out\(6) & ( \CPU|DP|Bin[6]~10_combout\ & ( (\CPU|statemachine|WideOr23~0_combout\ & (!\CPU|instructionReg|out\(11) & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) 
-- ) ) ) # ( \CPU|DP|aRegister|out\(6) & ( !\CPU|DP|Bin[6]~10_combout\ & ( \CPU|instructionReg|out\(11) ) ) ) # ( !\CPU|DP|aRegister|out\(6) & ( !\CPU|DP|Bin[6]~10_combout\ & ( \CPU|instructionReg|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datac => \CPU|instructionReg|ALT_INV_out\(11),
	datad => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datae => \CPU|DP|aRegister|ALT_INV_out\(6),
	dataf => \CPU|DP|ALT_INV_Bin[6]~10_combout\,
	combout => \CPU|DP|CMP|Mux9~0_combout\);

-- Location: FF_X18_Y5_N43
\CPU|DP|cRegister|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[6]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux9~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(6));

-- Location: FF_X16_Y5_N59
\CPU|DataAddress|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(6),
	sload => VCC,
	ena => \CPU|statemachine|loadadr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(6));

-- Location: LABCELL_X16_Y5_N45
\e1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~4_combout\ = ( \CPU|statemachine|WideOr34~combout\ & ( (\CPU|PCReg|out\(6) & !\CPU|statemachine|mem_cmd\(0)) ) ) # ( !\CPU|statemachine|WideOr34~combout\ & ( (!\CPU|statemachine|mem_cmd\(0) & \CPU|DataAddress|out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(6),
	datac => \CPU|statemachine|ALT_INV_mem_cmd\(0),
	datad => \CPU|DataAddress|ALT_INV_out\(6),
	dataf => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	combout => \e1~4_combout\);

-- Location: LABCELL_X19_Y5_N33
\x[12]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[12]~4_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( (!\e1~0_combout\) # ((!\e1~1_combout\) # ((!\e1~3_combout\) # (!\e1~2_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~0_combout\,
	datab => \ALT_INV_e1~1_combout\,
	datac => \ALT_INV_e1~3_combout\,
	datad => \ALT_INV_e1~2_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \x[12]~4_combout\);

-- Location: FF_X19_Y5_N35
\CPU|instructionReg|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[12]~4_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(12));

-- Location: FF_X19_Y5_N32
\CPU|instructionReg|out[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[14]~1_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out[14]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y5_N51
\CPU|statemachine|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal0~1_combout\ = ( \CPU|statemachine|Equal0~0_combout\ & ( !\CPU|instructionReg|out\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|instructionReg|ALT_INV_out\(11),
	dataf => \CPU|statemachine|ALT_INV_Equal0~0_combout\,
	combout => \CPU|statemachine|Equal0~1_combout\);

-- Location: LABCELL_X19_Y5_N42
\CPU|statemachine|always0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~7_combout\ = ( !\CPU|statemachine|WideNor16~2_combout\ & ( \CPU|statemachine|Equal0~1_combout\ & ( (!\CPU|statemachine|WideNor16~1_combout\ & (((\CPU|instructionReg|out[14]~DUPLICATE_q\) # (\CPU|instructionReg|out\(13))) # 
-- (\CPU|instructionReg|out\(12)))) ) ) ) # ( !\CPU|statemachine|WideNor16~2_combout\ & ( !\CPU|statemachine|Equal0~1_combout\ & ( !\CPU|statemachine|WideNor16~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000001110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datab => \CPU|instructionReg|ALT_INV_out\(13),
	datac => \CPU|statemachine|ALT_INV_WideNor16~1_combout\,
	datad => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~2_combout\,
	dataf => \CPU|statemachine|ALT_INV_Equal0~1_combout\,
	combout => \CPU|statemachine|always0~7_combout\);

-- Location: LABCELL_X17_Y5_N3
\CPU|statemachine|always0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~8_combout\ = ( !\CPU|statemachine|Equal7~0_combout\ & ( !\CPU|statemachine|WideNor16~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_WideNor16~18_combout\,
	dataf => \CPU|statemachine|ALT_INV_Equal7~0_combout\,
	combout => \CPU|statemachine|always0~8_combout\);

-- Location: LABCELL_X17_Y5_N18
\CPU|statemachine|always0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~9_combout\ = ( \CPU|statemachine|always0~8_combout\ & ( \CPU|statemachine|always0~6_combout\ & ( (!\CPU|statemachine|Equal5~0_combout\ & (!\CPU|statemachine|WideNor16~0_combout\ & (!\CPU|statemachine|WideNor16~16_combout\ & 
-- \CPU|statemachine|always0~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~0_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~16_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~7_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~8_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~6_combout\,
	combout => \CPU|statemachine|always0~9_combout\);

-- Location: LABCELL_X16_Y5_N6
\CPU|statemachine|mem_cmd[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|mem_cmd\(0) = ( \CPU|statemachine|always0~9_combout\ & ( \CPU|statemachine|mem_cmd[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_mem_cmd[0]~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|statemachine|mem_cmd\(0));

-- Location: LABCELL_X19_Y2_N33
\CPU|statemachine|WideOr30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr30~1_combout\ = ( \CPU|statemachine|Equal1~0_combout\ & ( \CPU|statemachine|always0~1_combout\ & ( !\CPU|statemachine|always0~0_combout\ ) ) ) # ( !\CPU|statemachine|Equal1~0_combout\ & ( \CPU|statemachine|always0~1_combout\ & ( 
-- (\CPU|statemachine|WideNor16~10_combout\ & !\CPU|statemachine|always0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideNor16~10_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~0_combout\,
	datae => \CPU|statemachine|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~1_combout\,
	combout => \CPU|statemachine|WideOr30~1_combout\);

-- Location: MLABCELL_X21_Y4_N45
\CPU|statemachine|always0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~28_combout\ = ( !\CPU|statemachine|WideNor7~combout\ & ( \CPU|statemachine|always0~2_combout\ & ( (!\CPU|statemachine|always0~3_combout\ & (!\CPU|statemachine|WideNor16~7_combout\ & (\CPU|statemachine|Equal2~0_combout\ & 
-- !\CPU|statemachine|WideNor16~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~3_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~7_combout\,
	datac => \CPU|statemachine|ALT_INV_Equal2~0_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~13_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor7~combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~2_combout\,
	combout => \CPU|statemachine|always0~28_combout\);

-- Location: LABCELL_X22_Y3_N54
\CPU|statemachine|WideOr30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr30~4_combout\ = ( !\CPU|statemachine|loads~combout\ & ( !\CPU|statemachine|always0~28_combout\ & ( !\CPU|statemachine|WideOr30~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_WideOr30~1_combout\,
	datae => \CPU|statemachine|ALT_INV_loads~combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~28_combout\,
	combout => \CPU|statemachine|WideOr30~4_combout\);

-- Location: LABCELL_X22_Y3_N27
\CPU|statemachine|WideOr30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr30~5_combout\ = ( \CPU|statemachine|WideOr30~4_combout\ & ( !\CPU|statemachine|always0~11_combout\ & ( (!\CPU|statemachine|WideNor16~12_combout\ & (\CPU|statemachine|WideOr13~1_combout\ & (!\CPU|statemachine|always0~26_combout\ & 
-- !\CPU|statemachine|always0~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	datab => \CPU|statemachine|ALT_INV_WideOr13~1_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~26_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~17_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr30~4_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~11_combout\,
	combout => \CPU|statemachine|WideOr30~5_combout\);

-- Location: MLABCELL_X21_Y3_N18
\CPU|statemachine|always0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~19_combout\ = ( !\CPU|statemachine|always0~0_combout\ & ( \CPU|statemachine|Equal0~1_combout\ & ( (\CPU|instructionReg|out\(12) & (!\CPU|instructionReg|out\(13) & \CPU|instructionReg|out\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datab => \CPU|instructionReg|ALT_INV_out\(13),
	datad => \CPU|instructionReg|ALT_INV_out\(14),
	datae => \CPU|statemachine|ALT_INV_always0~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_Equal0~1_combout\,
	combout => \CPU|statemachine|always0~19_combout\);

-- Location: LABCELL_X22_Y3_N48
\CPU|statemachine|WideOr30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr30~2_combout\ = ( \CPU|statemachine|always0~6_combout\ & ( !\CPU|statemachine|always0~19_combout\ & ( (!\CPU|statemachine|always0~27_combout\ & ((!\CPU|statemachine|WideNor16~18_combout\) # (\CPU|statemachine|Equal5~0_combout\))) ) 
-- ) ) # ( !\CPU|statemachine|always0~6_combout\ & ( !\CPU|statemachine|always0~19_combout\ & ( !\CPU|statemachine|always0~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~27_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~18_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~6_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~19_combout\,
	combout => \CPU|statemachine|WideOr30~2_combout\);

-- Location: MLABCELL_X21_Y3_N27
\CPU|statemachine|WideOr30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr30~3_combout\ = ( !\CPU|statemachine|always0~14_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & (\CPU|statemachine|WideOr30~2_combout\ & !\CPU|statemachine|always0~15_combout\)) ) ) 
-- ) # ( !\CPU|statemachine|always0~14_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (\CPU|statemachine|WideOr30~2_combout\ & !\CPU|statemachine|always0~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datac => \CPU|statemachine|ALT_INV_WideOr30~2_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~15_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~14_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|statemachine|WideOr30~3_combout\);

-- Location: LABCELL_X19_Y5_N48
\CPU|statemachine|always0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~25_combout\ = ( \CPU|instructionReg|out[14]~DUPLICATE_q\ & ( (!\CPU|instructionReg|out\(12) & (\CPU|statemachine|Equal0~1_combout\ & \CPU|instructionReg|out\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datac => \CPU|statemachine|ALT_INV_Equal0~1_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(13),
	dataf => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	combout => \CPU|statemachine|always0~25_combout\);

-- Location: LABCELL_X19_Y2_N21
\CPU|statemachine|always0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~23_combout\ = ( !\CPU|statemachine|WideNor16~5_combout\ & ( \CPU|statemachine|always0~4_combout\ & ( (!\CPU|statemachine|WideNor16~6_combout\ & (!\CPU|statemachine|WideNor16~4_combout\ & \CPU|statemachine|Equal3~0_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~6_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~4_combout\,
	datac => \CPU|statemachine|ALT_INV_Equal3~0_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~5_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~4_combout\,
	combout => \CPU|statemachine|always0~23_combout\);

-- Location: LABCELL_X19_Y4_N36
\CPU|statemachine|next_reset_state[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|next_reset_state[3]~0_combout\ = ( \CPU|statemachine|always0~12_combout\ & ( (!\CPU|statemachine|WideNor16~10_combout\ & (((!\CPU|statemachine|WideNor16~8_combout\ & \CPU|statemachine|WideNor7~combout\)) # 
-- (\CPU|statemachine|WideNor16~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101111000000000010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~8_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor7~combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~9_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~10_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~12_combout\,
	combout => \CPU|statemachine|next_reset_state[3]~0_combout\);

-- Location: LABCELL_X18_Y3_N6
\CPU|statemachine|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr5~0_combout\ = ( \CPU|statemachine|always0~22_combout\ & ( (!\CPU|statemachine|always0~20_combout\ & (!\CPU|statemachine|WideNor16~14_combout\ & (!\CPU|statemachine|always0~23_combout\ & 
-- !\CPU|statemachine|next_reset_state[3]~0_combout\))) ) ) # ( !\CPU|statemachine|always0~22_combout\ & ( (!\CPU|statemachine|always0~20_combout\ & (!\CPU|statemachine|always0~23_combout\ & !\CPU|statemachine|next_reset_state[3]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~20_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~14_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~23_combout\,
	datad => \CPU|statemachine|ALT_INV_next_reset_state[3]~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~22_combout\,
	combout => \CPU|statemachine|WideOr5~0_combout\);

-- Location: LABCELL_X18_Y3_N0
\CPU|statemachine|WideOr5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr5~1_combout\ = ( \CPU|statemachine|WideOr5~0_combout\ & ( (!\CPU|statemachine|always0~13_combout\ & (!\CPU|statemachine|loadir~combout\ & !\CPU|statemachine|always0~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~13_combout\,
	datac => \CPU|statemachine|ALT_INV_loadir~combout\,
	datad => \CPU|statemachine|ALT_INV_always0~21_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr5~0_combout\,
	combout => \CPU|statemachine|WideOr5~1_combout\);

-- Location: MLABCELL_X21_Y3_N15
\CPU|statemachine|WideOr5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr5~3_combout\ = ( !\CPU|statemachine|WideOr34~0_combout\ & ( \CPU|statemachine|WideOr5~1_combout\ & ( (!\CPU|statemachine|always0~9_combout\) # ((!\CPU|statemachine|always0~25_combout\ & !\CPU|statemachine|always0~24_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000111110000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~25_combout\,
	datab => \CPU|statemachine|ALT_INV_always0~24_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr34~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr5~1_combout\,
	combout => \CPU|statemachine|WideOr5~3_combout\);

-- Location: MLABCELL_X21_Y3_N3
\CPU|statemachine|WideOr30~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr30~6_combout\ = ( \CPU|statemachine|WideOr30~3_combout\ & ( \CPU|statemachine|WideOr5~3_combout\ & ( (!\CPU|statemachine|mem_cmd\(0) & (\CPU|statemachine|WideOr30~0_combout\ & \CPU|statemachine|WideOr30~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|ALT_INV_mem_cmd\(0),
	datac => \CPU|statemachine|ALT_INV_WideOr30~0_combout\,
	datad => \CPU|statemachine|ALT_INV_WideOr30~5_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr30~3_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr5~3_combout\,
	combout => \CPU|statemachine|WideOr30~6_combout\);

-- Location: FF_X21_Y3_N55
\CPU|PCReg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|Add0~21_sumout\,
	sclr => \CPU|statemachine|WideOr30~combout\,
	ena => \CPU|statemachine|WideOr30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(8));

-- Location: FF_X16_Y5_N13
\CPU|DataAddress|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(8),
	sload => VCC,
	ena => \CPU|statemachine|loadadr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(8));

-- Location: LABCELL_X16_Y5_N12
write : cyclonev_lcell_comb
-- Equation(s):
-- \write~combout\ = ( \CPU|statemachine|mem_cmd\(0) & ( (!\CPU|statemachine|WideOr34~combout\ & ((!\CPU|DataAddress|out\(8)))) # (\CPU|statemachine|WideOr34~combout\ & (!\CPU|PCReg|out\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100000011001111110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PCReg|ALT_INV_out\(8),
	datac => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	datad => \CPU|DataAddress|ALT_INV_out\(8),
	dataf => \CPU|statemachine|ALT_INV_mem_cmd\(0),
	combout => \write~combout\);

-- Location: LABCELL_X19_Y5_N36
\x[11]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[11]~3_combout\ = ( \e1~4_combout\ & ( \e1~0_combout\ & ( (\MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ((!\e1~2_combout\) # ((!\e1~1_combout\) # (!\e1~3_combout\)))) ) ) ) # ( !\e1~4_combout\ & ( \e1~0_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a11\ ) ) ) # ( \e1~4_combout\ & ( !\e1~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ ) ) ) # ( !\e1~4_combout\ & ( !\e1~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~2_combout\,
	datab => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datac => \ALT_INV_e1~1_combout\,
	datad => \ALT_INV_e1~3_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \ALT_INV_e1~0_combout\,
	combout => \x[11]~3_combout\);

-- Location: FF_X19_Y5_N38
\CPU|instructionReg|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[11]~3_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(11));

-- Location: LABCELL_X18_Y5_N45
\CPU|DP|cRegister|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[2]~feeder_combout\ = ( \CPU|DP|CMP|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~9_sumout\,
	combout => \CPU|DP|cRegister|out[2]~feeder_combout\);

-- Location: LABCELL_X13_Y2_N12
\CPU|DP|Bin[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[2]~4_combout\ = ( \CPU|DP|Bin[2]~3_combout\ & ( (\CPU|DP|bRegister|out\(2)) # (\CPU|DP|Bin[1]~0_combout\) ) ) # ( !\CPU|DP|Bin[2]~3_combout\ & ( (!\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|bRegister|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datad => \CPU|DP|bRegister|ALT_INV_out\(2),
	dataf => \CPU|DP|ALT_INV_Bin[2]~3_combout\,
	combout => \CPU|DP|Bin[2]~4_combout\);

-- Location: LABCELL_X18_Y5_N54
\CPU|DP|CMP|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux13~0_combout\ = ( \CPU|DP|aRegister|out\(2) & ( \CPU|DP|Bin[2]~4_combout\ & ( (\CPU|statemachine|WideOr23~0_combout\ & (!\CPU|instructionReg|out\(11) & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) 
-- ) ) ) # ( \CPU|DP|aRegister|out\(2) & ( !\CPU|DP|Bin[2]~4_combout\ & ( \CPU|instructionReg|out\(11) ) ) ) # ( !\CPU|DP|aRegister|out\(2) & ( !\CPU|DP|Bin[2]~4_combout\ & ( \CPU|instructionReg|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(11),
	datae => \CPU|DP|aRegister|ALT_INV_out\(2),
	dataf => \CPU|DP|ALT_INV_Bin[2]~4_combout\,
	combout => \CPU|DP|CMP|Mux13~0_combout\);

-- Location: FF_X18_Y5_N47
\CPU|DP|cRegister|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[2]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux13~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(2));

-- Location: FF_X16_Y5_N20
\CPU|DataAddress|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(2),
	sload => VCC,
	ena => \CPU|statemachine|loadadr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(2));

-- Location: MLABCELL_X15_Y5_N36
\e1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~3_combout\ = ( \CPU|DataAddress|out\(1) & ( \CPU|statemachine|WideOr34~combout\ & ( (!\CPU|PCReg|out\(1) & !\CPU|PCReg|out\(2)) ) ) ) # ( !\CPU|DataAddress|out\(1) & ( \CPU|statemachine|WideOr34~combout\ & ( (!\CPU|PCReg|out\(1) & !\CPU|PCReg|out\(2)) 
-- ) ) ) # ( !\CPU|DataAddress|out\(1) & ( !\CPU|statemachine|WideOr34~combout\ & ( !\CPU|DataAddress|out\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(1),
	datab => \CPU|DataAddress|ALT_INV_out\(2),
	datac => \CPU|PCReg|ALT_INV_out\(2),
	datae => \CPU|DataAddress|ALT_INV_out\(1),
	dataf => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	combout => \e1~3_combout\);

-- Location: MLABCELL_X15_Y5_N12
e1 : cyclonev_lcell_comb
-- Equation(s):
-- \e1~combout\ = ( \e1~1_combout\ & ( (\e1~3_combout\ & (\e1~0_combout\ & (\e1~4_combout\ & \e1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~3_combout\,
	datab => \ALT_INV_e1~0_combout\,
	datac => \ALT_INV_e1~4_combout\,
	datad => \ALT_INV_e1~2_combout\,
	dataf => \ALT_INV_e1~1_combout\,
	combout => \e1~combout\);

-- Location: LABCELL_X12_Y5_N21
\x[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[3]~6_combout\ = ( \e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( \SW[3]~input_o\ ) ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a3\ ) ) # ( \e1~combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( 
-- \SW[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_e1~combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \x[3]~6_combout\);

-- Location: FF_X12_Y5_N23
\CPU|instructionReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[3]~6_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(3));

-- Location: LABCELL_X12_Y3_N27
\CPU|DP|Bin[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[1]~0_combout\ = (\CPU|instructionReg|out\(4)) # (\CPU|instructionReg|out\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(3),
	datad => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[1]~0_combout\);

-- Location: LABCELL_X18_Y3_N9
\CPU|DP|cRegister|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[3]~feeder_combout\ = ( \CPU|DP|CMP|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~13_sumout\,
	combout => \CPU|DP|cRegister|out[3]~feeder_combout\);

-- Location: LABCELL_X17_Y3_N15
\CPU|DP|Bin[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[3]~6_combout\ = ( \CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|Bin[3]~5_combout\ ) ) # ( !\CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|bRegister|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|ALT_INV_Bin[3]~5_combout\,
	datad => \CPU|DP|bRegister|ALT_INV_out\(3),
	dataf => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	combout => \CPU|DP|Bin[3]~6_combout\);

-- Location: LABCELL_X17_Y3_N27
\CPU|DP|CMP|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux12~0_combout\ = ( \CPU|DP|aRegister|out\(3) & ( \CPU|DP|Bin[3]~6_combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|statemachine|WideOr23~0_combout\ & ((!\CPU|statemachine|WideNor16~19_combout\) # 
-- (!\CPU|statemachine|always0~9_combout\)))) ) ) ) # ( \CPU|DP|aRegister|out\(3) & ( !\CPU|DP|Bin[3]~6_combout\ & ( \CPU|instructionReg|out[11]~DUPLICATE_q\ ) ) ) # ( !\CPU|DP|aRegister|out\(3) & ( !\CPU|DP|Bin[3]~6_combout\ & ( 
-- \CPU|instructionReg|out[11]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datae => \CPU|DP|aRegister|ALT_INV_out\(3),
	dataf => \CPU|DP|ALT_INV_Bin[3]~6_combout\,
	combout => \CPU|DP|CMP|Mux12~0_combout\);

-- Location: FF_X18_Y3_N11
\CPU|DP|cRegister|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[3]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux12~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(3));

-- Location: FF_X16_Y5_N44
\CPU|DataAddress|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(3),
	sload => VCC,
	ena => \CPU|statemachine|loadadr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(3));

-- Location: MLABCELL_X15_Y5_N42
\e1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~1_combout\ = ( !\CPU|PCReg|out\(3) & ( \CPU|statemachine|WideOr34~combout\ & ( !\CPU|PCReg|out\(4) ) ) ) # ( \CPU|PCReg|out\(3) & ( !\CPU|statemachine|WideOr34~combout\ & ( (!\CPU|DataAddress|out\(3) & !\CPU|DataAddress|out\(4)) ) ) ) # ( 
-- !\CPU|PCReg|out\(3) & ( !\CPU|statemachine|WideOr34~combout\ & ( (!\CPU|DataAddress|out\(3) & !\CPU|DataAddress|out\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DataAddress|ALT_INV_out\(3),
	datac => \CPU|DataAddress|ALT_INV_out\(4),
	datad => \CPU|PCReg|ALT_INV_out\(4),
	datae => \CPU|PCReg|ALT_INV_out\(3),
	dataf => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	combout => \e1~1_combout\);

-- Location: LABCELL_X19_Y5_N30
\x[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[14]~1_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( (!\e1~0_combout\) # ((!\e1~1_combout\) # ((!\e1~2_combout\) # (!\e1~3_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a14\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~0_combout\,
	datab => \ALT_INV_e1~1_combout\,
	datac => \ALT_INV_e1~2_combout\,
	datad => \ALT_INV_e1~3_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \x[14]~1_combout\);

-- Location: FF_X19_Y5_N31
\CPU|instructionReg|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[14]~1_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(14));

-- Location: LABCELL_X18_Y3_N51
\CPU|statemachine|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal5~0_combout\ = ( \CPU|statemachine|Equal4~0_combout\ & ( (\CPU|instructionReg|out\(14) & (!\CPU|statemachine|STATE|out\(3) & (!\CPU|instructionReg|out\(15) & \CPU|instructionReg|out[13]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(14),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|instructionReg|ALT_INV_out\(15),
	datad => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|statemachine|ALT_INV_Equal4~0_combout\,
	combout => \CPU|statemachine|Equal5~0_combout\);

-- Location: LABCELL_X16_Y5_N48
\CPU|statemachine|loadadr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|loadadr~0_combout\ = ( \CPU|statemachine|always0~7_combout\ & ( \CPU|statemachine|always0~6_combout\ & ( ((!\CPU|statemachine|WideNor16~16_combout\ & (!\CPU|statemachine|WideNor16~0_combout\ & \CPU|statemachine|Equal7~0_combout\))) # 
-- (\CPU|statemachine|Equal5~0_combout\) ) ) ) # ( !\CPU|statemachine|always0~7_combout\ & ( \CPU|statemachine|always0~6_combout\ & ( \CPU|statemachine|Equal5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~16_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~0_combout\,
	datad => \CPU|statemachine|ALT_INV_Equal7~0_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~7_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~6_combout\,
	combout => \CPU|statemachine|loadadr~0_combout\);

-- Location: FF_X16_Y5_N8
\CPU|DataAddress|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(0),
	sload => VCC,
	ena => \CPU|statemachine|loadadr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(0));

-- Location: MLABCELL_X15_Y5_N0
\e1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~2_combout\ = ( \CPU|DataAddress|out\(8) & ( \CPU|statemachine|WideOr34~combout\ & ( (\CPU|PCReg|out\(8) & !\CPU|PCReg|out\(0)) ) ) ) # ( !\CPU|DataAddress|out\(8) & ( \CPU|statemachine|WideOr34~combout\ & ( (\CPU|PCReg|out\(8) & !\CPU|PCReg|out\(0)) ) 
-- ) ) # ( \CPU|DataAddress|out\(8) & ( !\CPU|statemachine|WideOr34~combout\ & ( !\CPU|DataAddress|out\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DataAddress|ALT_INV_out\(0),
	datab => \CPU|PCReg|ALT_INV_out\(8),
	datac => \CPU|PCReg|ALT_INV_out\(0),
	datae => \CPU|DataAddress|ALT_INV_out\(8),
	dataf => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	combout => \e1~2_combout\);

-- Location: LABCELL_X19_Y5_N9
\x[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[13]~0_combout\ = ( \e1~1_combout\ & ( \e1~0_combout\ & ( (\MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ((!\e1~2_combout\) # ((!\e1~3_combout\) # (!\e1~4_combout\)))) ) ) ) # ( !\e1~1_combout\ & ( \e1~0_combout\ & ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a13\ ) ) ) # ( \e1~1_combout\ & ( !\e1~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ ) ) ) # ( !\e1~1_combout\ & ( !\e1~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~2_combout\,
	datab => \ALT_INV_e1~3_combout\,
	datac => \ALT_INV_e1~4_combout\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	datae => \ALT_INV_e1~1_combout\,
	dataf => \ALT_INV_e1~0_combout\,
	combout => \x[13]~0_combout\);

-- Location: FF_X19_Y5_N10
\CPU|instructionReg|out[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[13]~0_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out[13]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y3_N42
\CPU|statemachine|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal4~1_combout\ = ( \CPU|statemachine|Equal4~0_combout\ & ( (\CPU|instructionReg|out[13]~DUPLICATE_q\ & (\CPU|statemachine|STATE|out\(3) & (\CPU|instructionReg|out\(14) & !\CPU|instructionReg|out\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	datab => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|instructionReg|ALT_INV_out\(14),
	datad => \CPU|instructionReg|ALT_INV_out\(15),
	dataf => \CPU|statemachine|ALT_INV_Equal4~0_combout\,
	combout => \CPU|statemachine|Equal4~1_combout\);

-- Location: LABCELL_X18_Y4_N30
\CPU|statemachine|always0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~6_combout\ = ( !\CPU|statemachine|Equal4~1_combout\ & ( \CPU|statemachine|always0~5_combout\ & ( (!\CPU|statemachine|WideNor16~3_combout\ & (!\CPU|statemachine|WideNor16~15_combout\ & (!\CPU|statemachine|WideNor16~1_combout\ & 
-- !\CPU|statemachine|WideNor16~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~3_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~15_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~1_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~2_combout\,
	datae => \CPU|statemachine|ALT_INV_Equal4~1_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~5_combout\,
	combout => \CPU|statemachine|always0~6_combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X18_Y3_N45
\CPU|statemachine|WideOr5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr5~2_combout\ = ( !\CPU|statemachine|always0~21_combout\ & ( (!\CPU|statemachine|always0~13_combout\ & !\CPU|statemachine|loadir~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_always0~13_combout\,
	datad => \CPU|statemachine|ALT_INV_loadir~combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~21_combout\,
	combout => \CPU|statemachine|WideOr5~2_combout\);

-- Location: LABCELL_X19_Y3_N48
\CPU|statemachine|next_reset_state[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|next_reset_state[1]~5_combout\ = ( \CPU|statemachine|Equal5~0_combout\ & ( \CPU|statemachine|WideOr30~3_combout\ & ( (!\CPU|statemachine|always0~6_combout\ & (\KEY[1]~input_o\ & (\CPU|statemachine|WideOr5~2_combout\ & 
-- !\CPU|statemachine|always0~16_combout\))) ) ) ) # ( !\CPU|statemachine|Equal5~0_combout\ & ( \CPU|statemachine|WideOr30~3_combout\ & ( (\KEY[1]~input_o\ & (\CPU|statemachine|WideOr5~2_combout\ & !\CPU|statemachine|always0~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~6_combout\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \CPU|statemachine|ALT_INV_WideOr5~2_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~16_combout\,
	datae => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr30~3_combout\,
	combout => \CPU|statemachine|next_reset_state[1]~5_combout\);

-- Location: FF_X19_Y3_N50
\CPU|statemachine|STATE|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|statemachine|next_reset_state[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|statemachine|STATE|out\(1));

-- Location: LABCELL_X19_Y3_N21
\CPU|statemachine|always0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~24_combout\ = ( \CPU|statemachine|STATE|out\(2) & ( (\CPU|statemachine|STATE|out\(1) & (\CPU|statemachine|STATE|out\(3) & (!\CPU|statemachine|STATE|out\(0) & \CPU|statemachine|STATE|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(2),
	combout => \CPU|statemachine|always0~24_combout\);

-- Location: LABCELL_X19_Y3_N42
\CPU|statemachine|next_reset_state[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|next_reset_state[2]~3_combout\ = ( \CPU|statemachine|always0~25_combout\ & ( \CPU|statemachine|WideOr5~1_combout\ & ( (\KEY[1]~input_o\ & ((\CPU|statemachine|always0~9_combout\) # (\CPU|statemachine|WideOr34~0_combout\))) ) ) ) # ( 
-- !\CPU|statemachine|always0~25_combout\ & ( \CPU|statemachine|WideOr5~1_combout\ & ( (\KEY[1]~input_o\ & (((\CPU|statemachine|always0~24_combout\ & \CPU|statemachine|always0~9_combout\)) # (\CPU|statemachine|WideOr34~0_combout\))) ) ) ) # ( 
-- \CPU|statemachine|always0~25_combout\ & ( !\CPU|statemachine|WideOr5~1_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( !\CPU|statemachine|always0~25_combout\ & ( !\CPU|statemachine|WideOr5~1_combout\ & ( \KEY[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001101110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~24_combout\,
	datab => \CPU|statemachine|ALT_INV_WideOr34~0_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \CPU|statemachine|ALT_INV_always0~25_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr5~1_combout\,
	combout => \CPU|statemachine|next_reset_state[2]~3_combout\);

-- Location: FF_X19_Y3_N44
\CPU|statemachine|STATE|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|statemachine|next_reset_state[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|statemachine|STATE|out\(2));

-- Location: LABCELL_X18_Y3_N33
\CPU|statemachine|WideNor16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~0_combout\ = ( !\CPU|statemachine|STATE|out\(3) & ( (\CPU|statemachine|STATE|out\(4) & (!\CPU|statemachine|STATE|out\(0) & (\CPU|statemachine|STATE|out\(2) & \CPU|statemachine|STATE|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(3),
	combout => \CPU|statemachine|WideNor16~0_combout\);

-- Location: LABCELL_X19_Y5_N21
\CPU|statemachine|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|Equal6~0_combout\ = ( !\CPU|instructionReg|out\(13) & ( \CPU|statemachine|Equal0~1_combout\ & ( (!\CPU|instructionReg|out\(12) & !\CPU|instructionReg|out[14]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datab => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	datae => \CPU|instructionReg|ALT_INV_out\(13),
	dataf => \CPU|statemachine|ALT_INV_Equal0~1_combout\,
	combout => \CPU|statemachine|Equal6~0_combout\);

-- Location: LABCELL_X18_Y4_N48
\CPU|statemachine|always0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~18_combout\ = ( \CPU|statemachine|Equal4~1_combout\ & ( (\CPU|statemachine|always0~5_combout\ & (!\CPU|statemachine|WideNor16~15_combout\ & !\CPU|statemachine|WideNor16~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~5_combout\,
	datab => \CPU|statemachine|ALT_INV_WideNor16~15_combout\,
	datac => \CPU|statemachine|ALT_INV_WideNor16~3_combout\,
	dataf => \CPU|statemachine|ALT_INV_Equal4~1_combout\,
	combout => \CPU|statemachine|always0~18_combout\);

-- Location: LABCELL_X18_Y3_N36
\CPU|statemachine|WideOr30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr30~0_combout\ = ( \CPU|statemachine|always0~6_combout\ & ( !\CPU|statemachine|always0~18_combout\ & ( ((!\CPU|statemachine|Equal6~0_combout\) # ((\CPU|statemachine|WideNor16~16_combout\) # (\CPU|statemachine|Equal5~0_combout\))) # 
-- (\CPU|statemachine|WideNor16~0_combout\) ) ) ) # ( !\CPU|statemachine|always0~6_combout\ & ( !\CPU|statemachine|always0~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~0_combout\,
	datab => \CPU|statemachine|ALT_INV_Equal6~0_combout\,
	datac => \CPU|statemachine|ALT_INV_Equal5~0_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~16_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~6_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~18_combout\,
	combout => \CPU|statemachine|WideOr30~0_combout\);

-- Location: LABCELL_X19_Y2_N48
\CPU|statemachine|next_reset_state[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|next_reset_state[3]~1_combout\ = ( !\CPU|statemachine|next_reset_state[3]~0_combout\ & ( !\CPU|statemachine|always0~19_combout\ & ( (\KEY[1]~input_o\ & (!\CPU|statemachine|WideOr30~1_combout\ & !\CPU|statemachine|always0~20_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \CPU|statemachine|ALT_INV_WideOr30~1_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~20_combout\,
	datae => \CPU|statemachine|ALT_INV_next_reset_state[3]~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~19_combout\,
	combout => \CPU|statemachine|next_reset_state[3]~1_combout\);

-- Location: LABCELL_X19_Y3_N54
\CPU|statemachine|next_reset_state[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|next_reset_state[3]~2_combout\ = ( !\CPU|statemachine|always0~17_combout\ & ( \CPU|statemachine|next_reset_state[3]~1_combout\ & ( (\CPU|statemachine|WideOr30~0_combout\ & (!\CPU|statemachine|always0~13_combout\ & 
-- (!\CPU|statemachine|always0~14_combout\ & !\CPU|statemachine|WideOr34~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideOr30~0_combout\,
	datab => \CPU|statemachine|ALT_INV_always0~13_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~14_combout\,
	datad => \CPU|statemachine|ALT_INV_WideOr34~0_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~17_combout\,
	dataf => \CPU|statemachine|ALT_INV_next_reset_state[3]~1_combout\,
	combout => \CPU|statemachine|next_reset_state[3]~2_combout\);

-- Location: FF_X19_Y3_N56
\CPU|statemachine|STATE|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|statemachine|next_reset_state[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|statemachine|STATE|out\(3));

-- Location: LABCELL_X19_Y3_N6
\CPU|statemachine|WideNor16~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~6_combout\ = ( !\CPU|statemachine|STATE|out\(0) & ( (\CPU|statemachine|STATE|out\(3) & (!\CPU|statemachine|STATE|out\(2) & (\CPU|statemachine|STATE|out\(1) & !\CPU|statemachine|STATE|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|WideNor16~6_combout\);

-- Location: LABCELL_X19_Y2_N54
\CPU|statemachine|always0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~21_combout\ = ( \CPU|statemachine|WideNor16~5_combout\ & ( \CPU|statemachine|always0~4_combout\ & ( !\CPU|statemachine|WideNor16~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_WideNor16~6_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~5_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~4_combout\,
	combout => \CPU|statemachine|always0~21_combout\);

-- Location: LABCELL_X18_Y3_N30
\CPU|statemachine|next_reset_state[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|next_reset_state[4]~6_combout\ = ( !\CPU|statemachine|always0~15_combout\ & ( !\CPU|statemachine|always0~27_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|statemachine|ALT_INV_always0~27_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~15_combout\,
	combout => \CPU|statemachine|next_reset_state[4]~6_combout\);

-- Location: LABCELL_X19_Y3_N0
\CPU|statemachine|next_reset_state[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|next_reset_state[4]~7_combout\ = ( !\CPU|statemachine|always0~26_combout\ & ( \CPU|statemachine|next_reset_state[4]~6_combout\ & ( (!\CPU|statemachine|always0~21_combout\ & (\CPU|statemachine|next_reset_state[3]~1_combout\ & 
-- (!\CPU|statemachine|always0~23_combout\ & !\CPU|statemachine|always0~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~21_combout\,
	datab => \CPU|statemachine|ALT_INV_next_reset_state[3]~1_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~23_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~28_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~26_combout\,
	dataf => \CPU|statemachine|ALT_INV_next_reset_state[4]~6_combout\,
	combout => \CPU|statemachine|next_reset_state[4]~7_combout\);

-- Location: FF_X19_Y3_N2
\CPU|statemachine|STATE|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|statemachine|next_reset_state[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|statemachine|STATE|out\(4));

-- Location: LABCELL_X19_Y4_N3
\CPU|statemachine|WideNor16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~13_combout\ = ( !\CPU|statemachine|STATE|out\(0) & ( (!\CPU|statemachine|STATE|out\(4) & (!\CPU|statemachine|STATE|out\(2) & (\CPU|statemachine|STATE|out\(3) & !\CPU|statemachine|STATE|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|STATE|ALT_INV_out\(4),
	datab => \CPU|statemachine|STATE|ALT_INV_out\(2),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(3),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(1),
	dataf => \CPU|statemachine|STATE|ALT_INV_out\(0),
	combout => \CPU|statemachine|WideNor16~13_combout\);

-- Location: MLABCELL_X21_Y4_N3
\CPU|statemachine|always0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|always0~15_combout\ = ( !\CPU|statemachine|WideNor7~combout\ & ( \CPU|statemachine|always0~2_combout\ & ( (\CPU|statemachine|WideNor16~13_combout\ & !\CPU|statemachine|always0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~13_combout\,
	datad => \CPU|statemachine|ALT_INV_always0~3_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor7~combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~2_combout\,
	combout => \CPU|statemachine|always0~15_combout\);

-- Location: LABCELL_X18_Y2_N33
\CPU|statemachine|WideOr9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr9~0_combout\ = ( !\CPU|statemachine|always0~19_combout\ & ( !\CPU|statemachine|loada~0_combout\ & ( (!\CPU|statemachine|WideNor16~21_combout\ & (!\CPU|statemachine|WideOr18~0_combout\ & !\CPU|statemachine|always0~17_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~21_combout\,
	datab => \CPU|statemachine|ALT_INV_WideOr18~0_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~17_combout\,
	datae => \CPU|statemachine|ALT_INV_always0~19_combout\,
	dataf => \CPU|statemachine|ALT_INV_loada~0_combout\,
	combout => \CPU|statemachine|WideOr9~0_combout\);

-- Location: LABCELL_X19_Y3_N36
\CPU|statemachine|next_reset_state[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|next_reset_state[0]~4_combout\ = ( \CPU|statemachine|WideOr9~0_combout\ & ( \CPU|statemachine|loadadr~0_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( !\CPU|statemachine|WideOr9~0_combout\ & ( \CPU|statemachine|loadadr~0_combout\ & ( 
-- \KEY[1]~input_o\ ) ) ) # ( \CPU|statemachine|WideOr9~0_combout\ & ( !\CPU|statemachine|loadadr~0_combout\ & ( (\KEY[1]~input_o\ & (((\CPU|statemachine|always0~9_combout\ & \CPU|statemachine|WideNor16~19_combout\)) # 
-- (\CPU|statemachine|always0~15_combout\))) ) ) ) # ( !\CPU|statemachine|WideOr9~0_combout\ & ( !\CPU|statemachine|loadadr~0_combout\ & ( \KEY[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000100010001001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_always0~15_combout\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr9~0_combout\,
	dataf => \CPU|statemachine|ALT_INV_loadadr~0_combout\,
	combout => \CPU|statemachine|next_reset_state[0]~4_combout\);

-- Location: FF_X19_Y3_N38
\CPU|statemachine|STATE|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|statemachine|next_reset_state[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|statemachine|STATE|out\(0));

-- Location: LABCELL_X18_Y3_N3
\CPU|statemachine|WideNor16~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideNor16~21_combout\ = ( \CPU|statemachine|WideNor16~11_combout\ & ( (!\CPU|statemachine|STATE|out\(0) & (\CPU|statemachine|STATE|out\(1) & \CPU|statemachine|STATE|out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|statemachine|STATE|ALT_INV_out\(0),
	datac => \CPU|statemachine|STATE|ALT_INV_out\(1),
	datad => \CPU|statemachine|STATE|ALT_INV_out\(4),
	dataf => \CPU|statemachine|ALT_INV_WideNor16~11_combout\,
	combout => \CPU|statemachine|WideNor16~21_combout\);

-- Location: MLABCELL_X21_Y3_N6
\CPU|statemachine|WideOr30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|statemachine|WideOr30~combout\ = ( \CPU|statemachine|WideOr30~5_combout\ & ( \CPU|statemachine|WideOr5~3_combout\ & ( (!\CPU|statemachine|WideNor16~21_combout\ & (!\CPU|statemachine|mem_cmd\(0) & (\CPU|statemachine|WideOr30~3_combout\ & 
-- \CPU|statemachine|WideOr30~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~21_combout\,
	datab => \CPU|statemachine|ALT_INV_mem_cmd\(0),
	datac => \CPU|statemachine|ALT_INV_WideOr30~3_combout\,
	datad => \CPU|statemachine|ALT_INV_WideOr30~0_combout\,
	datae => \CPU|statemachine|ALT_INV_WideOr30~5_combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr5~3_combout\,
	combout => \CPU|statemachine|WideOr30~combout\);

-- Location: FF_X21_Y3_N26
\CPU|PCReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|Add0~25_sumout\,
	sclr => \CPU|statemachine|WideOr30~combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(0));

-- Location: MLABCELL_X21_Y3_N33
\CPU|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~29_sumout\ = SUM(( \CPU|PCReg|out\(1) ) + ( GND ) + ( \CPU|Add0~26\ ))
-- \CPU|Add0~30\ = CARRY(( \CPU|PCReg|out\(1) ) + ( GND ) + ( \CPU|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PCReg|ALT_INV_out\(1),
	cin => \CPU|Add0~26\,
	sumout => \CPU|Add0~29_sumout\,
	cout => \CPU|Add0~30\);

-- Location: FF_X21_Y3_N34
\CPU|PCReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|Add0~29_sumout\,
	sclr => \CPU|statemachine|WideOr30~combout\,
	ena => \CPU|statemachine|WideOr30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(1));

-- Location: MLABCELL_X21_Y3_N36
\CPU|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~33_sumout\ = SUM(( \CPU|PCReg|out\(2) ) + ( GND ) + ( \CPU|Add0~30\ ))
-- \CPU|Add0~34\ = CARRY(( \CPU|PCReg|out\(2) ) + ( GND ) + ( \CPU|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PCReg|ALT_INV_out\(2),
	cin => \CPU|Add0~30\,
	sumout => \CPU|Add0~33_sumout\,
	cout => \CPU|Add0~34\);

-- Location: FF_X21_Y3_N38
\CPU|PCReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|Add0~33_sumout\,
	sclr => \CPU|statemachine|WideOr30~combout\,
	ena => \CPU|statemachine|WideOr30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(2));

-- Location: MLABCELL_X21_Y3_N39
\CPU|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~13_sumout\ = SUM(( \CPU|PCReg|out\(3) ) + ( GND ) + ( \CPU|Add0~34\ ))
-- \CPU|Add0~14\ = CARRY(( \CPU|PCReg|out\(3) ) + ( GND ) + ( \CPU|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PCReg|ALT_INV_out\(3),
	cin => \CPU|Add0~34\,
	sumout => \CPU|Add0~13_sumout\,
	cout => \CPU|Add0~14\);

-- Location: FF_X21_Y3_N40
\CPU|PCReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|Add0~13_sumout\,
	sclr => \CPU|statemachine|WideOr30~combout\,
	ena => \CPU|statemachine|WideOr30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(3));

-- Location: MLABCELL_X21_Y3_N42
\CPU|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~17_sumout\ = SUM(( \CPU|PCReg|out\(4) ) + ( GND ) + ( \CPU|Add0~14\ ))
-- \CPU|Add0~18\ = CARRY(( \CPU|PCReg|out\(4) ) + ( GND ) + ( \CPU|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PCReg|ALT_INV_out\(4),
	cin => \CPU|Add0~14\,
	sumout => \CPU|Add0~17_sumout\,
	cout => \CPU|Add0~18\);

-- Location: FF_X21_Y3_N43
\CPU|PCReg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|Add0~17_sumout\,
	sclr => \CPU|statemachine|WideOr30~combout\,
	ena => \CPU|statemachine|WideOr30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(4));

-- Location: MLABCELL_X21_Y3_N45
\CPU|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~5_sumout\ = SUM(( \CPU|PCReg|out\(5) ) + ( GND ) + ( \CPU|Add0~18\ ))
-- \CPU|Add0~6\ = CARRY(( \CPU|PCReg|out\(5) ) + ( GND ) + ( \CPU|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PCReg|ALT_INV_out\(5),
	cin => \CPU|Add0~18\,
	sumout => \CPU|Add0~5_sumout\,
	cout => \CPU|Add0~6\);

-- Location: FF_X21_Y3_N47
\CPU|PCReg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|Add0~5_sumout\,
	sclr => \CPU|statemachine|WideOr30~combout\,
	ena => \CPU|statemachine|WideOr30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(5));

-- Location: MLABCELL_X21_Y3_N48
\CPU|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~1_sumout\ = SUM(( \CPU|PCReg|out\(6) ) + ( GND ) + ( \CPU|Add0~6\ ))
-- \CPU|Add0~2\ = CARRY(( \CPU|PCReg|out\(6) ) + ( GND ) + ( \CPU|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PCReg|ALT_INV_out\(6),
	cin => \CPU|Add0~6\,
	sumout => \CPU|Add0~1_sumout\,
	cout => \CPU|Add0~2\);

-- Location: FF_X21_Y3_N50
\CPU|PCReg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|Add0~1_sumout\,
	sclr => \CPU|statemachine|WideOr30~combout\,
	ena => \CPU|statemachine|WideOr30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(6));

-- Location: FF_X21_Y3_N52
\CPU|PCReg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|Add0~9_sumout\,
	sclr => \CPU|statemachine|WideOr30~combout\,
	ena => \CPU|statemachine|WideOr30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(7));

-- Location: MLABCELL_X15_Y5_N30
\e1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~0_combout\ = ( \CPU|DataAddress|out\(5) & ( \CPU|statemachine|WideOr34~combout\ & ( (!\CPU|PCReg|out\(7) & !\CPU|PCReg|out\(5)) ) ) ) # ( !\CPU|DataAddress|out\(5) & ( \CPU|statemachine|WideOr34~combout\ & ( (!\CPU|PCReg|out\(7) & !\CPU|PCReg|out\(5)) 
-- ) ) ) # ( !\CPU|DataAddress|out\(5) & ( !\CPU|statemachine|WideOr34~combout\ & ( !\CPU|DataAddress|out\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(7),
	datab => \CPU|PCReg|ALT_INV_out\(5),
	datad => \CPU|DataAddress|ALT_INV_out\(7),
	datae => \CPU|DataAddress|ALT_INV_out\(5),
	dataf => \CPU|statemachine|ALT_INV_WideOr34~combout\,
	combout => \e1~0_combout\);

-- Location: LABCELL_X19_Y5_N12
\x[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[10]~13_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( (!\e1~0_combout\) # ((!\e1~1_combout\) # ((!\e1~2_combout\) # (!\e1~3_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~0_combout\,
	datab => \ALT_INV_e1~1_combout\,
	datac => \ALT_INV_e1~2_combout\,
	datad => \ALT_INV_e1~3_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \x[10]~13_combout\);

-- Location: FF_X19_Y5_N13
\CPU|instructionReg|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[10]~13_combout\,
	ena => \CPU|statemachine|loadir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(10));

-- Location: LABCELL_X16_Y4_N12
\CPU|muxintoregister|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|muxintoregister|Mux0~0_combout\ = ( \CPU|statemachine|WideOr11~combout\ & ( (!\CPU|statemachine|WideOr13~combout\ & ((\CPU|instructionReg|out\(7)))) # (\CPU|statemachine|WideOr13~combout\ & (\CPU|instructionReg|out\(2))) ) ) # ( 
-- !\CPU|statemachine|WideOr11~combout\ & ( \CPU|instructionReg|out\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(10),
	datab => \CPU|instructionReg|ALT_INV_out\(2),
	datac => \CPU|instructionReg|ALT_INV_out\(7),
	datad => \CPU|statemachine|ALT_INV_WideOr13~combout\,
	dataf => \CPU|statemachine|ALT_INV_WideOr11~combout\,
	combout => \CPU|muxintoregister|Mux0~0_combout\);

-- Location: LABCELL_X16_Y4_N51
\CPU|DP|REGFILE|chooser|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~0_combout\ = ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\) ) ) # ( !\CPU|muxintoregister|Mux1~0_combout\ & ( 
-- \CPU|muxintoregister|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~0_combout\);

-- Location: MLABCELL_X15_Y4_N36
\CPU|DP|muxintoregister|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux14~0_combout\ = ( \CPU|statemachine|WideNor16~12_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & (\CPU|instructionReg|out\(1) & !\CPU|statemachine|always0~11_combout\)) ) ) ) # ( 
-- !\CPU|statemachine|WideNor16~12_combout\ & ( \CPU|statemachine|always0~9_combout\ & ( (!\CPU|statemachine|WideNor16~19_combout\ & (\CPU|DP|cRegister|out\(1) & !\CPU|statemachine|always0~11_combout\)) ) ) ) # ( \CPU|statemachine|WideNor16~12_combout\ & ( 
-- !\CPU|statemachine|always0~9_combout\ & ( (\CPU|instructionReg|out\(1) & !\CPU|statemachine|always0~11_combout\) ) ) ) # ( !\CPU|statemachine|WideNor16~12_combout\ & ( !\CPU|statemachine|always0~9_combout\ & ( (\CPU|DP|cRegister|out\(1) & 
-- !\CPU|statemachine|always0~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000011110000000000100010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|DP|cRegister|ALT_INV_out\(1),
	datac => \CPU|instructionReg|ALT_INV_out\(1),
	datad => \CPU|statemachine|ALT_INV_always0~11_combout\,
	datae => \CPU|statemachine|ALT_INV_WideNor16~12_combout\,
	dataf => \CPU|statemachine|ALT_INV_always0~9_combout\,
	combout => \CPU|DP|muxintoregister|Mux14~0_combout\);

-- Location: MLABCELL_X15_Y4_N3
\CPU|DP|muxintoregister|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux14~1_combout\ = ( \CPU|DP|muxintoregister|Mux14~0_combout\ & ( \e1~combout\ ) ) # ( !\CPU|DP|muxintoregister|Mux14~0_combout\ & ( \e1~combout\ & ( (\SW[1]~input_o\ & !\CPU|statemachine|WideOr26~0_combout\) ) ) ) # ( 
-- \CPU|DP|muxintoregister|Mux14~0_combout\ & ( !\e1~combout\ ) ) # ( !\CPU|DP|muxintoregister|Mux14~0_combout\ & ( !\e1~combout\ & ( (\MEM|mem_rtl_0|auto_generated|ram_block1a1\ & !\CPU|statemachine|WideOr26~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111111111111101010101000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datad => \CPU|statemachine|ALT_INV_WideOr26~0_combout\,
	datae => \CPU|DP|muxintoregister|ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux14~1_combout\);

-- Location: FF_X15_Y4_N5
\CPU|DP|REGFILE|toR5|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux14~1_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(1));

-- Location: FF_X13_Y4_N7
\CPU|DP|REGFILE|toR4|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(1));

-- Location: FF_X15_Y4_N20
\CPU|DP|REGFILE|toR6|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(1));

-- Location: LABCELL_X13_Y2_N30
\CPU|DP|REGFILE|chooser|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector14~1_combout\ = ( \CPU|muxintoregister|Mux2~0_combout\ & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (\CPU|DP|REGFILE|toR5|out\(1) & !\CPU|muxintoregister|Mux1~0_combout\) ) ) ) # ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(1))) # (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR5|ALT_INV_out\(1),
	datab => \CPU|DP|REGFILE|toR4|ALT_INV_out\(1),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(1),
	datae => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector14~1_combout\);

-- Location: FF_X15_Y4_N38
\CPU|DP|REGFILE|toR7|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(1));

-- Location: FF_X15_Y2_N22
\CPU|DP|REGFILE|toR1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(1));

-- Location: LABCELL_X13_Y5_N54
\CPU|DP|REGFILE|toR0|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[1]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux14~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux14~1_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[1]~feeder_combout\);

-- Location: FF_X13_Y5_N56
\CPU|DP|REGFILE|toR0|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[1]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(1));

-- Location: FF_X16_Y4_N13
\CPU|DP|REGFILE|toR3|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(1));

-- Location: FF_X16_Y2_N53
\CPU|DP|REGFILE|toR2|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(1));

-- Location: LABCELL_X16_Y2_N51
\CPU|DP|REGFILE|chooser|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector14~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(1) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) # (\CPU|DP|REGFILE|toR1|out\(1)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(1) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(1) & !\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(1) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(1))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(1)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(1) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(1))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(1),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(1),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(1),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(1),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector14~0_combout\);

-- Location: LABCELL_X13_Y2_N15
\CPU|DP|REGFILE|chooser|Selector14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector14~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector14~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\)) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((\CPU|DP|REGFILE|toR7|out\(1))))) # (\CPU|DP|REGFILE|chooser|Selector14~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector14~0_combout\ & ( ((\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- \CPU|DP|REGFILE|toR7|out\(1))) # (\CPU|DP|REGFILE|chooser|Selector14~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111110001111101111111000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector14~1_combout\,
	datad => \CPU|DP|REGFILE|toR7|ALT_INV_out\(1),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector14~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector14~2_combout\);

-- Location: FF_X13_Y2_N44
\CPU|DP|bRegister|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector14~2_combout\,
	sload => VCC,
	ena => \CPU|statemachine|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(1));

-- Location: LABCELL_X18_Y5_N3
\CPU|DP|cRegister|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[0]~feeder_combout\ = \CPU|DP|CMP|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DP|CMP|ALT_INV_Add0~1_sumout\,
	combout => \CPU|DP|cRegister|out[0]~feeder_combout\);

-- Location: LABCELL_X12_Y5_N12
\rtl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = ( \rtl~0_combout\ & ( \CPU|DP|bRegister|out\(1) ) ) # ( !\rtl~0_combout\ & ( \CPU|DP|bRegister|out\(1) & ( \CPU|instructionReg|out\(4) ) ) ) # ( \rtl~0_combout\ & ( !\CPU|DP|bRegister|out\(1) & ( !\CPU|instructionReg|out\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datae => \ALT_INV_rtl~0_combout\,
	dataf => \CPU|DP|bRegister|ALT_INV_out\(1),
	combout => \rtl~7_combout\);

-- Location: LABCELL_X18_Y5_N18
\CPU|DP|CMP|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux15~0_combout\ = ( \CPU|DP|aRegister|out\(0) & ( \rtl~7_combout\ & ( (\CPU|statemachine|WideOr23~0_combout\ & (!\CPU|instructionReg|out\(11) & ((!\CPU|statemachine|WideNor16~19_combout\) # (!\CPU|statemachine|always0~9_combout\)))) ) ) ) # ( 
-- \CPU|DP|aRegister|out\(0) & ( !\rtl~7_combout\ & ( \CPU|instructionReg|out\(11) ) ) ) # ( !\CPU|DP|aRegister|out\(0) & ( !\rtl~7_combout\ & ( \CPU|instructionReg|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|statemachine|ALT_INV_WideNor16~19_combout\,
	datab => \CPU|statemachine|ALT_INV_WideOr23~0_combout\,
	datac => \CPU|statemachine|ALT_INV_always0~9_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(11),
	datae => \CPU|DP|aRegister|ALT_INV_out\(0),
	dataf => \ALT_INV_rtl~7_combout\,
	combout => \CPU|DP|CMP|Mux15~0_combout\);

-- Location: FF_X18_Y5_N4
\CPU|DP|cRegister|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[0]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux15~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|statemachine|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(0));

-- Location: LABCELL_X18_Y4_N54
e2 : cyclonev_lcell_comb
-- Equation(s):
-- \e2~combout\ = ( \e1~2_combout\ & ( \e1~3_combout\ & ( (!\CPU|mem_addr[6]~0_combout\ & (\CPU|statemachine|mem_cmd\(0) & (\e1~0_combout\ & \e1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	datab => \CPU|statemachine|ALT_INV_mem_cmd\(0),
	datac => \ALT_INV_e1~0_combout\,
	datad => \ALT_INV_e1~1_combout\,
	datae => \ALT_INV_e1~2_combout\,
	dataf => \ALT_INV_e1~3_combout\,
	combout => \e2~combout\);

-- Location: FF_X18_Y4_N17
\ledREG|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(0),
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledREG|out\(0));

-- Location: FF_X18_Y4_N46
\ledREG|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(1),
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledREG|out\(1));

-- Location: FF_X18_Y4_N55
\ledREG|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(2),
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledREG|out\(2));

-- Location: FF_X18_Y4_N34
\ledREG|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(3),
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledREG|out\(3));

-- Location: FF_X18_Y4_N58
\ledREG|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(4),
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledREG|out\(4));

-- Location: FF_X18_Y4_N22
\ledREG|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(5),
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledREG|out\(5));

-- Location: FF_X18_Y4_N40
\ledREG|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(6),
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledREG|out\(6));

-- Location: FF_X18_Y4_N14
\ledREG|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(7),
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledREG|out\(7));

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X19_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


