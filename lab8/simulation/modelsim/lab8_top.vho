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

-- DATE "11/06/2017 05:28:40"

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

ENTITY 	lab8_top IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END lab8_top;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab8_top IS
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
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|FSM|Equal7~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor20~0_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal5~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor22~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~13_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor19~combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor21~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor20~1_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~11_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor18~combout\ : std_logic;
SIGNAL \CPU|FSM|Equal0~1_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~12_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~47_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal4~1_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~2_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~3_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor15~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor7~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~5_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor12~0_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~6_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~9_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~10_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~14_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~19_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~8_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~1_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~4_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor11~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~7_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~20_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr15~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr39~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|FSM|WideNor15~1_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr25~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr25~1_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~48_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~45_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr25~combout\ : std_logic;
SIGNAL \CPU|DP|Ain[1]~2_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor27~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~15_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor25~0_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal8~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~22_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~27_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr30~combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~14\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~26\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~30\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~34\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~14\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|intoPC[4]~4_combout\ : std_logic;
SIGNAL \CPU|FSM|loads~combout\ : std_logic;
SIGNAL \CPU|FSM|always0~37_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal2~1_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~38_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~39_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr33~2_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor3~combout\ : std_logic;
SIGNAL \CPU|FSM|always0~33_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~46_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr15~1_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr15~2_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr33~3_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~43_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr33~4_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal9~1_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr33~5_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal0~4_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~17_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~34_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~35_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr33~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr33~1_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor3~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~36_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr7~2_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr7~3_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr7~4_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr7~5_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr33~6_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor26~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~23_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr11~2_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr33~combout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[15]~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|mem_addr[5]~6_combout\ : std_logic;
SIGNAL \CPU|mem_addr[6]~0_combout\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~2\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~9_sumout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU|FSM|WideOr28~combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux11~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr32~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux8~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux0~1_combout\ : std_logic;
SIGNAL \e1~combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux5~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load0~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load2~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load3~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector5~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load6~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load4~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector5~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector5~2_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~41_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~29_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr20~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~44_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr20~combout\ : std_logic;
SIGNAL \CPU|DP|bRegister|out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Ain[10]~13_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[11]~14_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[12]~15_combout\ : std_logic;
SIGNAL \CPU|DP|bRegister|out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Bin[13]~17_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[13]~9_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[9]~12_combout\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~10\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~10\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|intoPC[8]~5_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux7~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector7~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR7|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR6|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector7~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector7~2_combout\ : std_logic;
SIGNAL \CPU|DP|bRegister|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[9]~13_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[8]~11_combout\ : std_logic;
SIGNAL \CPU|DP|bRegister|out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Bin[8]~12_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[7]~1_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[7]~10_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux10~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR6|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~5_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[6]~8_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[5]~6_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[4]~5_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux12~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR7|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR6|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector12~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector12~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector12~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[4]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[3]~4_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[3]~4_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[2]~3_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[2]~2_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux15~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector15~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector15~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector15~2_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[0]~16_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[0]~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~34_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~2\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~6\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~10\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~14\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~18\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~22\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~26\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~30\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~50\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~54\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~58\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~62\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~66\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~41_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux2~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~32_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~40_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[1]~10_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[1]~9_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr22~0_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[14]~18_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[14]~10_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~42\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~45_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux2~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR6|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR4|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector2~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector2~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector2~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[12]~16_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~65_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux3~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux3~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR7|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector3~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector3~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector3~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[11]~15_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~61_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux4~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux4~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector4~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR6|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector4~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector4~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[10]~14_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~57_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux5~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \x[9]~9_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr15~3_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr13~combout\ : std_logic;
SIGNAL \CPU|muxintoregister|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector10~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux6~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux6~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector6~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector6~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector6~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~53_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux6~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \x[10]~7_combout\ : std_logic;
SIGNAL \CPU|muxintoregister|Mux0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load5~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR6|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector8~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector8~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector8~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[7]~11_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux8~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \x[0]~11_combout\ : std_logic;
SIGNAL \CPU|muxintoregister|Mux2~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|load7~combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector11~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector11~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector11~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[4]~7_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux11~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \x[6]~12_combout\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~18\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~6\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~2\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|intoPC[7]~2_combout\ : std_logic;
SIGNAL \CPU|mem_addr[7]~7_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \x[7]~15_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector1~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR7|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector1~2_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux0~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux0~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR6|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector0~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector0~2_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[15]~8_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~46\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~37_sumout\ : std_logic;
SIGNAL \CPU|DP|stat|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux7~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Equal0~4_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux14~0_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Equal0~2_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[3]~5_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux12~0_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[6]~9_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Equal0~1_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[2]~3_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux13~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Equal0~3_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Equal0~5_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Equal0~7_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Equal0~8_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Equal0~6_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Decoder0~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|comb~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~22_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~23\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~19_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~20\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~16_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~17\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~13_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~14\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~10_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~11\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~7_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~8\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~4_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|_~5\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|cout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ovf~combout\ : std_logic;
SIGNAL \CPU|PCReg|out[7]~2_combout\ : std_logic;
SIGNAL \CPU|PCReg|out[8]~3_combout\ : std_logic;
SIGNAL \CPU|PCReg|out[8]~4_combout\ : std_logic;
SIGNAL \CPU|mem_addr[4]~5_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \x[1]~13_combout\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~26\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~30\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~34\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|intoPC[3]~3_combout\ : std_logic;
SIGNAL \CPU|PCReg|out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|mem_addr[3]~4_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \x[2]~14_combout\ : std_logic;
SIGNAL \CPU|instructionReg|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux13~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR4|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector13~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR1|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector13~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector13~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|mem_addr[2]~3_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \x[4]~5_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[1]~1_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|mem_addr[1]~2_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \x[5]~10_combout\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~18\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|intoPC[5]~1_combout\ : std_logic;
SIGNAL \CPU|PCReg|out[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~6\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|intoPC[6]~0_combout\ : std_logic;
SIGNAL \e1~4_combout\ : std_logic;
SIGNAL \x[12]~1_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal0~2_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal0~3_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~30_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~31_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[4]~4_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr11~1_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor27~1_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~28_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[4]~5_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[4]~6_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor12~1_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr13~0_combout\ : std_logic;
SIGNAL \CPU|DP|Ain[6]~7_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux9~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux9~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR7|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector9~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector9~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector9~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux10~0_combout\ : std_logic;
SIGNAL \e1~0_combout\ : std_logic;
SIGNAL \x[15]~2_combout\ : std_logic;
SIGNAL \CPU|FSM|Equal7~1_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr11~0_combout\ : std_logic;
SIGNAL \CPU|DataAddress|out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|mem_addr[0]~1_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \x[8]~8_combout\ : std_logic;
SIGNAL \CPU|PCReg|out[7]~1_combout\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|intoPC[0]~6_combout\ : std_logic;
SIGNAL \e1~2_combout\ : std_logic;
SIGNAL \x[14]~4_combout\ : std_logic;
SIGNAL \CPU|instructionReg|out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FSM|Equal4~0_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~18_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr7~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr7~1_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[3]~1_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[3]~2_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~21_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[1]~11_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[1]~12_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[1]~13_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor24~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr11~3_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~42_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr11~4_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[0]~8_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~16_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[2]~3_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor26~1_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~24_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~25_combout\ : std_logic;
SIGNAL \CPU|FSM|always0~26_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[5]~0_combout\ : std_logic;
SIGNAL \CPU|FSM|next_reset_state[5]~7_combout\ : std_logic;
SIGNAL \CPU|FSM|WideNor1~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr35~combout\ : std_logic;
SIGNAL \CPU|instructionReg|out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PCReg|out[7]~0_combout\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~33_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|intoPC[2]~8_combout\ : std_logic;
SIGNAL \e1~3_combout\ : std_logic;
SIGNAL \x[11]~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~49_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[8]~feeder_combout\ : std_logic;
SIGNAL \write~combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \x[3]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Bin[1]~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[3]~feeder_combout\ : std_logic;
SIGNAL \e1~1_combout\ : std_logic;
SIGNAL \x[13]~3_combout\ : std_logic;
SIGNAL \CPU|instructionReg|out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FSM|Equal9~0_combout\ : std_logic;
SIGNAL \CPU|branchcalc|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|intoPC[1]~7_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|Mux14~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR7|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR3|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR0|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector14~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector14~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|Selector14~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DP|cRegister|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|Mux15~0_combout\ : std_logic;
SIGNAL \e2~combout\ : std_logic;
SIGNAL \CPU|FSM|out~combout\ : std_logic;
SIGNAL \CPU|DP|stat|out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CPU|DP|cRegister|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|PCReg|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DP|aRegister|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|FSM|STATE|out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ledREG|out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|DataAddress|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|instructionReg|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|FSM|mem_cmd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CPU|DP|bRegister|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR7|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR0|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR1|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR3|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR2|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR4|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR6|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR5|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|bRegister|ALT_INV_out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|bRegister|ALT_INV_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DataAddress|ALT_INV_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PCReg|ALT_INV_out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PCReg|ALT_INV_out[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr25~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~48_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[0]~16_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~47_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR5|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR6|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR4|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|toR2|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR3|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR1|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR0|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|toR7|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[12]~15_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[11]~14_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[10]~13_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[9]~12_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[8]~11_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[14]~10_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[13]~9_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[15]~8_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|ALT_INV_load0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr32~0_combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr28~combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr30~combout\ : std_logic;
SIGNAL \CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_x[7]~15_combout\ : std_logic;
SIGNAL \ALT_INV_x[2]~14_combout\ : std_logic;
SIGNAL \ALT_INV_x[1]~13_combout\ : std_logic;
SIGNAL \ALT_INV_x[6]~12_combout\ : std_logic;
SIGNAL \ALT_INV_x[0]~11_combout\ : std_logic;
SIGNAL \ALT_INV_x[5]~10_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[6]~7_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[5]~6_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~3_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[4]~5_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[3]~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector12~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[2]~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[1]~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[14]~18_combout\ : std_logic;
SIGNAL \CPU|DP|aRegister|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|CMP|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[13]~17_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[12]~16_combout\ : std_logic;
SIGNAL \CPU|DP|bRegister|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|CMP|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[11]~15_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[10]~14_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[9]~13_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[8]~12_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~5_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~4_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[7]~1_combout\ : std_logic;
SIGNAL \ALT_INV_x[8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_x[3]~6_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_x[4]~5_combout\ : std_logic;
SIGNAL \ALT_INV_e1~combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \CPU|muxintoregister|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CPU|instructionReg|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|muxintoregister|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CPU|muxintoregister|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr13~combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr13~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr15~3_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Ain[0]~0_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[7]~11_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[7]~10_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[6]~9_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[6]~8_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~9_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~8_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[4]~7_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[4]~6_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[3]~5_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[3]~4_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[2]~3_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[2]~2_combout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[1]~1_combout\ : std_logic;
SIGNAL \CPU|DP|ALT_INV_Bin[1]~0_combout\ : std_logic;
SIGNAL \CPU|PCReg|ALT_INV_out[8]~3_combout\ : std_logic;
SIGNAL \CPU|PCReg|ALT_INV_out[7]~2_combout\ : std_logic;
SIGNAL \CPU|DP|stat|ALT_INV_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CPU|FSM|ALT_INV_WideOr33~6_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr33~5_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr33~4_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr33~3_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr15~2_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr15~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~46_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor3~combout\ : std_logic;
SIGNAL \CPU|PCReg|ALT_INV_out[7]~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_loads~combout\ : std_logic;
SIGNAL \ALT_INV_rtl~7_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr25~combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr25~0_combout\ : std_logic;
SIGNAL \ALT_INV_e1~4_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_next_reset_state[1]~12_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_next_reset_state[1]~11_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_next_reset_state[1]~10_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_next_reset_state[1]~9_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~45_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~44_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~43_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr11~4_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr11~3_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~42_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr11~2_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~41_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_next_reset_state[4]~5_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_next_reset_state[4]~4_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr11~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~40_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor15~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr33~2_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~39_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~38_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~37_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr7~5_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr7~4_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr7~3_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor1~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr7~2_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~36_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_next_reset_state[3]~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr33~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr33~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~35_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~34_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~33_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr7~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~32_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~31_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~30_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr20~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~29_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~28_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_next_reset_state[5]~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~27_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~26_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~25_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~24_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor27~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor27~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~23_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~22_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor26~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor26~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~21_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor3~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_e1~3_combout\ : std_logic;
SIGNAL \CPU|DataAddress|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_e1~2_combout\ : std_logic;
SIGNAL \ALT_INV_e1~1_combout\ : std_logic;
SIGNAL \ALT_INV_e1~0_combout\ : std_logic;
SIGNAL \CPU|ALT_INV_mem_addr[6]~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr39~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr15~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~20_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~19_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr11~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~18_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~17_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_mem_cmd\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CPU|FSM|ALT_INV_out~combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor25~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~16_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor24~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~15_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~14_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~13_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor22~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~12_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~11_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor20~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor20~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor21~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~10_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~9_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~8_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~7_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~6_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor12~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor12~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor11~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor15~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor7~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \CPU|PCReg|ALT_INV_out[7]~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor18~combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideNor19~combout\ : std_logic;
SIGNAL \CPU|FSM|STATE|ALT_INV_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CPU|DP|cRegister|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ADDER1|ai|ALT_INV_cout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DP|CMP|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|branchcalc|ALT_INV_Add1~1_sumout\ : std_logic;
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
\CPU|DP|cRegister|out[14]~DUPLICATE_q\ & \CPU|DP|cRegister|out\(13) & \CPU|DP|cRegister|out\(12) & \CPU|DP|cRegister|out\(11) & \CPU|DP|cRegister|out\(10) & \CPU|DP|cRegister|out\(9) & \CPU|DP|cRegister|out\(8) & \CPU|DP|cRegister|out\(7) & 
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
\CPU|DP|bRegister|ALT_INV_out[13]~DUPLICATE_q\ <= NOT \CPU|DP|bRegister|out[13]~DUPLICATE_q\;
\CPU|DP|bRegister|ALT_INV_out[10]~DUPLICATE_q\ <= NOT \CPU|DP|bRegister|out[10]~DUPLICATE_q\;
\CPU|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\ <= NOT \CPU|DP|bRegister|out[9]~DUPLICATE_q\;
\CPU|DataAddress|ALT_INV_out[0]~DUPLICATE_q\ <= NOT \CPU|DataAddress|out[0]~DUPLICATE_q\;
\CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\ <= NOT \CPU|instructionReg|out[14]~DUPLICATE_q\;
\CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\ <= NOT \CPU|instructionReg|out[13]~DUPLICATE_q\;
\CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\ <= NOT \CPU|instructionReg|out[11]~DUPLICATE_q\;
\CPU|PCReg|ALT_INV_out[3]~DUPLICATE_q\ <= NOT \CPU|PCReg|out[3]~DUPLICATE_q\;
\CPU|PCReg|ALT_INV_out[5]~DUPLICATE_q\ <= NOT \CPU|PCReg|out[5]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\CPU|FSM|ALT_INV_WideOr25~1_combout\ <= NOT \CPU|FSM|WideOr25~1_combout\;
\CPU|FSM|ALT_INV_always0~48_combout\ <= NOT \CPU|FSM|always0~48_combout\;
\CPU|DP|ALT_INV_Ain[0]~16_combout\ <= NOT \CPU|DP|Ain[0]~16_combout\;
\CPU|FSM|ALT_INV_always0~47_combout\ <= NOT \CPU|FSM|always0~47_combout\;
\CPU|DP|CMP|ALT_INV_Equal0~8_combout\ <= NOT \CPU|DP|CMP|Equal0~8_combout\;
\CPU|DP|CMP|ALT_INV_Equal0~7_combout\ <= NOT \CPU|DP|CMP|Equal0~7_combout\;
\CPU|DP|CMP|ADDER1|ALT_INV_comb~0_combout\ <= NOT \CPU|DP|CMP|ADDER1|comb~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux2~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux2~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux3~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux3~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux4~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux4~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux6~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux6~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux6~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux6~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux1~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux1~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux0~2_combout\ <= NOT \CPU|DP|muxintoregister|Mux0~2_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux0~1_combout\ <= NOT \CPU|DP|muxintoregister|Mux0~1_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux7~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux8~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux8~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux9~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux9~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux10~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux10~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux11~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux11~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux12~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux12~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux13~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux13~0_combout\;
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
\CPU|DP|ALT_INV_Ain[12]~15_combout\ <= NOT \CPU|DP|Ain[12]~15_combout\;
\CPU|DP|ALT_INV_Ain[11]~14_combout\ <= NOT \CPU|DP|Ain[11]~14_combout\;
\CPU|DP|ALT_INV_Ain[10]~13_combout\ <= NOT \CPU|DP|Ain[10]~13_combout\;
\CPU|DP|ALT_INV_Ain[9]~12_combout\ <= NOT \CPU|DP|Ain[9]~12_combout\;
\CPU|DP|ALT_INV_Ain[8]~11_combout\ <= NOT \CPU|DP|Ain[8]~11_combout\;
\CPU|DP|ALT_INV_Ain[14]~10_combout\ <= NOT \CPU|DP|Ain[14]~10_combout\;
\CPU|DP|ALT_INV_Ain[13]~9_combout\ <= NOT \CPU|DP|Ain[13]~9_combout\;
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
\CPU|DP|ALT_INV_Ain[15]~8_combout\ <= NOT \CPU|DP|Ain[15]~8_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux14~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux14~0_combout\;
\CPU|DP|REGFILE|ALT_INV_load0~0_combout\ <= NOT \CPU|DP|REGFILE|load0~0_combout\;
\CPU|FSM|ALT_INV_WideOr32~0_combout\ <= NOT \CPU|FSM|WideOr32~0_combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux15~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux15~0_combout\;
\CPU|FSM|ALT_INV_WideOr28~combout\ <= NOT \CPU|FSM|WideOr28~combout\;
\CPU|FSM|ALT_INV_WideOr30~combout\ <= NOT \CPU|FSM|WideOr30~combout\;
\CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\ <= NOT \CPU|DP|muxintoregister|Mux0~0_combout\;
\ALT_INV_x[7]~15_combout\ <= NOT \x[7]~15_combout\;
\ALT_INV_x[2]~14_combout\ <= NOT \x[2]~14_combout\;
\ALT_INV_x[1]~13_combout\ <= NOT \x[1]~13_combout\;
\ALT_INV_x[6]~12_combout\ <= NOT \x[6]~12_combout\;
\ALT_INV_x[0]~11_combout\ <= NOT \x[0]~11_combout\;
\ALT_INV_x[5]~10_combout\ <= NOT \x[5]~10_combout\;
\CPU|DP|REGFILE|chooser|ALT_INV_Selector7~2_combout\ <= NOT \CPU|DP|REGFILE|chooser|Selector7~2_combout\;
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
\CPU|DP|ALT_INV_Ain[6]~7_combout\ <= NOT \CPU|DP|Ain[6]~7_combout\;
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
\CPU|DP|ALT_INV_Ain[5]~6_combout\ <= NOT \CPU|DP|Ain[5]~6_combout\;
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
\CPU|DP|ALT_INV_Ain[4]~5_combout\ <= NOT \CPU|DP|Ain[4]~5_combout\;
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
\CPU|DP|ALT_INV_Ain[3]~4_combout\ <= NOT \CPU|DP|Ain[3]~4_combout\;
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
\CPU|DP|ALT_INV_Ain[2]~3_combout\ <= NOT \CPU|DP|Ain[2]~3_combout\;
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
\CPU|DP|ALT_INV_Ain[1]~2_combout\ <= NOT \CPU|DP|Ain[1]~2_combout\;
\CPU|DP|CMP|ALT_INV_Equal0~5_combout\ <= NOT \CPU|DP|CMP|Equal0~5_combout\;
\CPU|DP|CMP|ALT_INV_Equal0~4_combout\ <= NOT \CPU|DP|CMP|Equal0~4_combout\;
\CPU|DP|CMP|ALT_INV_Mux1~0_combout\ <= NOT \CPU|DP|CMP|Mux1~0_combout\;
\CPU|DP|ALT_INV_Bin[14]~18_combout\ <= NOT \CPU|DP|Bin[14]~18_combout\;
\CPU|DP|aRegister|ALT_INV_out\(14) <= NOT \CPU|DP|aRegister|out\(14);
\CPU|DP|CMP|ALT_INV_Mux2~0_combout\ <= NOT \CPU|DP|CMP|Mux2~0_combout\;
\CPU|DP|ALT_INV_Bin[13]~17_combout\ <= NOT \CPU|DP|Bin[13]~17_combout\;
\CPU|DP|aRegister|ALT_INV_out\(13) <= NOT \CPU|DP|aRegister|out\(13);
\CPU|DP|CMP|ALT_INV_Mux3~0_combout\ <= NOT \CPU|DP|CMP|Mux3~0_combout\;
\CPU|DP|ALT_INV_Bin[12]~16_combout\ <= NOT \CPU|DP|Bin[12]~16_combout\;
\CPU|DP|bRegister|ALT_INV_out\(13) <= NOT \CPU|DP|bRegister|out\(13);
\CPU|DP|aRegister|ALT_INV_out\(12) <= NOT \CPU|DP|aRegister|out\(12);
\CPU|DP|CMP|ALT_INV_Mux4~0_combout\ <= NOT \CPU|DP|CMP|Mux4~0_combout\;
\CPU|DP|ALT_INV_Bin[11]~15_combout\ <= NOT \CPU|DP|Bin[11]~15_combout\;
\CPU|DP|bRegister|ALT_INV_out\(12) <= NOT \CPU|DP|bRegister|out\(12);
\CPU|DP|aRegister|ALT_INV_out\(11) <= NOT \CPU|DP|aRegister|out\(11);
\CPU|DP|CMP|ALT_INV_Mux5~0_combout\ <= NOT \CPU|DP|CMP|Mux5~0_combout\;
\CPU|DP|ALT_INV_Bin[10]~14_combout\ <= NOT \CPU|DP|Bin[10]~14_combout\;
\CPU|DP|bRegister|ALT_INV_out\(11) <= NOT \CPU|DP|bRegister|out\(11);
\CPU|DP|aRegister|ALT_INV_out\(10) <= NOT \CPU|DP|aRegister|out\(10);
\CPU|DP|CMP|ALT_INV_Equal0~3_combout\ <= NOT \CPU|DP|CMP|Equal0~3_combout\;
\CPU|DP|CMP|ALT_INV_Equal0~2_combout\ <= NOT \CPU|DP|CMP|Equal0~2_combout\;
\CPU|DP|CMP|ALT_INV_Equal0~1_combout\ <= NOT \CPU|DP|CMP|Equal0~1_combout\;
\CPU|DP|CMP|ALT_INV_Mux6~0_combout\ <= NOT \CPU|DP|CMP|Mux6~0_combout\;
\CPU|DP|ALT_INV_Bin[9]~13_combout\ <= NOT \CPU|DP|Bin[9]~13_combout\;
\CPU|DP|bRegister|ALT_INV_out\(10) <= NOT \CPU|DP|bRegister|out\(10);
\CPU|DP|aRegister|ALT_INV_out\(9) <= NOT \CPU|DP|aRegister|out\(9);
\CPU|DP|CMP|ALT_INV_Mux7~0_combout\ <= NOT \CPU|DP|CMP|Mux7~0_combout\;
\CPU|DP|ALT_INV_Bin[8]~12_combout\ <= NOT \CPU|DP|Bin[8]~12_combout\;
\CPU|DP|bRegister|ALT_INV_out\(9) <= NOT \CPU|DP|bRegister|out\(9);
\CPU|DP|aRegister|ALT_INV_out\(8) <= NOT \CPU|DP|aRegister|out\(8);
\CPU|DP|CMP|ALT_INV_Equal0~0_combout\ <= NOT \CPU|DP|CMP|Equal0~0_combout\;
\CPU|DP|CMP|ALT_INV_Mux0~0_combout\ <= NOT \CPU|DP|CMP|Mux0~0_combout\;
\ALT_INV_rtl~5_combout\ <= NOT \rtl~5_combout\;
\CPU|DP|aRegister|ALT_INV_out\(15) <= NOT \CPU|DP|aRegister|out\(15);
\ALT_INV_rtl~4_combout\ <= NOT \rtl~4_combout\;
\CPU|DP|bRegister|ALT_INV_out\(14) <= NOT \CPU|DP|bRegister|out\(14);
\CPU|DP|bRegister|ALT_INV_out\(15) <= NOT \CPU|DP|bRegister|out\(15);
\CPU|DP|CMP|ALT_INV_Decoder0~0_combout\ <= NOT \CPU|DP|CMP|Decoder0~0_combout\;
\CPU|DP|ALT_INV_Ain[7]~1_combout\ <= NOT \CPU|DP|Ain[7]~1_combout\;
\ALT_INV_x[8]~8_combout\ <= NOT \x[8]~8_combout\;
\ALT_INV_x[3]~6_combout\ <= NOT \x[3]~6_combout\;
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
\ALT_INV_x[4]~5_combout\ <= NOT \x[4]~5_combout\;
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
\CPU|instructionReg|ALT_INV_out\(7) <= NOT \CPU|instructionReg|out\(7);
\CPU|instructionReg|ALT_INV_out\(2) <= NOT \CPU|instructionReg|out\(2);
\CPU|muxintoregister|ALT_INV_Mux1~0_combout\ <= NOT \CPU|muxintoregister|Mux1~0_combout\;
\CPU|instructionReg|ALT_INV_out\(1) <= NOT \CPU|instructionReg|out\(1);
\CPU|instructionReg|ALT_INV_out\(6) <= NOT \CPU|instructionReg|out\(6);
\CPU|muxintoregister|ALT_INV_Mux2~0_combout\ <= NOT \CPU|muxintoregister|Mux2~0_combout\;
\CPU|FSM|ALT_INV_WideOr13~combout\ <= NOT \CPU|FSM|WideOr13~combout\;
\CPU|FSM|ALT_INV_WideOr13~0_combout\ <= NOT \CPU|FSM|WideOr13~0_combout\;
\CPU|FSM|ALT_INV_WideOr15~3_combout\ <= NOT \CPU|FSM|WideOr15~3_combout\;
\CPU|instructionReg|ALT_INV_out\(0) <= NOT \CPU|instructionReg|out\(0);
\CPU|instructionReg|ALT_INV_out\(5) <= NOT \CPU|instructionReg|out\(5);
\CPU|DP|ALT_INV_Ain[0]~0_combout\ <= NOT \CPU|DP|Ain[0]~0_combout\;
\CPU|DP|CMP|ALT_INV_Mux8~0_combout\ <= NOT \CPU|DP|CMP|Mux8~0_combout\;
\CPU|DP|ALT_INV_Bin[7]~11_combout\ <= NOT \CPU|DP|Bin[7]~11_combout\;
\CPU|DP|ALT_INV_Bin[7]~10_combout\ <= NOT \CPU|DP|Bin[7]~10_combout\;
\CPU|DP|bRegister|ALT_INV_out\(8) <= NOT \CPU|DP|bRegister|out\(8);
\CPU|DP|aRegister|ALT_INV_out\(7) <= NOT \CPU|DP|aRegister|out\(7);
\CPU|DP|ALT_INV_Bin[6]~9_combout\ <= NOT \CPU|DP|Bin[6]~9_combout\;
\CPU|DP|ALT_INV_Bin[6]~8_combout\ <= NOT \CPU|DP|Bin[6]~8_combout\;
\CPU|DP|bRegister|ALT_INV_out\(7) <= NOT \CPU|DP|bRegister|out\(7);
\CPU|DP|aRegister|ALT_INV_out\(6) <= NOT \CPU|DP|aRegister|out\(6);
\ALT_INV_rtl~9_combout\ <= NOT \rtl~9_combout\;
\ALT_INV_rtl~8_combout\ <= NOT \rtl~8_combout\;
\CPU|DP|bRegister|ALT_INV_out\(6) <= NOT \CPU|DP|bRegister|out\(6);
\CPU|DP|aRegister|ALT_INV_out\(5) <= NOT \CPU|DP|aRegister|out\(5);
\CPU|DP|CMP|ALT_INV_Mux11~0_combout\ <= NOT \CPU|DP|CMP|Mux11~0_combout\;
\CPU|DP|ALT_INV_Bin[4]~7_combout\ <= NOT \CPU|DP|Bin[4]~7_combout\;
\CPU|DP|ALT_INV_Bin[4]~6_combout\ <= NOT \CPU|DP|Bin[4]~6_combout\;
\CPU|DP|bRegister|ALT_INV_out\(5) <= NOT \CPU|DP|bRegister|out\(5);
\CPU|DP|aRegister|ALT_INV_out\(4) <= NOT \CPU|DP|aRegister|out\(4);
\CPU|DP|CMP|ALT_INV_Mux12~0_combout\ <= NOT \CPU|DP|CMP|Mux12~0_combout\;
\CPU|DP|ALT_INV_Bin[3]~5_combout\ <= NOT \CPU|DP|Bin[3]~5_combout\;
\CPU|DP|ALT_INV_Bin[3]~4_combout\ <= NOT \CPU|DP|Bin[3]~4_combout\;
\CPU|DP|bRegister|ALT_INV_out\(4) <= NOT \CPU|DP|bRegister|out\(4);
\CPU|DP|aRegister|ALT_INV_out\(3) <= NOT \CPU|DP|aRegister|out\(3);
\CPU|DP|CMP|ALT_INV_Mux13~0_combout\ <= NOT \CPU|DP|CMP|Mux13~0_combout\;
\CPU|DP|ALT_INV_Bin[2]~3_combout\ <= NOT \CPU|DP|Bin[2]~3_combout\;
\CPU|DP|ALT_INV_Bin[2]~2_combout\ <= NOT \CPU|DP|Bin[2]~2_combout\;
\CPU|DP|bRegister|ALT_INV_out\(3) <= NOT \CPU|DP|bRegister|out\(3);
\CPU|DP|aRegister|ALT_INV_out\(2) <= NOT \CPU|DP|aRegister|out\(2);
\CPU|DP|CMP|ALT_INV_Mux14~0_combout\ <= NOT \CPU|DP|CMP|Mux14~0_combout\;
\CPU|DP|ALT_INV_Bin[1]~1_combout\ <= NOT \CPU|DP|Bin[1]~1_combout\;
\CPU|DP|bRegister|ALT_INV_out\(2) <= NOT \CPU|DP|bRegister|out\(2);
\CPU|DP|aRegister|ALT_INV_out\(1) <= NOT \CPU|DP|aRegister|out\(1);
\CPU|DP|ALT_INV_Bin[1]~0_combout\ <= NOT \CPU|DP|Bin[1]~0_combout\;
\CPU|PCReg|ALT_INV_out[8]~3_combout\ <= NOT \CPU|PCReg|out[8]~3_combout\;
\CPU|PCReg|ALT_INV_out[7]~2_combout\ <= NOT \CPU|PCReg|out[7]~2_combout\;
\CPU|DP|stat|ALT_INV_out\(0) <= NOT \CPU|DP|stat|out\(0);
\CPU|DP|stat|ALT_INV_out\(1) <= NOT \CPU|DP|stat|out\(1);
\CPU|FSM|ALT_INV_WideOr33~6_combout\ <= NOT \CPU|FSM|WideOr33~6_combout\;
\CPU|FSM|ALT_INV_WideOr33~5_combout\ <= NOT \CPU|FSM|WideOr33~5_combout\;
\CPU|FSM|ALT_INV_WideOr33~4_combout\ <= NOT \CPU|FSM|WideOr33~4_combout\;
\CPU|FSM|ALT_INV_WideOr33~3_combout\ <= NOT \CPU|FSM|WideOr33~3_combout\;
\CPU|FSM|ALT_INV_WideOr15~2_combout\ <= NOT \CPU|FSM|WideOr15~2_combout\;
\CPU|FSM|ALT_INV_WideOr15~1_combout\ <= NOT \CPU|FSM|WideOr15~1_combout\;
\CPU|FSM|ALT_INV_always0~46_combout\ <= NOT \CPU|FSM|always0~46_combout\;
\CPU|FSM|ALT_INV_WideNor3~combout\ <= NOT \CPU|FSM|WideNor3~combout\;
\CPU|PCReg|ALT_INV_out[7]~1_combout\ <= NOT \CPU|PCReg|out[7]~1_combout\;
\CPU|instructionReg|ALT_INV_out\(9) <= NOT \CPU|instructionReg|out\(9);
\CPU|instructionReg|ALT_INV_out\(8) <= NOT \CPU|instructionReg|out\(8);
\CPU|instructionReg|ALT_INV_out\(10) <= NOT \CPU|instructionReg|out\(10);
\CPU|FSM|ALT_INV_loads~combout\ <= NOT \CPU|FSM|loads~combout\;
\ALT_INV_rtl~7_combout\ <= NOT \rtl~7_combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\CPU|DP|bRegister|ALT_INV_out\(0) <= NOT \CPU|DP|bRegister|out\(0);
\CPU|instructionReg|ALT_INV_out\(3) <= NOT \CPU|instructionReg|out\(3);
\CPU|DP|bRegister|ALT_INV_out\(1) <= NOT \CPU|DP|bRegister|out\(1);
\CPU|instructionReg|ALT_INV_out\(4) <= NOT \CPU|instructionReg|out\(4);
\CPU|FSM|ALT_INV_WideOr25~combout\ <= NOT \CPU|FSM|WideOr25~combout\;
\CPU|FSM|ALT_INV_WideOr25~0_combout\ <= NOT \CPU|FSM|WideOr25~0_combout\;
\CPU|DP|aRegister|ALT_INV_out\(0) <= NOT \CPU|DP|aRegister|out\(0);
\ALT_INV_e1~4_combout\ <= NOT \e1~4_combout\;
\CPU|FSM|ALT_INV_next_reset_state[1]~12_combout\ <= NOT \CPU|FSM|next_reset_state[1]~12_combout\;
\CPU|FSM|ALT_INV_next_reset_state[1]~11_combout\ <= NOT \CPU|FSM|next_reset_state[1]~11_combout\;
\CPU|FSM|ALT_INV_next_reset_state[1]~10_combout\ <= NOT \CPU|FSM|next_reset_state[1]~10_combout\;
\CPU|FSM|ALT_INV_next_reset_state[1]~9_combout\ <= NOT \CPU|FSM|next_reset_state[1]~9_combout\;
\CPU|FSM|ALT_INV_always0~45_combout\ <= NOT \CPU|FSM|always0~45_combout\;
\CPU|FSM|ALT_INV_always0~44_combout\ <= NOT \CPU|FSM|always0~44_combout\;
\CPU|FSM|ALT_INV_always0~43_combout\ <= NOT \CPU|FSM|always0~43_combout\;
\CPU|FSM|ALT_INV_WideOr11~4_combout\ <= NOT \CPU|FSM|WideOr11~4_combout\;
\CPU|FSM|ALT_INV_WideOr11~3_combout\ <= NOT \CPU|FSM|WideOr11~3_combout\;
\CPU|FSM|ALT_INV_always0~42_combout\ <= NOT \CPU|FSM|always0~42_combout\;
\CPU|FSM|ALT_INV_WideOr11~2_combout\ <= NOT \CPU|FSM|WideOr11~2_combout\;
\CPU|FSM|ALT_INV_always0~41_combout\ <= NOT \CPU|FSM|always0~41_combout\;
\CPU|FSM|ALT_INV_next_reset_state[4]~5_combout\ <= NOT \CPU|FSM|next_reset_state[4]~5_combout\;
\CPU|FSM|ALT_INV_next_reset_state[4]~4_combout\ <= NOT \CPU|FSM|next_reset_state[4]~4_combout\;
\CPU|FSM|ALT_INV_WideOr11~1_combout\ <= NOT \CPU|FSM|WideOr11~1_combout\;
\CPU|FSM|ALT_INV_always0~40_combout\ <= NOT \CPU|FSM|always0~40_combout\;
\CPU|FSM|ALT_INV_WideNor15~1_combout\ <= NOT \CPU|FSM|WideNor15~1_combout\;
\CPU|FSM|ALT_INV_WideOr33~2_combout\ <= NOT \CPU|FSM|WideOr33~2_combout\;
\CPU|FSM|ALT_INV_always0~39_combout\ <= NOT \CPU|FSM|always0~39_combout\;
\CPU|FSM|ALT_INV_always0~38_combout\ <= NOT \CPU|FSM|always0~38_combout\;
\CPU|FSM|ALT_INV_always0~37_combout\ <= NOT \CPU|FSM|always0~37_combout\;
\CPU|FSM|ALT_INV_WideOr7~5_combout\ <= NOT \CPU|FSM|WideOr7~5_combout\;
\CPU|FSM|ALT_INV_WideOr7~4_combout\ <= NOT \CPU|FSM|WideOr7~4_combout\;
\CPU|FSM|ALT_INV_WideOr7~3_combout\ <= NOT \CPU|FSM|WideOr7~3_combout\;
\CPU|FSM|ALT_INV_WideNor1~0_combout\ <= NOT \CPU|FSM|WideNor1~0_combout\;
\CPU|FSM|ALT_INV_WideOr7~2_combout\ <= NOT \CPU|FSM|WideOr7~2_combout\;
\CPU|FSM|ALT_INV_always0~36_combout\ <= NOT \CPU|FSM|always0~36_combout\;
\CPU|FSM|ALT_INV_Equal2~1_combout\ <= NOT \CPU|FSM|Equal2~1_combout\;
\CPU|FSM|ALT_INV_next_reset_state[3]~1_combout\ <= NOT \CPU|FSM|next_reset_state[3]~1_combout\;
\CPU|FSM|ALT_INV_WideOr33~1_combout\ <= NOT \CPU|FSM|WideOr33~1_combout\;
\CPU|FSM|ALT_INV_WideOr33~0_combout\ <= NOT \CPU|FSM|WideOr33~0_combout\;
\CPU|FSM|ALT_INV_always0~35_combout\ <= NOT \CPU|FSM|always0~35_combout\;
\CPU|FSM|ALT_INV_always0~34_combout\ <= NOT \CPU|FSM|always0~34_combout\;
\CPU|FSM|ALT_INV_always0~33_combout\ <= NOT \CPU|FSM|always0~33_combout\;
\CPU|FSM|ALT_INV_Equal1~0_combout\ <= NOT \CPU|FSM|Equal1~0_combout\;
\CPU|FSM|ALT_INV_WideOr7~1_combout\ <= NOT \CPU|FSM|WideOr7~1_combout\;
\CPU|FSM|ALT_INV_WideOr7~0_combout\ <= NOT \CPU|FSM|WideOr7~0_combout\;
\CPU|FSM|ALT_INV_always0~32_combout\ <= NOT \CPU|FSM|always0~32_combout\;
\CPU|FSM|ALT_INV_Equal0~4_combout\ <= NOT \CPU|FSM|Equal0~4_combout\;
\CPU|FSM|ALT_INV_always0~31_combout\ <= NOT \CPU|FSM|always0~31_combout\;
\CPU|FSM|ALT_INV_always0~30_combout\ <= NOT \CPU|FSM|always0~30_combout\;
\CPU|FSM|ALT_INV_WideOr20~0_combout\ <= NOT \CPU|FSM|WideOr20~0_combout\;
\CPU|FSM|ALT_INV_always0~29_combout\ <= NOT \CPU|FSM|always0~29_combout\;
\CPU|FSM|ALT_INV_always0~28_combout\ <= NOT \CPU|FSM|always0~28_combout\;
\CPU|FSM|ALT_INV_next_reset_state[5]~0_combout\ <= NOT \CPU|FSM|next_reset_state[5]~0_combout\;
\CPU|FSM|ALT_INV_always0~27_combout\ <= NOT \CPU|FSM|always0~27_combout\;
\CPU|FSM|ALT_INV_always0~26_combout\ <= NOT \CPU|FSM|always0~26_combout\;
\CPU|FSM|ALT_INV_always0~25_combout\ <= NOT \CPU|FSM|always0~25_combout\;
\CPU|FSM|ALT_INV_Equal10~0_combout\ <= NOT \CPU|FSM|Equal10~0_combout\;
\CPU|FSM|ALT_INV_always0~24_combout\ <= NOT \CPU|FSM|always0~24_combout\;
\CPU|FSM|ALT_INV_WideNor27~1_combout\ <= NOT \CPU|FSM|WideNor27~1_combout\;
\CPU|FSM|ALT_INV_WideNor27~0_combout\ <= NOT \CPU|FSM|WideNor27~0_combout\;
\CPU|FSM|ALT_INV_always0~23_combout\ <= NOT \CPU|FSM|always0~23_combout\;
\CPU|FSM|ALT_INV_always0~22_combout\ <= NOT \CPU|FSM|always0~22_combout\;
\CPU|FSM|ALT_INV_Equal8~0_combout\ <= NOT \CPU|FSM|Equal8~0_combout\;
\CPU|FSM|ALT_INV_WideNor26~1_combout\ <= NOT \CPU|FSM|WideNor26~1_combout\;
\CPU|FSM|ALT_INV_WideNor26~0_combout\ <= NOT \CPU|FSM|WideNor26~0_combout\;
\CPU|FSM|ALT_INV_Equal9~1_combout\ <= NOT \CPU|FSM|Equal9~1_combout\;
\CPU|FSM|ALT_INV_Equal9~0_combout\ <= NOT \CPU|FSM|Equal9~0_combout\;
\CPU|FSM|ALT_INV_always0~21_combout\ <= NOT \CPU|FSM|always0~21_combout\;
\CPU|FSM|ALT_INV_WideNor3~0_combout\ <= NOT \CPU|FSM|WideNor3~0_combout\;
\CPU|FSM|ALT_INV_Equal0~3_combout\ <= NOT \CPU|FSM|Equal0~3_combout\;
\CPU|FSM|ALT_INV_Equal0~2_combout\ <= NOT \CPU|FSM|Equal0~2_combout\;
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
\CPU|FSM|ALT_INV_WideOr39~0_combout\ <= NOT \CPU|FSM|WideOr39~0_combout\;
\CPU|FSM|ALT_INV_WideOr15~0_combout\ <= NOT \CPU|FSM|WideOr15~0_combout\;
\CPU|FSM|ALT_INV_always0~20_combout\ <= NOT \CPU|FSM|always0~20_combout\;
\CPU|FSM|ALT_INV_always0~19_combout\ <= NOT \CPU|FSM|always0~19_combout\;
\CPU|DataAddress|ALT_INV_out\(6) <= NOT \CPU|DataAddress|out\(6);
\CPU|FSM|ALT_INV_WideOr11~0_combout\ <= NOT \CPU|FSM|WideOr11~0_combout\;
\CPU|FSM|ALT_INV_always0~18_combout\ <= NOT \CPU|FSM|always0~18_combout\;
\CPU|FSM|ALT_INV_Equal7~1_combout\ <= NOT \CPU|FSM|Equal7~1_combout\;
\CPU|FSM|ALT_INV_always0~17_combout\ <= NOT \CPU|FSM|always0~17_combout\;
\CPU|FSM|ALT_INV_mem_cmd\(0) <= NOT \CPU|FSM|mem_cmd\(0);
\CPU|FSM|ALT_INV_out~combout\ <= NOT \CPU|FSM|out~combout\;
\CPU|FSM|ALT_INV_WideNor25~0_combout\ <= NOT \CPU|FSM|WideNor25~0_combout\;
\CPU|FSM|ALT_INV_always0~16_combout\ <= NOT \CPU|FSM|always0~16_combout\;
\CPU|FSM|ALT_INV_WideNor24~0_combout\ <= NOT \CPU|FSM|WideNor24~0_combout\;
\CPU|FSM|ALT_INV_always0~15_combout\ <= NOT \CPU|FSM|always0~15_combout\;
\CPU|FSM|ALT_INV_always0~14_combout\ <= NOT \CPU|FSM|always0~14_combout\;
\CPU|FSM|ALT_INV_always0~13_combout\ <= NOT \CPU|FSM|always0~13_combout\;
\CPU|FSM|ALT_INV_WideNor22~0_combout\ <= NOT \CPU|FSM|WideNor22~0_combout\;
\CPU|FSM|ALT_INV_always0~12_combout\ <= NOT \CPU|FSM|always0~12_combout\;
\CPU|FSM|ALT_INV_Equal7~0_combout\ <= NOT \CPU|FSM|Equal7~0_combout\;
\CPU|FSM|ALT_INV_always0~11_combout\ <= NOT \CPU|FSM|always0~11_combout\;
\CPU|FSM|ALT_INV_WideNor20~1_combout\ <= NOT \CPU|FSM|WideNor20~1_combout\;
\CPU|FSM|ALT_INV_Equal5~0_combout\ <= NOT \CPU|FSM|Equal5~0_combout\;
\CPU|FSM|ALT_INV_WideNor20~0_combout\ <= NOT \CPU|FSM|WideNor20~0_combout\;
\CPU|FSM|ALT_INV_WideNor21~0_combout\ <= NOT \CPU|FSM|WideNor21~0_combout\;
\CPU|FSM|ALT_INV_always0~10_combout\ <= NOT \CPU|FSM|always0~10_combout\;
\CPU|FSM|ALT_INV_always0~9_combout\ <= NOT \CPU|FSM|always0~9_combout\;
\CPU|FSM|ALT_INV_always0~8_combout\ <= NOT \CPU|FSM|always0~8_combout\;
\CPU|FSM|ALT_INV_always0~7_combout\ <= NOT \CPU|FSM|always0~7_combout\;
\CPU|FSM|ALT_INV_always0~6_combout\ <= NOT \CPU|FSM|always0~6_combout\;
\CPU|FSM|ALT_INV_WideNor12~1_combout\ <= NOT \CPU|FSM|WideNor12~1_combout\;
\CPU|FSM|ALT_INV_WideNor12~0_combout\ <= NOT \CPU|FSM|WideNor12~0_combout\;
\CPU|FSM|ALT_INV_Equal2~0_combout\ <= NOT \CPU|FSM|Equal2~0_combout\;
\CPU|FSM|ALT_INV_WideNor11~0_combout\ <= NOT \CPU|FSM|WideNor11~0_combout\;
\CPU|FSM|ALT_INV_always0~5_combout\ <= NOT \CPU|FSM|always0~5_combout\;
\CPU|FSM|ALT_INV_WideNor15~0_combout\ <= NOT \CPU|FSM|WideNor15~0_combout\;
\CPU|FSM|ALT_INV_WideNor7~0_combout\ <= NOT \CPU|FSM|WideNor7~0_combout\;
\CPU|FSM|ALT_INV_always0~4_combout\ <= NOT \CPU|FSM|always0~4_combout\;
\CPU|FSM|ALT_INV_always0~3_combout\ <= NOT \CPU|FSM|always0~3_combout\;
\CPU|FSM|ALT_INV_always0~2_combout\ <= NOT \CPU|FSM|always0~2_combout\;
\CPU|FSM|ALT_INV_Equal0~1_combout\ <= NOT \CPU|FSM|Equal0~1_combout\;
\CPU|FSM|ALT_INV_always0~1_combout\ <= NOT \CPU|FSM|always0~1_combout\;
\CPU|FSM|ALT_INV_always0~0_combout\ <= NOT \CPU|FSM|always0~0_combout\;
\CPU|FSM|ALT_INV_Equal4~1_combout\ <= NOT \CPU|FSM|Equal4~1_combout\;
\CPU|FSM|ALT_INV_Equal0~0_combout\ <= NOT \CPU|FSM|Equal0~0_combout\;
\CPU|FSM|ALT_INV_Equal4~0_combout\ <= NOT \CPU|FSM|Equal4~0_combout\;
\CPU|instructionReg|ALT_INV_out\(14) <= NOT \CPU|instructionReg|out\(14);
\CPU|instructionReg|ALT_INV_out\(13) <= NOT \CPU|instructionReg|out\(13);
\CPU|instructionReg|ALT_INV_out\(15) <= NOT \CPU|instructionReg|out\(15);
\CPU|PCReg|ALT_INV_out[7]~0_combout\ <= NOT \CPU|PCReg|out[7]~0_combout\;
\CPU|instructionReg|ALT_INV_out\(12) <= NOT \CPU|instructionReg|out\(12);
\CPU|instructionReg|ALT_INV_out\(11) <= NOT \CPU|instructionReg|out\(11);
\CPU|FSM|ALT_INV_WideNor18~combout\ <= NOT \CPU|FSM|WideNor18~combout\;
\CPU|FSM|ALT_INV_WideNor19~combout\ <= NOT \CPU|FSM|WideNor19~combout\;
\CPU|FSM|STATE|ALT_INV_out\(1) <= NOT \CPU|FSM|STATE|out\(1);
\CPU|FSM|STATE|ALT_INV_out\(0) <= NOT \CPU|FSM|STATE|out\(0);
\CPU|FSM|STATE|ALT_INV_out\(5) <= NOT \CPU|FSM|STATE|out\(5);
\CPU|FSM|STATE|ALT_INV_out\(4) <= NOT \CPU|FSM|STATE|out\(4);
\CPU|FSM|STATE|ALT_INV_out\(2) <= NOT \CPU|FSM|STATE|out\(2);
\CPU|FSM|STATE|ALT_INV_out\(3) <= NOT \CPU|FSM|STATE|out\(3);
\CPU|DP|cRegister|ALT_INV_out\(9) <= NOT \CPU|DP|cRegister|out\(9);
\CPU|DP|cRegister|ALT_INV_out\(10) <= NOT \CPU|DP|cRegister|out\(10);
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
\CPU|DP|CMP|ALT_INV_Add0~65_sumout\ <= NOT \CPU|DP|CMP|Add0~65_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~61_sumout\ <= NOT \CPU|DP|CMP|Add0~61_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~57_sumout\ <= NOT \CPU|DP|CMP|Add0~57_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~53_sumout\ <= NOT \CPU|DP|CMP|Add0~53_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~49_sumout\ <= NOT \CPU|DP|CMP|Add0~49_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~45_sumout\ <= NOT \CPU|DP|CMP|Add0~45_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~41_sumout\ <= NOT \CPU|DP|CMP|Add0~41_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~37_sumout\ <= NOT \CPU|DP|CMP|Add0~37_sumout\;
\CPU|DP|CMP|ADDER1|ai|ALT_INV_cout\ <= NOT \CPU|DP|CMP|ADDER1|ai|cout\;
\CPU|DP|cRegister|ALT_INV_out\(14) <= NOT \CPU|DP|cRegister|out\(14);
\CPU|DP|cRegister|ALT_INV_out\(13) <= NOT \CPU|DP|cRegister|out\(13);
\CPU|DP|cRegister|ALT_INV_out\(15) <= NOT \CPU|DP|cRegister|out\(15);
\CPU|DP|cRegister|ALT_INV_out\(12) <= NOT \CPU|DP|cRegister|out\(12);
\CPU|DP|cRegister|ALT_INV_out\(11) <= NOT \CPU|DP|cRegister|out\(11);
\CPU|DP|CMP|ALT_INV_Add0~29_sumout\ <= NOT \CPU|DP|CMP|Add0~29_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~25_sumout\ <= NOT \CPU|DP|CMP|Add0~25_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~21_sumout\ <= NOT \CPU|DP|CMP|Add0~21_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~17_sumout\ <= NOT \CPU|DP|CMP|Add0~17_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~13_sumout\ <= NOT \CPU|DP|CMP|Add0~13_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~9_sumout\ <= NOT \CPU|DP|CMP|Add0~9_sumout\;
\CPU|DP|CMP|ALT_INV_Add0~5_sumout\ <= NOT \CPU|DP|CMP|Add0~5_sumout\;
\CPU|branchcalc|ALT_INV_Add0~33_sumout\ <= NOT \CPU|branchcalc|Add0~33_sumout\;
\CPU|branchcalc|ALT_INV_Add1~33_sumout\ <= NOT \CPU|branchcalc|Add1~33_sumout\;
\CPU|branchcalc|ALT_INV_Add0~29_sumout\ <= NOT \CPU|branchcalc|Add0~29_sumout\;
\CPU|branchcalc|ALT_INV_Add1~29_sumout\ <= NOT \CPU|branchcalc|Add1~29_sumout\;
\CPU|branchcalc|ALT_INV_Add0~25_sumout\ <= NOT \CPU|branchcalc|Add0~25_sumout\;
\CPU|branchcalc|ALT_INV_Add1~25_sumout\ <= NOT \CPU|branchcalc|Add1~25_sumout\;
\CPU|branchcalc|ALT_INV_Add0~21_sumout\ <= NOT \CPU|branchcalc|Add0~21_sumout\;
\CPU|branchcalc|ALT_INV_Add1~21_sumout\ <= NOT \CPU|branchcalc|Add1~21_sumout\;
\CPU|DP|cRegister|ALT_INV_out\(8) <= NOT \CPU|DP|cRegister|out\(8);
\CPU|branchcalc|ALT_INV_Add0~17_sumout\ <= NOT \CPU|branchcalc|Add0~17_sumout\;
\CPU|branchcalc|ALT_INV_Add1~17_sumout\ <= NOT \CPU|branchcalc|Add1~17_sumout\;
\CPU|branchcalc|ALT_INV_Add0~13_sumout\ <= NOT \CPU|branchcalc|Add0~13_sumout\;
\CPU|branchcalc|ALT_INV_Add1~13_sumout\ <= NOT \CPU|branchcalc|Add1~13_sumout\;
\CPU|branchcalc|ALT_INV_Add0~9_sumout\ <= NOT \CPU|branchcalc|Add0~9_sumout\;
\CPU|branchcalc|ALT_INV_Add1~9_sumout\ <= NOT \CPU|branchcalc|Add1~9_sumout\;
\CPU|branchcalc|ALT_INV_Add0~5_sumout\ <= NOT \CPU|branchcalc|Add0~5_sumout\;
\CPU|branchcalc|ALT_INV_Add1~5_sumout\ <= NOT \CPU|branchcalc|Add1~5_sumout\;
\CPU|DP|stat|ALT_INV_out\(2) <= NOT \CPU|DP|stat|out\(2);
\CPU|branchcalc|ALT_INV_Add0~1_sumout\ <= NOT \CPU|branchcalc|Add0~1_sumout\;
\CPU|branchcalc|ALT_INV_Add1~1_sumout\ <= NOT \CPU|branchcalc|Add1~1_sumout\;
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

-- Location: IOOBUF_X89_Y11_N79
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

-- Location: IOOBUF_X89_Y13_N56
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

-- Location: IOOBUF_X89_Y15_N5
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X89_Y13_N39
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

-- Location: IOOBUF_X89_Y11_N45
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

-- Location: IOOBUF_X89_Y11_N62
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

-- Location: IOOBUF_X89_Y9_N5
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
	i => \CPU|FSM|ALT_INV_out~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X10_Y0_N93
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

-- Location: IOOBUF_X36_Y81_N53
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

-- Location: IOOBUF_X84_Y0_N2
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

-- Location: IOOBUF_X8_Y81_N36
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X89_Y20_N45
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X14_Y81_N36
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X6_Y81_N2
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

-- Location: IOOBUF_X22_Y81_N2
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

-- Location: IOOBUF_X89_Y15_N39
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

-- Location: IOOBUF_X88_Y0_N37
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X40_Y0_N19
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

-- Location: IOOBUF_X76_Y0_N53
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X28_Y81_N19
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

-- Location: IOOBUF_X30_Y81_N36
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

-- Location: IOOBUF_X32_Y81_N53
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X8_Y81_N2
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

-- Location: IOOBUF_X89_Y20_N79
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

-- Location: IOOBUF_X14_Y81_N53
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X12_Y81_N36
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X86_Y0_N2
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

-- Location: IOOBUF_X89_Y4_N79
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

-- Location: IOOBUF_X40_Y81_N53
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

-- Location: IOOBUF_X36_Y81_N36
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

-- Location: IOOBUF_X24_Y81_N36
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

-- Location: IOOBUF_X86_Y0_N36
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

-- Location: IOOBUF_X16_Y81_N19
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X10_Y81_N93
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

-- Location: IOOBUF_X16_Y81_N2
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

-- Location: IOOBUF_X34_Y81_N59
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

-- Location: IOOBUF_X36_Y81_N2
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

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N42
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

-- Location: IOOBUF_X89_Y21_N56
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

-- Location: IOOBUF_X8_Y81_N53
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

-- Location: IOIBUF_X89_Y23_N21
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G11
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

-- Location: IOIBUF_X68_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X65_Y9_N38
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
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(6));

-- Location: MLABCELL_X65_Y13_N48
\CPU|FSM|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal7~0_combout\ = ( !\CPU|instructionReg|out[13]~DUPLICATE_q\ & ( !\CPU|instructionReg|out[14]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|FSM|Equal7~0_combout\);

-- Location: MLABCELL_X65_Y13_N57
\CPU|FSM|WideNor20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor20~0_combout\ = ( \CPU|FSM|STATE|out\(2) & ( (!\CPU|FSM|STATE|out\(5) & \CPU|FSM|STATE|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|STATE|ALT_INV_out\(5),
	datad => \CPU|FSM|STATE|ALT_INV_out\(4),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(2),
	combout => \CPU|FSM|WideNor20~0_combout\);

-- Location: MLABCELL_X65_Y13_N0
\CPU|FSM|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal5~0_combout\ = ( !\CPU|FSM|STATE|out\(3) & ( (!\CPU|instructionReg|out\(12) & (!\CPU|FSM|STATE|out\(0) & (!\CPU|FSM|STATE|out\(1) & !\CPU|instructionReg|out[11]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|FSM|STATE|ALT_INV_out\(3),
	combout => \CPU|FSM|Equal5~0_combout\);

-- Location: MLABCELL_X65_Y13_N12
\CPU|FSM|WideNor22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor22~0_combout\ = ( !\CPU|FSM|STATE|out\(5) & ( \CPU|FSM|STATE|out\(2) & ( (\CPU|FSM|STATE|out\(4) & (!\CPU|FSM|STATE|out\(3) & (\CPU|FSM|STATE|out\(1) & \CPU|FSM|STATE|out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(4),
	datab => \CPU|FSM|STATE|ALT_INV_out\(3),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|STATE|ALT_INV_out\(0),
	datae => \CPU|FSM|STATE|ALT_INV_out\(5),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(2),
	combout => \CPU|FSM|WideNor22~0_combout\);

-- Location: MLABCELL_X65_Y13_N54
\CPU|FSM|always0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~13_combout\ = ( !\CPU|FSM|WideNor22~0_combout\ & ( (!\CPU|FSM|Equal7~0_combout\) # ((!\CPU|instructionReg|out\(15)) # ((!\CPU|FSM|WideNor20~0_combout\) # (!\CPU|FSM|Equal5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal7~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(15),
	datac => \CPU|FSM|ALT_INV_WideNor20~0_combout\,
	datad => \CPU|FSM|ALT_INV_Equal5~0_combout\,
	dataf => \CPU|FSM|ALT_INV_WideNor22~0_combout\,
	combout => \CPU|FSM|always0~13_combout\);

-- Location: LABCELL_X66_Y11_N18
\CPU|FSM|WideNor19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor19~combout\ = ( !\CPU|FSM|STATE|out\(2) & ( \CPU|FSM|STATE|out\(0) & ( (!\CPU|FSM|STATE|out\(5) & (\CPU|FSM|STATE|out\(1) & (\CPU|FSM|STATE|out\(4) & !\CPU|FSM|STATE|out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(5),
	datab => \CPU|FSM|STATE|ALT_INV_out\(1),
	datac => \CPU|FSM|STATE|ALT_INV_out\(4),
	datad => \CPU|FSM|STATE|ALT_INV_out\(3),
	datae => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(0),
	combout => \CPU|FSM|WideNor19~combout\);

-- Location: LABCELL_X66_Y11_N21
\CPU|FSM|WideNor21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor21~0_combout\ = ( !\CPU|FSM|STATE|out\(0) & ( \CPU|FSM|STATE|out\(2) & ( (!\CPU|FSM|STATE|out\(5) & (\CPU|FSM|STATE|out\(1) & (!\CPU|FSM|STATE|out\(3) & \CPU|FSM|STATE|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(5),
	datab => \CPU|FSM|STATE|ALT_INV_out\(1),
	datac => \CPU|FSM|STATE|ALT_INV_out\(3),
	datad => \CPU|FSM|STATE|ALT_INV_out\(4),
	datae => \CPU|FSM|STATE|ALT_INV_out\(0),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(2),
	combout => \CPU|FSM|WideNor21~0_combout\);

-- Location: LABCELL_X66_Y12_N45
\CPU|FSM|WideNor20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor20~1_combout\ = ( \CPU|FSM|STATE|out\(0) & ( !\CPU|FSM|STATE|out\(3) & ( (\CPU|FSM|STATE|out\(2) & (!\CPU|FSM|STATE|out\(5) & (\CPU|FSM|STATE|out\(4) & !\CPU|FSM|STATE|out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(2),
	datab => \CPU|FSM|STATE|ALT_INV_out\(5),
	datac => \CPU|FSM|STATE|ALT_INV_out\(4),
	datad => \CPU|FSM|STATE|ALT_INV_out\(1),
	datae => \CPU|FSM|STATE|ALT_INV_out\(0),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(3),
	combout => \CPU|FSM|WideNor20~1_combout\);

-- Location: MLABCELL_X65_Y13_N9
\CPU|FSM|always0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~11_combout\ = ( !\CPU|FSM|WideNor20~1_combout\ & ( (!\CPU|FSM|Equal4~0_combout\) # ((!\CPU|FSM|WideNor20~0_combout\) # (!\CPU|FSM|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal4~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor20~0_combout\,
	datad => \CPU|FSM|ALT_INV_Equal5~0_combout\,
	dataf => \CPU|FSM|ALT_INV_WideNor20~1_combout\,
	combout => \CPU|FSM|always0~11_combout\);

-- Location: LABCELL_X66_Y11_N33
\CPU|FSM|WideNor18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor18~combout\ = ( !\CPU|FSM|STATE|out\(2) & ( !\CPU|FSM|STATE|out\(3) & ( (!\CPU|FSM|STATE|out\(5) & (\CPU|FSM|STATE|out\(1) & (\CPU|FSM|STATE|out\(4) & !\CPU|FSM|STATE|out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(5),
	datab => \CPU|FSM|STATE|ALT_INV_out\(1),
	datac => \CPU|FSM|STATE|ALT_INV_out\(4),
	datad => \CPU|FSM|STATE|ALT_INV_out\(0),
	datae => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(3),
	combout => \CPU|FSM|WideNor18~combout\);

-- Location: MLABCELL_X65_Y13_N6
\CPU|FSM|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal0~1_combout\ = ( \CPU|instructionReg|out\(15) & ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out\(15),
	combout => \CPU|FSM|Equal0~1_combout\);

-- Location: LABCELL_X66_Y12_N42
\CPU|FSM|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal0~0_combout\ = ( \CPU|FSM|STATE|out\(3) & ( !\CPU|FSM|STATE|out\(0) & ( (\CPU|FSM|STATE|out\(2) & (!\CPU|FSM|STATE|out\(5) & (!\CPU|FSM|STATE|out\(1) & \CPU|FSM|STATE|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(2),
	datab => \CPU|FSM|STATE|ALT_INV_out\(5),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|STATE|ALT_INV_out\(4),
	datae => \CPU|FSM|STATE|ALT_INV_out\(3),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(0),
	combout => \CPU|FSM|Equal0~0_combout\);

-- Location: LABCELL_X66_Y11_N54
\CPU|FSM|always0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~12_combout\ = ( \CPU|FSM|Equal0~0_combout\ & ( !\CPU|FSM|WideNor19~combout\ & ( (!\CPU|FSM|WideNor18~combout\ & (((!\CPU|FSM|Equal7~0_combout\) # (!\CPU|FSM|Equal0~1_combout\)) # (\CPU|instructionReg|out\(12)))) ) ) ) # ( 
-- !\CPU|FSM|Equal0~0_combout\ & ( !\CPU|FSM|WideNor19~combout\ & ( !\CPU|FSM|WideNor18~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datab => \CPU|FSM|ALT_INV_Equal7~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor18~combout\,
	datad => \CPU|FSM|ALT_INV_Equal0~1_combout\,
	datae => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|FSM|ALT_INV_WideNor19~combout\,
	combout => \CPU|FSM|always0~12_combout\);

-- Location: LABCELL_X64_Y13_N36
\CPU|FSM|always0~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~47_combout\ = ( \CPU|FSM|STATE|out\(1) & ( \CPU|FSM|STATE|out\(4) & ( (!\CPU|FSM|STATE|out\(5) & ((!\CPU|FSM|STATE|out\(3) & (!\CPU|FSM|STATE|out\(2) & !\CPU|FSM|STATE|out\(0))) # (\CPU|FSM|STATE|out\(3) & (\CPU|FSM|STATE|out\(2) & 
-- \CPU|FSM|STATE|out\(0))))) ) ) ) # ( !\CPU|FSM|STATE|out\(1) & ( \CPU|FSM|STATE|out\(4) & ( (!\CPU|FSM|STATE|out\(3) & (!\CPU|FSM|STATE|out\(2) & (!\CPU|FSM|STATE|out\(0) & !\CPU|FSM|STATE|out\(5)))) ) ) ) # ( \CPU|FSM|STATE|out\(1) & ( 
-- !\CPU|FSM|STATE|out\(4) & ( (\CPU|FSM|STATE|out\(0) & (!\CPU|FSM|STATE|out\(5) & ((!\CPU|FSM|STATE|out\(3)) # (!\CPU|FSM|STATE|out\(2))))) ) ) ) # ( !\CPU|FSM|STATE|out\(1) & ( !\CPU|FSM|STATE|out\(4) & ( (!\CPU|FSM|STATE|out\(5) & 
-- ((!\CPU|FSM|STATE|out\(2) & (\CPU|FSM|STATE|out\(3))) # (\CPU|FSM|STATE|out\(2) & ((!\CPU|FSM|STATE|out\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010000000000000011100000000010000000000000001000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(3),
	datab => \CPU|FSM|STATE|ALT_INV_out\(2),
	datac => \CPU|FSM|STATE|ALT_INV_out\(0),
	datad => \CPU|FSM|STATE|ALT_INV_out\(5),
	datae => \CPU|FSM|STATE|ALT_INV_out\(1),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(4),
	combout => \CPU|FSM|always0~47_combout\);

-- Location: LABCELL_X66_Y13_N39
\CPU|FSM|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal4~1_combout\ = ( \CPU|FSM|Equal0~0_combout\ & ( (\CPU|FSM|Equal4~0_combout\ & \CPU|PCReg|out[7]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal4~0_combout\,
	datad => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	combout => \CPU|FSM|Equal4~1_combout\);

-- Location: LABCELL_X66_Y12_N48
\CPU|FSM|always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~2_combout\ = ( \CPU|FSM|STATE|out\(1) & ( \CPU|FSM|STATE|out\(0) & ( (\CPU|FSM|STATE|out\(3) & (!\CPU|FSM|STATE|out\(5) & (!\CPU|FSM|STATE|out\(2) & \CPU|FSM|STATE|out\(4)))) ) ) ) # ( !\CPU|FSM|STATE|out\(1) & ( \CPU|FSM|STATE|out\(0) & 
-- ( (!\CPU|FSM|STATE|out\(3) & (!\CPU|FSM|STATE|out\(5) & (!\CPU|FSM|STATE|out\(2) & !\CPU|FSM|STATE|out\(4)))) ) ) ) # ( \CPU|FSM|STATE|out\(1) & ( !\CPU|FSM|STATE|out\(0) & ( (!\CPU|FSM|STATE|out\(5) & (!\CPU|FSM|STATE|out\(2) & (!\CPU|FSM|STATE|out\(3) $ 
-- (\CPU|FSM|STATE|out\(4))))) ) ) ) # ( !\CPU|FSM|STATE|out\(1) & ( !\CPU|FSM|STATE|out\(0) & ( (!\CPU|FSM|STATE|out\(3) & (!\CPU|FSM|STATE|out\(5) & (!\CPU|FSM|STATE|out\(2) & !\CPU|FSM|STATE|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000100000010000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(3),
	datab => \CPU|FSM|STATE|ALT_INV_out\(5),
	datac => \CPU|FSM|STATE|ALT_INV_out\(2),
	datad => \CPU|FSM|STATE|ALT_INV_out\(4),
	datae => \CPU|FSM|STATE|ALT_INV_out\(1),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(0),
	combout => \CPU|FSM|always0~2_combout\);

-- Location: FF_X65_Y13_N40
\CPU|instructionReg|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[13]~3_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(13));

-- Location: LABCELL_X66_Y12_N18
\CPU|FSM|always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~3_combout\ = ( \CPU|instructionReg|out\(13) & ( !\CPU|FSM|always0~2_combout\ ) ) # ( !\CPU|instructionReg|out\(13) & ( (!\CPU|FSM|always0~2_combout\ & ((!\CPU|FSM|Equal0~1_combout\) # ((!\CPU|FSM|Equal0~0_combout\) # 
-- (!\CPU|instructionReg|out[14]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal0~1_combout\,
	datab => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~2_combout\,
	datad => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out\(13),
	combout => \CPU|FSM|always0~3_combout\);

-- Location: LABCELL_X66_Y12_N6
\CPU|FSM|WideNor15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor15~0_combout\ = ( \CPU|FSM|STATE|out\(1) & ( (!\CPU|FSM|STATE|out\(4) & (!\CPU|FSM|STATE|out\(5) & (\CPU|FSM|STATE|out\(2) & !\CPU|FSM|STATE|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(4),
	datab => \CPU|FSM|STATE|ALT_INV_out\(5),
	datac => \CPU|FSM|STATE|ALT_INV_out\(2),
	datad => \CPU|FSM|STATE|ALT_INV_out\(0),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(1),
	combout => \CPU|FSM|WideNor15~0_combout\);

-- Location: MLABCELL_X65_Y13_N3
\CPU|FSM|WideNor7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor7~0_combout\ = ( \CPU|instructionReg|out[13]~DUPLICATE_q\ & ( !\CPU|instructionReg|out[14]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|FSM|WideNor7~0_combout\);

-- Location: LABCELL_X66_Y12_N21
\CPU|FSM|always0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~5_combout\ = ( \CPU|FSM|WideNor7~0_combout\ & ( (!\CPU|FSM|Equal0~1_combout\ & (((\CPU|FSM|WideNor15~0_combout\ & !\CPU|FSM|STATE|out\(3))))) # (\CPU|FSM|Equal0~1_combout\ & (((\CPU|FSM|WideNor15~0_combout\ & !\CPU|FSM|STATE|out\(3))) # 
-- (\CPU|FSM|Equal0~0_combout\))) ) ) # ( !\CPU|FSM|WideNor7~0_combout\ & ( (\CPU|FSM|WideNor15~0_combout\ & !\CPU|FSM|STATE|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal0~1_combout\,
	datab => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor15~0_combout\,
	datad => \CPU|FSM|STATE|ALT_INV_out\(3),
	dataf => \CPU|FSM|ALT_INV_WideNor7~0_combout\,
	combout => \CPU|FSM|always0~5_combout\);

-- Location: MLABCELL_X65_Y12_N21
\CPU|FSM|WideNor12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor12~0_combout\ = ( !\CPU|FSM|STATE|out\(2) & ( \CPU|FSM|STATE|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FSM|STATE|ALT_INV_out\(3),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(2),
	combout => \CPU|FSM|WideNor12~0_combout\);

-- Location: MLABCELL_X65_Y13_N18
\CPU|FSM|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal2~0_combout\ = ( \CPU|instructionReg|out[13]~DUPLICATE_q\ & ( (\CPU|instructionReg|out\(15) & !\CPU|instructionReg|out[14]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instructionReg|ALT_INV_out\(15),
	datad => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	combout => \CPU|FSM|Equal2~0_combout\);

-- Location: LABCELL_X66_Y12_N30
\CPU|FSM|always0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~6_combout\ = ( \CPU|FSM|Equal2~0_combout\ & ( \CPU|FSM|Equal0~0_combout\ & ( (!\CPU|instructionReg|out\(11) & (((\CPU|FSM|WideNor12~0_combout\ & \CPU|FSM|WideNor12~1_combout\)))) # (\CPU|instructionReg|out\(11) & 
-- ((!\CPU|instructionReg|out\(12)) # ((\CPU|FSM|WideNor12~0_combout\ & \CPU|FSM|WideNor12~1_combout\)))) ) ) ) # ( !\CPU|FSM|Equal2~0_combout\ & ( \CPU|FSM|Equal0~0_combout\ & ( (\CPU|FSM|WideNor12~0_combout\ & \CPU|FSM|WideNor12~1_combout\) ) ) ) # ( 
-- \CPU|FSM|Equal2~0_combout\ & ( !\CPU|FSM|Equal0~0_combout\ & ( (\CPU|FSM|WideNor12~0_combout\ & \CPU|FSM|WideNor12~1_combout\) ) ) ) # ( !\CPU|FSM|Equal2~0_combout\ & ( !\CPU|FSM|Equal0~0_combout\ & ( (\CPU|FSM|WideNor12~0_combout\ & 
-- \CPU|FSM|WideNor12~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110100010001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(11),
	datab => \CPU|instructionReg|ALT_INV_out\(12),
	datac => \CPU|FSM|ALT_INV_WideNor12~0_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor12~1_combout\,
	datae => \CPU|FSM|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	combout => \CPU|FSM|always0~6_combout\);

-- Location: LABCELL_X67_Y12_N18
\CPU|FSM|always0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~9_combout\ = ( \CPU|FSM|WideNor15~0_combout\ & ( \CPU|FSM|Equal2~0_combout\ & ( ((\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|instructionReg|out\(12) & \CPU|FSM|Equal0~0_combout\))) # (\CPU|FSM|STATE|out\(3)) ) ) ) # ( 
-- !\CPU|FSM|WideNor15~0_combout\ & ( \CPU|FSM|Equal2~0_combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|instructionReg|out\(12) & \CPU|FSM|Equal0~0_combout\)) ) ) ) # ( \CPU|FSM|WideNor15~0_combout\ & ( !\CPU|FSM|Equal2~0_combout\ & ( 
-- \CPU|FSM|STATE|out\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000100010000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|instructionReg|ALT_INV_out\(12),
	datac => \CPU|FSM|STATE|ALT_INV_out\(3),
	datad => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	datae => \CPU|FSM|ALT_INV_WideNor15~0_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal2~0_combout\,
	combout => \CPU|FSM|always0~9_combout\);

-- Location: LABCELL_X66_Y13_N30
\CPU|FSM|always0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~10_combout\ = ( !\CPU|FSM|always0~6_combout\ & ( !\CPU|FSM|always0~9_combout\ & ( (!\CPU|FSM|always0~47_combout\ & (!\CPU|FSM|Equal4~1_combout\ & (\CPU|FSM|always0~3_combout\ & !\CPU|FSM|always0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~47_combout\,
	datab => \CPU|FSM|ALT_INV_Equal4~1_combout\,
	datac => \CPU|FSM|ALT_INV_always0~3_combout\,
	datad => \CPU|FSM|ALT_INV_always0~5_combout\,
	datae => \CPU|FSM|ALT_INV_always0~6_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~9_combout\,
	combout => \CPU|FSM|always0~10_combout\);

-- Location: LABCELL_X66_Y13_N42
\CPU|FSM|always0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~14_combout\ = ( \CPU|FSM|always0~12_combout\ & ( \CPU|FSM|always0~10_combout\ & ( (\CPU|FSM|always0~13_combout\ & (!\CPU|FSM|WideNor19~combout\ & (!\CPU|FSM|WideNor21~0_combout\ & \CPU|FSM|always0~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~13_combout\,
	datab => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datac => \CPU|FSM|ALT_INV_WideNor21~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~11_combout\,
	datae => \CPU|FSM|ALT_INV_always0~12_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~10_combout\,
	combout => \CPU|FSM|always0~14_combout\);

-- Location: LABCELL_X66_Y13_N27
\CPU|FSM|always0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~19_combout\ = ( \CPU|FSM|always0~10_combout\ & ( (\CPU|FSM|always0~11_combout\ & (!\CPU|FSM|WideNor19~combout\ & \CPU|FSM|WideNor21~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_always0~11_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datad => \CPU|FSM|ALT_INV_WideNor21~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~10_combout\,
	combout => \CPU|FSM|always0~19_combout\);

-- Location: MLABCELL_X65_Y12_N24
\CPU|FSM|always0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~8_combout\ = ( \CPU|FSM|STATE|out\(3) & ( \CPU|FSM|STATE|out\(1) & ( (\CPU|FSM|STATE|out\(2) & (\CPU|FSM|STATE|out\(4) & (!\CPU|FSM|STATE|out\(5) & \CPU|FSM|STATE|out\(0)))) ) ) ) # ( !\CPU|FSM|STATE|out\(3) & ( !\CPU|FSM|STATE|out\(1) & 
-- ( (!\CPU|FSM|STATE|out\(2) & (\CPU|FSM|STATE|out\(4) & (!\CPU|FSM|STATE|out\(5) & !\CPU|FSM|STATE|out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(2),
	datab => \CPU|FSM|STATE|ALT_INV_out\(4),
	datac => \CPU|FSM|STATE|ALT_INV_out\(5),
	datad => \CPU|FSM|STATE|ALT_INV_out\(0),
	datae => \CPU|FSM|STATE|ALT_INV_out\(3),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(1),
	combout => \CPU|FSM|always0~8_combout\);

-- Location: LABCELL_X66_Y12_N12
\CPU|FSM|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~0_combout\ = ( \CPU|FSM|STATE|out\(0) & ( \CPU|FSM|STATE|out\(3) & ( (!\CPU|FSM|STATE|out\(2) & (!\CPU|FSM|STATE|out\(4) & (\CPU|FSM|STATE|out\(1) & !\CPU|FSM|STATE|out\(5)))) ) ) ) # ( !\CPU|FSM|STATE|out\(0) & ( \CPU|FSM|STATE|out\(3) & 
-- ( (\CPU|FSM|STATE|out\(2) & (!\CPU|FSM|STATE|out\(4) & (!\CPU|FSM|STATE|out\(1) & !\CPU|FSM|STATE|out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(2),
	datab => \CPU|FSM|STATE|ALT_INV_out\(4),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|STATE|ALT_INV_out\(5),
	datae => \CPU|FSM|STATE|ALT_INV_out\(0),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(3),
	combout => \CPU|FSM|always0~0_combout\);

-- Location: MLABCELL_X65_Y12_N30
\CPU|FSM|always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~1_combout\ = ( !\CPU|FSM|STATE|out\(3) & ( \CPU|FSM|STATE|out\(1) & ( (!\CPU|FSM|STATE|out\(5) & (\CPU|FSM|STATE|out\(0) & (!\CPU|FSM|STATE|out\(2) & !\CPU|FSM|STATE|out\(4)))) ) ) ) # ( !\CPU|FSM|STATE|out\(3) & ( !\CPU|FSM|STATE|out\(1) 
-- & ( (!\CPU|FSM|STATE|out\(5) & (!\CPU|FSM|STATE|out\(0) & (\CPU|FSM|STATE|out\(2) & !\CPU|FSM|STATE|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(5),
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|STATE|ALT_INV_out\(2),
	datad => \CPU|FSM|STATE|ALT_INV_out\(4),
	datae => \CPU|FSM|STATE|ALT_INV_out\(3),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(1),
	combout => \CPU|FSM|always0~1_combout\);

-- Location: MLABCELL_X65_Y12_N54
\CPU|FSM|always0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~4_combout\ = ( \CPU|FSM|STATE|out\(3) & ( !\CPU|FSM|STATE|out\(5) & ( (!\CPU|FSM|STATE|out\(2) & (!\CPU|FSM|STATE|out\(0) & (!\CPU|FSM|STATE|out\(1) & !\CPU|FSM|STATE|out\(4)))) ) ) ) # ( !\CPU|FSM|STATE|out\(3) & ( 
-- !\CPU|FSM|STATE|out\(5) & ( (\CPU|FSM|STATE|out\(2) & (\CPU|FSM|STATE|out\(0) & (\CPU|FSM|STATE|out\(1) & !\CPU|FSM|STATE|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(2),
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|STATE|ALT_INV_out\(4),
	datae => \CPU|FSM|STATE|ALT_INV_out\(3),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(5),
	combout => \CPU|FSM|always0~4_combout\);

-- Location: MLABCELL_X65_Y12_N36
\CPU|FSM|WideNor11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor11~0_combout\ = ( \CPU|FSM|STATE|out\(3) & ( !\CPU|FSM|STATE|out\(5) & ( (!\CPU|FSM|STATE|out\(2) & (\CPU|FSM|STATE|out\(0) & (!\CPU|FSM|STATE|out\(1) & !\CPU|FSM|STATE|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(2),
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|STATE|ALT_INV_out\(4),
	datae => \CPU|FSM|STATE|ALT_INV_out\(3),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(5),
	combout => \CPU|FSM|WideNor11~0_combout\);

-- Location: LABCELL_X66_Y12_N24
\CPU|FSM|always0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~7_combout\ = ( !\CPU|FSM|always0~5_combout\ & ( \CPU|FSM|always0~3_combout\ & ( (!\CPU|FSM|always0~1_combout\ & (!\CPU|FSM|always0~4_combout\ & (!\CPU|FSM|WideNor11~0_combout\ & !\CPU|FSM|always0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~1_combout\,
	datab => \CPU|FSM|ALT_INV_always0~4_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor11~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~6_combout\,
	datae => \CPU|FSM|ALT_INV_always0~5_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~3_combout\,
	combout => \CPU|FSM|always0~7_combout\);

-- Location: LABCELL_X66_Y12_N36
\CPU|FSM|always0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~20_combout\ = ( \CPU|FSM|always0~7_combout\ & ( (!\CPU|FSM|always0~8_combout\ & (!\CPU|FSM|always0~9_combout\ & (!\CPU|FSM|always0~0_combout\ & \CPU|FSM|WideNor20~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~8_combout\,
	datab => \CPU|FSM|ALT_INV_always0~9_combout\,
	datac => \CPU|FSM|ALT_INV_always0~0_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor20~1_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~7_combout\,
	combout => \CPU|FSM|always0~20_combout\);

-- Location: LABCELL_X67_Y13_N24
\CPU|FSM|WideOr15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr15~0_combout\ = ( !\CPU|FSM|always0~20_combout\ & ( \CPU|FSM|always0~10_combout\ & ( (!\CPU|FSM|WideNor22~0_combout\) # (((!\CPU|FSM|always0~11_combout\) # (\CPU|FSM|WideNor19~combout\)) # (\CPU|FSM|WideNor21~0_combout\)) ) ) ) # ( 
-- !\CPU|FSM|always0~20_combout\ & ( !\CPU|FSM|always0~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111101111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor22~0_combout\,
	datab => \CPU|FSM|ALT_INV_WideNor21~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datad => \CPU|FSM|ALT_INV_always0~11_combout\,
	datae => \CPU|FSM|ALT_INV_always0~20_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~10_combout\,
	combout => \CPU|FSM|WideOr15~0_combout\);

-- Location: LABCELL_X66_Y13_N36
\CPU|FSM|WideOr39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr39~0_combout\ = ( \CPU|FSM|WideOr15~0_combout\ & ( (!\CPU|FSM|always0~19_combout\ & ((!\CPU|FSM|always0~14_combout\) # (!\CPU|FSM|WideNor24~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_always0~14_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~19_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr15~0_combout\,
	combout => \CPU|FSM|WideOr39~0_combout\);

-- Location: IOIBUF_X60_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X67_Y10_N11
\CPU|DP|aRegister|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector14~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(1));

-- Location: LABCELL_X68_Y13_N51
\CPU|FSM|WideNor15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor15~1_combout\ = ( !\CPU|FSM|STATE|out\(4) & ( (!\CPU|FSM|STATE|out\(0) & !\CPU|FSM|STATE|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|STATE|ALT_INV_out\(5),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(4),
	combout => \CPU|FSM|WideNor15~1_combout\);

-- Location: LABCELL_X68_Y13_N57
\CPU|FSM|WideOr25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr25~0_combout\ = ( !\CPU|FSM|STATE|out\(3) & ( \CPU|FSM|always0~3_combout\ & ( (\CPU|FSM|WideNor15~1_combout\ & (!\CPU|FSM|STATE|out\(1) $ (!\CPU|FSM|STATE|out\(2)))) ) ) ) # ( !\CPU|FSM|STATE|out\(3) & ( !\CPU|FSM|always0~3_combout\ & ( 
-- (\CPU|FSM|STATE|out\(1) & (\CPU|FSM|WideNor15~1_combout\ & !\CPU|FSM|STATE|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000000000011000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(1),
	datac => \CPU|FSM|ALT_INV_WideNor15~1_combout\,
	datad => \CPU|FSM|STATE|ALT_INV_out\(2),
	datae => \CPU|FSM|STATE|ALT_INV_out\(3),
	dataf => \CPU|FSM|ALT_INV_always0~3_combout\,
	combout => \CPU|FSM|WideOr25~0_combout\);

-- Location: LABCELL_X66_Y11_N6
\CPU|FSM|WideOr25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr25~1_combout\ = ( \CPU|FSM|always0~12_combout\ & ( \CPU|FSM|always0~13_combout\ & ( (!\CPU|FSM|WideNor19~combout\ & (!\CPU|FSM|STATE|out\(0) & (!\CPU|FSM|WideNor21~0_combout\ & \CPU|FSM|WideNor24~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|ALT_INV_WideNor21~0_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datae => \CPU|FSM|ALT_INV_always0~12_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~13_combout\,
	combout => \CPU|FSM|WideOr25~1_combout\);

-- Location: LABCELL_X64_Y13_N33
\CPU|FSM|always0~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~48_combout\ = ( \CPU|FSM|WideNor19~combout\ & ( !\CPU|FSM|always0~47_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FSM|ALT_INV_always0~47_combout\,
	dataf => \CPU|FSM|ALT_INV_WideNor19~combout\,
	combout => \CPU|FSM|always0~48_combout\);

-- Location: LABCELL_X66_Y13_N54
\CPU|FSM|always0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~45_combout\ = ( !\CPU|FSM|always0~9_combout\ & ( \CPU|FSM|always0~48_combout\ & ( (\CPU|FSM|always0~3_combout\ & (!\CPU|FSM|Equal4~1_combout\ & (!\CPU|FSM|always0~6_combout\ & !\CPU|FSM|always0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~3_combout\,
	datab => \CPU|FSM|ALT_INV_Equal4~1_combout\,
	datac => \CPU|FSM|ALT_INV_always0~6_combout\,
	datad => \CPU|FSM|ALT_INV_always0~5_combout\,
	datae => \CPU|FSM|ALT_INV_always0~9_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~48_combout\,
	combout => \CPU|FSM|always0~45_combout\);

-- Location: LABCELL_X66_Y13_N48
\CPU|FSM|WideOr25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr25~combout\ = ( \CPU|FSM|always0~45_combout\ & ( \CPU|FSM|always0~10_combout\ ) ) # ( !\CPU|FSM|always0~45_combout\ & ( \CPU|FSM|always0~10_combout\ & ( (((\CPU|FSM|always0~11_combout\ & \CPU|FSM|WideOr25~1_combout\)) # 
-- (\CPU|FSM|always0~21_combout\)) # (\CPU|FSM|WideOr25~0_combout\) ) ) ) # ( \CPU|FSM|always0~45_combout\ & ( !\CPU|FSM|always0~10_combout\ ) ) # ( !\CPU|FSM|always0~45_combout\ & ( !\CPU|FSM|always0~10_combout\ & ( (\CPU|FSM|always0~21_combout\) # 
-- (\CPU|FSM|WideOr25~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111111111111101010111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr25~0_combout\,
	datab => \CPU|FSM|ALT_INV_always0~11_combout\,
	datac => \CPU|FSM|ALT_INV_WideOr25~1_combout\,
	datad => \CPU|FSM|ALT_INV_always0~21_combout\,
	datae => \CPU|FSM|ALT_INV_always0~45_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~10_combout\,
	combout => \CPU|FSM|WideOr25~combout\);

-- Location: LABCELL_X70_Y13_N48
\CPU|DP|Ain[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[1]~2_combout\ = ( \CPU|DP|aRegister|out\(1) & ( !\CPU|FSM|WideOr25~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|DP|aRegister|ALT_INV_out\(1),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[1]~2_combout\);

-- Location: IOIBUF_X89_Y13_N21
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X66_Y10_N12
\CPU|DP|muxintoregister|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux0~0_combout\ = ( !\CPU|FSM|always0~19_combout\ & ( \CPU|FSM|always0~14_combout\ & ( (!\CPU|FSM|WideNor24~0_combout\) # (\CPU|FSM|STATE|out\(0)) ) ) ) # ( !\CPU|FSM|always0~19_combout\ & ( !\CPU|FSM|always0~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110011111100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datae => \CPU|FSM|ALT_INV_always0~19_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~14_combout\,
	combout => \CPU|DP|muxintoregister|Mux0~0_combout\);

-- Location: LABCELL_X63_Y13_N45
\CPU|FSM|WideNor27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor27~0_combout\ = ( \CPU|FSM|STATE|out\(0) & ( (\CPU|FSM|STATE|out\(5) & (!\CPU|FSM|STATE|out\(3) & (!\CPU|FSM|STATE|out\(4) & !\CPU|FSM|STATE|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(5),
	datab => \CPU|FSM|STATE|ALT_INV_out\(3),
	datac => \CPU|FSM|STATE|ALT_INV_out\(4),
	datad => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(0),
	combout => \CPU|FSM|WideNor27~0_combout\);

-- Location: LABCELL_X66_Y11_N12
\CPU|FSM|always0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~15_combout\ = ( \CPU|FSM|STATE|out\(4) & ( !\CPU|FSM|STATE|out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|STATE|ALT_INV_out\(5),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(4),
	combout => \CPU|FSM|always0~15_combout\);

-- Location: MLABCELL_X65_Y10_N0
\CPU|FSM|WideNor25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor25~0_combout\ = ( \CPU|FSM|always0~15_combout\ & ( (\CPU|FSM|always0~16_combout\ & (\CPU|FSM|STATE|out\(1) & \CPU|FSM|STATE|out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~16_combout\,
	datab => \CPU|FSM|STATE|ALT_INV_out\(1),
	datac => \CPU|FSM|STATE|ALT_INV_out\(3),
	dataf => \CPU|FSM|ALT_INV_always0~15_combout\,
	combout => \CPU|FSM|WideNor25~0_combout\);

-- Location: FF_X65_Y13_N37
\CPU|instructionReg|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[14]~4_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(14));

-- Location: LABCELL_X64_Y10_N36
\CPU|FSM|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal8~0_combout\ = ( \CPU|FSM|Equal0~0_combout\ & ( (\CPU|FSM|Equal0~1_combout\ & (!\CPU|instructionReg|out\(12) & (\CPU|instructionReg|out\(13) & \CPU|instructionReg|out\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal0~1_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(12),
	datac => \CPU|instructionReg|ALT_INV_out\(13),
	datad => \CPU|instructionReg|ALT_INV_out\(14),
	dataf => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	combout => \CPU|FSM|Equal8~0_combout\);

-- Location: MLABCELL_X65_Y10_N15
\CPU|FSM|always0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~22_combout\ = ( !\CPU|FSM|WideNor25~0_combout\ & ( !\CPU|FSM|Equal8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|FSM|ALT_INV_WideNor25~0_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal8~0_combout\,
	combout => \CPU|FSM|always0~22_combout\);

-- Location: MLABCELL_X65_Y10_N18
\CPU|FSM|always0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~27_combout\ = ( \CPU|FSM|always0~14_combout\ & ( \CPU|FSM|always0~24_combout\ & ( (!\CPU|FSM|WideNor24~0_combout\ & (\CPU|FSM|STATE|out\(1) & (\CPU|FSM|WideNor27~0_combout\ & \CPU|FSM|always0~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datab => \CPU|FSM|STATE|ALT_INV_out\(1),
	datac => \CPU|FSM|ALT_INV_WideNor27~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~22_combout\,
	datae => \CPU|FSM|ALT_INV_always0~14_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~24_combout\,
	combout => \CPU|FSM|always0~27_combout\);

-- Location: LABCELL_X66_Y10_N57
\CPU|FSM|WideOr30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr30~combout\ = ( !\CPU|FSM|always0~27_combout\ & ( \CPU|DP|muxintoregister|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~27_combout\,
	combout => \CPU|FSM|WideOr30~combout\);

-- Location: IOIBUF_X64_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X62_Y12_N9
\CPU|branchcalc|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add0~13_sumout\ = SUM(( \CPU|instructionReg|out\(3) ) + ( \CPU|PCReg|out[3]~DUPLICATE_q\ ) + ( \CPU|branchcalc|Add0~34\ ))
-- \CPU|branchcalc|Add0~14\ = CARRY(( \CPU|instructionReg|out\(3) ) + ( \CPU|PCReg|out[3]~DUPLICATE_q\ ) + ( \CPU|branchcalc|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(3),
	dataf => \CPU|PCReg|ALT_INV_out[3]~DUPLICATE_q\,
	cin => \CPU|branchcalc|Add0~34\,
	sumout => \CPU|branchcalc|Add0~13_sumout\,
	cout => \CPU|branchcalc|Add0~14\);

-- Location: LABCELL_X62_Y12_N12
\CPU|branchcalc|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add0~17_sumout\ = SUM(( \CPU|PCReg|out\(4) ) + ( \CPU|instructionReg|out\(4) ) + ( \CPU|branchcalc|Add0~14\ ))
-- \CPU|branchcalc|Add0~18\ = CARRY(( \CPU|PCReg|out\(4) ) + ( \CPU|instructionReg|out\(4) ) + ( \CPU|branchcalc|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|PCReg|ALT_INV_out\(4),
	cin => \CPU|branchcalc|Add0~14\,
	sumout => \CPU|branchcalc|Add0~17_sumout\,
	cout => \CPU|branchcalc|Add0~18\);

-- Location: LABCELL_X62_Y12_N30
\CPU|branchcalc|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add1~25_sumout\ = SUM(( \CPU|PCReg|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|branchcalc|Add1~26\ = CARRY(( \CPU|PCReg|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PCReg|ALT_INV_out\(0),
	cin => GND,
	sumout => \CPU|branchcalc|Add1~25_sumout\,
	cout => \CPU|branchcalc|Add1~26\);

-- Location: LABCELL_X62_Y12_N33
\CPU|branchcalc|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add1~29_sumout\ = SUM(( \CPU|PCReg|out\(1) ) + ( GND ) + ( \CPU|branchcalc|Add1~26\ ))
-- \CPU|branchcalc|Add1~30\ = CARRY(( \CPU|PCReg|out\(1) ) + ( GND ) + ( \CPU|branchcalc|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(1),
	cin => \CPU|branchcalc|Add1~26\,
	sumout => \CPU|branchcalc|Add1~29_sumout\,
	cout => \CPU|branchcalc|Add1~30\);

-- Location: LABCELL_X62_Y12_N36
\CPU|branchcalc|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add1~33_sumout\ = SUM(( \CPU|PCReg|out\(2) ) + ( GND ) + ( \CPU|branchcalc|Add1~30\ ))
-- \CPU|branchcalc|Add1~34\ = CARRY(( \CPU|PCReg|out\(2) ) + ( GND ) + ( \CPU|branchcalc|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(2),
	cin => \CPU|branchcalc|Add1~30\,
	sumout => \CPU|branchcalc|Add1~33_sumout\,
	cout => \CPU|branchcalc|Add1~34\);

-- Location: LABCELL_X62_Y12_N39
\CPU|branchcalc|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add1~13_sumout\ = SUM(( \CPU|PCReg|out[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|branchcalc|Add1~34\ ))
-- \CPU|branchcalc|Add1~14\ = CARRY(( \CPU|PCReg|out[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|branchcalc|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out[3]~DUPLICATE_q\,
	cin => \CPU|branchcalc|Add1~34\,
	sumout => \CPU|branchcalc|Add1~13_sumout\,
	cout => \CPU|branchcalc|Add1~14\);

-- Location: LABCELL_X62_Y12_N42
\CPU|branchcalc|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add1~17_sumout\ = SUM(( \CPU|PCReg|out\(4) ) + ( GND ) + ( \CPU|branchcalc|Add1~14\ ))
-- \CPU|branchcalc|Add1~18\ = CARRY(( \CPU|PCReg|out\(4) ) + ( GND ) + ( \CPU|branchcalc|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(4),
	cin => \CPU|branchcalc|Add1~14\,
	sumout => \CPU|branchcalc|Add1~17_sumout\,
	cout => \CPU|branchcalc|Add1~18\);

-- Location: LABCELL_X63_Y12_N3
\CPU|intoPC[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|intoPC[4]~4_combout\ = ( \CPU|branchcalc|Add1~17_sumout\ & ( (!\CPU|FSM|Equal9~0_combout\) # (((!\CPU|PCReg|out[7]~0_combout\) # (\CPU|branchcalc|Add0~17_sumout\)) # (\CPU|PCReg|out[7]~1_combout\)) ) ) # ( !\CPU|branchcalc|Add1~17_sumout\ & ( 
-- (\CPU|FSM|Equal9~0_combout\ & (!\CPU|PCReg|out[7]~1_combout\ & (\CPU|branchcalc|Add0~17_sumout\ & \CPU|PCReg|out[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~1_combout\,
	datac => \CPU|branchcalc|ALT_INV_Add0~17_sumout\,
	datad => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	dataf => \CPU|branchcalc|ALT_INV_Add1~17_sumout\,
	combout => \CPU|intoPC[4]~4_combout\);

-- Location: LABCELL_X68_Y12_N18
\CPU|FSM|loads\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|loads~combout\ = ( \CPU|FSM|always0~7_combout\ & ( (\CPU|FSM|WideNor15~1_combout\ & (!\CPU|FSM|STATE|out\(1) & (\CPU|FSM|STATE|out\(3) & \CPU|FSM|STATE|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor15~1_combout\,
	datab => \CPU|FSM|STATE|ALT_INV_out\(1),
	datac => \CPU|FSM|STATE|ALT_INV_out\(3),
	datad => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|ALT_INV_always0~7_combout\,
	combout => \CPU|FSM|loads~combout\);

-- Location: LABCELL_X64_Y12_N18
\CPU|FSM|always0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~37_combout\ = ( \CPU|FSM|always0~3_combout\ & ( (!\CPU|FSM|always0~1_combout\ & (!\CPU|FSM|always0~4_combout\ & (!\CPU|FSM|WideNor11~0_combout\ & !\CPU|FSM|always0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~1_combout\,
	datab => \CPU|FSM|ALT_INV_always0~4_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor11~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~5_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~3_combout\,
	combout => \CPU|FSM|always0~37_combout\);

-- Location: LABCELL_X67_Y12_N36
\CPU|FSM|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal2~1_combout\ = ( \CPU|FSM|Equal2~0_combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & \CPU|FSM|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal2~0_combout\,
	combout => \CPU|FSM|Equal2~1_combout\);

-- Location: LABCELL_X64_Y12_N33
\CPU|FSM|always0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~38_combout\ = ( !\CPU|FSM|STATE|out\(3) & ( (\CPU|FSM|STATE|out\(1) & (\CPU|FSM|STATE|out\(0) & \CPU|FSM|STATE|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(1),
	datac => \CPU|FSM|STATE|ALT_INV_out\(0),
	datad => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(3),
	combout => \CPU|FSM|always0~38_combout\);

-- Location: LABCELL_X64_Y12_N42
\CPU|FSM|always0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~39_combout\ = ( !\CPU|FSM|STATE|out\(4) & ( \CPU|FSM|always0~38_combout\ & ( (!\CPU|FSM|always0~1_combout\ & (\CPU|FSM|always0~3_combout\ & (!\CPU|FSM|STATE|out\(5) & !\CPU|FSM|always0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~1_combout\,
	datab => \CPU|FSM|ALT_INV_always0~3_combout\,
	datac => \CPU|FSM|STATE|ALT_INV_out\(5),
	datad => \CPU|FSM|ALT_INV_always0~5_combout\,
	datae => \CPU|FSM|STATE|ALT_INV_out\(4),
	dataf => \CPU|FSM|ALT_INV_always0~38_combout\,
	combout => \CPU|FSM|always0~39_combout\);

-- Location: LABCELL_X64_Y12_N51
\CPU|FSM|WideOr33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr33~2_combout\ = ( !\CPU|FSM|always0~39_combout\ & ( (!\CPU|FSM|always0~37_combout\) # ((!\CPU|FSM|Equal2~1_combout\) # (\CPU|instructionReg|out\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111111110101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~37_combout\,
	datac => \CPU|FSM|ALT_INV_Equal2~1_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(12),
	dataf => \CPU|FSM|ALT_INV_always0~39_combout\,
	combout => \CPU|FSM|WideOr33~2_combout\);

-- Location: MLABCELL_X65_Y12_N15
\CPU|FSM|WideNor3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor3~combout\ = ( \CPU|FSM|STATE|out\(0) & ( !\CPU|FSM|STATE|out\(2) & ( (!\CPU|FSM|STATE|out\(3) & (!\CPU|FSM|STATE|out\(4) & (!\CPU|FSM|STATE|out\(1) & !\CPU|FSM|STATE|out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(3),
	datab => \CPU|FSM|STATE|ALT_INV_out\(4),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|STATE|ALT_INV_out\(5),
	datae => \CPU|FSM|STATE|ALT_INV_out\(0),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(2),
	combout => \CPU|FSM|WideNor3~combout\);

-- Location: LABCELL_X64_Y12_N6
\CPU|FSM|always0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~33_combout\ = ( !\CPU|FSM|STATE|out\(3) & ( (!\CPU|FSM|STATE|out\(1) & (!\CPU|FSM|STATE|out\(0) & !\CPU|FSM|STATE|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(1),
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datad => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(3),
	combout => \CPU|FSM|always0~33_combout\);

-- Location: MLABCELL_X65_Y12_N12
\CPU|FSM|always0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~46_combout\ = ( \CPU|FSM|STATE|out\(2) & ( !\CPU|FSM|STATE|out\(0) & ( (!\CPU|FSM|STATE|out\(3) & (!\CPU|FSM|STATE|out\(4) & (!\CPU|FSM|STATE|out\(5) & !\CPU|FSM|STATE|out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(3),
	datab => \CPU|FSM|STATE|ALT_INV_out\(4),
	datac => \CPU|FSM|STATE|ALT_INV_out\(5),
	datad => \CPU|FSM|STATE|ALT_INV_out\(1),
	datae => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(0),
	combout => \CPU|FSM|always0~46_combout\);

-- Location: MLABCELL_X65_Y12_N6
\CPU|FSM|WideOr15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr15~1_combout\ = ( \CPU|FSM|always0~5_combout\ & ( \CPU|FSM|always0~3_combout\ & ( \CPU|FSM|always0~46_combout\ ) ) ) # ( !\CPU|FSM|always0~5_combout\ & ( \CPU|FSM|always0~3_combout\ & ( ((!\CPU|FSM|always0~4_combout\ & 
-- (!\CPU|FSM|always0~1_combout\ & \CPU|FSM|WideNor11~0_combout\))) # (\CPU|FSM|always0~46_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~4_combout\,
	datab => \CPU|FSM|ALT_INV_always0~1_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor11~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~46_combout\,
	datae => \CPU|FSM|ALT_INV_always0~5_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~3_combout\,
	combout => \CPU|FSM|WideOr15~1_combout\);

-- Location: LABCELL_X66_Y12_N0
\CPU|FSM|WideOr15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr15~2_combout\ = ( !\CPU|FSM|WideOr15~1_combout\ & ( \CPU|FSM|always0~7_combout\ & ( (((!\CPU|FSM|always0~33_combout\) # (!\CPU|FSM|always0~15_combout\)) # (\CPU|FSM|always0~9_combout\)) # (\CPU|FSM|always0~0_combout\) ) ) ) # ( 
-- !\CPU|FSM|WideOr15~1_combout\ & ( !\CPU|FSM|always0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~0_combout\,
	datab => \CPU|FSM|ALT_INV_always0~9_combout\,
	datac => \CPU|FSM|ALT_INV_always0~33_combout\,
	datad => \CPU|FSM|ALT_INV_always0~15_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr15~1_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~7_combout\,
	combout => \CPU|FSM|WideOr15~2_combout\);

-- Location: MLABCELL_X65_Y12_N0
\CPU|FSM|WideOr33~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr33~3_combout\ = ( \CPU|FSM|always0~11_combout\ & ( \CPU|FSM|WideOr15~2_combout\ & ( (!\CPU|FSM|WideNor3~combout\ & (((!\CPU|FSM|WideNor21~0_combout\) # (!\CPU|FSM|always0~10_combout\)) # (\CPU|FSM|WideNor19~combout\))) ) ) ) # ( 
-- !\CPU|FSM|always0~11_combout\ & ( \CPU|FSM|WideOr15~2_combout\ & ( !\CPU|FSM|WideNor3~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datab => \CPU|FSM|ALT_INV_WideNor21~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~10_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor3~combout\,
	datae => \CPU|FSM|ALT_INV_always0~11_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr15~2_combout\,
	combout => \CPU|FSM|WideOr33~3_combout\);

-- Location: LABCELL_X63_Y13_N39
\CPU|FSM|always0~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~43_combout\ = ( \CPU|FSM|always0~11_combout\ & ( \CPU|FSM|WideNor22~0_combout\ & ( (\CPU|FSM|always0~10_combout\ & (!\CPU|FSM|WideNor19~combout\ & !\CPU|FSM|WideNor21~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~10_combout\,
	datab => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datad => \CPU|FSM|ALT_INV_WideNor21~0_combout\,
	datae => \CPU|FSM|ALT_INV_always0~11_combout\,
	dataf => \CPU|FSM|ALT_INV_WideNor22~0_combout\,
	combout => \CPU|FSM|always0~43_combout\);

-- Location: LABCELL_X64_Y12_N0
\CPU|FSM|WideOr33~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr33~4_combout\ = ( !\CPU|FSM|always0~43_combout\ & ( (!\CPU|FSM|loads~combout\ & (\CPU|FSM|WideOr33~2_combout\ & \CPU|FSM|WideOr33~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_loads~combout\,
	datac => \CPU|FSM|ALT_INV_WideOr33~2_combout\,
	datad => \CPU|FSM|ALT_INV_WideOr33~3_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~43_combout\,
	combout => \CPU|FSM|WideOr33~4_combout\);

-- Location: LABCELL_X64_Y13_N48
\CPU|FSM|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal9~1_combout\ = ( \CPU|FSM|Equal0~0_combout\ & ( (\CPU|PCReg|out[7]~0_combout\ & \CPU|FSM|Equal9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	datad => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	combout => \CPU|FSM|Equal9~1_combout\);

-- Location: LABCELL_X63_Y10_N48
\CPU|FSM|WideOr33~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr33~5_combout\ = ( \CPU|FSM|always0~22_combout\ & ( \CPU|FSM|always0~14_combout\ & ( (!\CPU|FSM|WideNor24~0_combout\ & ((\CPU|FSM|Equal9~1_combout\))) # (\CPU|FSM|WideNor24~0_combout\ & (\CPU|FSM|STATE|out\(0))) ) ) ) # ( 
-- !\CPU|FSM|always0~22_combout\ & ( \CPU|FSM|always0~14_combout\ & ( (\CPU|FSM|WideNor24~0_combout\ & \CPU|FSM|STATE|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|ALT_INV_Equal9~1_combout\,
	datae => \CPU|FSM|ALT_INV_always0~22_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~14_combout\,
	combout => \CPU|FSM|WideOr33~5_combout\);

-- Location: LABCELL_X63_Y10_N39
\CPU|FSM|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal0~4_combout\ = ( \CPU|FSM|Equal0~1_combout\ & ( \CPU|FSM|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|FSM|ALT_INV_Equal0~1_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	combout => \CPU|FSM|Equal0~4_combout\);

-- Location: LABCELL_X64_Y13_N54
\CPU|FSM|always0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~17_combout\ = ( \CPU|FSM|always0~10_combout\ & ( (!\CPU|FSM|WideNor21~0_combout\ & (!\CPU|FSM|WideNor19~combout\ & \CPU|FSM|always0~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_WideNor21~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datad => \CPU|FSM|ALT_INV_always0~11_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~10_combout\,
	combout => \CPU|FSM|always0~17_combout\);

-- Location: LABCELL_X61_Y12_N48
\CPU|FSM|always0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~34_combout\ = ( \CPU|FSM|STATE|out\(2) & ( \CPU|FSM|STATE|out\(1) & ( (\CPU|FSM|STATE|out\(0) & \CPU|FSM|STATE|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|STATE|ALT_INV_out\(3),
	datae => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(1),
	combout => \CPU|FSM|always0~34_combout\);

-- Location: LABCELL_X63_Y10_N57
\CPU|FSM|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal1~0_combout\ = ( \CPU|FSM|Equal0~1_combout\ & ( !\CPU|instructionReg|out\(12) & ( (!\CPU|instructionReg|out\(13) & (\CPU|instructionReg|out[14]~DUPLICATE_q\ & \CPU|FSM|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(13),
	datab => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	datad => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	datae => \CPU|FSM|ALT_INV_Equal0~1_combout\,
	dataf => \CPU|instructionReg|ALT_INV_out\(12),
	combout => \CPU|FSM|Equal1~0_combout\);

-- Location: LABCELL_X67_Y12_N33
\CPU|FSM|always0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~35_combout\ = ( \CPU|FSM|always0~7_combout\ & ( (!\CPU|FSM|always0~9_combout\ & !\CPU|FSM|always0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~9_combout\,
	datad => \CPU|FSM|ALT_INV_always0~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~7_combout\,
	combout => \CPU|FSM|always0~35_combout\);

-- Location: LABCELL_X61_Y12_N30
\CPU|FSM|WideOr33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr33~0_combout\ = ( \CPU|FSM|always0~15_combout\ & ( \CPU|FSM|always0~35_combout\ & ( (!\CPU|FSM|always0~34_combout\ & (!\CPU|FSM|Equal1~0_combout\ & ((!\CPU|FSM|Equal4~1_combout\) # (\CPU|FSM|always0~33_combout\)))) ) ) ) # ( 
-- !\CPU|FSM|always0~15_combout\ & ( \CPU|FSM|always0~35_combout\ & ( (!\CPU|FSM|Equal4~1_combout\ & !\CPU|FSM|Equal1~0_combout\) ) ) ) # ( \CPU|FSM|always0~15_combout\ & ( !\CPU|FSM|always0~35_combout\ & ( !\CPU|FSM|Equal1~0_combout\ ) ) ) # ( 
-- !\CPU|FSM|always0~15_combout\ & ( !\CPU|FSM|always0~35_combout\ & ( !\CPU|FSM|Equal1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~34_combout\,
	datab => \CPU|FSM|ALT_INV_Equal4~1_combout\,
	datac => \CPU|FSM|ALT_INV_always0~33_combout\,
	datad => \CPU|FSM|ALT_INV_Equal1~0_combout\,
	datae => \CPU|FSM|ALT_INV_always0~15_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~35_combout\,
	combout => \CPU|FSM|WideOr33~0_combout\);

-- Location: LABCELL_X63_Y12_N33
\CPU|FSM|WideOr33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr33~1_combout\ = ( \CPU|FSM|WideOr33~0_combout\ & ( (!\CPU|FSM|Equal0~4_combout\) # ((!\CPU|FSM|Equal7~0_combout\) # ((!\CPU|FSM|always0~17_combout\) # (\CPU|instructionReg|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal0~4_combout\,
	datab => \CPU|FSM|ALT_INV_Equal7~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~17_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(12),
	dataf => \CPU|FSM|ALT_INV_WideOr33~0_combout\,
	combout => \CPU|FSM|WideOr33~1_combout\);

-- Location: LABCELL_X64_Y12_N39
\CPU|FSM|WideNor3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor3~0_combout\ = ( !\CPU|FSM|STATE|out\(5) & ( (\CPU|FSM|STATE|out\(0) & (!\CPU|FSM|STATE|out\(4) & !\CPU|FSM|STATE|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|STATE|ALT_INV_out\(4),
	datad => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(5),
	combout => \CPU|FSM|WideNor3~0_combout\);

-- Location: LABCELL_X61_Y12_N15
\CPU|FSM|always0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~36_combout\ = ( \CPU|FSM|WideNor3~0_combout\ & ( (\CPU|FSM|STATE|out\(3) & \CPU|FSM|STATE|out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(3),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	dataf => \CPU|FSM|ALT_INV_WideNor3~0_combout\,
	combout => \CPU|FSM|always0~36_combout\);

-- Location: LABCELL_X63_Y10_N24
\CPU|FSM|WideOr7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr7~2_combout\ = ( \CPU|FSM|Equal2~1_combout\ & ( \CPU|FSM|always0~7_combout\ & ( ((\CPU|instructionReg|out\(12) & !\CPU|FSM|always0~0_combout\)) # (\CPU|FSM|always0~36_combout\) ) ) ) # ( !\CPU|FSM|Equal2~1_combout\ & ( 
-- \CPU|FSM|always0~7_combout\ & ( \CPU|FSM|always0~36_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_always0~36_combout\,
	datac => \CPU|instructionReg|ALT_INV_out\(12),
	datad => \CPU|FSM|ALT_INV_always0~0_combout\,
	datae => \CPU|FSM|ALT_INV_Equal2~1_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~7_combout\,
	combout => \CPU|FSM|WideOr7~2_combout\);

-- Location: LABCELL_X64_Y12_N24
\CPU|FSM|WideOr7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr7~3_combout\ = ( \CPU|FSM|STATE|out\(0) & ( \CPU|FSM|STATE|out\(3) & ( \CPU|FSM|WideNor1~0_combout\ ) ) ) # ( \CPU|FSM|STATE|out\(0) & ( !\CPU|FSM|STATE|out\(3) & ( ((\CPU|FSM|WideNor3~0_combout\ & (\CPU|FSM|STATE|out\(1) & 
-- \CPU|FSM|always0~3_combout\))) # (\CPU|FSM|WideNor1~0_combout\) ) ) ) # ( !\CPU|FSM|STATE|out\(0) & ( !\CPU|FSM|STATE|out\(3) & ( (\CPU|FSM|WideNor3~0_combout\ & (\CPU|FSM|STATE|out\(1) & \CPU|FSM|always0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010101010101011100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor1~0_combout\,
	datab => \CPU|FSM|ALT_INV_WideNor3~0_combout\,
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|ALT_INV_always0~3_combout\,
	datae => \CPU|FSM|STATE|ALT_INV_out\(0),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(3),
	combout => \CPU|FSM|WideOr7~3_combout\);

-- Location: LABCELL_X64_Y12_N57
\CPU|FSM|WideOr7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr7~4_combout\ = ( !\CPU|FSM|WideOr7~3_combout\ & ( (!\CPU|FSM|STATE|out\(3)) # ((!\CPU|FSM|WideNor15~0_combout\) # ((!\CPU|FSM|always0~7_combout\) # (\CPU|FSM|always0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(3),
	datab => \CPU|FSM|ALT_INV_WideNor15~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~7_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr7~3_combout\,
	combout => \CPU|FSM|WideOr7~4_combout\);

-- Location: LABCELL_X63_Y10_N6
\CPU|FSM|WideOr7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr7~5_combout\ = ( \CPU|FSM|WideOr7~4_combout\ & ( \CPU|FSM|always0~14_combout\ & ( (!\CPU|FSM|WideOr7~2_combout\ & (((!\CPU|FSM|WideNor25~0_combout\ & !\CPU|FSM|Equal8~0_combout\)) # (\CPU|FSM|WideNor24~0_combout\))) ) ) ) # ( 
-- \CPU|FSM|WideOr7~4_combout\ & ( !\CPU|FSM|always0~14_combout\ & ( !\CPU|FSM|WideOr7~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datab => \CPU|FSM|ALT_INV_WideNor25~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideOr7~2_combout\,
	datad => \CPU|FSM|ALT_INV_Equal8~0_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr7~4_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~14_combout\,
	combout => \CPU|FSM|WideOr7~5_combout\);

-- Location: LABCELL_X63_Y12_N36
\CPU|FSM|WideOr33~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr33~6_combout\ = ( \CPU|FSM|WideOr7~5_combout\ & ( \CPU|FSM|WideOr7~1_combout\ & ( (\CPU|FSM|WideOr33~4_combout\ & (!\CPU|FSM|WideOr33~5_combout\ & (\CPU|FSM|WideOr33~1_combout\ & !\CPU|FSM|always0~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr33~4_combout\,
	datab => \CPU|FSM|ALT_INV_WideOr33~5_combout\,
	datac => \CPU|FSM|ALT_INV_WideOr33~1_combout\,
	datad => \CPU|FSM|ALT_INV_always0~27_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr7~5_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr7~1_combout\,
	combout => \CPU|FSM|WideOr33~6_combout\);

-- Location: LABCELL_X64_Y13_N9
\CPU|FSM|WideNor26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor26~0_combout\ = ( !\CPU|FSM|STATE|out\(4) & ( (!\CPU|FSM|STATE|out\(3) & (\CPU|FSM|STATE|out\(5) & !\CPU|FSM|STATE|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(3),
	datac => \CPU|FSM|STATE|ALT_INV_out\(5),
	datad => \CPU|FSM|STATE|ALT_INV_out\(1),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(4),
	combout => \CPU|FSM|WideNor26~0_combout\);

-- Location: MLABCELL_X65_Y10_N57
\CPU|FSM|always0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~23_combout\ = ( \CPU|FSM|always0~14_combout\ & ( (!\CPU|FSM|WideNor24~0_combout\ & \CPU|FSM|always0~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~22_combout\,
	datae => \CPU|FSM|ALT_INV_always0~14_combout\,
	combout => \CPU|FSM|always0~23_combout\);

-- Location: MLABCELL_X65_Y10_N24
\CPU|FSM|WideOr11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr11~2_combout\ = ( \CPU|FSM|always0~23_combout\ & ( \CPU|FSM|always0~26_combout\ & ( (!\CPU|FSM|STATE|out\(0) & (((\CPU|FSM|WideNor26~0_combout\) # (\CPU|FSM|WideNor1~0_combout\)) # (\CPU|FSM|STATE|out\(2)))) ) ) ) # ( 
-- !\CPU|FSM|always0~23_combout\ & ( \CPU|FSM|always0~26_combout\ & ( (!\CPU|FSM|STATE|out\(0) & ((\CPU|FSM|WideNor1~0_combout\) # (\CPU|FSM|STATE|out\(2)))) ) ) ) # ( \CPU|FSM|always0~23_combout\ & ( !\CPU|FSM|always0~26_combout\ & ( 
-- (!\CPU|FSM|STATE|out\(0) & (((!\CPU|FSM|STATE|out\(2) & \CPU|FSM|WideNor26~0_combout\)) # (\CPU|FSM|WideNor1~0_combout\))) ) ) ) # ( !\CPU|FSM|always0~23_combout\ & ( !\CPU|FSM|always0~26_combout\ & ( (!\CPU|FSM|STATE|out\(0) & 
-- \CPU|FSM|WideNor1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011001000110001001100010011000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(2),
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|ALT_INV_WideNor1~0_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor26~0_combout\,
	datae => \CPU|FSM|ALT_INV_always0~23_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~26_combout\,
	combout => \CPU|FSM|WideOr11~2_combout\);

-- Location: LABCELL_X63_Y12_N18
\CPU|FSM|WideOr33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr33~combout\ = ( \CPU|FSM|WideOr11~4_combout\ & ( !\CPU|FSM|WideOr11~2_combout\ & ( \CPU|FSM|WideOr33~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|ALT_INV_WideOr33~6_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr11~4_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr11~2_combout\,
	combout => \CPU|FSM|WideOr33~combout\);

-- Location: LABCELL_X71_Y12_N6
\CPU|DP|cRegister|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[15]~feeder_combout\ = ( \CPU|DP|CMP|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~37_sumout\,
	combout => \CPU|DP|cRegister|out[15]~feeder_combout\);

-- Location: IOIBUF_X66_Y0_N58
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: MLABCELL_X65_Y9_N33
\CPU|mem_addr[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[5]~6_combout\ = ( \CPU|DataAddress|out\(5) & ( \CPU|FSM|WideOr39~0_combout\ & ( (\CPU|FSM|WideOr11~0_combout\) # (\CPU|PCReg|out[5]~DUPLICATE_q\) ) ) ) # ( !\CPU|DataAddress|out\(5) & ( \CPU|FSM|WideOr39~0_combout\ & ( 
-- (\CPU|PCReg|out[5]~DUPLICATE_q\ & !\CPU|FSM|WideOr11~0_combout\) ) ) ) # ( \CPU|DataAddress|out\(5) & ( !\CPU|FSM|WideOr39~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out[5]~DUPLICATE_q\,
	datac => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datae => \CPU|DataAddress|ALT_INV_out\(5),
	dataf => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \CPU|mem_addr[5]~6_combout\);

-- Location: MLABCELL_X65_Y9_N36
\CPU|mem_addr[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[6]~0_combout\ = ( \CPU|DataAddress|out\(6) & ( \CPU|FSM|WideOr39~0_combout\ & ( (\CPU|FSM|WideOr11~0_combout\) # (\CPU|PCReg|out\(6)) ) ) ) # ( !\CPU|DataAddress|out\(6) & ( \CPU|FSM|WideOr39~0_combout\ & ( (\CPU|PCReg|out\(6) & 
-- !\CPU|FSM|WideOr11~0_combout\) ) ) ) # ( \CPU|DataAddress|out\(6) & ( !\CPU|FSM|WideOr39~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PCReg|ALT_INV_out\(6),
	datad => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datae => \CPU|DataAddress|ALT_INV_out\(6),
	dataf => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \CPU|mem_addr[6]~0_combout\);

-- Location: LABCELL_X62_Y12_N48
\CPU|branchcalc|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add1~1_sumout\ = SUM(( \CPU|PCReg|out\(6) ) + ( GND ) + ( \CPU|branchcalc|Add1~6\ ))
-- \CPU|branchcalc|Add1~2\ = CARRY(( \CPU|PCReg|out\(6) ) + ( GND ) + ( \CPU|branchcalc|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(6),
	cin => \CPU|branchcalc|Add1~6\,
	sumout => \CPU|branchcalc|Add1~1_sumout\,
	cout => \CPU|branchcalc|Add1~2\);

-- Location: LABCELL_X62_Y12_N51
\CPU|branchcalc|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add1~9_sumout\ = SUM(( \CPU|PCReg|out\(7) ) + ( GND ) + ( \CPU|branchcalc|Add1~2\ ))
-- \CPU|branchcalc|Add1~10\ = CARRY(( \CPU|PCReg|out\(7) ) + ( GND ) + ( \CPU|branchcalc|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(7),
	cin => \CPU|branchcalc|Add1~2\,
	sumout => \CPU|branchcalc|Add1~9_sumout\,
	cout => \CPU|branchcalc|Add1~10\);

-- Location: IOIBUF_X60_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X67_Y11_N15
\CPU|FSM|WideOr28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr28~combout\ = ( \CPU|DP|muxintoregister|Mux0~0_combout\ & ( !\CPU|FSM|WideNor3~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|ALT_INV_WideNor3~combout\,
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|FSM|WideOr28~combout\);

-- Location: LABCELL_X67_Y11_N18
\CPU|DP|muxintoregister|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux11~0_combout\ = ( \CPU|FSM|WideOr30~combout\ & ( \x[4]~5_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & (\CPU|instructionReg|out\(4))) # (\CPU|FSM|WideOr28~combout\ & ((\CPU|DP|cRegister|out\(4)))) ) ) ) # ( 
-- !\CPU|FSM|WideOr30~combout\ & ( \x[4]~5_combout\ & ( (!\CPU|FSM|WideOr28~combout\) # (\CPU|PCReg|out\(4)) ) ) ) # ( \CPU|FSM|WideOr30~combout\ & ( !\x[4]~5_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & (\CPU|instructionReg|out\(4))) # 
-- (\CPU|FSM|WideOr28~combout\ & ((\CPU|DP|cRegister|out\(4)))) ) ) ) # ( !\CPU|FSM|WideOr30~combout\ & ( !\x[4]~5_combout\ & ( (\CPU|PCReg|out\(4) & \CPU|FSM|WideOr28~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(4),
	datab => \CPU|instructionReg|ALT_INV_out\(4),
	datac => \CPU|DP|cRegister|ALT_INV_out\(4),
	datad => \CPU|FSM|ALT_INV_WideOr28~combout\,
	datae => \CPU|FSM|ALT_INV_WideOr30~combout\,
	dataf => \ALT_INV_x[4]~5_combout\,
	combout => \CPU|DP|muxintoregister|Mux11~0_combout\);

-- Location: LABCELL_X64_Y10_N24
\CPU|FSM|WideOr32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr32~0_combout\ = ( \CPU|FSM|WideOr33~3_combout\ & ( \CPU|FSM|always0~26_combout\ & ( (!\CPU|FSM|STATE|out\(0) & !\CPU|FSM|always0~27_combout\) ) ) ) # ( \CPU|FSM|WideOr33~3_combout\ & ( !\CPU|FSM|always0~26_combout\ & ( 
-- !\CPU|FSM|always0~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|STATE|ALT_INV_out\(0),
	datad => \CPU|FSM|ALT_INV_always0~27_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr33~3_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~26_combout\,
	combout => \CPU|FSM|WideOr32~0_combout\);

-- Location: IOIBUF_X64_Y0_N52
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X67_Y11_N42
\CPU|DP|muxintoregister|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux8~0_combout\ = ( \CPU|FSM|WideOr30~combout\ & ( \x[7]~15_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & (\CPU|instructionReg|out\(7))) # (\CPU|FSM|WideOr28~combout\ & ((\CPU|DP|cRegister|out\(7)))) ) ) ) # ( 
-- !\CPU|FSM|WideOr30~combout\ & ( \x[7]~15_combout\ & ( (!\CPU|FSM|WideOr28~combout\) # (\CPU|PCReg|out\(7)) ) ) ) # ( \CPU|FSM|WideOr30~combout\ & ( !\x[7]~15_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & (\CPU|instructionReg|out\(7))) # 
-- (\CPU|FSM|WideOr28~combout\ & ((\CPU|DP|cRegister|out\(7)))) ) ) ) # ( !\CPU|FSM|WideOr30~combout\ & ( !\x[7]~15_combout\ & ( (\CPU|PCReg|out\(7) & \CPU|FSM|WideOr28~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(7),
	datab => \CPU|PCReg|ALT_INV_out\(7),
	datac => \CPU|DP|cRegister|ALT_INV_out\(7),
	datad => \CPU|FSM|ALT_INV_WideOr28~combout\,
	datae => \CPU|FSM|ALT_INV_WideOr30~combout\,
	dataf => \ALT_INV_x[7]~15_combout\,
	combout => \CPU|DP|muxintoregister|Mux8~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X64_Y11_N33
\CPU|DP|muxintoregister|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux0~1_combout\ = ( \CPU|FSM|always0~27_combout\ & ( (\CPU|DP|muxintoregister|Mux0~0_combout\ & !\CPU|FSM|WideNor3~combout\) ) ) # ( !\CPU|FSM|always0~27_combout\ & ( (\CPU|DP|muxintoregister|Mux0~0_combout\ & 
-- \CPU|FSM|WideNor3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor3~combout\,
	dataf => \CPU|FSM|ALT_INV_always0~27_combout\,
	combout => \CPU|DP|muxintoregister|Mux0~1_combout\);

-- Location: MLABCELL_X65_Y11_N30
e1 : cyclonev_lcell_comb
-- Equation(s):
-- \e1~combout\ = ( \e1~1_combout\ & ( (\e1~2_combout\ & (\e1~4_combout\ & (\e1~0_combout\ & \e1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~2_combout\,
	datab => \ALT_INV_e1~4_combout\,
	datac => \ALT_INV_e1~0_combout\,
	datad => \ALT_INV_e1~3_combout\,
	dataf => \ALT_INV_e1~1_combout\,
	combout => \e1~combout\);

-- Location: LABCELL_X64_Y11_N21
\CPU|DP|muxintoregister|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux5~0_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( \CPU|DP|cRegister|out\(10) & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & (((!\e1~combout\)) # (\CPU|FSM|WideOr30~combout\))) # 
-- (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|FSM|WideOr30~combout\ & (\CPU|instructionReg|out\(7)))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( \CPU|DP|cRegister|out\(10) & ( (\CPU|FSM|WideOr30~combout\ & 
-- ((!\CPU|DP|muxintoregister|Mux0~1_combout\) # (\CPU|instructionReg|out\(7)))) ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( !\CPU|DP|cRegister|out\(10) & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & (!\CPU|FSM|WideOr30~combout\ & 
-- ((!\e1~combout\)))) # (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|FSM|WideOr30~combout\ & (\CPU|instructionReg|out\(7)))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( !\CPU|DP|cRegister|out\(10) & ( 
-- (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|FSM|WideOr30~combout\ & \CPU|instructionReg|out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001100010010000000100100011001000111010101100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|muxintoregister|ALT_INV_Mux0~1_combout\,
	datab => \CPU|FSM|ALT_INV_WideOr30~combout\,
	datac => \CPU|instructionReg|ALT_INV_out\(7),
	datad => \ALT_INV_e1~combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \CPU|DP|cRegister|ALT_INV_out\(10),
	combout => \CPU|DP|muxintoregister|Mux5~0_combout\);

-- Location: FF_X64_Y10_N55
\CPU|DP|REGFILE|toR7|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(10));

-- Location: LABCELL_X66_Y10_N36
\CPU|DP|REGFILE|load0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load0~0_combout\ = ( \CPU|FSM|STATE|out\(0) & ( !\CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|FSM|WideOr33~3_combout\) # ((\CPU|FSM|always0~27_combout\) # (\CPU|FSM|always0~26_combout\)) ) ) ) # ( !\CPU|FSM|STATE|out\(0) & ( 
-- !\CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|FSM|WideOr33~3_combout\) # (\CPU|FSM|always0~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_WideOr33~3_combout\,
	datac => \CPU|FSM|ALT_INV_always0~26_combout\,
	datad => \CPU|FSM|ALT_INV_always0~27_combout\,
	datae => \CPU|FSM|STATE|ALT_INV_out\(0),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|load0~0_combout\);

-- Location: LABCELL_X66_Y10_N18
\CPU|DP|REGFILE|load1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load1~0_combout\ = ( \CPU|muxintoregister|Mux2~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & \CPU|DP|REGFILE|load0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|ALT_INV_load0~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|load1~0_combout\);

-- Location: FF_X64_Y11_N35
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

-- Location: LABCELL_X67_Y13_N54
\CPU|DP|REGFILE|chooser|Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~2_combout\ = ( !\CPU|muxintoregister|Mux0~0_combout\ & ( \CPU|muxintoregister|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~2_combout\);

-- Location: LABCELL_X67_Y13_N51
\CPU|DP|REGFILE|chooser|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~1_combout\ = ( !\CPU|muxintoregister|Mux0~0_combout\ & ( !\CPU|muxintoregister|Mux2~0_combout\ $ (!\CPU|muxintoregister|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~1_combout\);

-- Location: LABCELL_X66_Y10_N21
\CPU|DP|REGFILE|load0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load0~1_combout\ = ( !\CPU|muxintoregister|Mux2~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & \CPU|DP|REGFILE|load0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|ALT_INV_load0~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|load0~1_combout\);

-- Location: FF_X62_Y11_N14
\CPU|DP|REGFILE|toR0|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(10));

-- Location: LABCELL_X66_Y10_N30
\CPU|DP|REGFILE|load2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load2~0_combout\ = ( \CPU|muxintoregister|Mux1~0_combout\ & ( !\CPU|muxintoregister|Mux2~0_combout\ & ( \CPU|DP|REGFILE|load0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|REGFILE|ALT_INV_load0~0_combout\,
	datae => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|load2~0_combout\);

-- Location: FF_X62_Y11_N2
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

-- Location: LABCELL_X66_Y10_N9
\CPU|DP|REGFILE|load3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load3~0_combout\ = ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux1~0_combout\ & \CPU|DP|REGFILE|load0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|ALT_INV_load0~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|load3~0_combout\);

-- Location: FF_X62_Y11_N35
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

-- Location: LABCELL_X62_Y11_N0
\CPU|DP|REGFILE|chooser|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector5~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(10) & ( \CPU|DP|REGFILE|toR3|out\(10) & ( ((!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(10)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & 
-- (\CPU|DP|REGFILE|toR1|out\(10)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(10) & ( \CPU|DP|REGFILE|toR3|out\(10) & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & 
-- ((!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(10)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(10))))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & 
-- (((!\CPU|DP|REGFILE|chooser|Selector10~1_combout\)))) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(10) & ( !\CPU|DP|REGFILE|toR3|out\(10) & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & 
-- ((\CPU|DP|REGFILE|toR0|out\(10)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(10))))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (((\CPU|DP|REGFILE|chooser|Selector10~1_combout\)))) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR2|out\(10) & ( !\CPU|DP|REGFILE|toR3|out\(10) & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(10)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ 
-- & (\CPU|DP|REGFILE|toR1|out\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \CPU|DP|REGFILE|toR0|ALT_INV_out\(10),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(10),
	dataf => \CPU|DP|REGFILE|toR3|ALT_INV_out\(10),
	combout => \CPU|DP|REGFILE|chooser|Selector5~0_combout\);

-- Location: FF_X64_Y11_N23
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

-- Location: LABCELL_X63_Y11_N9
\CPU|DP|REGFILE|load6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load6~0_combout\ = ( \CPU|muxintoregister|Mux0~0_combout\ & ( (\CPU|muxintoregister|Mux1~0_combout\ & (!\CPU|muxintoregister|Mux2~0_combout\ & !\CPU|FSM|WideOr32~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datab => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideOr32~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|load6~0_combout\);

-- Location: FF_X63_Y11_N8
\CPU|DP|REGFILE|toR6|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(10));

-- Location: LABCELL_X67_Y10_N45
\CPU|DP|REGFILE|load4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load4~0_combout\ = ( !\CPU|FSM|WideOr32~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|muxintoregister|Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr32~0_combout\,
	combout => \CPU|DP|REGFILE|load4~0_combout\);

-- Location: FF_X63_Y11_N44
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

-- Location: LABCELL_X63_Y11_N42
\CPU|DP|REGFILE|chooser|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector5~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(10) & ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|DP|REGFILE|toR6|out\(10) & (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR4|out\(10) & ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|DP|REGFILE|toR6|out\(10) & (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\)) ) ) ) # ( \CPU|DP|REGFILE|toR4|out\(10) & ( 
-- !\CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux2~0_combout\) # (\CPU|DP|REGFILE|toR5|out\(10)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(10) & ( !\CPU|muxintoregister|Mux1~0_combout\ & ( 
-- (\CPU|DP|REGFILE|toR5|out\(10) & (\CPU|muxintoregister|Mux0~0_combout\ & \CPU|muxintoregister|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000011110000010100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR5|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(10),
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(10),
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector5~1_combout\);

-- Location: LABCELL_X68_Y11_N33
\CPU|DP|REGFILE|chooser|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector5~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector5~1_combout\ ) # ( !\CPU|DP|REGFILE|chooser|Selector5~1_combout\ & ( (!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & 
-- \CPU|DP|REGFILE|chooser|Selector5~0_combout\)))) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector5~0_combout\,
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector5~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector5~2_combout\);

-- Location: LABCELL_X67_Y12_N24
\CPU|FSM|always0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~41_combout\ = ( \CPU|FSM|always0~7_combout\ & ( (\CPU|FSM|WideNor15~0_combout\ & (\CPU|FSM|STATE|out\(3) & !\CPU|FSM|always0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor15~0_combout\,
	datab => \CPU|FSM|STATE|ALT_INV_out\(3),
	datac => \CPU|FSM|ALT_INV_always0~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~7_combout\,
	combout => \CPU|FSM|always0~41_combout\);

-- Location: LABCELL_X67_Y12_N3
\CPU|FSM|always0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~29_combout\ = ( !\CPU|FSM|Equal4~1_combout\ & ( \CPU|FSM|always0~7_combout\ & ( (!\CPU|FSM|always0~0_combout\ & (\CPU|FSM|WideNor18~combout\ & (!\CPU|FSM|always0~8_combout\ & !\CPU|FSM|always0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~0_combout\,
	datab => \CPU|FSM|ALT_INV_WideNor18~combout\,
	datac => \CPU|FSM|ALT_INV_always0~8_combout\,
	datad => \CPU|FSM|ALT_INV_always0~9_combout\,
	datae => \CPU|FSM|ALT_INV_Equal4~1_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~7_combout\,
	combout => \CPU|FSM|always0~29_combout\);

-- Location: LABCELL_X67_Y12_N9
\CPU|FSM|WideOr20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr20~0_combout\ = ( \CPU|FSM|WideNor12~1_combout\ & ( (!\CPU|FSM|always0~29_combout\ & ((\CPU|FSM|STATE|out\(3)) # (\CPU|FSM|STATE|out\(2)))) ) ) # ( !\CPU|FSM|WideNor12~1_combout\ & ( !\CPU|FSM|always0~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(2),
	datac => \CPU|FSM|STATE|ALT_INV_out\(3),
	datad => \CPU|FSM|ALT_INV_always0~29_combout\,
	dataf => \CPU|FSM|ALT_INV_WideNor12~1_combout\,
	combout => \CPU|FSM|WideOr20~0_combout\);

-- Location: LABCELL_X64_Y12_N21
\CPU|FSM|always0~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~44_combout\ = ( \CPU|FSM|always0~7_combout\ & ( \CPU|FSM|always0~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FSM|ALT_INV_always0~36_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~7_combout\,
	combout => \CPU|FSM|always0~44_combout\);

-- Location: LABCELL_X67_Y12_N54
\CPU|FSM|WideOr20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr20~combout\ = ( \CPU|FSM|always0~43_combout\ ) # ( !\CPU|FSM|always0~43_combout\ & ( ((!\CPU|FSM|WideOr20~0_combout\) # ((\CPU|FSM|always0~44_combout\) # (\CPU|FSM|always0~39_combout\))) # (\CPU|FSM|always0~41_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~41_combout\,
	datab => \CPU|FSM|ALT_INV_WideOr20~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~39_combout\,
	datad => \CPU|FSM|ALT_INV_always0~44_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~43_combout\,
	combout => \CPU|FSM|WideOr20~combout\);

-- Location: FF_X68_Y11_N13
\CPU|DP|bRegister|out[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector5~2_combout\,
	sload => VCC,
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out[10]~DUPLICATE_q\);

-- Location: FF_X68_Y11_N35
\CPU|DP|aRegister|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector5~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(10));

-- Location: LABCELL_X70_Y11_N0
\CPU|DP|Ain[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[10]~13_combout\ = ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|DP|aRegister|out\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|aRegister|ALT_INV_out\(10),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[10]~13_combout\);

-- Location: FF_X68_Y11_N59
\CPU|DP|aRegister|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector4~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(11));

-- Location: LABCELL_X70_Y11_N21
\CPU|DP|Ain[11]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[11]~14_combout\ = ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|DP|aRegister|out\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|aRegister|ALT_INV_out\(11),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[11]~14_combout\);

-- Location: FF_X68_Y11_N23
\CPU|DP|aRegister|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector3~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(12));

-- Location: LABCELL_X70_Y11_N3
\CPU|DP|Ain[12]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[12]~15_combout\ = ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|DP|aRegister|out\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|aRegister|ALT_INV_out\(12),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[12]~15_combout\);

-- Location: FF_X68_Y11_N52
\CPU|DP|bRegister|out[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector2~2_combout\,
	sload => VCC,
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out[13]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y11_N27
\CPU|DP|Bin[13]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[13]~17_combout\ = ( \CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(14) ) ) # ( !\CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|bRegister|ALT_INV_out\(12),
	datac => \CPU|DP|bRegister|ALT_INV_out\(14),
	datae => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[13]~17_combout\);

-- Location: FF_X68_Y11_N47
\CPU|DP|aRegister|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector2~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(13));

-- Location: LABCELL_X70_Y11_N18
\CPU|DP|Ain[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[13]~9_combout\ = ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|DP|aRegister|out\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DP|aRegister|ALT_INV_out\(13),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[13]~9_combout\);

-- Location: FF_X67_Y11_N26
\CPU|DP|aRegister|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector6~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(9));

-- Location: LABCELL_X70_Y11_N6
\CPU|DP|Ain[9]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[9]~12_combout\ = ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|DP|aRegister|out\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|aRegister|ALT_INV_out\(9),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[9]~12_combout\);

-- Location: LABCELL_X62_Y12_N54
\CPU|branchcalc|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add1~21_sumout\ = SUM(( \CPU|PCReg|out\(8) ) + ( GND ) + ( \CPU|branchcalc|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(8),
	cin => \CPU|branchcalc|Add1~10\,
	sumout => \CPU|branchcalc|Add1~21_sumout\);

-- Location: LABCELL_X62_Y12_N21
\CPU|branchcalc|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add0~9_sumout\ = SUM(( \CPU|PCReg|out\(7) ) + ( \CPU|instructionReg|out\(7) ) + ( \CPU|branchcalc|Add0~2\ ))
-- \CPU|branchcalc|Add0~10\ = CARRY(( \CPU|PCReg|out\(7) ) + ( \CPU|instructionReg|out\(7) ) + ( \CPU|branchcalc|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(7),
	datab => \CPU|PCReg|ALT_INV_out\(7),
	cin => \CPU|branchcalc|Add0~2\,
	sumout => \CPU|branchcalc|Add0~9_sumout\,
	cout => \CPU|branchcalc|Add0~10\);

-- Location: LABCELL_X62_Y12_N24
\CPU|branchcalc|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add0~21_sumout\ = SUM(( \CPU|PCReg|out\(8) ) + ( \CPU|instructionReg|out\(7) ) + ( \CPU|branchcalc|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(8),
	datac => \CPU|instructionReg|ALT_INV_out\(7),
	cin => \CPU|branchcalc|Add0~10\,
	sumout => \CPU|branchcalc|Add0~21_sumout\);

-- Location: LABCELL_X63_Y12_N6
\CPU|intoPC[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|intoPC[8]~5_combout\ = ( \CPU|branchcalc|Add0~21_sumout\ & ( ((\CPU|FSM|Equal9~0_combout\ & (!\CPU|PCReg|out[7]~1_combout\ & \CPU|PCReg|out[7]~0_combout\))) # (\CPU|branchcalc|Add1~21_sumout\) ) ) # ( !\CPU|branchcalc|Add0~21_sumout\ & ( 
-- (\CPU|branchcalc|Add1~21_sumout\ & ((!\CPU|FSM|Equal9~0_combout\) # ((!\CPU|PCReg|out[7]~0_combout\) # (\CPU|PCReg|out[7]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~1_combout\,
	datac => \CPU|branchcalc|ALT_INV_Add1~21_sumout\,
	datad => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	dataf => \CPU|branchcalc|ALT_INV_Add0~21_sumout\,
	combout => \CPU|intoPC[8]~5_combout\);

-- Location: FF_X63_Y12_N7
\CPU|PCReg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[8]~5_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(8));

-- Location: LABCELL_X67_Y11_N6
\CPU|DP|muxintoregister|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux7~0_combout\ = ( \CPU|FSM|WideOr30~combout\ & ( \x[8]~8_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & ((\CPU|instructionReg|out\(7)))) # (\CPU|FSM|WideOr28~combout\ & (\CPU|DP|cRegister|out\(8))) ) ) ) # ( 
-- !\CPU|FSM|WideOr30~combout\ & ( \x[8]~8_combout\ & ( (!\CPU|FSM|WideOr28~combout\) # (\CPU|PCReg|out\(8)) ) ) ) # ( \CPU|FSM|WideOr30~combout\ & ( !\x[8]~8_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & ((\CPU|instructionReg|out\(7)))) # 
-- (\CPU|FSM|WideOr28~combout\ & (\CPU|DP|cRegister|out\(8))) ) ) ) # ( !\CPU|FSM|WideOr30~combout\ & ( !\x[8]~8_combout\ & ( (\CPU|PCReg|out\(8) & \CPU|FSM|WideOr28~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(8),
	datab => \CPU|DP|cRegister|ALT_INV_out\(8),
	datac => \CPU|instructionReg|ALT_INV_out\(7),
	datad => \CPU|FSM|ALT_INV_WideOr28~combout\,
	datae => \CPU|FSM|ALT_INV_WideOr30~combout\,
	dataf => \ALT_INV_x[8]~8_combout\,
	combout => \CPU|DP|muxintoregister|Mux7~0_combout\);

-- Location: FF_X66_Y10_N32
\CPU|DP|REGFILE|toR2|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux7~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(8));

-- Location: LABCELL_X68_Y10_N15
\CPU|DP|REGFILE|toR1|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[8]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[8]~feeder_combout\);

-- Location: FF_X68_Y10_N17
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

-- Location: LABCELL_X66_Y9_N27
\CPU|DP|REGFILE|toR0|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[8]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[8]~feeder_combout\);

-- Location: FF_X66_Y9_N28
\CPU|DP|REGFILE|toR0|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[8]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(8));

-- Location: LABCELL_X66_Y9_N6
\CPU|DP|REGFILE|toR3|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[8]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[8]~feeder_combout\);

-- Location: FF_X66_Y9_N7
\CPU|DP|REGFILE|toR3|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[8]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(8));

-- Location: LABCELL_X68_Y10_N21
\CPU|DP|REGFILE|chooser|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector7~0_combout\ = ( \CPU|DP|REGFILE|toR3|out\(8) & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\) # (\CPU|DP|REGFILE|toR2|out\(8)) ) ) ) # ( !\CPU|DP|REGFILE|toR3|out\(8) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|toR2|out\(8) & \CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR3|out\(8) & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(8)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(8))) ) ) ) # ( !\CPU|DP|REGFILE|toR3|out\(8) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(8)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR2|ALT_INV_out\(8),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(8),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \CPU|DP|REGFILE|toR0|ALT_INV_out\(8),
	datae => \CPU|DP|REGFILE|toR3|ALT_INV_out\(8),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector7~0_combout\);

-- Location: LABCELL_X63_Y11_N54
\CPU|DP|REGFILE|toR7|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR7|out[8]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\,
	combout => \CPU|DP|REGFILE|toR7|out[8]~feeder_combout\);

-- Location: FF_X63_Y11_N56
\CPU|DP|REGFILE|toR7|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR7|out[8]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(8));

-- Location: FF_X67_Y10_N55
\CPU|DP|REGFILE|toR4|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux7~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(8));

-- Location: FF_X67_Y11_N8
\CPU|DP|REGFILE|toR5|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux7~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(8));

-- Location: LABCELL_X63_Y11_N30
\CPU|DP|REGFILE|toR6|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR6|out[8]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux7~0_combout\,
	combout => \CPU|DP|REGFILE|toR6|out[8]~feeder_combout\);

-- Location: FF_X63_Y11_N31
\CPU|DP|REGFILE|toR6|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR6|out[8]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(8));

-- Location: LABCELL_X68_Y10_N24
\CPU|DP|REGFILE|chooser|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector7~1_combout\ = ( \CPU|muxintoregister|Mux2~0_combout\ & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (\CPU|DP|REGFILE|toR5|out\(8) & !\CPU|muxintoregister|Mux1~0_combout\) ) ) ) # ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(8))) # (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000011110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR4|ALT_INV_out\(8),
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(8),
	datac => \CPU|DP|REGFILE|toR6|ALT_INV_out\(8),
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector7~1_combout\);

-- Location: LABCELL_X68_Y10_N6
\CPU|DP|REGFILE|chooser|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector7~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector7~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(8)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector7~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(8)) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( 
-- !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector7~1_combout\ ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( 
-- (\CPU|DP|REGFILE|chooser|Selector7~1_combout\) # (\CPU|DP|REGFILE|chooser|Selector7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000011110000111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~0_combout\,
	datab => \CPU|DP|REGFILE|toR7|ALT_INV_out\(8),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~1_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector7~2_combout\);

-- Location: LABCELL_X68_Y10_N39
\CPU|DP|bRegister|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|bRegister|out[8]~feeder_combout\ = ( \CPU|DP|REGFILE|chooser|Selector7~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector7~2_combout\,
	combout => \CPU|DP|bRegister|out[8]~feeder_combout\);

-- Location: FF_X68_Y10_N40
\CPU|DP|bRegister|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|bRegister|out[8]~feeder_combout\,
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(8));

-- Location: MLABCELL_X72_Y11_N3
\CPU|DP|Bin[9]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[9]~13_combout\ = ( \CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out[10]~DUPLICATE_q\ ) ) # ( !\CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out[10]~DUPLICATE_q\ & ( \CPU|DP|bRegister|out\(8) ) ) ) # ( !\CPU|instructionReg|out\(4) & ( 
-- !\CPU|DP|bRegister|out[10]~DUPLICATE_q\ & ( \CPU|DP|bRegister|out\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(8),
	datae => \CPU|instructionReg|ALT_INV_out\(4),
	dataf => \CPU|DP|bRegister|ALT_INV_out[10]~DUPLICATE_q\,
	combout => \CPU|DP|Bin[9]~13_combout\);

-- Location: FF_X67_Y10_N52
\CPU|DP|aRegister|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector7~2_combout\,
	sload => VCC,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(8));

-- Location: LABCELL_X71_Y12_N0
\CPU|DP|Ain[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[8]~11_combout\ = ( \CPU|DP|aRegister|out\(8) & ( !\CPU|FSM|WideOr25~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|DP|aRegister|ALT_INV_out\(8),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[8]~11_combout\);

-- Location: FF_X68_Y11_N5
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out[9]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y11_N6
\CPU|DP|Bin[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[8]~12_combout\ = ( \CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out[9]~DUPLICATE_q\ ) ) # ( !\CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\,
	datad => \CPU|DP|bRegister|ALT_INV_out\(7),
	dataf => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[8]~12_combout\);

-- Location: FF_X67_Y12_N14
\CPU|DP|aRegister|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector8~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(7));

-- Location: LABCELL_X67_Y12_N27
\CPU|DP|Ain[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[7]~1_combout\ = ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|DP|aRegister|out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DP|aRegister|ALT_INV_out\(7),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[7]~1_combout\);

-- Location: LABCELL_X68_Y13_N24
\CPU|DP|Bin[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[7]~10_combout\ = ( \CPU|DP|bRegister|out\(6) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(8)) ) ) # ( !\CPU|DP|bRegister|out\(6) & ( (\CPU|DP|bRegister|out\(8) & \CPU|instructionReg|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|bRegister|ALT_INV_out\(8),
	datad => \CPU|instructionReg|ALT_INV_out\(4),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(6),
	combout => \CPU|DP|Bin[7]~10_combout\);

-- Location: MLABCELL_X65_Y11_N36
\CPU|DP|muxintoregister|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux10~0_combout\ = ( \CPU|FSM|WideOr30~combout\ & ( \x[5]~10_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & (\CPU|instructionReg|out\(5))) # (\CPU|FSM|WideOr28~combout\ & ((\CPU|DP|cRegister|out\(5)))) ) ) ) # ( 
-- !\CPU|FSM|WideOr30~combout\ & ( \x[5]~10_combout\ & ( (!\CPU|FSM|WideOr28~combout\) # (\CPU|PCReg|out[5]~DUPLICATE_q\) ) ) ) # ( \CPU|FSM|WideOr30~combout\ & ( !\x[5]~10_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & (\CPU|instructionReg|out\(5))) # 
-- (\CPU|FSM|WideOr28~combout\ & ((\CPU|DP|cRegister|out\(5)))) ) ) ) # ( !\CPU|FSM|WideOr30~combout\ & ( !\x[5]~10_combout\ & ( (\CPU|PCReg|out[5]~DUPLICATE_q\ & \CPU|FSM|WideOr28~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out[5]~DUPLICATE_q\,
	datab => \CPU|instructionReg|ALT_INV_out\(5),
	datac => \CPU|DP|cRegister|ALT_INV_out\(5),
	datad => \CPU|FSM|ALT_INV_WideOr28~combout\,
	datae => \CPU|FSM|ALT_INV_WideOr30~combout\,
	dataf => \ALT_INV_x[5]~10_combout\,
	combout => \CPU|DP|muxintoregister|Mux10~0_combout\);

-- Location: LABCELL_X63_Y11_N48
\CPU|DP|REGFILE|toR6|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR6|out[5]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux10~0_combout\,
	combout => \CPU|DP|REGFILE|toR6|out[5]~feeder_combout\);

-- Location: FF_X63_Y11_N49
\CPU|DP|REGFILE|toR6|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR6|out[5]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(5));

-- Location: FF_X65_Y11_N38
\CPU|DP|REGFILE|toR5|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux10~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(5));

-- Location: FF_X68_Y12_N32
\CPU|DP|REGFILE|toR4|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(5));

-- Location: LABCELL_X68_Y12_N30
\CPU|DP|REGFILE|chooser|Selector10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~4_combout\ = ( \CPU|DP|REGFILE|toR4|out\(5) & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|muxintoregister|Mux0~0_combout\ & \CPU|DP|REGFILE|toR5|out\(5))) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR4|out\(5) & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|muxintoregister|Mux0~0_combout\ & \CPU|DP|REGFILE|toR5|out\(5))) ) ) ) # ( \CPU|DP|REGFILE|toR4|out\(5) & ( 
-- !\CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux1~0_combout\) # (\CPU|DP|REGFILE|toR6|out\(5)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(5) & ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(5) & \CPU|muxintoregister|Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000010110000101100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(5),
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|DP|REGFILE|toR5|ALT_INV_out\(5),
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(5),
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~4_combout\);

-- Location: FF_X64_Y10_N41
\CPU|DP|REGFILE|toR7|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(5));

-- Location: LABCELL_X64_Y11_N54
\CPU|DP|REGFILE|toR1|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[5]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux10~0_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[5]~feeder_combout\);

-- Location: FF_X64_Y11_N56
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

-- Location: FF_X65_Y12_N59
\CPU|DP|REGFILE|toR0|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(5));

-- Location: FF_X66_Y10_N46
\CPU|DP|REGFILE|toR2|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux10~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(5));

-- Location: LABCELL_X66_Y9_N12
\CPU|DP|REGFILE|toR3|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[5]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux10~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[5]~feeder_combout\);

-- Location: FF_X66_Y9_N13
\CPU|DP|REGFILE|toR3|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[5]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(5));

-- Location: LABCELL_X67_Y13_N6
\CPU|DP|REGFILE|chooser|Selector10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~3_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR2|out\(5) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR1|out\(5) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR3|out\(5) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR0|out\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(5),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(5),
	datac => \CPU|DP|REGFILE|toR2|ALT_INV_out\(5),
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(5),
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~3_combout\);

-- Location: LABCELL_X67_Y12_N39
\CPU|DP|REGFILE|chooser|Selector10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~5_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(5) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector10~4_combout\) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((\CPU|DP|REGFILE|chooser|Selector10~3_combout\))) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(5)))) # 
-- (\CPU|DP|REGFILE|chooser|Selector10~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111110111010101111111011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~4_combout\,
	datab => \CPU|DP|REGFILE|toR7|ALT_INV_out\(5),
	datac => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~3_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~5_combout\);

-- Location: FF_X67_Y12_N50
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(5));

-- Location: LABCELL_X67_Y12_N51
\CPU|DP|Bin[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[6]~8_combout\ = ( \CPU|DP|bRegister|out\(5) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(7)) ) ) # ( !\CPU|DP|bRegister|out\(5) & ( (\CPU|instructionReg|out\(4) & \CPU|DP|bRegister|out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(7),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(5),
	combout => \CPU|DP|Bin[6]~8_combout\);

-- Location: FF_X67_Y12_N41
\CPU|DP|aRegister|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector10~5_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(5));

-- Location: LABCELL_X67_Y12_N57
\CPU|DP|Ain[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[5]~6_combout\ = ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|DP|aRegister|out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|aRegister|ALT_INV_out\(5),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[5]~6_combout\);

-- Location: LABCELL_X67_Y12_N15
\rtl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = ( \CPU|DP|bRegister|out\(5) & ( (!\CPU|instructionReg|out\(3)) # (\CPU|DP|bRegister|out\(4)) ) ) # ( !\CPU|DP|bRegister|out\(5) & ( (\CPU|instructionReg|out\(3) & \CPU|DP|bRegister|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(3),
	datad => \CPU|DP|bRegister|ALT_INV_out\(4),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(5),
	combout => \rtl~8_combout\);

-- Location: FF_X68_Y13_N29
\CPU|DP|aRegister|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector11~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(4));

-- Location: LABCELL_X70_Y13_N9
\CPU|DP|Ain[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[4]~5_combout\ = ( \CPU|DP|aRegister|out\(4) & ( !\CPU|FSM|WideOr25~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|DP|aRegister|ALT_INV_out\(4),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[4]~5_combout\);

-- Location: LABCELL_X67_Y11_N54
\CPU|DP|muxintoregister|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux12~0_combout\ = ( \CPU|FSM|WideOr30~combout\ & ( \x[3]~6_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & ((\CPU|instructionReg|out\(3)))) # (\CPU|FSM|WideOr28~combout\ & (\CPU|DP|cRegister|out\(3))) ) ) ) # ( 
-- !\CPU|FSM|WideOr30~combout\ & ( \x[3]~6_combout\ & ( (!\CPU|FSM|WideOr28~combout\) # (\CPU|PCReg|out[3]~DUPLICATE_q\) ) ) ) # ( \CPU|FSM|WideOr30~combout\ & ( !\x[3]~6_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & ((\CPU|instructionReg|out\(3)))) # 
-- (\CPU|FSM|WideOr28~combout\ & (\CPU|DP|cRegister|out\(3))) ) ) ) # ( !\CPU|FSM|WideOr30~combout\ & ( !\x[3]~6_combout\ & ( (\CPU|FSM|WideOr28~combout\ & \CPU|PCReg|out[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|cRegister|ALT_INV_out\(3),
	datab => \CPU|FSM|ALT_INV_WideOr28~combout\,
	datac => \CPU|instructionReg|ALT_INV_out\(3),
	datad => \CPU|PCReg|ALT_INV_out[3]~DUPLICATE_q\,
	datae => \CPU|FSM|ALT_INV_WideOr30~combout\,
	dataf => \ALT_INV_x[3]~6_combout\,
	combout => \CPU|DP|muxintoregister|Mux12~0_combout\);

-- Location: LABCELL_X64_Y10_N9
\CPU|DP|REGFILE|toR7|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR7|out[3]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \CPU|DP|REGFILE|toR7|out[3]~feeder_combout\);

-- Location: FF_X64_Y10_N10
\CPU|DP|REGFILE|toR7|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR7|out[3]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(3));

-- Location: LABCELL_X61_Y11_N51
\CPU|DP|REGFILE|toR6|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR6|out[3]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \CPU|DP|REGFILE|toR6|out[3]~feeder_combout\);

-- Location: FF_X61_Y11_N52
\CPU|DP|REGFILE|toR6|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR6|out[3]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(3));

-- Location: FF_X67_Y11_N56
\CPU|DP|REGFILE|toR5|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux12~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(3));

-- Location: FF_X67_Y13_N2
\CPU|DP|REGFILE|toR4|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux12~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(3));

-- Location: LABCELL_X67_Y13_N0
\CPU|DP|REGFILE|chooser|Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector12~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(3) & ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|DP|REGFILE|toR6|out\(3) & (!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|muxintoregister|Mux0~0_combout\)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR4|out\(3) & ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|DP|REGFILE|toR6|out\(3) & (!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|muxintoregister|Mux0~0_combout\)) ) ) ) # ( \CPU|DP|REGFILE|toR4|out\(3) & ( 
-- !\CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux2~0_combout\) # (\CPU|DP|REGFILE|toR5|out\(3)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(3) & ( !\CPU|muxintoregister|Mux1~0_combout\ & ( 
-- (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(3) & \CPU|muxintoregister|Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000001100111100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR6|ALT_INV_out\(3),
	datab => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datac => \CPU|DP|REGFILE|toR5|ALT_INV_out\(3),
	datad => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(3),
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector12~1_combout\);

-- Location: FF_X64_Y11_N59
\CPU|DP|REGFILE|toR1|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux12~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(3));

-- Location: LABCELL_X66_Y9_N51
\CPU|DP|REGFILE|toR3|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[3]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[3]~feeder_combout\);

-- Location: FF_X66_Y9_N52
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

-- Location: LABCELL_X66_Y9_N33
\CPU|DP|REGFILE|toR0|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[3]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[3]~feeder_combout\);

-- Location: FF_X66_Y9_N34
\CPU|DP|REGFILE|toR0|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[3]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(3));

-- Location: FF_X66_Y10_N50
\CPU|DP|REGFILE|toR2|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux12~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(3));

-- Location: LABCELL_X66_Y10_N48
\CPU|DP|REGFILE|chooser|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector12~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(3) & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) # (\CPU|DP|REGFILE|toR3|out\(3)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(3) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|toR3|out\(3) & !\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(3) & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(3)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(3))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(3) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(3)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(3),
	datab => \CPU|DP|REGFILE|toR3|ALT_INV_out\(3),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \CPU|DP|REGFILE|toR0|ALT_INV_out\(3),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(3),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector12~0_combout\);

-- Location: LABCELL_X66_Y10_N27
\CPU|DP|REGFILE|chooser|Selector12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector12~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector12~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(3) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|chooser|Selector12~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector12~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) # 
-- (\CPU|DP|REGFILE|chooser|Selector12~1_combout\)) # (\CPU|DP|REGFILE|toR7|out\(3)) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector12~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(3) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector12~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector12~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(3) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector12~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111111111111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(3),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector12~1_combout\,
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector12~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector12~2_combout\);

-- Location: FF_X66_Y10_N8
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(3));

-- Location: LABCELL_X66_Y10_N6
\CPU|DP|Bin[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[4]~6_combout\ = ( \CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(5) ) ) # ( !\CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|bRegister|ALT_INV_out\(5),
	datad => \CPU|DP|bRegister|ALT_INV_out\(3),
	dataf => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[4]~6_combout\);

-- Location: FF_X66_Y10_N29
\CPU|DP|aRegister|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector12~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(3));

-- Location: LABCELL_X68_Y12_N27
\CPU|DP|Ain[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[3]~4_combout\ = ( \CPU|DP|aRegister|out\(3) & ( !\CPU|FSM|WideOr25~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|DP|aRegister|ALT_INV_out\(3),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[3]~4_combout\);

-- Location: LABCELL_X68_Y13_N48
\CPU|DP|Bin[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[3]~4_combout\ = ( \CPU|DP|bRegister|out\(2) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(4)) ) ) # ( !\CPU|DP|bRegister|out\(2) & ( (\CPU|instructionReg|out\(4) & \CPU|DP|bRegister|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(4),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(2),
	combout => \CPU|DP|Bin[3]~4_combout\);

-- Location: FF_X67_Y10_N23
\CPU|DP|aRegister|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector13~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(2));

-- Location: LABCELL_X67_Y10_N39
\CPU|DP|Ain[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[2]~3_combout\ = ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|DP|aRegister|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|aRegister|ALT_INV_out\(2),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[2]~3_combout\);

-- Location: LABCELL_X67_Y10_N42
\CPU|DP|Bin[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[2]~2_combout\ = (!\CPU|instructionReg|out\(4) & ((\CPU|DP|bRegister|out\(1)))) # (\CPU|instructionReg|out\(4) & (\CPU|DP|bRegister|out\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|bRegister|ALT_INV_out\(3),
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(1),
	combout => \CPU|DP|Bin[2]~2_combout\);

-- Location: MLABCELL_X65_Y11_N6
\CPU|DP|muxintoregister|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux15~0_combout\ = ( \CPU|FSM|WideOr30~combout\ & ( \x[0]~11_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & ((\CPU|instructionReg|out\(0)))) # (\CPU|FSM|WideOr28~combout\ & (\CPU|DP|cRegister|out\(0))) ) ) ) # ( 
-- !\CPU|FSM|WideOr30~combout\ & ( \x[0]~11_combout\ & ( (!\CPU|FSM|WideOr28~combout\) # (\CPU|PCReg|out\(0)) ) ) ) # ( \CPU|FSM|WideOr30~combout\ & ( !\x[0]~11_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & ((\CPU|instructionReg|out\(0)))) # 
-- (\CPU|FSM|WideOr28~combout\ & (\CPU|DP|cRegister|out\(0))) ) ) ) # ( !\CPU|FSM|WideOr30~combout\ & ( !\x[0]~11_combout\ & ( (\CPU|PCReg|out\(0) & \CPU|FSM|WideOr28~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(0),
	datab => \CPU|DP|cRegister|ALT_INV_out\(0),
	datac => \CPU|instructionReg|ALT_INV_out\(0),
	datad => \CPU|FSM|ALT_INV_WideOr28~combout\,
	datae => \CPU|FSM|ALT_INV_WideOr30~combout\,
	dataf => \ALT_INV_x[0]~11_combout\,
	combout => \CPU|DP|muxintoregister|Mux15~0_combout\);

-- Location: FF_X65_Y11_N7
\CPU|DP|REGFILE|toR5|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux15~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(0));

-- Location: FF_X63_Y11_N10
\CPU|DP|REGFILE|toR6|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(0));

-- Location: FF_X68_Y13_N32
\CPU|DP|REGFILE|toR4|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(0));

-- Location: LABCELL_X68_Y13_N30
\CPU|DP|REGFILE|chooser|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector15~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(0) & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(0) & !\CPU|muxintoregister|Mux1~0_combout\)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR4|out\(0) & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(0) & !\CPU|muxintoregister|Mux1~0_combout\)) ) ) ) # ( \CPU|DP|REGFILE|toR4|out\(0) & ( 
-- !\CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux1~0_combout\) # (\CPU|DP|REGFILE|toR6|out\(0)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(0) & ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- (\CPU|muxintoregister|Mux0~0_combout\ & (\CPU|muxintoregister|Mux1~0_combout\ & \CPU|DP|REGFILE|toR6|out\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010100000101010100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(0),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(0),
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(0),
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector15~1_combout\);

-- Location: FF_X64_Y10_N5
\CPU|DP|REGFILE|toR7|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(0));

-- Location: LABCELL_X64_Y9_N15
\CPU|DP|REGFILE|toR0|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[0]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux15~0_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[0]~feeder_combout\);

-- Location: FF_X64_Y9_N16
\CPU|DP|REGFILE|toR0|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(0));

-- Location: FF_X64_Y11_N26
\CPU|DP|REGFILE|toR1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(0));

-- Location: LABCELL_X66_Y9_N15
\CPU|DP|REGFILE|toR3|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[0]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux15~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[0]~feeder_combout\);

-- Location: FF_X66_Y9_N17
\CPU|DP|REGFILE|toR3|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(0));

-- Location: FF_X66_Y9_N44
\CPU|DP|REGFILE|toR2|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(0));

-- Location: LABCELL_X66_Y9_N42
\CPU|DP|REGFILE|chooser|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector15~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(0) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) # (\CPU|DP|REGFILE|toR1|out\(0)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(0) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(0) & !\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(0) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(0))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(0)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(0) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(0))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR0|ALT_INV_out\(0),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(0),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(0),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(0),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector15~0_combout\);

-- Location: LABCELL_X67_Y13_N12
\CPU|DP|REGFILE|chooser|Selector15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector15~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector15~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\))) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(0)))) # (\CPU|DP|REGFILE|chooser|Selector15~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector15~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(0) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector15~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011111110101011101111111010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector15~1_combout\,
	datab => \CPU|DP|REGFILE|toR7|ALT_INV_out\(0),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector15~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector15~2_combout\);

-- Location: FF_X68_Y13_N41
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
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(0));

-- Location: LABCELL_X68_Y13_N39
\CPU|DP|Ain[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[0]~16_combout\ = ( !\CPU|FSM|WideOr25~0_combout\ & ( \CPU|DP|aRegister|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DP|aRegister|ALT_INV_out\(0),
	dataf => \CPU|FSM|ALT_INV_WideOr25~0_combout\,
	combout => \CPU|DP|Ain[0]~16_combout\);

-- Location: LABCELL_X70_Y12_N0
\CPU|DP|Ain[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[0]~0_combout\ = ( \CPU|DP|Ain[0]~16_combout\ & ( \CPU|FSM|always0~14_combout\ & ( (!\CPU|FSM|always0~21_combout\ & (!\CPU|FSM|always0~45_combout\ & ((!\CPU|FSM|WideNor24~0_combout\) # (\CPU|FSM|STATE|out\(0))))) ) ) ) # ( 
-- \CPU|DP|Ain[0]~16_combout\ & ( !\CPU|FSM|always0~14_combout\ & ( (!\CPU|FSM|always0~21_combout\ & !\CPU|FSM|always0~45_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(0),
	datab => \CPU|FSM|ALT_INV_always0~21_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~45_combout\,
	datae => \CPU|DP|ALT_INV_Ain[0]~16_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~14_combout\,
	combout => \CPU|DP|Ain[0]~0_combout\);

-- Location: FF_X67_Y13_N28
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(0));

-- Location: LABCELL_X64_Y12_N12
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( \CPU|DP|bRegister|out\(0) & ( !\CPU|instructionReg|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|instructionReg|ALT_INV_out\(3),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(0),
	combout => \rtl~0_combout\);

-- Location: LABCELL_X70_Y12_N30
\CPU|DP|CMP|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~34_cout\ = CARRY(( \CPU|instructionReg|out\(11) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(11),
	cin => GND,
	cout => \CPU|DP|CMP|Add0~34_cout\);

-- Location: LABCELL_X70_Y12_N33
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

-- Location: LABCELL_X70_Y12_N36
\CPU|DP|CMP|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~5_sumout\ = SUM(( \CPU|DP|Ain[1]~2_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(1))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[1]~1_combout\))))) ) + ( \CPU|DP|CMP|Add0~2\ ))
-- \CPU|DP|CMP|Add0~6\ = CARRY(( \CPU|DP|Ain[1]~2_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(1))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[1]~1_combout\))))) ) + ( \CPU|DP|CMP|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|bRegister|ALT_INV_out\(1),
	datad => \CPU|DP|ALT_INV_Ain[1]~2_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[1]~1_combout\,
	cin => \CPU|DP|CMP|Add0~2\,
	sumout => \CPU|DP|CMP|Add0~5_sumout\,
	cout => \CPU|DP|CMP|Add0~6\);

-- Location: LABCELL_X70_Y12_N39
\CPU|DP|CMP|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~9_sumout\ = SUM(( \CPU|DP|Ain[2]~3_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(2))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[2]~2_combout\))))) ) + ( \CPU|DP|CMP|Add0~6\ ))
-- \CPU|DP|CMP|Add0~10\ = CARRY(( \CPU|DP|Ain[2]~3_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(2))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[2]~2_combout\))))) ) + ( \CPU|DP|CMP|Add0~6\ ))

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
	datad => \CPU|DP|ALT_INV_Ain[2]~3_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[2]~2_combout\,
	cin => \CPU|DP|CMP|Add0~6\,
	sumout => \CPU|DP|CMP|Add0~9_sumout\,
	cout => \CPU|DP|CMP|Add0~10\);

-- Location: LABCELL_X70_Y12_N42
\CPU|DP|CMP|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~13_sumout\ = SUM(( \CPU|DP|Ain[3]~4_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(3))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[3]~4_combout\))))) ) + ( \CPU|DP|CMP|Add0~10\ 
-- ))
-- \CPU|DP|CMP|Add0~14\ = CARRY(( \CPU|DP|Ain[3]~4_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(3))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[3]~4_combout\))))) ) + ( \CPU|DP|CMP|Add0~10\ ))

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
	datad => \CPU|DP|ALT_INV_Ain[3]~4_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[3]~4_combout\,
	cin => \CPU|DP|CMP|Add0~10\,
	sumout => \CPU|DP|CMP|Add0~13_sumout\,
	cout => \CPU|DP|CMP|Add0~14\);

-- Location: LABCELL_X70_Y12_N45
\CPU|DP|CMP|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~17_sumout\ = SUM(( \CPU|DP|Ain[4]~5_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(4))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[4]~6_combout\))))) ) + ( \CPU|DP|CMP|Add0~14\ 
-- ))
-- \CPU|DP|CMP|Add0~18\ = CARRY(( \CPU|DP|Ain[4]~5_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(4))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[4]~6_combout\))))) ) + ( \CPU|DP|CMP|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|DP|bRegister|ALT_INV_out\(4),
	datad => \CPU|DP|ALT_INV_Ain[4]~5_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[4]~6_combout\,
	cin => \CPU|DP|CMP|Add0~14\,
	sumout => \CPU|DP|CMP|Add0~17_sumout\,
	cout => \CPU|DP|CMP|Add0~18\);

-- Location: LABCELL_X70_Y12_N48
\CPU|DP|CMP|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~21_sumout\ = SUM(( \CPU|DP|Ain[5]~6_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|instructionReg|out\(4) & ((!\rtl~8_combout\))) # (\CPU|instructionReg|out\(4) & (!\CPU|DP|bRegister|out\(6))))) ) + ( \CPU|DP|CMP|Add0~18\ ))
-- \CPU|DP|CMP|Add0~22\ = CARRY(( \CPU|DP|Ain[5]~6_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|instructionReg|out\(4) & ((!\rtl~8_combout\))) # (\CPU|instructionReg|out\(4) & (!\CPU|DP|bRegister|out\(6))))) ) + ( \CPU|DP|CMP|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010010011100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(6),
	datab => \CPU|instructionReg|ALT_INV_out\(11),
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|ALT_INV_Ain[5]~6_combout\,
	dataf => \ALT_INV_rtl~8_combout\,
	cin => \CPU|DP|CMP|Add0~18\,
	sumout => \CPU|DP|CMP|Add0~21_sumout\,
	cout => \CPU|DP|CMP|Add0~22\);

-- Location: LABCELL_X70_Y12_N51
\CPU|DP|CMP|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~25_sumout\ = SUM(( \CPU|DP|Ain[6]~7_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(6))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[6]~8_combout\))))) ) + ( \CPU|DP|CMP|Add0~22\ 
-- ))
-- \CPU|DP|CMP|Add0~26\ = CARRY(( \CPU|DP|Ain[6]~7_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(6))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[6]~8_combout\))))) ) + ( \CPU|DP|CMP|Add0~22\ ))

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
	datad => \CPU|DP|ALT_INV_Ain[6]~7_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[6]~8_combout\,
	cin => \CPU|DP|CMP|Add0~22\,
	sumout => \CPU|DP|CMP|Add0~25_sumout\,
	cout => \CPU|DP|CMP|Add0~26\);

-- Location: LABCELL_X70_Y12_N54
\CPU|DP|CMP|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~29_sumout\ = SUM(( \CPU|DP|Ain[7]~1_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(7))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[7]~10_combout\))))) ) + ( \CPU|DP|CMP|Add0~26\ 
-- ))
-- \CPU|DP|CMP|Add0~30\ = CARRY(( \CPU|DP|Ain[7]~1_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(7))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[7]~10_combout\))))) ) + ( \CPU|DP|CMP|Add0~26\ ))

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
	datad => \CPU|DP|ALT_INV_Ain[7]~1_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[7]~10_combout\,
	cin => \CPU|DP|CMP|Add0~26\,
	sumout => \CPU|DP|CMP|Add0~29_sumout\,
	cout => \CPU|DP|CMP|Add0~30\);

-- Location: LABCELL_X70_Y12_N57
\CPU|DP|CMP|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~49_sumout\ = SUM(( \CPU|DP|Ain[8]~11_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(8))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[8]~12_combout\))))) ) + ( \CPU|DP|CMP|Add0~30\ 
-- ))
-- \CPU|DP|CMP|Add0~50\ = CARRY(( \CPU|DP|Ain[8]~11_combout\ ) + ( !\CPU|instructionReg|out\(11) $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(8))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[8]~12_combout\))))) ) + ( \CPU|DP|CMP|Add0~30\ ))

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
	datad => \CPU|DP|ALT_INV_Ain[8]~11_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[8]~12_combout\,
	cin => \CPU|DP|CMP|Add0~30\,
	sumout => \CPU|DP|CMP|Add0~49_sumout\,
	cout => \CPU|DP|CMP|Add0~50\);

-- Location: LABCELL_X70_Y11_N30
\CPU|DP|CMP|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~53_sumout\ = SUM(( \CPU|DP|Ain[9]~12_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(9))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[9]~13_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~50\ ))
-- \CPU|DP|CMP|Add0~54\ = CARRY(( \CPU|DP|Ain[9]~12_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(9))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[9]~13_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(9),
	datad => \CPU|DP|ALT_INV_Ain[9]~12_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[9]~13_combout\,
	cin => \CPU|DP|CMP|Add0~50\,
	sumout => \CPU|DP|CMP|Add0~53_sumout\,
	cout => \CPU|DP|CMP|Add0~54\);

-- Location: LABCELL_X70_Y11_N33
\CPU|DP|CMP|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~57_sumout\ = SUM(( \CPU|DP|Ain[10]~13_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out[10]~DUPLICATE_q\)) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[10]~14_combout\))))) 
-- ) + ( \CPU|DP|CMP|Add0~54\ ))
-- \CPU|DP|CMP|Add0~58\ = CARRY(( \CPU|DP|Ain[10]~13_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out[10]~DUPLICATE_q\)) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[10]~14_combout\))))) ) + 
-- ( \CPU|DP|CMP|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|bRegister|ALT_INV_out[10]~DUPLICATE_q\,
	datad => \CPU|DP|ALT_INV_Ain[10]~13_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[10]~14_combout\,
	cin => \CPU|DP|CMP|Add0~54\,
	sumout => \CPU|DP|CMP|Add0~57_sumout\,
	cout => \CPU|DP|CMP|Add0~58\);

-- Location: LABCELL_X70_Y11_N36
\CPU|DP|CMP|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~61_sumout\ = SUM(( \CPU|DP|Ain[11]~14_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(11))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[11]~15_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~58\ ))
-- \CPU|DP|CMP|Add0~62\ = CARRY(( \CPU|DP|Ain[11]~14_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(11))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[11]~15_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(11),
	datad => \CPU|DP|ALT_INV_Ain[11]~14_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[11]~15_combout\,
	cin => \CPU|DP|CMP|Add0~58\,
	sumout => \CPU|DP|CMP|Add0~61_sumout\,
	cout => \CPU|DP|CMP|Add0~62\);

-- Location: LABCELL_X70_Y11_N39
\CPU|DP|CMP|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~65_sumout\ = SUM(( \CPU|DP|Ain[12]~15_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(12))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[12]~16_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~62\ ))
-- \CPU|DP|CMP|Add0~66\ = CARRY(( \CPU|DP|Ain[12]~15_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(12))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[12]~16_combout\))))) ) + ( 
-- \CPU|DP|CMP|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(12),
	datad => \CPU|DP|ALT_INV_Ain[12]~15_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[12]~16_combout\,
	cin => \CPU|DP|CMP|Add0~62\,
	sumout => \CPU|DP|CMP|Add0~65_sumout\,
	cout => \CPU|DP|CMP|Add0~66\);

-- Location: LABCELL_X70_Y11_N42
\CPU|DP|CMP|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~41_sumout\ = SUM(( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out[13]~DUPLICATE_q\)) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[13]~17_combout\))))) ) + ( \CPU|DP|Ain[13]~9_combout\ 
-- ) + ( \CPU|DP|CMP|Add0~66\ ))
-- \CPU|DP|CMP|Add0~42\ = CARRY(( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out[13]~DUPLICATE_q\)) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[13]~17_combout\))))) ) + ( \CPU|DP|Ain[13]~9_combout\ ) + ( 
-- \CPU|DP|CMP|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|bRegister|ALT_INV_out[13]~DUPLICATE_q\,
	datad => \CPU|DP|ALT_INV_Bin[13]~17_combout\,
	dataf => \CPU|DP|ALT_INV_Ain[13]~9_combout\,
	cin => \CPU|DP|CMP|Add0~66\,
	sumout => \CPU|DP|CMP|Add0~41_sumout\,
	cout => \CPU|DP|CMP|Add0~42\);

-- Location: LABCELL_X71_Y12_N24
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

-- Location: LABCELL_X71_Y11_N9
\CPU|DP|CMP|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux2~0_combout\ = ( \CPU|DP|aRegister|out\(13) & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|bRegister|out[13]~DUPLICATE_q\))) # (\CPU|DP|Bin[1]~0_combout\ & 
-- (!\CPU|DP|Bin[13]~17_combout\)))) ) ) ) # ( !\CPU|DP|aRegister|out\(13) & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|bRegister|out[13]~DUPLICATE_q\))) # (\CPU|DP|Bin[1]~0_combout\ 
-- & (!\CPU|DP|Bin[13]~17_combout\)))) ) ) ) # ( \CPU|DP|aRegister|out\(13) & ( !\CPU|FSM|WideOr25~combout\ & ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|bRegister|out[13]~DUPLICATE_q\))) # 
-- (\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|Bin[13]~17_combout\)))) ) ) ) # ( !\CPU|DP|aRegister|out\(13) & ( !\CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[1]~0_combout\ & 
-- ((!\CPU|DP|bRegister|out[13]~DUPLICATE_q\))) # (\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|Bin[13]~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000110111110010000000000111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|DP|ALT_INV_Bin[13]~17_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out[13]~DUPLICATE_q\,
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datae => \CPU|DP|aRegister|ALT_INV_out\(13),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux2~0_combout\);

-- Location: LABCELL_X68_Y12_N15
\CPU|FSM|always0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~32_combout\ = ( \CPU|FSM|always0~3_combout\ & ( !\CPU|FSM|always0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FSM|ALT_INV_always0~1_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~3_combout\,
	combout => \CPU|FSM|always0~32_combout\);

-- Location: LABCELL_X68_Y12_N39
\CPU|FSM|always0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~40_combout\ = ( \CPU|FSM|WideNor12~0_combout\ & ( \CPU|FSM|always0~32_combout\ & ( (!\CPU|FSM|always0~5_combout\ & (!\CPU|FSM|STATE|out\(1) & \CPU|FSM|WideNor15~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_always0~5_combout\,
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|ALT_INV_WideNor15~1_combout\,
	datae => \CPU|FSM|ALT_INV_WideNor12~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~32_combout\,
	combout => \CPU|FSM|always0~40_combout\);

-- Location: LABCELL_X68_Y12_N48
\CPU|FSM|next_reset_state[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[1]~10_combout\ = ( \CPU|FSM|always0~34_combout\ & ( !\CPU|FSM|always0~40_combout\ & ( (!\CPU|FSM|always0~35_combout\) # (!\CPU|FSM|always0~15_combout\) ) ) ) # ( !\CPU|FSM|always0~34_combout\ & ( !\CPU|FSM|always0~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_always0~35_combout\,
	datac => \CPU|FSM|ALT_INV_always0~15_combout\,
	datae => \CPU|FSM|ALT_INV_always0~34_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~40_combout\,
	combout => \CPU|FSM|next_reset_state[1]~10_combout\);

-- Location: LABCELL_X63_Y11_N15
\CPU|FSM|next_reset_state[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[1]~9_combout\ = ( !\CPU|FSM|always0~45_combout\ & ( \CPU|FSM|always0~14_combout\ & ( (!\CPU|FSM|WideNor24~0_combout\) # (\CPU|FSM|STATE|out\(0)) ) ) ) # ( !\CPU|FSM|always0~45_combout\ & ( !\CPU|FSM|always0~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011011101110111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(0),
	datab => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datae => \CPU|FSM|ALT_INV_always0~45_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~14_combout\,
	combout => \CPU|FSM|next_reset_state[1]~9_combout\);

-- Location: LABCELL_X71_Y12_N9
\CPU|FSM|WideOr22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr22~0_combout\ = ( \CPU|FSM|next_reset_state[1]~9_combout\ & ( (!\CPU|FSM|next_reset_state[1]~10_combout\) # ((\CPU|FSM|loads~combout\) # (\CPU|FSM|always0~21_combout\)) ) ) # ( !\CPU|FSM|next_reset_state[1]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_next_reset_state[1]~10_combout\,
	datac => \CPU|FSM|ALT_INV_always0~21_combout\,
	datad => \CPU|FSM|ALT_INV_loads~combout\,
	dataf => \CPU|FSM|ALT_INV_next_reset_state[1]~9_combout\,
	combout => \CPU|FSM|WideOr22~0_combout\);

-- Location: FF_X71_Y12_N26
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(13));

-- Location: MLABCELL_X72_Y11_N51
\CPU|DP|Bin[14]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[14]~18_combout\ = ( \CPU|DP|bRegister|out[13]~DUPLICATE_q\ & ( \CPU|DP|bRegister|out\(15) ) ) # ( !\CPU|DP|bRegister|out[13]~DUPLICATE_q\ & ( \CPU|DP|bRegister|out\(15) & ( \CPU|instructionReg|out\(4) ) ) ) # ( 
-- \CPU|DP|bRegister|out[13]~DUPLICATE_q\ & ( !\CPU|DP|bRegister|out\(15) & ( !\CPU|instructionReg|out\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datae => \CPU|DP|bRegister|ALT_INV_out[13]~DUPLICATE_q\,
	dataf => \CPU|DP|bRegister|ALT_INV_out\(15),
	combout => \CPU|DP|Bin[14]~18_combout\);

-- Location: FF_X67_Y10_N50
\CPU|DP|aRegister|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector1~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(14));

-- Location: LABCELL_X70_Y11_N9
\CPU|DP|Ain[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[14]~10_combout\ = ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|DP|aRegister|out\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|aRegister|ALT_INV_out\(14),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[14]~10_combout\);

-- Location: LABCELL_X70_Y11_N45
\CPU|DP|CMP|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~45_sumout\ = SUM(( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(14))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[14]~18_combout\))))) ) + ( \CPU|DP|Ain[14]~10_combout\ ) + ( 
-- \CPU|DP|CMP|Add0~42\ ))
-- \CPU|DP|CMP|Add0~46\ = CARRY(( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|bRegister|out\(14))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[14]~18_combout\))))) ) + ( \CPU|DP|Ain[14]~10_combout\ ) + ( 
-- \CPU|DP|CMP|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011100101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(14),
	datad => \CPU|DP|ALT_INV_Bin[14]~18_combout\,
	dataf => \CPU|DP|ALT_INV_Ain[14]~10_combout\,
	cin => \CPU|DP|CMP|Add0~42\,
	sumout => \CPU|DP|CMP|Add0~45_sumout\,
	cout => \CPU|DP|CMP|Add0~46\);

-- Location: LABCELL_X71_Y11_N33
\CPU|DP|cRegister|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[14]~feeder_combout\ = ( \CPU|DP|CMP|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~45_sumout\,
	combout => \CPU|DP|cRegister|out[14]~feeder_combout\);

-- Location: LABCELL_X71_Y11_N48
\CPU|DP|CMP|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux1~0_combout\ = ( \CPU|DP|Bin[14]~18_combout\ & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|DP|bRegister|out\(14) & !\CPU|DP|Bin[1]~0_combout\)) ) ) ) # ( !\CPU|DP|Bin[14]~18_combout\ & ( 
-- \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|bRegister|out\(14)) # (\CPU|DP|Bin[1]~0_combout\))) ) ) ) # ( \CPU|DP|Bin[14]~18_combout\ & ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ 
-- & (\CPU|DP|aRegister|out\(14) & ((\CPU|DP|Bin[1]~0_combout\) # (\CPU|DP|bRegister|out\(14))))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|DP|bRegister|out\(14) & (!\CPU|DP|Bin[1]~0_combout\))) ) ) ) # ( !\CPU|DP|Bin[14]~18_combout\ & ( 
-- !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|bRegister|out\(14) & (!\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|aRegister|out\(14)))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|bRegister|out\(14)) # 
-- ((\CPU|DP|Bin[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101100101010000000110101001000101010001010100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|bRegister|ALT_INV_out\(14),
	datac => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(14),
	datae => \CPU|DP|ALT_INV_Bin[14]~18_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux1~0_combout\);

-- Location: FF_X71_Y11_N34
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out[14]~DUPLICATE_q\);

-- Location: M10K_X69_Y9_N0
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
	init_file => "db/lab8_top.ram0_RAM_15119.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:MEM|altsyncram:mem_rtl_0|altsyncram_75r1:auto_generated|ALTSYNCRAM",
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

-- Location: LABCELL_X64_Y11_N18
\CPU|DP|muxintoregister|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux2~0_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( \CPU|DP|cRegister|out\(13) & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & (((!\e1~combout\)) # (\CPU|FSM|WideOr30~combout\))) # 
-- (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|FSM|WideOr30~combout\ & ((\CPU|instructionReg|out\(7))))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( \CPU|DP|cRegister|out\(13) & ( (\CPU|FSM|WideOr30~combout\ & 
-- ((!\CPU|DP|muxintoregister|Mux0~1_combout\) # (\CPU|instructionReg|out\(7)))) ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( !\CPU|DP|cRegister|out\(13) & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & (!\CPU|FSM|WideOr30~combout\ & 
-- (!\e1~combout\))) # (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|FSM|WideOr30~combout\ & ((\CPU|instructionReg|out\(7))))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( !\CPU|DP|cRegister|out\(13) & ( 
-- (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|FSM|WideOr30~combout\ & \CPU|instructionReg|out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001100000001001000100100010001100111010001010110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|muxintoregister|ALT_INV_Mux0~1_combout\,
	datab => \CPU|FSM|ALT_INV_WideOr30~combout\,
	datac => \ALT_INV_e1~combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(7),
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	dataf => \CPU|DP|cRegister|ALT_INV_out\(13),
	combout => \CPU|DP|muxintoregister|Mux2~0_combout\);

-- Location: FF_X64_Y10_N1
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

-- Location: LABCELL_X63_Y11_N39
\CPU|DP|REGFILE|toR6|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR6|out[13]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|toR6|out[13]~feeder_combout\);

-- Location: FF_X63_Y11_N40
\CPU|DP|REGFILE|toR6|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR6|out[13]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(13));

-- Location: FF_X64_Y11_N19
\CPU|DP|REGFILE|toR5|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux2~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(13));

-- Location: LABCELL_X63_Y11_N18
\CPU|DP|REGFILE|toR4|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR4|out[13]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|toR4|out[13]~feeder_combout\);

-- Location: FF_X63_Y11_N19
\CPU|DP|REGFILE|toR4|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR4|out[13]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(13));

-- Location: LABCELL_X64_Y11_N27
\CPU|DP|REGFILE|chooser|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector2~1_combout\ = ( \CPU|muxintoregister|Mux1~0_combout\ & ( \CPU|DP|REGFILE|toR4|out\(13) & ( (\CPU|DP|REGFILE|toR6|out\(13) & (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\)) ) ) ) # ( 
-- !\CPU|muxintoregister|Mux1~0_combout\ & ( \CPU|DP|REGFILE|toR4|out\(13) & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux2~0_combout\) # (\CPU|DP|REGFILE|toR5|out\(13)))) ) ) ) # ( \CPU|muxintoregister|Mux1~0_combout\ & ( 
-- !\CPU|DP|REGFILE|toR4|out\(13) & ( (\CPU|DP|REGFILE|toR6|out\(13) & (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\)) ) ) ) # ( !\CPU|muxintoregister|Mux1~0_combout\ & ( !\CPU|DP|REGFILE|toR4|out\(13) & ( 
-- (\CPU|DP|REGFILE|toR5|out\(13) & (\CPU|muxintoregister|Mux0~0_combout\ & \CPU|muxintoregister|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000001010000000000001111000000110000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR6|ALT_INV_out\(13),
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(13),
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|DP|REGFILE|toR4|ALT_INV_out\(13),
	combout => \CPU|DP|REGFILE|chooser|Selector2~1_combout\);

-- Location: LABCELL_X64_Y11_N30
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

-- Location: FF_X64_Y11_N31
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

-- Location: LABCELL_X62_Y11_N42
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

-- Location: FF_X62_Y11_N43
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

-- Location: LABCELL_X63_Y10_N12
\CPU|DP|REGFILE|toR0|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[13]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[13]~feeder_combout\);

-- Location: FF_X63_Y10_N13
\CPU|DP|REGFILE|toR0|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[13]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(13));

-- Location: FF_X64_Y11_N41
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

-- Location: LABCELL_X68_Y11_N48
\CPU|DP|REGFILE|chooser|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector2~0_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR2|out\(13) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR3|out\(13) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR1|out\(13) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR0|out\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(13),
	datab => \CPU|DP|REGFILE|toR3|ALT_INV_out\(13),
	datac => \CPU|DP|REGFILE|toR0|ALT_INV_out\(13),
	datad => \CPU|DP|REGFILE|toR2|ALT_INV_out\(13),
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector2~0_combout\);

-- Location: LABCELL_X68_Y11_N45
\CPU|DP|REGFILE|chooser|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector2~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector2~1_combout\ & ( \CPU|DP|REGFILE|chooser|Selector2~0_combout\ ) ) # ( !\CPU|DP|REGFILE|chooser|Selector2~1_combout\ & ( \CPU|DP|REGFILE|chooser|Selector2~0_combout\ & ( 
-- (!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\)) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((\CPU|DP|REGFILE|toR7|out\(13)))) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector2~1_combout\ & ( 
-- !\CPU|DP|REGFILE|chooser|Selector2~0_combout\ ) ) # ( !\CPU|DP|REGFILE|chooser|Selector2~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector2~0_combout\ & ( (\CPU|DP|REGFILE|toR7|out\(13) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111111001100000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \CPU|DP|REGFILE|toR7|ALT_INV_out\(13),
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector2~1_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector2~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector2~2_combout\);

-- Location: FF_X68_Y11_N53
\CPU|DP|bRegister|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|chooser|Selector2~2_combout\,
	sload => VCC,
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(13));

-- Location: LABCELL_X68_Y11_N9
\CPU|DP|Bin[12]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[12]~16_combout\ = ( \CPU|DP|bRegister|out\(13) & ( (\CPU|DP|bRegister|out\(11)) # (\CPU|instructionReg|out\(4)) ) ) # ( !\CPU|DP|bRegister|out\(13) & ( (!\CPU|instructionReg|out\(4) & \CPU|DP|bRegister|out\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(11),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(13),
	combout => \CPU|DP|Bin[12]~16_combout\);

-- Location: LABCELL_X71_Y12_N45
\CPU|DP|cRegister|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[12]~feeder_combout\ = ( \CPU|DP|CMP|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~65_sumout\,
	combout => \CPU|DP|cRegister|out[12]~feeder_combout\);

-- Location: MLABCELL_X72_Y11_N45
\CPU|DP|CMP|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux3~0_combout\ = ( \CPU|DP|bRegister|out\(12) & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|DP|Bin[12]~16_combout\ & \CPU|DP|Bin[1]~0_combout\)) ) ) ) # ( !\CPU|DP|bRegister|out\(12) & ( 
-- \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[12]~16_combout\) # (!\CPU|DP|Bin[1]~0_combout\))) ) ) ) # ( \CPU|DP|bRegister|out\(12) & ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ 
-- & (\CPU|DP|aRegister|out\(12) & ((!\CPU|DP|Bin[1]~0_combout\) # (\CPU|DP|Bin[12]~16_combout\)))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (((!\CPU|DP|Bin[12]~16_combout\ & \CPU|DP|Bin[1]~0_combout\)))) ) ) ) # ( !\CPU|DP|bRegister|out\(12) & ( 
-- !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|aRegister|out\(12) & (\CPU|DP|Bin[12]~16_combout\ & \CPU|DP|Bin[1]~0_combout\))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (((!\CPU|DP|Bin[12]~16_combout\) # 
-- (!\CPU|DP|Bin[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110100010001000011010000110011001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|aRegister|ALT_INV_out\(12),
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|ALT_INV_Bin[12]~16_combout\,
	datad => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datae => \CPU|DP|bRegister|ALT_INV_out\(12),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux3~0_combout\);

-- Location: FF_X71_Y12_N47
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(12));

-- Location: LABCELL_X64_Y11_N48
\CPU|DP|muxintoregister|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux3~0_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( \CPU|DP|cRegister|out\(12) & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & (((!\e1~combout\) # (\CPU|FSM|WideOr30~combout\)))) # 
-- (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|instructionReg|out\(7) & ((\CPU|FSM|WideOr30~combout\)))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( \CPU|DP|cRegister|out\(12) & ( (\CPU|FSM|WideOr30~combout\ & 
-- ((!\CPU|DP|muxintoregister|Mux0~1_combout\) # (\CPU|instructionReg|out\(7)))) ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( !\CPU|DP|cRegister|out\(12) & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & (((!\e1~combout\ & 
-- !\CPU|FSM|WideOr30~combout\)))) # (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|instructionReg|out\(7) & ((\CPU|FSM|WideOr30~combout\)))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( !\CPU|DP|cRegister|out\(12) & ( 
-- (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|instructionReg|out\(7) & \CPU|FSM|WideOr30~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001101000000001000100000000101110111010000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|muxintoregister|ALT_INV_Mux0~1_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(7),
	datac => \ALT_INV_e1~combout\,
	datad => \CPU|FSM|ALT_INV_WideOr30~combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	dataf => \CPU|DP|cRegister|ALT_INV_out\(12),
	combout => \CPU|DP|muxintoregister|Mux3~0_combout\);

-- Location: LABCELL_X64_Y10_N18
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

-- Location: FF_X64_Y10_N19
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

-- Location: LABCELL_X62_Y11_N6
\CPU|DP|REGFILE|toR0|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[12]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux3~0_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[12]~feeder_combout\);

-- Location: FF_X62_Y11_N8
\CPU|DP|REGFILE|toR0|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[12]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(12));

-- Location: LABCELL_X62_Y11_N51
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

-- Location: FF_X62_Y11_N52
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

-- Location: FF_X64_Y11_N44
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

-- Location: LABCELL_X64_Y11_N15
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

-- Location: FF_X64_Y11_N16
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

-- Location: LABCELL_X64_Y11_N42
\CPU|DP|REGFILE|chooser|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector3~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(12) & ( \CPU|DP|REGFILE|toR1|out\(12) & ( ((!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(12))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & 
-- ((\CPU|DP|REGFILE|toR3|out\(12))))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(12) & ( \CPU|DP|REGFILE|toR1|out\(12) & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & 
-- (((\CPU|DP|REGFILE|chooser|Selector10~1_combout\)) # (\CPU|DP|REGFILE|toR0|out\(12)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (((\CPU|DP|REGFILE|toR3|out\(12) & !\CPU|DP|REGFILE|chooser|Selector10~1_combout\)))) ) ) ) # ( 
-- \CPU|DP|REGFILE|toR2|out\(12) & ( !\CPU|DP|REGFILE|toR1|out\(12) & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(12) & ((!\CPU|DP|REGFILE|chooser|Selector10~1_combout\)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & 
-- (((\CPU|DP|REGFILE|chooser|Selector10~1_combout\) # (\CPU|DP|REGFILE|toR3|out\(12))))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(12) & ( !\CPU|DP|REGFILE|toR1|out\(12) & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & 
-- ((!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(12))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR0|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|toR3|ALT_INV_out\(12),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(12),
	dataf => \CPU|DP|REGFILE|toR1|ALT_INV_out\(12),
	combout => \CPU|DP|REGFILE|chooser|Selector3~0_combout\);

-- Location: FF_X63_Y11_N38
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

-- Location: FF_X64_Y11_N49
\CPU|DP|REGFILE|toR5|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux3~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(12));

-- Location: FF_X63_Y11_N2
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

-- Location: LABCELL_X63_Y11_N0
\CPU|DP|REGFILE|chooser|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector3~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(12) & ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|DP|REGFILE|toR6|out\(12) & (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR4|out\(12) & ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|DP|REGFILE|toR6|out\(12) & (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\)) ) ) ) # ( \CPU|DP|REGFILE|toR4|out\(12) & ( 
-- !\CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux2~0_combout\) # (\CPU|DP|REGFILE|toR5|out\(12)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(12) & ( !\CPU|muxintoregister|Mux1~0_combout\ & ( 
-- (\CPU|DP|REGFILE|toR5|out\(12) & (\CPU|muxintoregister|Mux0~0_combout\ & \CPU|muxintoregister|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000001100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR6|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(12),
	datac => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(12),
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector3~1_combout\);

-- Location: LABCELL_X68_Y11_N21
\CPU|DP|REGFILE|chooser|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector3~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector3~1_combout\ ) # ( !\CPU|DP|REGFILE|chooser|Selector3~1_combout\ & ( (!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & 
-- \CPU|DP|REGFILE|chooser|Selector3~0_combout\)))) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector3~0_combout\,
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector3~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector3~2_combout\);

-- Location: FF_X68_Y11_N40
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(12));

-- Location: FF_X68_Y11_N14
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(10));

-- Location: LABCELL_X68_Y11_N18
\CPU|DP|Bin[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[11]~15_combout\ = ( \CPU|DP|bRegister|out\(10) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(12)) ) ) # ( !\CPU|DP|bRegister|out\(10) & ( (\CPU|instructionReg|out\(4) & \CPU|DP|bRegister|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(12),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(10),
	combout => \CPU|DP|Bin[11]~15_combout\);

-- Location: LABCELL_X71_Y12_N18
\CPU|DP|cRegister|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[11]~feeder_combout\ = ( \CPU|DP|CMP|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~61_sumout\,
	combout => \CPU|DP|cRegister|out[11]~feeder_combout\);

-- Location: LABCELL_X68_Y11_N36
\CPU|DP|CMP|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux4~0_combout\ = ( \CPU|DP|bRegister|out\(11) & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|Bin[1]~0_combout\ & !\CPU|DP|Bin[11]~15_combout\)) ) ) ) # ( !\CPU|DP|bRegister|out\(11) & ( 
-- \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[1]~0_combout\) # (!\CPU|DP|Bin[11]~15_combout\))) ) ) ) # ( \CPU|DP|bRegister|out\(11) & ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ 
-- & (\CPU|DP|aRegister|out\(11) & ((!\CPU|DP|Bin[1]~0_combout\) # (\CPU|DP|Bin[11]~15_combout\)))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|Bin[1]~0_combout\ & (!\CPU|DP|Bin[11]~15_combout\))) ) ) ) # ( !\CPU|DP|bRegister|out\(11) & ( 
-- !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|Bin[1]~0_combout\ & (\CPU|DP|Bin[11]~15_combout\ & \CPU|DP|aRegister|out\(11)))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[1]~0_combout\) # 
-- ((!\CPU|DP|Bin[11]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010110000100001001101001010100010101000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|ALT_INV_Bin[11]~15_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(11),
	datae => \CPU|DP|bRegister|ALT_INV_out\(11),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux4~0_combout\);

-- Location: FF_X71_Y12_N20
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(11));

-- Location: LABCELL_X64_Y11_N51
\CPU|DP|muxintoregister|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux4~0_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( \CPU|DP|cRegister|out\(11) & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & (((!\e1~combout\) # (\CPU|FSM|WideOr30~combout\)))) # 
-- (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|instructionReg|out\(7) & (\CPU|FSM|WideOr30~combout\))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( \CPU|DP|cRegister|out\(11) & ( (\CPU|FSM|WideOr30~combout\ & 
-- ((!\CPU|DP|muxintoregister|Mux0~1_combout\) # (\CPU|instructionReg|out\(7)))) ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( !\CPU|DP|cRegister|out\(11) & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & (((!\CPU|FSM|WideOr30~combout\ & 
-- !\e1~combout\)))) # (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|instructionReg|out\(7) & (\CPU|FSM|WideOr30~combout\))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( !\CPU|DP|cRegister|out\(11) & ( 
-- (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|instructionReg|out\(7) & \CPU|FSM|WideOr30~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001101000010000000100001011000010111010101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|muxintoregister|ALT_INV_Mux0~1_combout\,
	datab => \CPU|instructionReg|ALT_INV_out\(7),
	datac => \CPU|FSM|ALT_INV_WideOr30~combout\,
	datad => \ALT_INV_e1~combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	dataf => \CPU|DP|cRegister|ALT_INV_out\(11),
	combout => \CPU|DP|muxintoregister|Mux4~0_combout\);

-- Location: FF_X64_Y10_N58
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

-- Location: LABCELL_X62_Y11_N24
\CPU|DP|REGFILE|toR3|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[11]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux4~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[11]~feeder_combout\);

-- Location: FF_X62_Y11_N25
\CPU|DP|REGFILE|toR3|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[11]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(11));

-- Location: LABCELL_X62_Y11_N57
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

-- Location: FF_X62_Y11_N58
\CPU|DP|REGFILE|toR0|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[11]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(11));

-- Location: LABCELL_X64_Y11_N12
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

-- Location: FF_X64_Y11_N14
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

-- Location: FF_X64_Y11_N2
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

-- Location: LABCELL_X64_Y11_N0
\CPU|DP|REGFILE|chooser|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector4~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(11) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(11)) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(11) 
-- & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & \CPU|DP|REGFILE|toR1|out\(11)) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(11) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(11)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(11))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(11) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(11)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR3|ALT_INV_out\(11),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(11),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \CPU|DP|REGFILE|toR1|ALT_INV_out\(11),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(11),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector4~0_combout\);

-- Location: FF_X63_Y11_N25
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

-- Location: FF_X64_Y11_N53
\CPU|DP|REGFILE|toR5|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux4~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(11));

-- Location: LABCELL_X63_Y11_N33
\CPU|DP|REGFILE|toR6|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR6|out[11]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux4~0_combout\,
	combout => \CPU|DP|REGFILE|toR6|out[11]~feeder_combout\);

-- Location: FF_X63_Y11_N35
\CPU|DP|REGFILE|toR6|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR6|out[11]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(11));

-- Location: LABCELL_X68_Y11_N24
\CPU|DP|REGFILE|chooser|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector4~1_combout\ = ( \CPU|muxintoregister|Mux2~0_combout\ & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (\CPU|DP|REGFILE|toR5|out\(11) & !\CPU|muxintoregister|Mux1~0_combout\) ) ) ) # ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(11))) # (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR4|ALT_INV_out\(11),
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(11),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(11),
	datae => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector4~1_combout\);

-- Location: LABCELL_X68_Y11_N57
\CPU|DP|REGFILE|chooser|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector4~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector4~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector4~1_combout\ ) ) # ( !\CPU|DP|REGFILE|chooser|Selector4~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector4~1_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|chooser|Selector4~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector4~1_combout\ & ( (!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\)) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ 
-- & ((\CPU|DP|REGFILE|toR7|out\(11)))) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector4~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector4~1_combout\ & ( (\CPU|DP|REGFILE|toR7|out\(11) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111110011000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \CPU|DP|REGFILE|toR7|ALT_INV_out\(11),
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector4~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector4~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector4~2_combout\);

-- Location: FF_X68_Y11_N29
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(11));

-- Location: LABCELL_X68_Y11_N30
\CPU|DP|Bin[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[10]~14_combout\ = ( \CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out\(11) ) ) # ( !\CPU|instructionReg|out\(4) & ( \CPU|DP|bRegister|out[9]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|bRegister|ALT_INV_out\(11),
	datad => \CPU|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[10]~14_combout\);

-- Location: LABCELL_X71_Y12_N21
\CPU|DP|cRegister|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[10]~feeder_combout\ = ( \CPU|DP|CMP|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~57_sumout\,
	combout => \CPU|DP|cRegister|out[10]~feeder_combout\);

-- Location: LABCELL_X68_Y11_N15
\CPU|DP|CMP|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux5~0_combout\ = ( \CPU|DP|Bin[1]~0_combout\ & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & !\CPU|DP|Bin[10]~14_combout\) ) ) ) # ( !\CPU|DP|Bin[1]~0_combout\ & ( \CPU|FSM|WideOr25~combout\ & ( 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\ & !\CPU|DP|bRegister|out\(10)) ) ) ) # ( \CPU|DP|Bin[1]~0_combout\ & ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|Bin[10]~14_combout\ & \CPU|DP|aRegister|out\(10))) # 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|DP|Bin[10]~14_combout\)) ) ) ) # ( !\CPU|DP|Bin[1]~0_combout\ & ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|bRegister|out\(10) & \CPU|DP|aRegister|out\(10))) # 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|DP|bRegister|out\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001100110010100000101101001000100010001000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|bRegister|ALT_INV_out\(10),
	datac => \CPU|DP|ALT_INV_Bin[10]~14_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(10),
	datae => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux5~0_combout\);

-- Location: FF_X71_Y12_N22
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(10));

-- Location: MLABCELL_X65_Y9_N6
\x[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[9]~9_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( \e1~combout\ & ( \SW[9]~input_o\ ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( \e1~combout\ & ( \SW[9]~input_o\ ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( 
-- !\e1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[9]~9_combout\);

-- Location: FF_X65_Y9_N8
\CPU|instructionReg|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[9]~9_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(9));

-- Location: LABCELL_X67_Y13_N57
\CPU|FSM|WideOr15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr15~3_combout\ = ( \CPU|FSM|always0~10_combout\ & ( (\CPU|FSM|WideOr15~2_combout\ & (((!\CPU|FSM|always0~11_combout\) # (!\CPU|FSM|WideNor21~0_combout\)) # (\CPU|FSM|WideNor19~combout\))) ) ) # ( !\CPU|FSM|always0~10_combout\ & ( 
-- \CPU|FSM|WideOr15~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111010000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datab => \CPU|FSM|ALT_INV_always0~11_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor21~0_combout\,
	datad => \CPU|FSM|ALT_INV_WideOr15~2_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~10_combout\,
	combout => \CPU|FSM|WideOr15~3_combout\);

-- Location: LABCELL_X67_Y13_N48
\CPU|FSM|WideOr13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr13~combout\ = ( !\CPU|FSM|always0~29_combout\ & ( (!\CPU|FSM|WideNor3~combout\ & !\CPU|FSM|WideOr13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|ALT_INV_WideNor3~combout\,
	datad => \CPU|FSM|ALT_INV_WideOr13~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~29_combout\,
	combout => \CPU|FSM|WideOr13~combout\);

-- Location: LABCELL_X67_Y13_N36
\CPU|muxintoregister|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|muxintoregister|Mux1~0_combout\ = ( \CPU|FSM|WideOr15~3_combout\ & ( \CPU|FSM|WideOr13~combout\ & ( (!\CPU|FSM|WideOr15~0_combout\ & ((\CPU|instructionReg|out\(6)))) # (\CPU|FSM|WideOr15~0_combout\ & (\CPU|instructionReg|out\(1))) ) ) ) # ( 
-- !\CPU|FSM|WideOr15~3_combout\ & ( \CPU|FSM|WideOr13~combout\ & ( \CPU|instructionReg|out\(6) ) ) ) # ( \CPU|FSM|WideOr15~3_combout\ & ( !\CPU|FSM|WideOr13~combout\ & ( \CPU|instructionReg|out\(9) ) ) ) # ( !\CPU|FSM|WideOr15~3_combout\ & ( 
-- !\CPU|FSM|WideOr13~combout\ & ( \CPU|instructionReg|out\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(1),
	datab => \CPU|instructionReg|ALT_INV_out\(6),
	datac => \CPU|FSM|ALT_INV_WideOr15~0_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(9),
	datae => \CPU|FSM|ALT_INV_WideOr15~3_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr13~combout\,
	combout => \CPU|muxintoregister|Mux1~0_combout\);

-- Location: LABCELL_X68_Y13_N45
\CPU|DP|REGFILE|chooser|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector10~0_combout\ = ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & !\CPU|muxintoregister|Mux2~0_combout\) ) ) # ( !\CPU|muxintoregister|Mux1~0_combout\ & ( 
-- \CPU|muxintoregister|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector10~0_combout\);

-- Location: LABCELL_X67_Y11_N0
\CPU|DP|muxintoregister|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux6~0_combout\ = ( !\CPU|FSM|always0~27_combout\ & ( \CPU|DP|muxintoregister|Mux0~0_combout\ & ( (!\CPU|FSM|WideNor3~combout\ & ((\CPU|DP|cRegister|out\(9)))) # (\CPU|FSM|WideNor3~combout\ & (\CPU|instructionReg|out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(7),
	datab => \CPU|DP|cRegister|ALT_INV_out\(9),
	datad => \CPU|FSM|ALT_INV_WideNor3~combout\,
	datae => \CPU|FSM|ALT_INV_always0~27_combout\,
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|muxintoregister|Mux6~0_combout\);

-- Location: LABCELL_X67_Y11_N48
\CPU|DP|muxintoregister|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux6~1_combout\ = ( \CPU|FSM|WideOr30~combout\ & ( \e1~combout\ & ( \CPU|DP|muxintoregister|Mux6~0_combout\ ) ) ) # ( !\CPU|FSM|WideOr30~combout\ & ( \e1~combout\ & ( ((!\CPU|DP|muxintoregister|Mux0~1_combout\ & \SW[9]~input_o\)) # 
-- (\CPU|DP|muxintoregister|Mux6~0_combout\) ) ) ) # ( \CPU|FSM|WideOr30~combout\ & ( !\e1~combout\ & ( \CPU|DP|muxintoregister|Mux6~0_combout\ ) ) ) # ( !\CPU|FSM|WideOr30~combout\ & ( !\e1~combout\ & ( ((\MEM|mem_rtl_0|auto_generated|ram_block1a9\ & 
-- !\CPU|DP|muxintoregister|Mux0~1_combout\)) # (\CPU|DP|muxintoregister|Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101010101010101010101010101111101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|muxintoregister|ALT_INV_Mux6~0_combout\,
	datab => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	datac => \CPU|DP|muxintoregister|ALT_INV_Mux0~1_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \CPU|FSM|ALT_INV_WideOr30~combout\,
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux6~1_combout\);

-- Location: FF_X66_Y11_N43
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

-- Location: FF_X67_Y11_N50
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

-- Location: FF_X63_Y11_N41
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

-- Location: FF_X67_Y10_N59
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

-- Location: LABCELL_X67_Y10_N57
\CPU|DP|REGFILE|chooser|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector6~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(9) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & (((!\CPU|muxintoregister|Mux1~0_combout\) # (\CPU|DP|REGFILE|toR6|out\(9))))) # 
-- (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(9) & ((!\CPU|muxintoregister|Mux1~0_combout\)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(9) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux2~0_combout\ & 
-- (((\CPU|DP|REGFILE|toR6|out\(9) & \CPU|muxintoregister|Mux1~0_combout\)))) # (\CPU|muxintoregister|Mux2~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(9) & ((!\CPU|muxintoregister|Mux1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR5|ALT_INV_out\(9),
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(9),
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(9),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector6~1_combout\);

-- Location: LABCELL_X62_Y11_N21
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

-- Location: FF_X62_Y11_N22
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

-- Location: FF_X68_Y10_N49
\CPU|DP|REGFILE|toR1|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux6~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(9));

-- Location: FF_X66_Y12_N52
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
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(9));

-- Location: FF_X67_Y11_N32
\CPU|DP|REGFILE|toR2|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux6~1_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(9));

-- Location: LABCELL_X67_Y11_N30
\CPU|DP|REGFILE|chooser|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector6~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(9) & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) # (\CPU|DP|REGFILE|toR3|out\(9)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(9) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|toR3|out\(9) & !\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(9) & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(9)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(9))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(9) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(9)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR3|ALT_INV_out\(9),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(9),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \CPU|DP|REGFILE|toR0|ALT_INV_out\(9),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(9),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector6~0_combout\);

-- Location: LABCELL_X67_Y11_N24
\CPU|DP|REGFILE|chooser|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector6~2_combout\ = ( \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector6~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector6~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(9)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector6~0_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\) # (\CPU|DP|REGFILE|chooser|Selector6~1_combout\) ) ) ) # ( 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector6~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector6~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(9)) ) ) ) # ( !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( 
-- !\CPU|DP|REGFILE|chooser|Selector6~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector6~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111110011111110101111101011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \CPU|DP|REGFILE|toR7|ALT_INV_out\(9),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector6~1_combout\,
	datae => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector6~2_combout\);

-- Location: FF_X68_Y11_N4
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(9));

-- Location: MLABCELL_X72_Y11_N36
\CPU|DP|cRegister|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[9]~feeder_combout\ = ( \CPU|DP|CMP|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~53_sumout\,
	combout => \CPU|DP|cRegister|out[9]~feeder_combout\);

-- Location: LABCELL_X73_Y11_N48
\CPU|DP|CMP|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux6~0_combout\ = ( \CPU|DP|bRegister|out\(9) & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|Bin[1]~0_combout\ & !\CPU|DP|Bin[9]~13_combout\)) ) ) ) # ( !\CPU|DP|bRegister|out\(9) & ( 
-- \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[1]~0_combout\) # (!\CPU|DP|Bin[9]~13_combout\))) ) ) ) # ( \CPU|DP|bRegister|out\(9) & ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & 
-- (\CPU|DP|aRegister|out\(9) & ((!\CPU|DP|Bin[1]~0_combout\) # (\CPU|DP|Bin[9]~13_combout\)))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (((\CPU|DP|Bin[1]~0_combout\ & !\CPU|DP|Bin[9]~13_combout\)))) ) ) ) # ( !\CPU|DP|bRegister|out\(9) & ( 
-- !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|aRegister|out\(9) & (\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|Bin[9]~13_combout\))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (((!\CPU|DP|Bin[1]~0_combout\) # 
-- (!\CPU|DP|Bin[9]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010010001001010010001001010101010100000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|DP|aRegister|ALT_INV_out\(9),
	datac => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datad => \CPU|DP|ALT_INV_Bin[9]~13_combout\,
	datae => \CPU|DP|bRegister|ALT_INV_out\(9),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux6~0_combout\);

-- Location: FF_X72_Y11_N37
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(9));

-- Location: MLABCELL_X65_Y13_N33
\x[10]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[10]~7_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( (!\e1~0_combout\) # ((!\e1~3_combout\) # ((!\e1~2_combout\) # (!\e1~1_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~0_combout\,
	datab => \ALT_INV_e1~3_combout\,
	datac => \ALT_INV_e1~2_combout\,
	datad => \ALT_INV_e1~1_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \x[10]~7_combout\);

-- Location: FF_X65_Y13_N34
\CPU|instructionReg|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[10]~7_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(10));

-- Location: LABCELL_X67_Y13_N30
\CPU|muxintoregister|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|muxintoregister|Mux0~0_combout\ = ( \CPU|FSM|WideOr15~3_combout\ & ( \CPU|FSM|WideOr13~combout\ & ( (!\CPU|FSM|WideOr15~0_combout\ & ((\CPU|instructionReg|out\(7)))) # (\CPU|FSM|WideOr15~0_combout\ & (\CPU|instructionReg|out\(2))) ) ) ) # ( 
-- !\CPU|FSM|WideOr15~3_combout\ & ( \CPU|FSM|WideOr13~combout\ & ( \CPU|instructionReg|out\(7) ) ) ) # ( \CPU|FSM|WideOr15~3_combout\ & ( !\CPU|FSM|WideOr13~combout\ & ( \CPU|instructionReg|out\(10) ) ) ) # ( !\CPU|FSM|WideOr15~3_combout\ & ( 
-- !\CPU|FSM|WideOr13~combout\ & ( \CPU|instructionReg|out\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(2),
	datab => \CPU|instructionReg|ALT_INV_out\(10),
	datac => \CPU|FSM|ALT_INV_WideOr15~0_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(7),
	datae => \CPU|FSM|ALT_INV_WideOr15~3_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr13~combout\,
	combout => \CPU|muxintoregister|Mux0~0_combout\);

-- Location: LABCELL_X64_Y10_N15
\CPU|DP|REGFILE|load5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load5~0_combout\ = ( !\CPU|muxintoregister|Mux1~0_combout\ & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (!\CPU|FSM|WideOr32~0_combout\ & \CPU|muxintoregister|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr32~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datae => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|load5~0_combout\);

-- Location: FF_X67_Y11_N44
\CPU|DP|REGFILE|toR5|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux8~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(7));

-- Location: LABCELL_X63_Y11_N6
\CPU|DP|REGFILE|toR6|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR6|out[7]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \CPU|DP|REGFILE|toR6|out[7]~feeder_combout\);

-- Location: FF_X63_Y11_N7
\CPU|DP|REGFILE|toR6|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR6|out[7]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(7));

-- Location: FF_X67_Y10_N32
\CPU|DP|REGFILE|toR4|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux8~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(7));

-- Location: LABCELL_X67_Y10_N30
\CPU|DP|REGFILE|chooser|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector8~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(7) & ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|DP|REGFILE|toR6|out\(7) & (!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|muxintoregister|Mux0~0_combout\)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR4|out\(7) & ( \CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|DP|REGFILE|toR6|out\(7) & (!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|muxintoregister|Mux0~0_combout\)) ) ) ) # ( \CPU|DP|REGFILE|toR4|out\(7) & ( 
-- !\CPU|muxintoregister|Mux1~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux2~0_combout\) # (\CPU|DP|REGFILE|toR5|out\(7)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(7) & ( !\CPU|muxintoregister|Mux1~0_combout\ & ( 
-- (\CPU|DP|REGFILE|toR5|out\(7) & (\CPU|muxintoregister|Mux2~0_combout\ & \CPU|muxintoregister|Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001111010100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR5|ALT_INV_out\(7),
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(7),
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(7),
	dataf => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector8~1_combout\);

-- Location: FF_X64_Y10_N16
\CPU|DP|REGFILE|toR7|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux8~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(7));

-- Location: LABCELL_X66_Y9_N21
\CPU|DP|REGFILE|toR3|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[7]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[7]~feeder_combout\);

-- Location: FF_X66_Y9_N22
\CPU|DP|REGFILE|toR3|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[7]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(7));

-- Location: FF_X66_Y12_N4
\CPU|DP|REGFILE|toR0|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux8~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(7));

-- Location: LABCELL_X68_Y10_N54
\CPU|DP|REGFILE|toR1|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[7]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[7]~feeder_combout\);

-- Location: FF_X68_Y10_N55
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

-- Location: FF_X67_Y12_N44
\CPU|DP|REGFILE|toR2|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux8~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(7));

-- Location: LABCELL_X67_Y12_N42
\CPU|DP|REGFILE|chooser|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector8~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(7) & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) # (\CPU|DP|REGFILE|toR3|out\(7)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(7) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|toR3|out\(7) & !\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(7) & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR0|out\(7))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR1|out\(7)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(7) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR0|out\(7))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR1|out\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR3|ALT_INV_out\(7),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(7),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \CPU|DP|REGFILE|toR1|ALT_INV_out\(7),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(7),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector8~0_combout\);

-- Location: LABCELL_X67_Y12_N12
\CPU|DP|REGFILE|chooser|Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector8~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector8~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\)) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ 
-- & ((\CPU|DP|REGFILE|toR7|out\(7))))) # (\CPU|DP|REGFILE|chooser|Selector8~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector8~0_combout\ & ( ((\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \CPU|DP|REGFILE|toR7|out\(7))) # 
-- (\CPU|DP|REGFILE|chooser|Selector8~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011111010101111101111101010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector8~1_combout\,
	datab => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datad => \CPU|DP|REGFILE|toR7|ALT_INV_out\(7),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector8~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector8~2_combout\);

-- Location: FF_X67_Y12_N53
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(7));

-- Location: LABCELL_X71_Y12_N51
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

-- Location: LABCELL_X70_Y12_N18
\CPU|DP|Bin[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[7]~11_combout\ = ( \CPU|DP|Bin[7]~10_combout\ & ( (\CPU|DP|bRegister|out\(7)) # (\CPU|DP|Bin[1]~0_combout\) ) ) # ( !\CPU|DP|Bin[7]~10_combout\ & ( (!\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|bRegister|out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(7),
	dataf => \CPU|DP|ALT_INV_Bin[7]~10_combout\,
	combout => \CPU|DP|Bin[7]~11_combout\);

-- Location: LABCELL_X67_Y12_N6
\CPU|DP|CMP|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux8~0_combout\ = ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & !\CPU|DP|Bin[7]~11_combout\) ) ) # ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|aRegister|out\(7) & 
-- \CPU|DP|Bin[7]~11_combout\)) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[7]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110000000011110011000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|aRegister|ALT_INV_out\(7),
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|DP|ALT_INV_Bin[7]~11_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux8~0_combout\);

-- Location: FF_X71_Y12_N52
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(7));

-- Location: MLABCELL_X65_Y11_N33
\x[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0]~11_combout\ = ( \e1~combout\ & ( \SW[0]~input_o\ ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[0]~11_combout\);

-- Location: FF_X65_Y11_N35
\CPU|instructionReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[0]~11_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(0));

-- Location: LABCELL_X67_Y13_N42
\CPU|muxintoregister|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|muxintoregister|Mux2~0_combout\ = ( \CPU|FSM|WideOr15~3_combout\ & ( \CPU|FSM|WideOr13~combout\ & ( (!\CPU|FSM|WideOr15~0_combout\ & ((\CPU|instructionReg|out\(5)))) # (\CPU|FSM|WideOr15~0_combout\ & (\CPU|instructionReg|out\(0))) ) ) ) # ( 
-- !\CPU|FSM|WideOr15~3_combout\ & ( \CPU|FSM|WideOr13~combout\ & ( \CPU|instructionReg|out\(5) ) ) ) # ( \CPU|FSM|WideOr15~3_combout\ & ( !\CPU|FSM|WideOr13~combout\ & ( \CPU|instructionReg|out\(8) ) ) ) # ( !\CPU|FSM|WideOr15~3_combout\ & ( 
-- !\CPU|FSM|WideOr13~combout\ & ( \CPU|instructionReg|out\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(8),
	datab => \CPU|instructionReg|ALT_INV_out\(0),
	datac => \CPU|FSM|ALT_INV_WideOr15~0_combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(5),
	datae => \CPU|FSM|ALT_INV_WideOr15~3_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr13~combout\,
	combout => \CPU|muxintoregister|Mux2~0_combout\);

-- Location: LABCELL_X67_Y13_N15
\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ = ( \CPU|muxintoregister|Mux0~0_combout\ & ( (\CPU|muxintoregister|Mux2~0_combout\ & \CPU|muxintoregister|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\);

-- Location: LABCELL_X64_Y10_N3
\CPU|DP|REGFILE|load7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|load7~combout\ = ( \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( !\CPU|FSM|WideOr32~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FSM|ALT_INV_WideOr32~0_combout\,
	datae => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|load7~combout\);

-- Location: FF_X64_Y10_N14
\CPU|DP|REGFILE|toR7|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(4));

-- Location: FF_X64_Y10_N43
\CPU|DP|REGFILE|toR6|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(4));

-- Location: FF_X67_Y11_N20
\CPU|DP|REGFILE|toR5|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux11~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(4));

-- Location: FF_X68_Y13_N8
\CPU|DP|REGFILE|toR4|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(4));

-- Location: LABCELL_X68_Y13_N6
\CPU|DP|REGFILE|chooser|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector11~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(4) & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & (!\CPU|muxintoregister|Mux1~0_combout\ & \CPU|DP|REGFILE|toR5|out\(4))) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR4|out\(4) & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & (!\CPU|muxintoregister|Mux1~0_combout\ & \CPU|DP|REGFILE|toR5|out\(4))) ) ) ) # ( \CPU|DP|REGFILE|toR4|out\(4) & ( 
-- !\CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux1~0_combout\) # (\CPU|DP|REGFILE|toR6|out\(4)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(4) & ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- (\CPU|muxintoregister|Mux0~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(4) & \CPU|muxintoregister|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010100010101000100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(4),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|toR5|ALT_INV_out\(4),
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(4),
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector11~1_combout\);

-- Location: FF_X64_Y11_N17
\CPU|DP|REGFILE|toR1|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(4));

-- Location: FF_X66_Y9_N31
\CPU|DP|REGFILE|toR0|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(4));

-- Location: LABCELL_X66_Y9_N18
\CPU|DP|REGFILE|toR3|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[4]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux11~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux11~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[4]~feeder_combout\);

-- Location: FF_X66_Y9_N19
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

-- Location: FF_X67_Y11_N38
\CPU|DP|REGFILE|toR2|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(4));

-- Location: LABCELL_X67_Y11_N36
\CPU|DP|REGFILE|chooser|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector11~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(4) & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|toR3|out\(4)) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(4) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & \CPU|DP|REGFILE|toR3|out\(4)) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(4) & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(4)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(4))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(4) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR0|out\(4)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR1|out\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR1|ALT_INV_out\(4),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(4),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(4),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(4),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector11~0_combout\);

-- Location: LABCELL_X68_Y13_N27
\CPU|DP|REGFILE|chooser|Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector11~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector11~0_combout\ & ( ((!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\))) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(4)))) # (\CPU|DP|REGFILE|chooser|Selector11~1_combout\) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector11~0_combout\ & ( ((\CPU|DP|REGFILE|toR7|out\(4) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111111011111000111111101111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(4),
	datab => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector11~1_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector11~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector11~2_combout\);

-- Location: FF_X68_Y13_N50
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(4));

-- Location: LABCELL_X70_Y13_N42
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

-- Location: LABCELL_X70_Y12_N21
\CPU|DP|Bin[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[4]~7_combout\ = ( \CPU|DP|bRegister|out\(4) & ( (!\CPU|DP|Bin[1]~0_combout\) # (\CPU|DP|Bin[4]~6_combout\) ) ) # ( !\CPU|DP|bRegister|out\(4) & ( (\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|Bin[4]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|ALT_INV_Bin[4]~6_combout\,
	dataf => \CPU|DP|bRegister|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[4]~7_combout\);

-- Location: LABCELL_X70_Y13_N0
\CPU|DP|CMP|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux11~0_combout\ = ( \CPU|FSM|WideOr25~combout\ & ( (!\CPU|DP|Bin[4]~7_combout\ & \CPU|instructionReg|out[11]~DUPLICATE_q\) ) ) # ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|DP|Bin[4]~7_combout\ & ((\CPU|instructionReg|out[11]~DUPLICATE_q\))) # 
-- (\CPU|DP|Bin[4]~7_combout\ & (\CPU|DP|aRegister|out\(4) & !\CPU|instructionReg|out[11]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001100000000111100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|ALT_INV_Bin[4]~7_combout\,
	datac => \CPU|DP|aRegister|ALT_INV_out\(4),
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux11~0_combout\);

-- Location: FF_X70_Y13_N43
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(4));

-- Location: MLABCELL_X65_Y11_N3
\x[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[6]~12_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( \e1~combout\ & ( \SW[6]~input_o\ ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( \e1~combout\ & ( \SW[6]~input_o\ ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( 
-- !\e1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[6]~12_combout\);

-- Location: FF_X65_Y11_N2
\CPU|instructionReg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \x[6]~12_combout\,
	sload => VCC,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(6));

-- Location: LABCELL_X62_Y12_N15
\CPU|branchcalc|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add0~5_sumout\ = SUM(( \CPU|PCReg|out[5]~DUPLICATE_q\ ) + ( \CPU|instructionReg|out\(5) ) + ( \CPU|branchcalc|Add0~18\ ))
-- \CPU|branchcalc|Add0~6\ = CARRY(( \CPU|PCReg|out[5]~DUPLICATE_q\ ) + ( \CPU|instructionReg|out\(5) ) + ( \CPU|branchcalc|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(5),
	datad => \CPU|PCReg|ALT_INV_out[5]~DUPLICATE_q\,
	cin => \CPU|branchcalc|Add0~18\,
	sumout => \CPU|branchcalc|Add0~5_sumout\,
	cout => \CPU|branchcalc|Add0~6\);

-- Location: LABCELL_X62_Y12_N18
\CPU|branchcalc|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add0~1_sumout\ = SUM(( \CPU|instructionReg|out\(6) ) + ( \CPU|PCReg|out\(6) ) + ( \CPU|branchcalc|Add0~6\ ))
-- \CPU|branchcalc|Add0~2\ = CARRY(( \CPU|instructionReg|out\(6) ) + ( \CPU|PCReg|out\(6) ) + ( \CPU|branchcalc|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(6),
	datad => \CPU|instructionReg|ALT_INV_out\(6),
	cin => \CPU|branchcalc|Add0~6\,
	sumout => \CPU|branchcalc|Add0~1_sumout\,
	cout => \CPU|branchcalc|Add0~2\);

-- Location: LABCELL_X63_Y12_N42
\CPU|intoPC[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|intoPC[7]~2_combout\ = ( \CPU|PCReg|out[7]~1_combout\ & ( \CPU|branchcalc|Add1~9_sumout\ ) ) # ( !\CPU|PCReg|out[7]~1_combout\ & ( (!\CPU|FSM|Equal9~0_combout\ & (((\CPU|branchcalc|Add1~9_sumout\)))) # (\CPU|FSM|Equal9~0_combout\ & 
-- ((!\CPU|PCReg|out[7]~0_combout\ & (\CPU|branchcalc|Add1~9_sumout\)) # (\CPU|PCReg|out[7]~0_combout\ & ((\CPU|branchcalc|Add0~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	datac => \CPU|branchcalc|ALT_INV_Add1~9_sumout\,
	datad => \CPU|branchcalc|ALT_INV_Add0~9_sumout\,
	dataf => \CPU|PCReg|ALT_INV_out[7]~1_combout\,
	combout => \CPU|intoPC[7]~2_combout\);

-- Location: FF_X63_Y12_N43
\CPU|PCReg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[7]~2_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(7));

-- Location: FF_X65_Y11_N49
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
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(7));

-- Location: LABCELL_X68_Y9_N12
\CPU|mem_addr[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[7]~7_combout\ = ( \CPU|FSM|WideOr39~0_combout\ & ( (!\CPU|FSM|WideOr11~0_combout\ & (\CPU|PCReg|out\(7))) # (\CPU|FSM|WideOr11~0_combout\ & ((\CPU|DataAddress|out\(7)))) ) ) # ( !\CPU|FSM|WideOr39~0_combout\ & ( \CPU|DataAddress|out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010100110101001100110011001100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(7),
	datab => \CPU|DataAddress|ALT_INV_out\(7),
	datac => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \CPU|mem_addr[7]~7_combout\);

-- Location: LABCELL_X66_Y11_N51
\x[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[7]~15_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( \e1~combout\ & ( \SW[7]~input_o\ ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( \e1~combout\ & ( \SW[7]~input_o\ ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( 
-- !\e1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[7]~15_combout\);

-- Location: FF_X66_Y11_N50
\CPU|instructionReg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \x[7]~15_combout\,
	sload => VCC,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(7));

-- Location: FF_X71_Y11_N35
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(14));

-- Location: LABCELL_X64_Y11_N9
\CPU|DP|muxintoregister|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux1~0_combout\ = ( \CPU|FSM|WideOr30~combout\ & ( \e1~combout\ & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & ((\CPU|DP|cRegister|out\(14)))) # (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|instructionReg|out\(7))) ) ) ) # ( 
-- \CPU|FSM|WideOr30~combout\ & ( !\e1~combout\ & ( (!\CPU|DP|muxintoregister|Mux0~1_combout\ & ((\CPU|DP|cRegister|out\(14)))) # (\CPU|DP|muxintoregister|Mux0~1_combout\ & (\CPU|instructionReg|out\(7))) ) ) ) # ( !\CPU|FSM|WideOr30~combout\ & ( 
-- !\e1~combout\ & ( (\MEM|mem_rtl_0|auto_generated|ram_block1a14\ & !\CPU|DP|muxintoregister|Mux0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100000000000000000011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(7),
	datab => \CPU|DP|cRegister|ALT_INV_out\(14),
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	datad => \CPU|DP|muxintoregister|ALT_INV_Mux0~1_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr30~combout\,
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux1~0_combout\);

-- Location: FF_X65_Y12_N34
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
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(14));

-- Location: LABCELL_X64_Y11_N57
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

-- Location: FF_X64_Y11_N58
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

-- Location: FF_X64_Y11_N38
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

-- Location: LABCELL_X62_Y11_N39
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

-- Location: FF_X62_Y11_N40
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

-- Location: MLABCELL_X65_Y10_N9
\CPU|DP|REGFILE|chooser|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector1~0_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR2|out\(14) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR3|out\(14) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR1|out\(14) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|toR0|out\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR0|ALT_INV_out\(14),
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(14),
	datac => \CPU|DP|REGFILE|toR2|ALT_INV_out\(14),
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(14),
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector1~0_combout\);

-- Location: FF_X64_Y11_N11
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

-- Location: FF_X63_Y11_N34
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

-- Location: FF_X67_Y10_N14
\CPU|DP|REGFILE|toR4|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(14));

-- Location: LABCELL_X67_Y10_N12
\CPU|DP|REGFILE|chooser|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector1~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(14) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\)) # (\CPU|DP|REGFILE|toR5|out\(14)))) # 
-- (\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|DP|REGFILE|toR6|out\(14))))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(14) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & 
-- (\CPU|DP|REGFILE|toR5|out\(14) & (\CPU|muxintoregister|Mux2~0_combout\))) # (\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\ & \CPU|DP|REGFILE|toR6|out\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010010100101010001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(14),
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(14),
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(14),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector1~1_combout\);

-- Location: LABCELL_X64_Y10_N21
\CPU|DP|REGFILE|toR7|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR7|out[14]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|REGFILE|toR7|out[14]~feeder_combout\);

-- Location: FF_X64_Y10_N22
\CPU|DP|REGFILE|toR7|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR7|out[14]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(14));

-- Location: LABCELL_X67_Y10_N48
\CPU|DP|REGFILE|chooser|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector1~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|toR7|out\(14) & ( (\CPU|DP|REGFILE|chooser|Selector1~1_combout\) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|toR7|out\(14) & ( ((\CPU|DP|REGFILE|chooser|Selector1~1_combout\) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector1~0_combout\) ) ) ) # ( 
-- \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|toR7|out\(14) & ( \CPU|DP|REGFILE|chooser|Selector1~1_combout\ ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|toR7|out\(14) & ( 
-- ((\CPU|DP|REGFILE|chooser|Selector1~0_combout\ & !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|chooser|Selector1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111000000001111111101011111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector1~0_combout\,
	datac => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector1~1_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|toR7|ALT_INV_out\(14),
	combout => \CPU|DP|REGFILE|chooser|Selector1~2_combout\);

-- Location: FF_X67_Y10_N47
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(14));

-- Location: LABCELL_X66_Y11_N0
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \CPU|instructionReg|out\(3) & ( \CPU|DP|bRegister|out\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|bRegister|ALT_INV_out\(14),
	dataf => \CPU|instructionReg|ALT_INV_out\(3),
	combout => \rtl~4_combout\);

-- Location: LABCELL_X67_Y12_N48
\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = !\CPU|instructionReg|out\(4) $ (!\CPU|instructionReg|out\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(4),
	datab => \CPU|instructionReg|ALT_INV_out\(3),
	combout => \rtl~5_combout\);

-- Location: FF_X68_Y13_N17
\CPU|DP|aRegister|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector0~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(15));

-- Location: MLABCELL_X72_Y11_N21
\CPU|DP|CMP|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux0~0_combout\ = ( \CPU|DP|aRegister|out\(15) & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\rtl~5_combout\ & (!\CPU|DP|bRegister|out\(15))) # (\rtl~5_combout\ & ((!\rtl~4_combout\))))) ) ) ) # ( 
-- !\CPU|DP|aRegister|out\(15) & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\rtl~5_combout\ & (!\CPU|DP|bRegister|out\(15))) # (\rtl~5_combout\ & ((!\rtl~4_combout\))))) ) ) ) # ( \CPU|DP|aRegister|out\(15) & ( 
-- !\CPU|FSM|WideOr25~combout\ & ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\rtl~5_combout\ & (!\CPU|DP|bRegister|out\(15))) # (\rtl~5_combout\ & ((!\rtl~4_combout\))))) ) ) ) # ( !\CPU|DP|aRegister|out\(15) & ( !\CPU|FSM|WideOr25~combout\ & ( 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\rtl~5_combout\ & (!\CPU|DP|bRegister|out\(15))) # (\rtl~5_combout\ & ((!\rtl~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001100010110100011110000001010000011000000101000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(15),
	datab => \ALT_INV_rtl~4_combout\,
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \ALT_INV_rtl~5_combout\,
	datae => \CPU|DP|aRegister|ALT_INV_out\(15),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux0~0_combout\);

-- Location: FF_X71_Y12_N7
\CPU|DP|cRegister|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|cRegister|out[15]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux0~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(15));

-- Location: LABCELL_X64_Y11_N36
\CPU|DP|muxintoregister|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux0~2_combout\ = ( \CPU|instructionReg|out\(7) & ( \e1~combout\ & ( (\CPU|FSM|WideOr30~combout\ & ((\CPU|DP|muxintoregister|Mux0~1_combout\) # (\CPU|DP|cRegister|out\(15)))) ) ) ) # ( !\CPU|instructionReg|out\(7) & ( \e1~combout\ 
-- & ( (\CPU|FSM|WideOr30~combout\ & (\CPU|DP|cRegister|out\(15) & !\CPU|DP|muxintoregister|Mux0~1_combout\)) ) ) ) # ( \CPU|instructionReg|out\(7) & ( !\e1~combout\ & ( (!\CPU|FSM|WideOr30~combout\ & (((!\CPU|DP|muxintoregister|Mux0~1_combout\ & 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a15\)))) # (\CPU|FSM|WideOr30~combout\ & (((\CPU|DP|muxintoregister|Mux0~1_combout\)) # (\CPU|DP|cRegister|out\(15)))) ) ) ) # ( !\CPU|instructionReg|out\(7) & ( !\e1~combout\ & ( 
-- (!\CPU|DP|muxintoregister|Mux0~1_combout\ & ((!\CPU|FSM|WideOr30~combout\ & ((\MEM|mem_rtl_0|auto_generated|ram_block1a15\))) # (\CPU|FSM|WideOr30~combout\ & (\CPU|DP|cRegister|out\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100010000000100000001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr30~combout\,
	datab => \CPU|DP|cRegister|ALT_INV_out\(15),
	datac => \CPU|DP|muxintoregister|ALT_INV_Mux0~1_combout\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	datae => \CPU|instructionReg|ALT_INV_out\(7),
	dataf => \ALT_INV_e1~combout\,
	combout => \CPU|DP|muxintoregister|Mux0~2_combout\);

-- Location: FF_X64_Y10_N28
\CPU|DP|REGFILE|toR7|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~2_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(15));

-- Location: LABCELL_X61_Y11_N21
\CPU|DP|REGFILE|toR3|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[15]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux0~2_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[15]~feeder_combout\);

-- Location: FF_X61_Y11_N22
\CPU|DP|REGFILE|toR3|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(15));

-- Location: LABCELL_X63_Y10_N30
\CPU|DP|REGFILE|toR0|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[15]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux0~2_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[15]~feeder_combout\);

-- Location: FF_X63_Y10_N31
\CPU|DP|REGFILE|toR0|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(15));

-- Location: FF_X64_Y11_N4
\CPU|DP|REGFILE|toR2|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~2_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(15));

-- Location: FF_X64_Y11_N32
\CPU|DP|REGFILE|toR1|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~2_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(15));

-- Location: LABCELL_X64_Y13_N12
\CPU|DP|REGFILE|chooser|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector0~0_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR2|out\(15) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR1|out\(15) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR3|out\(15) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( \CPU|DP|REGFILE|toR0|out\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR3|ALT_INV_out\(15),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(15),
	datac => \CPU|DP|REGFILE|toR2|ALT_INV_out\(15),
	datad => \CPU|DP|REGFILE|toR1|ALT_INV_out\(15),
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector0~0_combout\);

-- Location: LABCELL_X63_Y11_N36
\CPU|DP|REGFILE|toR6|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR6|out[15]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux0~2_combout\,
	combout => \CPU|DP|REGFILE|toR6|out[15]~feeder_combout\);

-- Location: FF_X63_Y11_N37
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

-- Location: FF_X64_Y11_N8
\CPU|DP|REGFILE|toR5|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~2_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(15));

-- Location: FF_X67_Y13_N20
\CPU|DP|REGFILE|toR4|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux0~2_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(15));

-- Location: LABCELL_X67_Y13_N18
\CPU|DP|REGFILE|chooser|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector0~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(15) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\) # (\CPU|DP|REGFILE|toR5|out\(15))))) # 
-- (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(15) & ((!\CPU|muxintoregister|Mux2~0_combout\)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(15) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & 
-- (((\CPU|DP|REGFILE|toR5|out\(15) & \CPU|muxintoregister|Mux2~0_combout\)))) # (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(15) & ((!\CPU|muxintoregister|Mux2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000010101011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(15),
	datac => \CPU|DP|REGFILE|toR5|ALT_INV_out\(15),
	datad => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(15),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector0~1_combout\);

-- Location: LABCELL_X68_Y13_N15
\CPU|DP|REGFILE|chooser|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector0~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector0~1_combout\ ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector0~1_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector0~1_combout\ & ( (\CPU|DP|REGFILE|toR7|out\(15) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector10~0_combout\ & ( 
-- !\CPU|DP|REGFILE|chooser|Selector0~1_combout\ & ( (!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((\CPU|DP|REGFILE|chooser|Selector0~0_combout\))) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000100010001000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(15),
	datab => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector0~0_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector0~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector0~2_combout\);

-- Location: FF_X68_Y13_N47
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(15));

-- Location: LABCELL_X68_Y13_N42
\CPU|DP|Ain[15]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[15]~8_combout\ = (\CPU|DP|aRegister|out\(15) & !\CPU|FSM|WideOr25~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|aRegister|ALT_INV_out\(15),
	datac => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[15]~8_combout\);

-- Location: LABCELL_X70_Y11_N48
\CPU|DP|CMP|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Add0~37_sumout\ = SUM(( \CPU|DP|Ain[15]~8_combout\ ) + ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ $ (((!\rtl~5_combout\ & (!\CPU|DP|bRegister|out\(15))) # (\rtl~5_combout\ & ((!\rtl~4_combout\))))) ) + ( \CPU|DP|CMP|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(15),
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \ALT_INV_rtl~4_combout\,
	datad => \CPU|DP|ALT_INV_Ain[15]~8_combout\,
	dataf => \ALT_INV_rtl~5_combout\,
	cin => \CPU|DP|CMP|Add0~46\,
	sumout => \CPU|DP|CMP|Add0~37_sumout\);

-- Location: LABCELL_X71_Y11_N36
\CPU|DP|stat|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|stat|out[2]~feeder_combout\ = ( \CPU|DP|CMP|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~37_sumout\,
	combout => \CPU|DP|stat|out[2]~feeder_combout\);

-- Location: FF_X71_Y11_N37
\CPU|DP|stat|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|stat|out[2]~feeder_combout\,
	asdata => \CPU|DP|CMP|Mux0~0_combout\,
	sload => \CPU|instructionReg|out\(12),
	ena => \CPU|FSM|loads~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|stat|out\(2));

-- Location: LABCELL_X71_Y11_N0
\CPU|DP|CMP|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux7~0_combout\ = ( \CPU|DP|bRegister|out\(8) & ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|DP|Bin[1]~0_combout\ & (\CPU|instructionReg|out[11]~DUPLICATE_q\ & !\CPU|DP|Bin[8]~12_combout\)) ) ) ) # ( !\CPU|DP|bRegister|out\(8) & ( 
-- \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[1]~0_combout\) # (!\CPU|DP|Bin[8]~12_combout\))) ) ) ) # ( \CPU|DP|bRegister|out\(8) & ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & 
-- (\CPU|DP|aRegister|out\(8) & ((!\CPU|DP|Bin[1]~0_combout\) # (\CPU|DP|Bin[8]~12_combout\)))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|DP|Bin[8]~12_combout\)))) ) ) ) # ( !\CPU|DP|bRegister|out\(8) & ( 
-- !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|DP|Bin[1]~0_combout\ & (((\CPU|instructionReg|out[11]~DUPLICATE_q\)))) # (\CPU|DP|Bin[1]~0_combout\ & ((!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (\CPU|DP|aRegister|out\(8) & \CPU|DP|Bin[8]~12_combout\)) # 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\ & ((!\CPU|DP|Bin[8]~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011010001001010011000000001111000010100000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datab => \CPU|DP|aRegister|ALT_INV_out\(8),
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|DP|ALT_INV_Bin[8]~12_combout\,
	datae => \CPU|DP|bRegister|ALT_INV_out\(8),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux7~0_combout\);

-- Location: LABCELL_X71_Y11_N30
\CPU|DP|CMP|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Equal0~4_combout\ = ( !\CPU|DP|CMP|Mux1~0_combout\ & ( (!\CPU|DP|CMP|Mux5~0_combout\ & (!\CPU|DP|CMP|Mux2~0_combout\ & (!\CPU|DP|CMP|Mux3~0_combout\ & !\CPU|DP|CMP|Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|CMP|ALT_INV_Mux5~0_combout\,
	datab => \CPU|DP|CMP|ALT_INV_Mux2~0_combout\,
	datac => \CPU|DP|CMP|ALT_INV_Mux3~0_combout\,
	datad => \CPU|DP|CMP|ALT_INV_Mux4~0_combout\,
	dataf => \CPU|DP|CMP|ALT_INV_Mux1~0_combout\,
	combout => \CPU|DP|CMP|Equal0~4_combout\);

-- Location: LABCELL_X70_Y13_N54
\CPU|DP|CMP|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux14~0_combout\ = ( \CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|Bin[1]~1_combout\ & ( (\CPU|DP|aRegister|out\(1) & (!\CPU|instructionReg|out\(11) & !\CPU|FSM|WideOr25~combout\)) ) ) ) # ( !\CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|Bin[1]~1_combout\ & ( 
-- (!\CPU|DP|bRegister|out\(1) & (((\CPU|instructionReg|out\(11))))) # (\CPU|DP|bRegister|out\(1) & (\CPU|DP|aRegister|out\(1) & (!\CPU|instructionReg|out\(11) & !\CPU|FSM|WideOr25~combout\))) ) ) ) # ( \CPU|DP|Bin[1]~0_combout\ & ( 
-- !\CPU|DP|Bin[1]~1_combout\ & ( \CPU|instructionReg|out\(11) ) ) ) # ( !\CPU|DP|Bin[1]~0_combout\ & ( !\CPU|DP|Bin[1]~1_combout\ & ( (!\CPU|DP|bRegister|out\(1) & (((\CPU|instructionReg|out\(11))))) # (\CPU|DP|bRegister|out\(1) & (\CPU|DP|aRegister|out\(1) 
-- & (!\CPU|instructionReg|out\(11) & !\CPU|FSM|WideOr25~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000001010000011110000111100011010000010100011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(1),
	datab => \CPU|DP|aRegister|ALT_INV_out\(1),
	datac => \CPU|instructionReg|ALT_INV_out\(11),
	datad => \CPU|FSM|ALT_INV_WideOr25~combout\,
	datae => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[1]~1_combout\,
	combout => \CPU|DP|CMP|Mux14~0_combout\);

-- Location: LABCELL_X70_Y12_N15
\rtl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = ( \rtl~0_combout\ & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(1)) ) ) # ( !\rtl~0_combout\ & ( (\CPU|instructionReg|out\(4) & \CPU|DP|bRegister|out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(1),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \rtl~7_combout\);

-- Location: LABCELL_X70_Y13_N45
\CPU|DP|CMP|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Equal0~2_combout\ = ( \CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out\(12) & ((!\CPU|instructionReg|out[11]~DUPLICATE_q\) # (\rtl~7_combout\))) ) ) # ( !\CPU|FSM|WideOr25~combout\ & ( (\CPU|instructionReg|out\(12) & ((!\rtl~7_combout\ 
-- & ((!\CPU|instructionReg|out[11]~DUPLICATE_q\))) # (\rtl~7_combout\ & ((!\CPU|DP|aRegister|out\(0)) # (\CPU|instructionReg|out[11]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000101010101000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(12),
	datab => \CPU|DP|aRegister|ALT_INV_out\(0),
	datac => \ALT_INV_rtl~7_combout\,
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Equal0~2_combout\);

-- Location: LABCELL_X68_Y11_N0
\CPU|DP|Bin[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[3]~5_combout\ = ( \CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|Bin[3]~4_combout\ ) ) # ( !\CPU|DP|Bin[1]~0_combout\ & ( \CPU|DP|bRegister|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[3]~4_combout\,
	datad => \CPU|DP|bRegister|ALT_INV_out\(3),
	datae => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	combout => \CPU|DP|Bin[3]~5_combout\);

-- Location: LABCELL_X70_Y13_N21
\CPU|DP|CMP|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux12~0_combout\ = ( \CPU|FSM|WideOr25~combout\ & ( (!\CPU|DP|Bin[3]~5_combout\ & \CPU|instructionReg|out[11]~DUPLICATE_q\) ) ) # ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|DP|Bin[3]~5_combout\ & ((\CPU|instructionReg|out[11]~DUPLICATE_q\))) # 
-- (\CPU|DP|Bin[3]~5_combout\ & (\CPU|DP|aRegister|out\(3) & !\CPU|instructionReg|out[11]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110000000000111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|aRegister|ALT_INV_out\(3),
	datac => \CPU|DP|ALT_INV_Bin[3]~5_combout\,
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux12~0_combout\);

-- Location: LABCELL_X70_Y12_N24
\CPU|DP|Bin[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[6]~9_combout\ = ( \CPU|DP|Bin[6]~8_combout\ & ( (\CPU|DP|bRegister|out\(6)) # (\CPU|DP|Bin[1]~0_combout\) ) ) # ( !\CPU|DP|Bin[6]~8_combout\ & ( (!\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|bRegister|out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datac => \CPU|DP|bRegister|ALT_INV_out\(6),
	dataf => \CPU|DP|ALT_INV_Bin[6]~8_combout\,
	combout => \CPU|DP|Bin[6]~9_combout\);

-- Location: LABCELL_X70_Y12_N9
\rtl~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = ( \rtl~8_combout\ & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(6)) ) ) # ( !\rtl~8_combout\ & ( (\CPU|instructionReg|out\(4) & \CPU|DP|bRegister|out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(6),
	dataf => \ALT_INV_rtl~8_combout\,
	combout => \rtl~9_combout\);

-- Location: LABCELL_X70_Y13_N12
\CPU|DP|CMP|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Equal0~1_combout\ = ( \rtl~9_combout\ & ( \CPU|FSM|WideOr25~combout\ & ( (!\CPU|DP|Bin[6]~9_combout\ & \CPU|instructionReg|out[11]~DUPLICATE_q\) ) ) ) # ( !\rtl~9_combout\ & ( \CPU|FSM|WideOr25~combout\ & ( 
-- \CPU|instructionReg|out[11]~DUPLICATE_q\ ) ) ) # ( \rtl~9_combout\ & ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (((\CPU|DP|Bin[6]~9_combout\ & \CPU|DP|aRegister|out\(6))) # (\CPU|DP|aRegister|out\(5)))) # 
-- (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|DP|Bin[6]~9_combout\)) ) ) ) # ( !\rtl~9_combout\ & ( !\CPU|FSM|WideOr25~combout\ & ( ((\CPU|DP|Bin[6]~9_combout\ & \CPU|DP|aRegister|out\(6))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001011100110111000110011001100110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[6]~9_combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|aRegister|ALT_INV_out\(5),
	datad => \CPU|DP|aRegister|ALT_INV_out\(6),
	datae => \ALT_INV_rtl~9_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Equal0~1_combout\);

-- Location: LABCELL_X70_Y12_N27
\CPU|DP|Bin[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[2]~3_combout\ = ( \CPU|DP|Bin[2]~2_combout\ & ( (\CPU|DP|bRegister|out\(2)) # (\CPU|DP|Bin[1]~0_combout\) ) ) # ( !\CPU|DP|Bin[2]~2_combout\ & ( (!\CPU|DP|Bin[1]~0_combout\ & \CPU|DP|bRegister|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	datad => \CPU|DP|bRegister|ALT_INV_out\(2),
	dataf => \CPU|DP|ALT_INV_Bin[2]~2_combout\,
	combout => \CPU|DP|Bin[2]~3_combout\);

-- Location: LABCELL_X68_Y13_N36
\CPU|DP|CMP|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux13~0_combout\ = (!\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|FSM|WideOr25~combout\ & (\CPU|DP|Bin[2]~3_combout\ & \CPU|DP|aRegister|out\(2)))) # (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (((!\CPU|DP|Bin[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111000001100000011100000110000001110000011000000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr25~combout\,
	datab => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datac => \CPU|DP|ALT_INV_Bin[2]~3_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(2),
	combout => \CPU|DP|CMP|Mux13~0_combout\);

-- Location: LABCELL_X70_Y13_N24
\CPU|DP|CMP|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Equal0~3_combout\ = ( !\CPU|DP|CMP|Mux11~0_combout\ & ( !\CPU|DP|CMP|Mux13~0_combout\ & ( (!\CPU|DP|CMP|Mux14~0_combout\ & (\CPU|DP|CMP|Equal0~2_combout\ & (!\CPU|DP|CMP|Mux12~0_combout\ & !\CPU|DP|CMP|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|CMP|ALT_INV_Mux14~0_combout\,
	datab => \CPU|DP|CMP|ALT_INV_Equal0~2_combout\,
	datac => \CPU|DP|CMP|ALT_INV_Mux12~0_combout\,
	datad => \CPU|DP|CMP|ALT_INV_Equal0~1_combout\,
	datae => \CPU|DP|CMP|ALT_INV_Mux11~0_combout\,
	dataf => \CPU|DP|CMP|ALT_INV_Mux13~0_combout\,
	combout => \CPU|DP|CMP|Equal0~3_combout\);

-- Location: LABCELL_X70_Y11_N24
\CPU|DP|CMP|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Equal0~5_combout\ = ( \CPU|DP|CMP|Equal0~3_combout\ & ( !\CPU|DP|CMP|Mux6~0_combout\ & ( (!\CPU|DP|CMP|Mux7~0_combout\ & (!\CPU|DP|CMP|Mux8~0_combout\ & (\CPU|DP|CMP|Equal0~4_combout\ & !\CPU|DP|CMP|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|CMP|ALT_INV_Mux7~0_combout\,
	datab => \CPU|DP|CMP|ALT_INV_Mux8~0_combout\,
	datac => \CPU|DP|CMP|ALT_INV_Equal0~4_combout\,
	datad => \CPU|DP|CMP|ALT_INV_Mux0~0_combout\,
	datae => \CPU|DP|CMP|ALT_INV_Equal0~3_combout\,
	dataf => \CPU|DP|CMP|ALT_INV_Mux6~0_combout\,
	combout => \CPU|DP|CMP|Equal0~5_combout\);

-- Location: LABCELL_X70_Y12_N6
\CPU|DP|CMP|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Equal0~0_combout\ = ( !\CPU|DP|CMP|Add0~9_sumout\ & ( (!\CPU|instructionReg|out\(12) & (!\CPU|DP|CMP|Add0~1_sumout\ & !\CPU|DP|CMP|Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instructionReg|ALT_INV_out\(12),
	datac => \CPU|DP|CMP|ALT_INV_Add0~1_sumout\,
	datad => \CPU|DP|CMP|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|DP|CMP|ALT_INV_Add0~9_sumout\,
	combout => \CPU|DP|CMP|Equal0~0_combout\);

-- Location: LABCELL_X70_Y11_N54
\CPU|DP|CMP|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Equal0~7_combout\ = ( !\CPU|DP|CMP|Add0~49_sumout\ & ( !\CPU|DP|CMP|Add0~41_sumout\ & ( (!\CPU|DP|CMP|Add0~29_sumout\ & (!\CPU|DP|CMP|Add0~45_sumout\ & (!\CPU|DP|CMP|Add0~37_sumout\ & !\CPU|DP|CMP|Add0~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|CMP|ALT_INV_Add0~29_sumout\,
	datab => \CPU|DP|CMP|ALT_INV_Add0~45_sumout\,
	datac => \CPU|DP|CMP|ALT_INV_Add0~37_sumout\,
	datad => \CPU|DP|CMP|ALT_INV_Add0~53_sumout\,
	datae => \CPU|DP|CMP|ALT_INV_Add0~49_sumout\,
	dataf => \CPU|DP|CMP|ALT_INV_Add0~41_sumout\,
	combout => \CPU|DP|CMP|Equal0~7_combout\);

-- Location: LABCELL_X70_Y12_N12
\CPU|DP|CMP|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Equal0~8_combout\ = ( !\CPU|DP|CMP|Add0~61_sumout\ & ( (!\CPU|DP|CMP|Add0~21_sumout\ & (!\CPU|DP|CMP|Add0~13_sumout\ & (!\CPU|DP|CMP|Add0~25_sumout\ & !\CPU|DP|CMP|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|CMP|ALT_INV_Add0~21_sumout\,
	datab => \CPU|DP|CMP|ALT_INV_Add0~13_sumout\,
	datac => \CPU|DP|CMP|ALT_INV_Add0~25_sumout\,
	datad => \CPU|DP|CMP|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|DP|CMP|ALT_INV_Add0~61_sumout\,
	combout => \CPU|DP|CMP|Equal0~8_combout\);

-- Location: LABCELL_X70_Y11_N12
\CPU|DP|CMP|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Equal0~6_combout\ = ( \CPU|DP|CMP|Equal0~7_combout\ & ( \CPU|DP|CMP|Equal0~8_combout\ & ( ((\CPU|DP|CMP|Equal0~0_combout\ & (!\CPU|DP|CMP|Add0~57_sumout\ & !\CPU|DP|CMP|Add0~65_sumout\))) # (\CPU|DP|CMP|Equal0~5_combout\) ) ) ) # ( 
-- !\CPU|DP|CMP|Equal0~7_combout\ & ( \CPU|DP|CMP|Equal0~8_combout\ & ( \CPU|DP|CMP|Equal0~5_combout\ ) ) ) # ( \CPU|DP|CMP|Equal0~7_combout\ & ( !\CPU|DP|CMP|Equal0~8_combout\ & ( \CPU|DP|CMP|Equal0~5_combout\ ) ) ) # ( !\CPU|DP|CMP|Equal0~7_combout\ & ( 
-- !\CPU|DP|CMP|Equal0~8_combout\ & ( \CPU|DP|CMP|Equal0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|CMP|ALT_INV_Equal0~5_combout\,
	datab => \CPU|DP|CMP|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DP|CMP|ALT_INV_Add0~57_sumout\,
	datad => \CPU|DP|CMP|ALT_INV_Add0~65_sumout\,
	datae => \CPU|DP|CMP|ALT_INV_Equal0~7_combout\,
	dataf => \CPU|DP|CMP|ALT_INV_Equal0~8_combout\,
	combout => \CPU|DP|CMP|Equal0~6_combout\);

-- Location: FF_X70_Y11_N13
\CPU|DP|stat|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|CMP|Equal0~6_combout\,
	ena => \CPU|FSM|loads~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|stat|out\(0));

-- Location: LABCELL_X70_Y13_N33
\CPU|DP|CMP|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Decoder0~0_combout\ = ( !\CPU|instructionReg|out\(12) & ( \CPU|instructionReg|out[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out\(12),
	combout => \CPU|DP|CMP|Decoder0~0_combout\);

-- Location: LABCELL_X70_Y13_N30
\CPU|DP|CMP|ADDER1|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|comb~0_combout\ = ( \CPU|DP|Bin[1]~1_combout\ & ( !\CPU|DP|CMP|Decoder0~0_combout\ $ (((!\CPU|DP|bRegister|out\(1) & !\CPU|DP|Bin[1]~0_combout\))) ) ) # ( !\CPU|DP|Bin[1]~1_combout\ & ( !\CPU|DP|CMP|Decoder0~0_combout\ $ 
-- (((!\CPU|DP|bRegister|out\(1)) # (\CPU|DP|Bin[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001111010110100000111101011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|bRegister|ALT_INV_out\(1),
	datac => \CPU|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datad => \CPU|DP|ALT_INV_Bin[1]~0_combout\,
	dataf => \CPU|DP|ALT_INV_Bin[1]~1_combout\,
	combout => \CPU|DP|CMP|ADDER1|comb~0_combout\);

-- Location: LABCELL_X66_Y13_N0
\CPU|DP|CMP|ADDER1|ai|_~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|ai|_~22_cout\ = CARRY(( !\rtl~7_combout\ $ (!\CPU|DP|Ain[0]~0_combout\) ) + ( !VCC ) + ( !VCC ))
-- \CPU|DP|CMP|ADDER1|ai|_~23\ = SHARE((!\rtl~7_combout\ & (\CPU|instructionReg|out[11]~DUPLICATE_q\ & (!\CPU|instructionReg|out\(12)))) # (\rtl~7_combout\ & (((\CPU|DP|Ain[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datab => \CPU|instructionReg|ALT_INV_out\(12),
	datac => \ALT_INV_rtl~7_combout\,
	datad => \CPU|DP|ALT_INV_Ain[0]~0_combout\,
	cin => GND,
	sharein => GND,
	cout => \CPU|DP|CMP|ADDER1|ai|_~22_cout\,
	shareout => \CPU|DP|CMP|ADDER1|ai|_~23\);

-- Location: LABCELL_X66_Y13_N3
\CPU|DP|CMP|ADDER1|ai|_~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|ai|_~19_cout\ = CARRY(( !\CPU|DP|CMP|ADDER1|comb~0_combout\ $ (!\CPU|DP|Ain[1]~2_combout\) ) + ( \CPU|DP|CMP|ADDER1|ai|_~23\ ) + ( \CPU|DP|CMP|ADDER1|ai|_~22_cout\ ))
-- \CPU|DP|CMP|ADDER1|ai|_~20\ = SHARE((\CPU|DP|CMP|ADDER1|comb~0_combout\ & \CPU|DP|Ain[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|CMP|ADDER1|ALT_INV_comb~0_combout\,
	datad => \CPU|DP|ALT_INV_Ain[1]~2_combout\,
	cin => \CPU|DP|CMP|ADDER1|ai|_~22_cout\,
	sharein => \CPU|DP|CMP|ADDER1|ai|_~23\,
	cout => \CPU|DP|CMP|ADDER1|ai|_~19_cout\,
	shareout => \CPU|DP|CMP|ADDER1|ai|_~20\);

-- Location: LABCELL_X66_Y13_N6
\CPU|DP|CMP|ADDER1|ai|_~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|ai|_~16_cout\ = CARRY(( !\CPU|DP|CMP|Decoder0~0_combout\ $ (!\CPU|DP|Bin[2]~3_combout\ $ (((!\CPU|FSM|WideOr25~combout\ & \CPU|DP|aRegister|out\(2))))) ) + ( \CPU|DP|CMP|ADDER1|ai|_~20\ ) + ( \CPU|DP|CMP|ADDER1|ai|_~19_cout\ ))
-- \CPU|DP|CMP|ADDER1|ai|_~17\ = SHARE((!\CPU|FSM|WideOr25~combout\ & (\CPU|DP|aRegister|out\(2) & (!\CPU|DP|CMP|Decoder0~0_combout\ $ (!\CPU|DP|Bin[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000100000000000000000000011100111000110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr25~combout\,
	datab => \CPU|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datac => \CPU|DP|aRegister|ALT_INV_out\(2),
	datad => \CPU|DP|ALT_INV_Bin[2]~3_combout\,
	cin => \CPU|DP|CMP|ADDER1|ai|_~19_cout\,
	sharein => \CPU|DP|CMP|ADDER1|ai|_~20\,
	cout => \CPU|DP|CMP|ADDER1|ai|_~16_cout\,
	shareout => \CPU|DP|CMP|ADDER1|ai|_~17\);

-- Location: LABCELL_X66_Y13_N9
\CPU|DP|CMP|ADDER1|ai|_~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|ai|_~13_cout\ = CARRY(( !\CPU|DP|CMP|Decoder0~0_combout\ $ (!\CPU|DP|Bin[3]~5_combout\ $ (((!\CPU|FSM|WideOr25~combout\ & \CPU|DP|aRegister|out\(3))))) ) + ( \CPU|DP|CMP|ADDER1|ai|_~17\ ) + ( \CPU|DP|CMP|ADDER1|ai|_~16_cout\ ))
-- \CPU|DP|CMP|ADDER1|ai|_~14\ = SHARE((!\CPU|FSM|WideOr25~combout\ & (\CPU|DP|aRegister|out\(3) & (!\CPU|DP|CMP|Decoder0~0_combout\ $ (!\CPU|DP|Bin[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000100000000000000000000011100111000110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr25~combout\,
	datab => \CPU|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datac => \CPU|DP|aRegister|ALT_INV_out\(3),
	datad => \CPU|DP|ALT_INV_Bin[3]~5_combout\,
	cin => \CPU|DP|CMP|ADDER1|ai|_~16_cout\,
	sharein => \CPU|DP|CMP|ADDER1|ai|_~17\,
	cout => \CPU|DP|CMP|ADDER1|ai|_~13_cout\,
	shareout => \CPU|DP|CMP|ADDER1|ai|_~14\);

-- Location: LABCELL_X66_Y13_N12
\CPU|DP|CMP|ADDER1|ai|_~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|ai|_~10_cout\ = CARRY(( !\CPU|DP|CMP|Decoder0~0_combout\ $ (!\CPU|DP|Bin[4]~7_combout\ $ (((!\CPU|FSM|WideOr25~combout\ & \CPU|DP|aRegister|out\(4))))) ) + ( \CPU|DP|CMP|ADDER1|ai|_~14\ ) + ( \CPU|DP|CMP|ADDER1|ai|_~13_cout\ ))
-- \CPU|DP|CMP|ADDER1|ai|_~11\ = SHARE((!\CPU|FSM|WideOr25~combout\ & (\CPU|DP|aRegister|out\(4) & (!\CPU|DP|CMP|Decoder0~0_combout\ $ (!\CPU|DP|Bin[4]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010100000000000000000000011110010010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr25~combout\,
	datab => \CPU|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datac => \CPU|DP|ALT_INV_Bin[4]~7_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(4),
	cin => \CPU|DP|CMP|ADDER1|ai|_~13_cout\,
	sharein => \CPU|DP|CMP|ADDER1|ai|_~14\,
	cout => \CPU|DP|CMP|ADDER1|ai|_~10_cout\,
	shareout => \CPU|DP|CMP|ADDER1|ai|_~11\);

-- Location: LABCELL_X66_Y13_N15
\CPU|DP|CMP|ADDER1|ai|_~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|ai|_~7_cout\ = CARRY(( !\CPU|DP|CMP|Decoder0~0_combout\ $ (!\rtl~9_combout\ $ (((!\CPU|FSM|WideOr25~combout\ & \CPU|DP|aRegister|out\(5))))) ) + ( \CPU|DP|CMP|ADDER1|ai|_~11\ ) + ( \CPU|DP|CMP|ADDER1|ai|_~10_cout\ ))
-- \CPU|DP|CMP|ADDER1|ai|_~8\ = SHARE((!\CPU|FSM|WideOr25~combout\ & (\CPU|DP|aRegister|out\(5) & (!\CPU|DP|CMP|Decoder0~0_combout\ $ (!\rtl~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010100000000000000000000011110010010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr25~combout\,
	datab => \CPU|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datac => \ALT_INV_rtl~9_combout\,
	datad => \CPU|DP|aRegister|ALT_INV_out\(5),
	cin => \CPU|DP|CMP|ADDER1|ai|_~10_cout\,
	sharein => \CPU|DP|CMP|ADDER1|ai|_~11\,
	cout => \CPU|DP|CMP|ADDER1|ai|_~7_cout\,
	shareout => \CPU|DP|CMP|ADDER1|ai|_~8\);

-- Location: LABCELL_X66_Y13_N18
\CPU|DP|CMP|ADDER1|ai|_~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|ai|_~4_cout\ = CARRY(( !\CPU|DP|CMP|Decoder0~0_combout\ $ (!\CPU|DP|Bin[6]~9_combout\ $ (((\CPU|DP|aRegister|out\(6) & !\CPU|FSM|WideOr25~combout\)))) ) + ( \CPU|DP|CMP|ADDER1|ai|_~8\ ) + ( \CPU|DP|CMP|ADDER1|ai|_~7_cout\ ))
-- \CPU|DP|CMP|ADDER1|ai|_~5\ = SHARE((\CPU|DP|aRegister|out\(6) & (!\CPU|FSM|WideOr25~combout\ & (!\CPU|DP|CMP|Decoder0~0_combout\ $ (!\CPU|DP|Bin[6]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000100000000000000000000000110001110011100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|aRegister|ALT_INV_out\(6),
	datab => \CPU|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideOr25~combout\,
	datad => \CPU|DP|ALT_INV_Bin[6]~9_combout\,
	cin => \CPU|DP|CMP|ADDER1|ai|_~7_cout\,
	sharein => \CPU|DP|CMP|ADDER1|ai|_~8\,
	cout => \CPU|DP|CMP|ADDER1|ai|_~4_cout\,
	shareout => \CPU|DP|CMP|ADDER1|ai|_~5\);

-- Location: LABCELL_X66_Y13_N21
\CPU|DP|CMP|ADDER1|ai|_\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|ai|cout\ = SUM(( GND ) + ( \CPU|DP|CMP|ADDER1|ai|_~5\ ) + ( \CPU|DP|CMP|ADDER1|ai|_~4_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CPU|DP|CMP|ADDER1|ai|_~4_cout\,
	sharein => \CPU|DP|CMP|ADDER1|ai|_~5\,
	sumout => \CPU|DP|CMP|ADDER1|ai|cout\);

-- Location: LABCELL_X66_Y13_N24
\CPU|DP|CMP|ADDER1|ovf\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|ADDER1|ovf~combout\ = ( \CPU|DP|Ain[7]~1_combout\ & ( (!\CPU|DP|CMP|ADDER1|ai|cout\ & (!\CPU|DP|Bin[7]~11_combout\ $ (!\CPU|DP|CMP|Decoder0~0_combout\))) ) ) # ( !\CPU|DP|Ain[7]~1_combout\ & ( (\CPU|DP|CMP|ADDER1|ai|cout\ & 
-- (!\CPU|DP|Bin[7]~11_combout\ $ (\CPU|DP|CMP|Decoder0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010100001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|CMP|ADDER1|ai|ALT_INV_cout\,
	datac => \CPU|DP|ALT_INV_Bin[7]~11_combout\,
	datad => \CPU|DP|CMP|ALT_INV_Decoder0~0_combout\,
	dataf => \CPU|DP|ALT_INV_Ain[7]~1_combout\,
	combout => \CPU|DP|CMP|ADDER1|ovf~combout\);

-- Location: FF_X66_Y13_N25
\CPU|DP|stat|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|CMP|ADDER1|ovf~combout\,
	ena => \CPU|FSM|loads~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|stat|out\(1));

-- Location: LABCELL_X63_Y12_N24
\CPU|PCReg|out[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PCReg|out[7]~2_combout\ = ( \CPU|DP|stat|out\(1) & ( \CPU|instructionReg|out\(10) & ( (!\CPU|instructionReg|out\(9) & (!\CPU|instructionReg|out\(8) & ((!\CPU|DP|stat|out\(2)) # (\CPU|DP|stat|out\(0))))) ) ) ) # ( !\CPU|DP|stat|out\(1) & ( 
-- \CPU|instructionReg|out\(10) & ( (!\CPU|instructionReg|out\(9) & (!\CPU|instructionReg|out\(8) & ((\CPU|DP|stat|out\(0)) # (\CPU|DP|stat|out\(2))))) ) ) ) # ( \CPU|DP|stat|out\(1) & ( !\CPU|instructionReg|out\(10) & ( (!\CPU|instructionReg|out\(9) & 
-- (((\CPU|DP|stat|out\(0) & \CPU|instructionReg|out\(8))))) # (\CPU|instructionReg|out\(9) & ((!\CPU|instructionReg|out\(8) & ((!\CPU|DP|stat|out\(0)))) # (\CPU|instructionReg|out\(8) & (!\CPU|DP|stat|out\(2))))) ) ) ) # ( !\CPU|DP|stat|out\(1) & ( 
-- !\CPU|instructionReg|out\(10) & ( (!\CPU|instructionReg|out\(9) & (((\CPU|DP|stat|out\(0) & \CPU|instructionReg|out\(8))))) # (\CPU|instructionReg|out\(9) & ((!\CPU|instructionReg|out\(8) & ((!\CPU|DP|stat|out\(0)))) # (\CPU|instructionReg|out\(8) & 
-- (\CPU|DP|stat|out\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000011101001100000010111001001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|stat|ALT_INV_out\(2),
	datab => \CPU|instructionReg|ALT_INV_out\(9),
	datac => \CPU|DP|stat|ALT_INV_out\(0),
	datad => \CPU|instructionReg|ALT_INV_out\(8),
	datae => \CPU|DP|stat|ALT_INV_out\(1),
	dataf => \CPU|instructionReg|ALT_INV_out\(10),
	combout => \CPU|PCReg|out[7]~2_combout\);

-- Location: LABCELL_X63_Y12_N15
\CPU|PCReg|out[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PCReg|out[8]~3_combout\ = ( \CPU|instructionReg|out\(10) & ( (\CPU|FSM|Equal9~0_combout\ & (\CPU|PCReg|out[7]~0_combout\ & (!\CPU|instructionReg|out\(8) & !\CPU|instructionReg|out\(9)))) ) ) # ( !\CPU|instructionReg|out\(10) & ( 
-- (\CPU|FSM|Equal9~0_combout\ & (\CPU|PCReg|out[7]~0_combout\ & ((\CPU|instructionReg|out\(9)) # (\CPU|instructionReg|out\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000100010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	datac => \CPU|instructionReg|ALT_INV_out\(8),
	datad => \CPU|instructionReg|ALT_INV_out\(9),
	dataf => \CPU|instructionReg|ALT_INV_out\(10),
	combout => \CPU|PCReg|out[8]~3_combout\);

-- Location: LABCELL_X63_Y12_N54
\CPU|PCReg|out[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PCReg|out[8]~4_combout\ = ( \CPU|FSM|WideOr11~4_combout\ & ( \CPU|FSM|WideOr11~2_combout\ & ( (\CPU|FSM|WideOr33~6_combout\ & ((!\CPU|PCReg|out[8]~3_combout\) # ((\CPU|PCReg|out[7]~2_combout\ & \CPU|PCReg|out[7]~0_combout\)))) ) ) ) # ( 
-- \CPU|FSM|WideOr11~4_combout\ & ( !\CPU|FSM|WideOr11~2_combout\ & ( \CPU|FSM|WideOr33~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000110000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out[7]~2_combout\,
	datab => \CPU|PCReg|ALT_INV_out[8]~3_combout\,
	datac => \CPU|FSM|ALT_INV_WideOr33~6_combout\,
	datad => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr11~4_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr11~2_combout\,
	combout => \CPU|PCReg|out[8]~4_combout\);

-- Location: FF_X63_Y12_N4
\CPU|PCReg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[4]~4_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(4));

-- Location: FF_X65_Y11_N44
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
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(4));

-- Location: LABCELL_X68_Y9_N57
\CPU|mem_addr[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[4]~5_combout\ = ( \CPU|FSM|WideOr39~0_combout\ & ( \CPU|DataAddress|out\(4) & ( (\CPU|FSM|WideOr11~0_combout\) # (\CPU|PCReg|out\(4)) ) ) ) # ( !\CPU|FSM|WideOr39~0_combout\ & ( \CPU|DataAddress|out\(4) ) ) # ( \CPU|FSM|WideOr39~0_combout\ & 
-- ( !\CPU|DataAddress|out\(4) & ( (\CPU|PCReg|out\(4) & !\CPU|FSM|WideOr11~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000011111111111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(4),
	datad => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	dataf => \CPU|DataAddress|ALT_INV_out\(4),
	combout => \CPU|mem_addr[4]~5_combout\);

-- Location: IOIBUF_X89_Y8_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: MLABCELL_X65_Y10_N30
\x[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[1]~13_combout\ = ( \e1~combout\ & ( \SW[1]~input_o\ ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[1]~13_combout\);

-- Location: FF_X65_Y10_N29
\CPU|instructionReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \x[1]~13_combout\,
	sload => VCC,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(1));

-- Location: LABCELL_X62_Y12_N0
\CPU|branchcalc|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add0~25_sumout\ = SUM(( \CPU|PCReg|out\(0) ) + ( \CPU|instructionReg|out\(0) ) + ( !VCC ))
-- \CPU|branchcalc|Add0~26\ = CARRY(( \CPU|PCReg|out\(0) ) + ( \CPU|instructionReg|out\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PCReg|ALT_INV_out\(0),
	datac => \CPU|instructionReg|ALT_INV_out\(0),
	cin => GND,
	sumout => \CPU|branchcalc|Add0~25_sumout\,
	cout => \CPU|branchcalc|Add0~26\);

-- Location: LABCELL_X62_Y12_N3
\CPU|branchcalc|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add0~29_sumout\ = SUM(( \CPU|instructionReg|out\(1) ) + ( \CPU|PCReg|out\(1) ) + ( \CPU|branchcalc|Add0~26\ ))
-- \CPU|branchcalc|Add0~30\ = CARRY(( \CPU|instructionReg|out\(1) ) + ( \CPU|PCReg|out\(1) ) + ( \CPU|branchcalc|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(1),
	dataf => \CPU|PCReg|ALT_INV_out\(1),
	cin => \CPU|branchcalc|Add0~26\,
	sumout => \CPU|branchcalc|Add0~29_sumout\,
	cout => \CPU|branchcalc|Add0~30\);

-- Location: LABCELL_X62_Y12_N6
\CPU|branchcalc|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add0~33_sumout\ = SUM(( \CPU|instructionReg|out\(2) ) + ( \CPU|PCReg|out\(2) ) + ( \CPU|branchcalc|Add0~30\ ))
-- \CPU|branchcalc|Add0~34\ = CARRY(( \CPU|instructionReg|out\(2) ) + ( \CPU|PCReg|out\(2) ) + ( \CPU|branchcalc|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(2),
	datad => \CPU|instructionReg|ALT_INV_out\(2),
	cin => \CPU|branchcalc|Add0~30\,
	sumout => \CPU|branchcalc|Add0~33_sumout\,
	cout => \CPU|branchcalc|Add0~34\);

-- Location: LABCELL_X63_Y12_N45
\CPU|intoPC[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|intoPC[3]~3_combout\ = ( \CPU|branchcalc|Add1~13_sumout\ & ( (!\CPU|FSM|Equal9~0_combout\) # ((!\CPU|PCReg|out[7]~0_combout\) # ((\CPU|branchcalc|Add0~13_sumout\) # (\CPU|PCReg|out[7]~1_combout\))) ) ) # ( !\CPU|branchcalc|Add1~13_sumout\ & ( 
-- (\CPU|FSM|Equal9~0_combout\ & (\CPU|PCReg|out[7]~0_combout\ & (!\CPU|PCReg|out[7]~1_combout\ & \CPU|branchcalc|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000011101111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	datac => \CPU|PCReg|ALT_INV_out[7]~1_combout\,
	datad => \CPU|branchcalc|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|branchcalc|ALT_INV_Add1~13_sumout\,
	combout => \CPU|intoPC[3]~3_combout\);

-- Location: FF_X63_Y12_N46
\CPU|PCReg|out[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[3]~3_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out[3]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y9_N24
\CPU|mem_addr[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[3]~4_combout\ = ( \CPU|DataAddress|out\(3) & ( \CPU|FSM|WideOr39~0_combout\ & ( (\CPU|FSM|WideOr11~0_combout\) # (\CPU|PCReg|out[3]~DUPLICATE_q\) ) ) ) # ( !\CPU|DataAddress|out\(3) & ( \CPU|FSM|WideOr39~0_combout\ & ( 
-- (\CPU|PCReg|out[3]~DUPLICATE_q\ & !\CPU|FSM|WideOr11~0_combout\) ) ) ) # ( \CPU|DataAddress|out\(3) & ( !\CPU|FSM|WideOr39~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PCReg|ALT_INV_out[3]~DUPLICATE_q\,
	datad => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datae => \CPU|DataAddress|ALT_INV_out\(3),
	dataf => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \CPU|mem_addr[3]~4_combout\);

-- Location: MLABCELL_X65_Y9_N51
\x[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2]~14_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( \e1~combout\ & ( \SW[2]~input_o\ ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( \e1~combout\ & ( \SW[2]~input_o\ ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( 
-- !\e1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[2]~14_combout\);

-- Location: MLABCELL_X65_Y9_N12
\CPU|instructionReg|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|instructionReg|out[2]~feeder_combout\ = ( \x[2]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[2]~14_combout\,
	combout => \CPU|instructionReg|out[2]~feeder_combout\);

-- Location: FF_X65_Y9_N14
\CPU|instructionReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|instructionReg|out[2]~feeder_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(2));

-- Location: MLABCELL_X65_Y9_N18
\CPU|DP|muxintoregister|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux13~0_combout\ = ( \CPU|FSM|WideOr28~combout\ & ( \x[2]~14_combout\ & ( (!\CPU|FSM|WideOr30~combout\ & ((\CPU|PCReg|out\(2)))) # (\CPU|FSM|WideOr30~combout\ & (\CPU|DP|cRegister|out\(2))) ) ) ) # ( !\CPU|FSM|WideOr28~combout\ & ( 
-- \x[2]~14_combout\ & ( (!\CPU|FSM|WideOr30~combout\) # (\CPU|instructionReg|out\(2)) ) ) ) # ( \CPU|FSM|WideOr28~combout\ & ( !\x[2]~14_combout\ & ( (!\CPU|FSM|WideOr30~combout\ & ((\CPU|PCReg|out\(2)))) # (\CPU|FSM|WideOr30~combout\ & 
-- (\CPU|DP|cRegister|out\(2))) ) ) ) # ( !\CPU|FSM|WideOr28~combout\ & ( !\x[2]~14_combout\ & ( (\CPU|FSM|WideOr30~combout\ & \CPU|instructionReg|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|cRegister|ALT_INV_out\(2),
	datab => \CPU|PCReg|ALT_INV_out\(2),
	datac => \CPU|FSM|ALT_INV_WideOr30~combout\,
	datad => \CPU|instructionReg|ALT_INV_out\(2),
	datae => \CPU|FSM|ALT_INV_WideOr28~combout\,
	dataf => \ALT_INV_x[2]~14_combout\,
	combout => \CPU|DP|muxintoregister|Mux13~0_combout\);

-- Location: FF_X64_Y10_N8
\CPU|DP|REGFILE|toR7|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(2));

-- Location: LABCELL_X67_Y9_N0
\CPU|DP|REGFILE|toR4|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR4|out[2]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux13~0_combout\,
	combout => \CPU|DP|REGFILE|toR4|out[2]~feeder_combout\);

-- Location: FF_X67_Y9_N1
\CPU|DP|REGFILE|toR4|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR4|out[2]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(2));

-- Location: FF_X63_Y11_N32
\CPU|DP|REGFILE|toR6|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(2));

-- Location: FF_X65_Y9_N19
\CPU|DP|REGFILE|toR5|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux13~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(2));

-- Location: LABCELL_X67_Y10_N0
\CPU|DP|REGFILE|chooser|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector13~1_combout\ = ( \CPU|muxintoregister|Mux0~0_combout\ & ( \CPU|DP|REGFILE|toR5|out\(2) & ( (!\CPU|muxintoregister|Mux2~0_combout\ & ((!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(2))) # 
-- (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(2)))))) # (\CPU|muxintoregister|Mux2~0_combout\ & (((!\CPU|muxintoregister|Mux1~0_combout\)))) ) ) ) # ( \CPU|muxintoregister|Mux0~0_combout\ & ( !\CPU|DP|REGFILE|toR5|out\(2) & ( 
-- (!\CPU|muxintoregister|Mux2~0_combout\ & ((!\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR4|out\(2))) # (\CPU|muxintoregister|Mux1~0_combout\ & ((\CPU|DP|REGFILE|toR6|out\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010101000000000000000000111000001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datab => \CPU|DP|REGFILE|toR4|ALT_INV_out\(2),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(2),
	datae => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|DP|REGFILE|toR5|ALT_INV_out\(2),
	combout => \CPU|DP|REGFILE|chooser|Selector13~1_combout\);

-- Location: LABCELL_X64_Y9_N57
\CPU|DP|REGFILE|toR1|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR1|out[2]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux13~0_combout\,
	combout => \CPU|DP|REGFILE|toR1|out[2]~feeder_combout\);

-- Location: FF_X64_Y9_N58
\CPU|DP|REGFILE|toR1|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR1|out[2]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(2));

-- Location: FF_X66_Y9_N29
\CPU|DP|REGFILE|toR0|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(2));

-- Location: LABCELL_X66_Y9_N57
\CPU|DP|REGFILE|toR3|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[2]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux13~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[2]~feeder_combout\);

-- Location: FF_X66_Y9_N59
\CPU|DP|REGFILE|toR3|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[2]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(2));

-- Location: FF_X66_Y9_N2
\CPU|DP|REGFILE|toR2|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux13~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(2));

-- Location: LABCELL_X66_Y9_N0
\CPU|DP|REGFILE|chooser|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector13~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(2) & ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\CPU|DP|REGFILE|toR1|out\(2)) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(2) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & \CPU|DP|REGFILE|toR1|out\(2)) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(2) & ( !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(2))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(2)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(2) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR0|out\(2))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR3|out\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datab => \CPU|DP|REGFILE|toR1|ALT_INV_out\(2),
	datac => \CPU|DP|REGFILE|toR0|ALT_INV_out\(2),
	datad => \CPU|DP|REGFILE|toR3|ALT_INV_out\(2),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(2),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector13~0_combout\);

-- Location: LABCELL_X67_Y10_N21
\CPU|DP|REGFILE|chooser|Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector13~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector13~1_combout\ & ( \CPU|DP|REGFILE|chooser|Selector13~0_combout\ ) ) # ( !\CPU|DP|REGFILE|chooser|Selector13~1_combout\ & ( \CPU|DP|REGFILE|chooser|Selector13~0_combout\ & ( 
-- (!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\))) # (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(2))) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector13~1_combout\ & ( 
-- !\CPU|DP|REGFILE|chooser|Selector13~0_combout\ ) ) # ( !\CPU|DP|REGFILE|chooser|Selector13~1_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector13~0_combout\ & ( (\CPU|DP|REGFILE|toR7|out\(2) & \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111111110000010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(2),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector13~1_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector13~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector13~2_combout\);

-- Location: FF_X67_Y10_N38
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(2));

-- Location: LABCELL_X71_Y12_N27
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

-- Location: FF_X71_Y12_N29
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(2));

-- Location: FF_X65_Y9_N1
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
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(2));

-- Location: MLABCELL_X65_Y9_N0
\CPU|mem_addr[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[2]~3_combout\ = ( \CPU|DataAddress|out\(2) & ( \CPU|FSM|WideOr39~0_combout\ & ( (\CPU|FSM|WideOr11~0_combout\) # (\CPU|PCReg|out\(2)) ) ) ) # ( !\CPU|DataAddress|out\(2) & ( \CPU|FSM|WideOr39~0_combout\ & ( (\CPU|PCReg|out\(2) & 
-- !\CPU|FSM|WideOr11~0_combout\) ) ) ) # ( \CPU|DataAddress|out\(2) & ( !\CPU|FSM|WideOr39~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PCReg|ALT_INV_out\(2),
	datad => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datae => \CPU|DataAddress|ALT_INV_out\(2),
	dataf => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \CPU|mem_addr[2]~3_combout\);

-- Location: LABCELL_X66_Y11_N3
\x[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[4]~5_combout\ = ( \e1~combout\ & ( \SW[4]~input_o\ ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a4\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[4]~5_combout\);

-- Location: FF_X66_Y11_N2
\CPU|instructionReg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \x[4]~5_combout\,
	sload => VCC,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(4));

-- Location: LABCELL_X67_Y10_N36
\CPU|DP|Bin[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[1]~1_combout\ = ( \CPU|DP|bRegister|out\(0) & ( (!\CPU|instructionReg|out\(4)) # (\CPU|DP|bRegister|out\(2)) ) ) # ( !\CPU|DP|bRegister|out\(0) & ( (\CPU|instructionReg|out\(4) & \CPU|DP|bRegister|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(4),
	datad => \CPU|DP|bRegister|ALT_INV_out\(2),
	dataf => \CPU|DP|bRegister|ALT_INV_out\(0),
	combout => \CPU|DP|Bin[1]~1_combout\);

-- Location: LABCELL_X70_Y13_N3
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

-- Location: FF_X70_Y13_N4
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(1));

-- Location: FF_X65_Y9_N55
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
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(1));

-- Location: MLABCELL_X65_Y9_N54
\CPU|mem_addr[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[1]~2_combout\ = ( \CPU|DataAddress|out\(1) & ( \CPU|FSM|WideOr39~0_combout\ & ( (\CPU|FSM|WideOr11~0_combout\) # (\CPU|PCReg|out\(1)) ) ) ) # ( !\CPU|DataAddress|out\(1) & ( \CPU|FSM|WideOr39~0_combout\ & ( (\CPU|PCReg|out\(1) & 
-- !\CPU|FSM|WideOr11~0_combout\) ) ) ) # ( \CPU|DataAddress|out\(1) & ( !\CPU|FSM|WideOr39~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PCReg|ALT_INV_out\(1),
	datad => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datae => \CPU|DataAddress|ALT_INV_out\(1),
	dataf => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \CPU|mem_addr[1]~2_combout\);

-- Location: MLABCELL_X65_Y11_N12
\x[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[5]~10_combout\ = ( \e1~combout\ & ( \SW[5]~input_o\ ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[5]~10_combout\);

-- Location: FF_X65_Y11_N14
\CPU|instructionReg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[5]~10_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(5));

-- Location: LABCELL_X62_Y12_N45
\CPU|branchcalc|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|branchcalc|Add1~5_sumout\ = SUM(( \CPU|PCReg|out[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|branchcalc|Add1~18\ ))
-- \CPU|branchcalc|Add1~6\ = CARRY(( \CPU|PCReg|out[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|branchcalc|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out[5]~DUPLICATE_q\,
	cin => \CPU|branchcalc|Add1~18\,
	sumout => \CPU|branchcalc|Add1~5_sumout\,
	cout => \CPU|branchcalc|Add1~6\);

-- Location: LABCELL_X63_Y12_N51
\CPU|intoPC[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|intoPC[5]~1_combout\ = ( \CPU|branchcalc|Add1~5_sumout\ & ( (!\CPU|FSM|Equal9~0_combout\) # (((!\CPU|PCReg|out[7]~0_combout\) # (\CPU|branchcalc|Add0~5_sumout\)) # (\CPU|PCReg|out[7]~1_combout\)) ) ) # ( !\CPU|branchcalc|Add1~5_sumout\ & ( 
-- (\CPU|FSM|Equal9~0_combout\ & (!\CPU|PCReg|out[7]~1_combout\ & (\CPU|branchcalc|Add0~5_sumout\ & \CPU|PCReg|out[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~1_combout\,
	datac => \CPU|branchcalc|ALT_INV_Add0~5_sumout\,
	datad => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	dataf => \CPU|branchcalc|ALT_INV_Add1~5_sumout\,
	combout => \CPU|intoPC[5]~1_combout\);

-- Location: FF_X63_Y12_N52
\CPU|PCReg|out[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[5]~1_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out[5]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y12_N48
\CPU|intoPC[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|intoPC[6]~0_combout\ = ( \CPU|branchcalc|Add0~1_sumout\ & ( ((\CPU|FSM|Equal9~0_combout\ & (!\CPU|PCReg|out[7]~1_combout\ & \CPU|PCReg|out[7]~0_combout\))) # (\CPU|branchcalc|Add1~1_sumout\) ) ) # ( !\CPU|branchcalc|Add0~1_sumout\ & ( 
-- (\CPU|branchcalc|Add1~1_sumout\ & ((!\CPU|FSM|Equal9~0_combout\) # ((!\CPU|PCReg|out[7]~0_combout\) # (\CPU|PCReg|out[7]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~1_combout\,
	datac => \CPU|branchcalc|ALT_INV_Add1~1_sumout\,
	datad => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	dataf => \CPU|branchcalc|ALT_INV_Add0~1_sumout\,
	combout => \CPU|intoPC[6]~0_combout\);

-- Location: FF_X63_Y12_N49
\CPU|PCReg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[6]~0_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(6));

-- Location: LABCELL_X66_Y10_N0
\CPU|FSM|mem_cmd[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|mem_cmd\(0) = ( \CPU|FSM|WideNor24~0_combout\ & ( \CPU|FSM|always0~14_combout\ & ( \CPU|FSM|STATE|out\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datae => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~14_combout\,
	combout => \CPU|FSM|mem_cmd\(0));

-- Location: MLABCELL_X65_Y11_N15
\e1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~4_combout\ = ( \CPU|FSM|WideOr11~0_combout\ & ( (\CPU|DataAddress|out\(6) & !\CPU|FSM|mem_cmd\(0)) ) ) # ( !\CPU|FSM|WideOr11~0_combout\ & ( (!\CPU|FSM|mem_cmd\(0) & ((!\CPU|FSM|WideOr39~0_combout\ & (\CPU|DataAddress|out\(6))) # 
-- (\CPU|FSM|WideOr39~0_combout\ & ((\CPU|PCReg|out\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DataAddress|ALT_INV_out\(6),
	datab => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	datac => \CPU|PCReg|ALT_INV_out\(6),
	datad => \CPU|FSM|ALT_INV_mem_cmd\(0),
	dataf => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	combout => \e1~4_combout\);

-- Location: MLABCELL_X65_Y13_N42
\x[12]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[12]~1_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( (!\e1~1_combout\) # ((!\e1~3_combout\) # ((!\e1~0_combout\) # (!\e1~2_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~1_combout\,
	datab => \ALT_INV_e1~3_combout\,
	datac => \ALT_INV_e1~0_combout\,
	datad => \ALT_INV_e1~2_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \x[12]~1_combout\);

-- Location: FF_X65_Y13_N44
\CPU|instructionReg|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[12]~1_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(12));

-- Location: LABCELL_X63_Y13_N12
\CPU|FSM|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal0~2_combout\ = ( \CPU|instructionReg|out\(12) & ( (\CPU|instructionReg|out[14]~DUPLICATE_q\ & !\CPU|instructionReg|out[13]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	datac => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	datae => \CPU|instructionReg|ALT_INV_out\(12),
	combout => \CPU|FSM|Equal0~2_combout\);

-- Location: LABCELL_X64_Y13_N21
\CPU|FSM|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal0~3_combout\ = ( \CPU|FSM|Equal0~0_combout\ & ( (\CPU|FSM|Equal0~2_combout\ & \CPU|FSM|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal0~2_combout\,
	datad => \CPU|FSM|ALT_INV_Equal0~1_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	combout => \CPU|FSM|Equal0~3_combout\);

-- Location: LABCELL_X64_Y12_N9
\CPU|FSM|always0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~30_combout\ = ( !\CPU|FSM|STATE|out\(5) & ( (!\CPU|FSM|STATE|out\(4) & ((!\CPU|FSM|STATE|out\(1) & (!\CPU|FSM|STATE|out\(0) & \CPU|FSM|STATE|out\(2))) # (\CPU|FSM|STATE|out\(1) & (\CPU|FSM|STATE|out\(0) & !\CPU|FSM|STATE|out\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010000000000100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(1),
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|STATE|ALT_INV_out\(4),
	datad => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(5),
	combout => \CPU|FSM|always0~30_combout\);

-- Location: LABCELL_X64_Y12_N48
\CPU|FSM|always0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~31_combout\ = ( \CPU|FSM|always0~3_combout\ & ( (!\CPU|FSM|always0~30_combout\ & (!\CPU|FSM|STATE|out\(3) & \CPU|FSM|WideNor15~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_always0~30_combout\,
	datac => \CPU|FSM|STATE|ALT_INV_out\(3),
	datad => \CPU|FSM|ALT_INV_WideNor15~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~3_combout\,
	combout => \CPU|FSM|always0~31_combout\);

-- Location: LABCELL_X61_Y12_N57
\CPU|FSM|next_reset_state[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[4]~4_combout\ = ( \CPU|FSM|always0~32_combout\ & ( !\CPU|FSM|Equal1~0_combout\ & ( (!\CPU|FSM|always0~31_combout\ & ((!\CPU|FSM|Equal0~4_combout\) # (!\CPU|FSM|WideNor7~0_combout\))) ) ) ) # ( !\CPU|FSM|always0~32_combout\ & ( 
-- !\CPU|FSM|Equal1~0_combout\ & ( !\CPU|FSM|always0~31_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~31_combout\,
	datab => \CPU|FSM|ALT_INV_Equal0~4_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor7~0_combout\,
	datae => \CPU|FSM|ALT_INV_always0~32_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal1~0_combout\,
	combout => \CPU|FSM|next_reset_state[4]~4_combout\);

-- Location: LABCELL_X68_Y12_N6
\CPU|FSM|WideOr11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr11~1_combout\ = ( \CPU|FSM|always0~37_combout\ & ( (!\CPU|FSM|always0~40_combout\ & ((!\CPU|FSM|WideNor12~1_combout\) # (\CPU|FSM|STATE|out\(2)))) ) ) # ( !\CPU|FSM|always0~37_combout\ & ( (!\CPU|FSM|always0~40_combout\ & 
-- (((!\CPU|FSM|WideNor12~1_combout\) # (\CPU|FSM|STATE|out\(2))) # (\CPU|FSM|STATE|out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101110000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(3),
	datab => \CPU|FSM|STATE|ALT_INV_out\(2),
	datac => \CPU|FSM|ALT_INV_WideNor12~1_combout\,
	datad => \CPU|FSM|ALT_INV_always0~40_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~37_combout\,
	combout => \CPU|FSM|WideOr11~1_combout\);

-- Location: LABCELL_X64_Y13_N30
\CPU|FSM|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal10~0_combout\ = ( \CPU|FSM|Equal0~0_combout\ & ( (!\CPU|instructionReg|out\(15) & (\CPU|instructionReg|out[11]~DUPLICATE_q\ & \CPU|FSM|Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instructionReg|ALT_INV_out\(15),
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	datad => \CPU|FSM|ALT_INV_Equal0~2_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal0~0_combout\,
	combout => \CPU|FSM|Equal10~0_combout\);

-- Location: LABCELL_X64_Y13_N51
\CPU|FSM|WideNor27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor27~1_combout\ = ( \CPU|FSM|WideNor27~0_combout\ & ( !\CPU|FSM|STATE|out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	dataf => \CPU|FSM|ALT_INV_WideNor27~0_combout\,
	combout => \CPU|FSM|WideNor27~1_combout\);

-- Location: LABCELL_X64_Y13_N0
\CPU|FSM|always0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~28_combout\ = ( !\CPU|FSM|WideNor24~0_combout\ & ( \CPU|FSM|always0~14_combout\ & ( (\CPU|FSM|Equal10~0_combout\ & (\CPU|FSM|always0~24_combout\ & (!\CPU|FSM|WideNor27~1_combout\ & \CPU|FSM|always0~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal10~0_combout\,
	datab => \CPU|FSM|ALT_INV_always0~24_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor27~1_combout\,
	datad => \CPU|FSM|ALT_INV_always0~22_combout\,
	datae => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~14_combout\,
	combout => \CPU|FSM|always0~28_combout\);

-- Location: LABCELL_X61_Y12_N27
\CPU|FSM|next_reset_state[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[4]~5_combout\ = ( \CPU|FSM|WideOr11~1_combout\ & ( !\CPU|FSM|always0~28_combout\ & ( (!\CPU|FSM|WideOr7~2_combout\ & (\CPU|FSM|next_reset_state[4]~4_combout\ & \CPU|FSM|WideOr33~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr7~2_combout\,
	datab => \CPU|FSM|ALT_INV_next_reset_state[4]~4_combout\,
	datac => \CPU|FSM|ALT_INV_WideOr33~2_combout\,
	datae => \CPU|FSM|ALT_INV_WideOr11~1_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~28_combout\,
	combout => \CPU|FSM|next_reset_state[4]~5_combout\);

-- Location: LABCELL_X66_Y12_N57
\CPU|FSM|next_reset_state[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[4]~6_combout\ = ( \CPU|FSM|next_reset_state[4]~5_combout\ & ( (\KEY[1]~input_o\ & (\CPU|FSM|next_reset_state[5]~0_combout\ & (!\CPU|FSM|always0~21_combout\ & !\CPU|FSM|Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \CPU|FSM|ALT_INV_next_reset_state[5]~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~21_combout\,
	datad => \CPU|FSM|ALT_INV_Equal0~3_combout\,
	dataf => \CPU|FSM|ALT_INV_next_reset_state[4]~5_combout\,
	combout => \CPU|FSM|next_reset_state[4]~6_combout\);

-- Location: FF_X66_Y12_N59
\CPU|FSM|STATE|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_reset_state[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|STATE|out\(4));

-- Location: LABCELL_X66_Y12_N9
\CPU|FSM|WideNor12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor12~1_combout\ = ( !\CPU|FSM|STATE|out\(0) & ( (!\CPU|FSM|STATE|out\(5) & (\CPU|FSM|STATE|out\(1) & !\CPU|FSM|STATE|out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(5),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|STATE|ALT_INV_out\(4),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(0),
	combout => \CPU|FSM|WideNor12~1_combout\);

-- Location: LABCELL_X64_Y12_N30
\CPU|FSM|WideOr13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr13~0_combout\ = ( \CPU|FSM|always0~37_combout\ & ( ((\CPU|FSM|WideNor12~1_combout\ & \CPU|FSM|WideNor12~0_combout\)) # (\CPU|FSM|always0~31_combout\) ) ) # ( !\CPU|FSM|always0~37_combout\ & ( \CPU|FSM|always0~31_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|ALT_INV_WideNor12~1_combout\,
	datac => \CPU|FSM|ALT_INV_always0~31_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor12~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~37_combout\,
	combout => \CPU|FSM|WideOr13~0_combout\);

-- Location: FF_X68_Y13_N2
\CPU|DP|aRegister|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|chooser|Selector9~2_combout\,
	ena => \CPU|FSM|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|aRegister|out\(6));

-- Location: LABCELL_X71_Y12_N54
\CPU|DP|Ain[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Ain[6]~7_combout\ = ( \CPU|DP|aRegister|out\(6) & ( !\CPU|FSM|WideOr25~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|DP|aRegister|ALT_INV_out\(6),
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|Ain[6]~7_combout\);

-- Location: LABCELL_X71_Y12_N48
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

-- Location: LABCELL_X71_Y12_N36
\CPU|DP|CMP|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux9~0_combout\ = ( \CPU|FSM|WideOr25~combout\ & ( (!\CPU|DP|Bin[6]~9_combout\ & \CPU|instructionReg|out[11]~DUPLICATE_q\) ) ) # ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|DP|Bin[6]~9_combout\ & ((\CPU|instructionReg|out[11]~DUPLICATE_q\))) # 
-- (\CPU|DP|Bin[6]~9_combout\ & (\CPU|DP|aRegister|out\(6) & !\CPU|instructionReg|out[11]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001100000000111100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|ALT_INV_Bin[6]~9_combout\,
	datac => \CPU|DP|aRegister|ALT_INV_out\(6),
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux9~0_combout\);

-- Location: FF_X71_Y12_N50
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(6));

-- Location: MLABCELL_X65_Y11_N18
\CPU|DP|muxintoregister|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux9~0_combout\ = ( \x[6]~12_combout\ & ( \CPU|FSM|WideOr30~combout\ & ( (!\CPU|FSM|WideOr28~combout\ & ((\CPU|instructionReg|out\(6)))) # (\CPU|FSM|WideOr28~combout\ & (\CPU|DP|cRegister|out\(6))) ) ) ) # ( !\x[6]~12_combout\ & ( 
-- \CPU|FSM|WideOr30~combout\ & ( (!\CPU|FSM|WideOr28~combout\ & ((\CPU|instructionReg|out\(6)))) # (\CPU|FSM|WideOr28~combout\ & (\CPU|DP|cRegister|out\(6))) ) ) ) # ( \x[6]~12_combout\ & ( !\CPU|FSM|WideOr30~combout\ & ( (!\CPU|FSM|WideOr28~combout\) # 
-- (\CPU|PCReg|out\(6)) ) ) ) # ( !\x[6]~12_combout\ & ( !\CPU|FSM|WideOr30~combout\ & ( (\CPU|FSM|WideOr28~combout\ & \CPU|PCReg|out\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|cRegister|ALT_INV_out\(6),
	datab => \CPU|FSM|ALT_INV_WideOr28~combout\,
	datac => \CPU|instructionReg|ALT_INV_out\(6),
	datad => \CPU|PCReg|ALT_INV_out\(6),
	datae => \ALT_INV_x[6]~12_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr30~combout\,
	combout => \CPU|DP|muxintoregister|Mux9~0_combout\);

-- Location: LABCELL_X64_Y10_N6
\CPU|DP|REGFILE|toR7|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR7|out[6]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux9~0_combout\,
	combout => \CPU|DP|REGFILE|toR7|out[6]~feeder_combout\);

-- Location: FF_X64_Y10_N7
\CPU|DP|REGFILE|toR7|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR7|out[6]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(6));

-- Location: FF_X65_Y11_N20
\CPU|DP|REGFILE|toR5|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux9~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(6));

-- Location: FF_X63_Y11_N13
\CPU|DP|REGFILE|toR6|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux9~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(6));

-- Location: FF_X68_Y13_N20
\CPU|DP|REGFILE|toR4|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux9~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(6));

-- Location: LABCELL_X68_Y13_N18
\CPU|DP|REGFILE|chooser|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector9~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(6) & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(6) & !\CPU|muxintoregister|Mux1~0_combout\)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR4|out\(6) & ( \CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & (\CPU|DP|REGFILE|toR5|out\(6) & !\CPU|muxintoregister|Mux1~0_combout\)) ) ) ) # ( \CPU|DP|REGFILE|toR4|out\(6) & ( 
-- !\CPU|muxintoregister|Mux2~0_combout\ & ( (\CPU|muxintoregister|Mux0~0_combout\ & ((!\CPU|muxintoregister|Mux1~0_combout\) # (\CPU|DP|REGFILE|toR6|out\(6)))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(6) & ( !\CPU|muxintoregister|Mux2~0_combout\ & ( 
-- (\CPU|muxintoregister|Mux0~0_combout\ & (\CPU|muxintoregister|Mux1~0_combout\ & \CPU|DP|REGFILE|toR6|out\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010100000101010100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	datab => \CPU|DP|REGFILE|toR5|ALT_INV_out\(6),
	datac => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \CPU|DP|REGFILE|toR6|ALT_INV_out\(6),
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(6),
	dataf => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector9~1_combout\);

-- Location: LABCELL_X66_Y9_N48
\CPU|DP|REGFILE|toR3|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[6]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux9~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[6]~feeder_combout\);

-- Location: FF_X66_Y9_N50
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

-- Location: LABCELL_X66_Y9_N30
\CPU|DP|REGFILE|toR0|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[6]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux9~0_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[6]~feeder_combout\);

-- Location: FF_X66_Y9_N32
\CPU|DP|REGFILE|toR0|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[6]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(6));

-- Location: FF_X65_Y10_N7
\CPU|DP|REGFILE|toR1|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux9~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(6));

-- Location: FF_X66_Y9_N38
\CPU|DP|REGFILE|toR2|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux9~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(6));

-- Location: LABCELL_X66_Y9_N36
\CPU|DP|REGFILE|chooser|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector9~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(6) & ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) # (\CPU|DP|REGFILE|toR3|out\(6)) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(6) & 
-- ( \CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\CPU|DP|REGFILE|toR3|out\(6) & !\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(6) & ( !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR0|out\(6))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR1|out\(6)))) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(6) & ( 
-- !\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (\CPU|DP|REGFILE|toR0|out\(6))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((\CPU|DP|REGFILE|toR1|out\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR3|ALT_INV_out\(6),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(6),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \CPU|DP|REGFILE|toR1|ALT_INV_out\(6),
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(6),
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector9~0_combout\);

-- Location: LABCELL_X68_Y13_N0
\CPU|DP|REGFILE|chooser|Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector9~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector9~0_combout\ & ( \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector9~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(6)) ) ) ) # ( 
-- !\CPU|DP|REGFILE|chooser|Selector9~0_combout\ & ( \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|chooser|Selector9~1_combout\) # (\CPU|DP|REGFILE|toR7|out\(6)) ) ) ) # ( \CPU|DP|REGFILE|chooser|Selector9~0_combout\ & ( 
-- !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( (!\CPU|DP|REGFILE|chooser|Selector10~0_combout\) # (\CPU|DP|REGFILE|chooser|Selector9~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector9~0_combout\ & ( 
-- !\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector9~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111110000111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(6),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector9~1_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector9~0_combout\,
	dataf => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector9~2_combout\);

-- Location: FF_X68_Y13_N44
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(6));

-- Location: LABCELL_X71_Y12_N39
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

-- Location: LABCELL_X68_Y12_N57
\CPU|DP|CMP|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux10~0_combout\ = ( !\rtl~9_combout\ & ( \CPU|FSM|WideOr25~combout\ & ( \CPU|instructionReg|out\(11) ) ) ) # ( \rtl~9_combout\ & ( !\CPU|FSM|WideOr25~combout\ & ( (!\CPU|instructionReg|out\(11) & \CPU|DP|aRegister|out\(5)) ) ) ) # ( 
-- !\rtl~9_combout\ & ( !\CPU|FSM|WideOr25~combout\ & ( \CPU|instructionReg|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001010101001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instructionReg|ALT_INV_out\(11),
	datad => \CPU|DP|aRegister|ALT_INV_out\(5),
	datae => \ALT_INV_rtl~9_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux10~0_combout\);

-- Location: FF_X71_Y12_N40
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(5));

-- Location: FF_X65_Y9_N34
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
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(5));

-- Location: FF_X63_Y12_N53
\CPU|PCReg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[5]~1_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(5));

-- Location: MLABCELL_X65_Y11_N48
\e1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~0_combout\ = ( \CPU|DataAddress|out\(7) & ( \CPU|FSM|WideOr39~0_combout\ & ( (!\CPU|PCReg|out\(7) & (!\CPU|FSM|WideOr11~0_combout\ & !\CPU|PCReg|out\(5))) ) ) ) # ( !\CPU|DataAddress|out\(7) & ( \CPU|FSM|WideOr39~0_combout\ & ( 
-- (!\CPU|FSM|WideOr11~0_combout\ & (((!\CPU|PCReg|out\(7) & !\CPU|PCReg|out\(5))))) # (\CPU|FSM|WideOr11~0_combout\ & (!\CPU|DataAddress|out\(5))) ) ) ) # ( !\CPU|DataAddress|out\(7) & ( !\CPU|FSM|WideOr39~0_combout\ & ( !\CPU|DataAddress|out\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000011001010000010101100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DataAddress|ALT_INV_out\(5),
	datab => \CPU|PCReg|ALT_INV_out\(7),
	datac => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datad => \CPU|PCReg|ALT_INV_out\(5),
	datae => \CPU|DataAddress|ALT_INV_out\(7),
	dataf => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \e1~0_combout\);

-- Location: MLABCELL_X65_Y13_N30
\x[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[15]~2_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (!\e1~0_combout\) # ((!\e1~3_combout\) # ((!\e1~1_combout\) # (!\e1~2_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~0_combout\,
	datab => \ALT_INV_e1~3_combout\,
	datac => \ALT_INV_e1~1_combout\,
	datad => \ALT_INV_e1~2_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \x[15]~2_combout\);

-- Location: FF_X65_Y13_N32
\CPU|instructionReg|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[15]~2_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(15));

-- Location: MLABCELL_X65_Y13_N21
\CPU|FSM|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal7~1_combout\ = ( \CPU|FSM|Equal7~0_combout\ & ( (\CPU|instructionReg|out\(15) & (\CPU|FSM|WideNor20~0_combout\ & \CPU|FSM|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instructionReg|ALT_INV_out\(15),
	datac => \CPU|FSM|ALT_INV_WideNor20~0_combout\,
	datad => \CPU|FSM|ALT_INV_Equal5~0_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal7~0_combout\,
	combout => \CPU|FSM|Equal7~1_combout\);

-- Location: LABCELL_X64_Y13_N27
\CPU|FSM|WideOr11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr11~0_combout\ = ( \CPU|FSM|always0~17_combout\ & ( \CPU|FSM|always0~18_combout\ ) ) # ( !\CPU|FSM|always0~17_combout\ & ( \CPU|FSM|always0~18_combout\ ) ) # ( \CPU|FSM|always0~17_combout\ & ( !\CPU|FSM|always0~18_combout\ & ( 
-- (\CPU|FSM|Equal7~1_combout\ & \CPU|FSM|always0~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal7~1_combout\,
	datad => \CPU|FSM|ALT_INV_always0~12_combout\,
	datae => \CPU|FSM|ALT_INV_always0~17_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~18_combout\,
	combout => \CPU|FSM|WideOr11~0_combout\);

-- Location: FF_X65_Y11_N46
\CPU|DataAddress|out[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|cRegister|out\(0),
	sload => VCC,
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out[0]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y9_N24
\CPU|mem_addr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|mem_addr[0]~1_combout\ = ( \CPU|FSM|WideOr39~0_combout\ & ( (!\CPU|FSM|WideOr11~0_combout\ & (\CPU|PCReg|out\(0))) # (\CPU|FSM|WideOr11~0_combout\ & ((\CPU|DataAddress|out[0]~DUPLICATE_q\))) ) ) # ( !\CPU|FSM|WideOr39~0_combout\ & ( 
-- \CPU|DataAddress|out[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001001110010011100001111000011110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out\(0),
	datac => \CPU|DataAddress|ALT_INV_out[0]~DUPLICATE_q\,
	datae => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \CPU|mem_addr[0]~1_combout\);

-- Location: IOIBUF_X89_Y11_N95
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X66_Y11_N24
\x[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[8]~8_combout\ = ( \SW[8]~input_o\ & ( \e1~combout\ ) ) # ( \SW[8]~input_o\ & ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a8\ ) ) ) # ( !\SW[8]~input_o\ & ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a8\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[8]~8_combout\);

-- Location: FF_X66_Y11_N26
\CPU|instructionReg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[8]~8_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(8));

-- Location: LABCELL_X63_Y12_N30
\CPU|PCReg|out[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PCReg|out[7]~1_combout\ = ( \CPU|instructionReg|out\(10) & ( (\CPU|instructionReg|out\(9)) # (\CPU|instructionReg|out\(8)) ) ) # ( !\CPU|instructionReg|out\(10) & ( (!\CPU|instructionReg|out\(8) & !\CPU|instructionReg|out\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out\(8),
	datad => \CPU|instructionReg|ALT_INV_out\(9),
	dataf => \CPU|instructionReg|ALT_INV_out\(10),
	combout => \CPU|PCReg|out[7]~1_combout\);

-- Location: LABCELL_X63_Y12_N0
\CPU|intoPC[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|intoPC[0]~6_combout\ = ( \CPU|branchcalc|Add0~25_sumout\ & ( ((\CPU|FSM|Equal9~0_combout\ & (!\CPU|PCReg|out[7]~1_combout\ & \CPU|PCReg|out[7]~0_combout\))) # (\CPU|branchcalc|Add1~25_sumout\) ) ) # ( !\CPU|branchcalc|Add0~25_sumout\ & ( 
-- (\CPU|branchcalc|Add1~25_sumout\ & ((!\CPU|FSM|Equal9~0_combout\) # ((!\CPU|PCReg|out[7]~0_combout\) # (\CPU|PCReg|out[7]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~1_combout\,
	datac => \CPU|branchcalc|ALT_INV_Add1~25_sumout\,
	datad => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	dataf => \CPU|branchcalc|ALT_INV_Add0~25_sumout\,
	combout => \CPU|intoPC[0]~6_combout\);

-- Location: FF_X63_Y12_N1
\CPU|PCReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[0]~6_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(0));

-- Location: FF_X65_Y11_N47
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
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(0));

-- Location: MLABCELL_X65_Y11_N24
\e1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~2_combout\ = ( \CPU|DataAddress|out\(8) & ( \CPU|FSM|WideOr39~0_combout\ & ( (!\CPU|FSM|WideOr11~0_combout\ & (!\CPU|PCReg|out\(0) & ((\CPU|PCReg|out\(8))))) # (\CPU|FSM|WideOr11~0_combout\ & (((!\CPU|DataAddress|out\(0))))) ) ) ) # ( 
-- !\CPU|DataAddress|out\(8) & ( \CPU|FSM|WideOr39~0_combout\ & ( (!\CPU|PCReg|out\(0) & (!\CPU|FSM|WideOr11~0_combout\ & \CPU|PCReg|out\(8))) ) ) ) # ( \CPU|DataAddress|out\(8) & ( !\CPU|FSM|WideOr39~0_combout\ & ( !\CPU|DataAddress|out\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000101000000000110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(0),
	datab => \CPU|DataAddress|ALT_INV_out\(0),
	datac => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datad => \CPU|PCReg|ALT_INV_out\(8),
	datae => \CPU|DataAddress|ALT_INV_out\(8),
	dataf => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \e1~2_combout\);

-- Location: MLABCELL_X65_Y13_N36
\x[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[14]~4_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( (!\e1~1_combout\) # ((!\e1~2_combout\) # ((!\e1~0_combout\) # (!\e1~3_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a14\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~1_combout\,
	datab => \ALT_INV_e1~2_combout\,
	datac => \ALT_INV_e1~0_combout\,
	datad => \ALT_INV_e1~3_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \x[14]~4_combout\);

-- Location: FF_X65_Y13_N38
\CPU|instructionReg|out[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[14]~4_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out[14]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y13_N51
\CPU|FSM|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal4~0_combout\ = ( !\CPU|instructionReg|out\(15) & ( (\CPU|instructionReg|out[13]~DUPLICATE_q\ & \CPU|instructionReg|out[14]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	datad => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out\(15),
	combout => \CPU|FSM|Equal4~0_combout\);

-- Location: MLABCELL_X65_Y13_N24
\CPU|FSM|always0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~18_combout\ = ( \CPU|FSM|always0~10_combout\ & ( (\CPU|FSM|Equal4~0_combout\ & (!\CPU|FSM|WideNor19~combout\ & (\CPU|FSM|Equal5~0_combout\ & \CPU|FSM|WideNor20~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal4~0_combout\,
	datab => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datac => \CPU|FSM|ALT_INV_Equal5~0_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor20~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~10_combout\,
	combout => \CPU|FSM|always0~18_combout\);

-- Location: LABCELL_X63_Y13_N51
\CPU|FSM|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr7~0_combout\ = ( \CPU|FSM|WideNor7~0_combout\ & ( \CPU|FSM|always0~32_combout\ & ( (!\CPU|FSM|Equal0~4_combout\ & (!\CPU|FSM|always0~20_combout\ & ((!\CPU|FSM|always0~10_combout\) # (!\CPU|FSM|WideNor19~combout\)))) ) ) ) # ( 
-- !\CPU|FSM|WideNor7~0_combout\ & ( \CPU|FSM|always0~32_combout\ & ( (!\CPU|FSM|always0~20_combout\ & ((!\CPU|FSM|always0~10_combout\) # (!\CPU|FSM|WideNor19~combout\))) ) ) ) # ( \CPU|FSM|WideNor7~0_combout\ & ( !\CPU|FSM|always0~32_combout\ & ( 
-- (!\CPU|FSM|always0~20_combout\ & ((!\CPU|FSM|always0~10_combout\) # (!\CPU|FSM|WideNor19~combout\))) ) ) ) # ( !\CPU|FSM|WideNor7~0_combout\ & ( !\CPU|FSM|always0~32_combout\ & ( (!\CPU|FSM|always0~20_combout\ & ((!\CPU|FSM|always0~10_combout\) # 
-- (!\CPU|FSM|WideNor19~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal0~4_combout\,
	datab => \CPU|FSM|ALT_INV_always0~10_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor19~combout\,
	datad => \CPU|FSM|ALT_INV_always0~20_combout\,
	datae => \CPU|FSM|ALT_INV_WideNor7~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~32_combout\,
	combout => \CPU|FSM|WideOr7~0_combout\);

-- Location: LABCELL_X63_Y13_N6
\CPU|FSM|WideOr7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr7~1_combout\ = ( \CPU|FSM|always0~17_combout\ & ( \CPU|FSM|WideOr7~0_combout\ & ( (!\CPU|FSM|always0~18_combout\ & (!\CPU|FSM|always0~31_combout\ & ((!\CPU|FSM|always0~12_combout\) # (!\CPU|FSM|Equal7~1_combout\)))) ) ) ) # ( 
-- !\CPU|FSM|always0~17_combout\ & ( \CPU|FSM|WideOr7~0_combout\ & ( (!\CPU|FSM|always0~18_combout\ & !\CPU|FSM|always0~31_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~18_combout\,
	datab => \CPU|FSM|ALT_INV_always0~31_combout\,
	datac => \CPU|FSM|ALT_INV_always0~12_combout\,
	datad => \CPU|FSM|ALT_INV_Equal7~1_combout\,
	datae => \CPU|FSM|ALT_INV_always0~17_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr7~0_combout\,
	combout => \CPU|FSM|WideOr7~1_combout\);

-- Location: LABCELL_X64_Y12_N3
\CPU|FSM|next_reset_state[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[3]~1_combout\ = ( !\CPU|FSM|always0~28_combout\ & ( (\CPU|FSM|WideOr7~1_combout\ & (\CPU|FSM|WideOr20~0_combout\ & \CPU|FSM|WideOr33~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr7~1_combout\,
	datac => \CPU|FSM|ALT_INV_WideOr20~0_combout\,
	datad => \CPU|FSM|ALT_INV_WideOr33~1_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~28_combout\,
	combout => \CPU|FSM|next_reset_state[3]~1_combout\);

-- Location: LABCELL_X66_Y12_N54
\CPU|FSM|next_reset_state[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[3]~2_combout\ = ( !\CPU|FSM|Equal0~3_combout\ & ( (\KEY[1]~input_o\ & (\CPU|FSM|next_reset_state[5]~0_combout\ & (\CPU|FSM|next_reset_state[3]~1_combout\ & !\CPU|FSM|always0~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \CPU|FSM|ALT_INV_next_reset_state[5]~0_combout\,
	datac => \CPU|FSM|ALT_INV_next_reset_state[3]~1_combout\,
	datad => \CPU|FSM|ALT_INV_always0~21_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal0~3_combout\,
	combout => \CPU|FSM|next_reset_state[3]~2_combout\);

-- Location: FF_X66_Y12_N56
\CPU|FSM|STATE|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_reset_state[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|STATE|out\(3));

-- Location: LABCELL_X64_Y12_N54
\CPU|FSM|always0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~21_combout\ = ( \CPU|FSM|always0~3_combout\ & ( (!\CPU|FSM|STATE|out\(3) & (\CPU|FSM|STATE|out\(1) & \CPU|FSM|WideNor3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|STATE|ALT_INV_out\(3),
	datac => \CPU|FSM|STATE|ALT_INV_out\(1),
	datad => \CPU|FSM|ALT_INV_WideNor3~0_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~3_combout\,
	combout => \CPU|FSM|always0~21_combout\);

-- Location: LABCELL_X64_Y12_N36
\CPU|FSM|next_reset_state[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[1]~11_combout\ = ( \CPU|FSM|next_reset_state[1]~10_combout\ & ( (!\CPU|FSM|always0~18_combout\ & ((!\CPU|FSM|STATE|out\(0)) # (!\CPU|FSM|WideNor1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(0),
	datac => \CPU|FSM|ALT_INV_WideNor1~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~18_combout\,
	dataf => \CPU|FSM|ALT_INV_next_reset_state[1]~10_combout\,
	combout => \CPU|FSM|next_reset_state[1]~11_combout\);

-- Location: LABCELL_X64_Y12_N15
\CPU|FSM|next_reset_state[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[1]~12_combout\ = ( !\CPU|FSM|always0~43_combout\ & ( (\CPU|FSM|next_reset_state[1]~11_combout\ & (!\CPU|FSM|always0~39_combout\ & (\CPU|FSM|next_reset_state[1]~9_combout\ & !\CPU|FSM|always0~44_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_next_reset_state[1]~11_combout\,
	datab => \CPU|FSM|ALT_INV_always0~39_combout\,
	datac => \CPU|FSM|ALT_INV_next_reset_state[1]~9_combout\,
	datad => \CPU|FSM|ALT_INV_always0~44_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~43_combout\,
	combout => \CPU|FSM|next_reset_state[1]~12_combout\);

-- Location: MLABCELL_X65_Y12_N18
\CPU|FSM|next_reset_state[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[1]~13_combout\ = ( \CPU|FSM|next_reset_state[1]~12_combout\ & ( (\KEY[1]~input_o\ & (\CPU|FSM|next_reset_state[5]~0_combout\ & (!\CPU|FSM|always0~21_combout\ & !\CPU|FSM|Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \CPU|FSM|ALT_INV_next_reset_state[5]~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~21_combout\,
	datad => \CPU|FSM|ALT_INV_Equal0~3_combout\,
	dataf => \CPU|FSM|ALT_INV_next_reset_state[1]~12_combout\,
	combout => \CPU|FSM|next_reset_state[1]~13_combout\);

-- Location: FF_X65_Y12_N20
\CPU|FSM|STATE|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_reset_state[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|STATE|out\(1));

-- Location: LABCELL_X66_Y11_N45
\CPU|FSM|WideNor24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor24~0_combout\ = ( !\CPU|FSM|STATE|out\(2) & ( \CPU|FSM|always0~15_combout\ & ( (!\CPU|FSM|STATE|out\(1) & \CPU|FSM|STATE|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(1),
	datac => \CPU|FSM|STATE|ALT_INV_out\(3),
	datae => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|ALT_INV_always0~15_combout\,
	combout => \CPU|FSM|WideNor24~0_combout\);

-- Location: LABCELL_X64_Y10_N48
\CPU|FSM|WideOr11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr11~3_combout\ = ( !\CPU|FSM|always0~29_combout\ & ( \CPU|FSM|always0~14_combout\ & ( (!\CPU|FSM|Equal0~3_combout\ & ((!\CPU|FSM|WideNor24~0_combout\) # (\CPU|FSM|STATE|out\(0)))) ) ) ) # ( !\CPU|FSM|always0~29_combout\ & ( 
-- !\CPU|FSM|always0~14_combout\ & ( !\CPU|FSM|Equal0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000010101111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datac => \CPU|FSM|STATE|ALT_INV_out\(0),
	datad => \CPU|FSM|ALT_INV_Equal0~3_combout\,
	datae => \CPU|FSM|ALT_INV_always0~29_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~14_combout\,
	combout => \CPU|FSM|WideOr11~3_combout\);

-- Location: MLABCELL_X65_Y10_N42
\CPU|FSM|always0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~42_combout\ = ( \CPU|FSM|always0~22_combout\ & ( (\CPU|FSM|always0~14_combout\ & (!\CPU|FSM|WideNor24~0_combout\ & (\CPU|FSM|always0~24_combout\ & \CPU|FSM|WideNor27~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~14_combout\,
	datab => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~24_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor27~1_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~22_combout\,
	combout => \CPU|FSM|always0~42_combout\);

-- Location: LABCELL_X64_Y10_N33
\CPU|FSM|WideOr11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr11~4_combout\ = ( !\CPU|FSM|always0~28_combout\ & ( \CPU|FSM|always0~26_combout\ & ( (\CPU|FSM|WideOr11~3_combout\ & (!\CPU|FSM|always0~42_combout\ & (\CPU|FSM|WideOr11~1_combout\ & !\CPU|FSM|STATE|out\(0)))) ) ) ) # ( 
-- !\CPU|FSM|always0~28_combout\ & ( !\CPU|FSM|always0~26_combout\ & ( (\CPU|FSM|WideOr11~3_combout\ & (!\CPU|FSM|always0~42_combout\ & \CPU|FSM|WideOr11~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr11~3_combout\,
	datab => \CPU|FSM|ALT_INV_always0~42_combout\,
	datac => \CPU|FSM|ALT_INV_WideOr11~1_combout\,
	datad => \CPU|FSM|STATE|ALT_INV_out\(0),
	datae => \CPU|FSM|ALT_INV_always0~28_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~26_combout\,
	combout => \CPU|FSM|WideOr11~4_combout\);

-- Location: MLABCELL_X65_Y12_N42
\CPU|FSM|next_reset_state[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[0]~8_combout\ = ( \CPU|FSM|always0~41_combout\ & ( \CPU|FSM|WideOr11~2_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( !\CPU|FSM|always0~41_combout\ & ( \CPU|FSM|WideOr11~2_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( 
-- \CPU|FSM|always0~41_combout\ & ( !\CPU|FSM|WideOr11~2_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( !\CPU|FSM|always0~41_combout\ & ( !\CPU|FSM|WideOr11~2_combout\ & ( (\KEY[1]~input_o\ & ((!\CPU|FSM|WideOr11~4_combout\) # ((\CPU|FSM|WideOr11~0_combout\) # 
-- (\CPU|FSM|always0~31_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr11~4_combout\,
	datab => \CPU|FSM|ALT_INV_always0~31_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datae => \CPU|FSM|ALT_INV_always0~41_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr11~2_combout\,
	combout => \CPU|FSM|next_reset_state[0]~8_combout\);

-- Location: FF_X65_Y12_N44
\CPU|FSM|STATE|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_reset_state[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|STATE|out\(0));

-- Location: MLABCELL_X65_Y10_N3
\CPU|FSM|always0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~16_combout\ = ( \CPU|FSM|STATE|out\(2) & ( !\CPU|FSM|STATE|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|STATE|ALT_INV_out\(0),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(2),
	combout => \CPU|FSM|always0~16_combout\);

-- Location: MLABCELL_X65_Y12_N48
\CPU|FSM|next_reset_state[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[2]~3_combout\ = ( \CPU|FSM|always0~27_combout\ & ( \CPU|FSM|WideOr7~5_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( !\CPU|FSM|always0~27_combout\ & ( \CPU|FSM|WideOr7~5_combout\ & ( (\KEY[1]~input_o\ & ((!\CPU|FSM|WideOr7~1_combout\) # 
-- ((\CPU|FSM|always0~26_combout\ & \CPU|FSM|always0~16_combout\)))) ) ) ) # ( \CPU|FSM|always0~27_combout\ & ( !\CPU|FSM|WideOr7~5_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( !\CPU|FSM|always0~27_combout\ & ( !\CPU|FSM|WideOr7~5_combout\ & ( \KEY[1]~input_o\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~26_combout\,
	datab => \CPU|FSM|ALT_INV_always0~16_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \CPU|FSM|ALT_INV_WideOr7~1_combout\,
	datae => \CPU|FSM|ALT_INV_always0~27_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr7~5_combout\,
	combout => \CPU|FSM|next_reset_state[2]~3_combout\);

-- Location: FF_X65_Y12_N50
\CPU|FSM|STATE|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_reset_state[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|STATE|out\(2));

-- Location: LABCELL_X64_Y13_N45
\CPU|FSM|WideNor26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor26~1_combout\ = ( !\CPU|FSM|STATE|out\(0) & ( (!\CPU|FSM|STATE|out\(2) & \CPU|FSM|WideNor26~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(2),
	datac => \CPU|FSM|ALT_INV_WideNor26~0_combout\,
	dataf => \CPU|FSM|STATE|ALT_INV_out\(0),
	combout => \CPU|FSM|WideNor26~1_combout\);

-- Location: LABCELL_X64_Y13_N6
\CPU|FSM|always0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~24_combout\ = ( !\CPU|FSM|Equal9~1_combout\ & ( !\CPU|FSM|WideNor26~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FSM|ALT_INV_WideNor26~1_combout\,
	dataf => \CPU|FSM|ALT_INV_Equal9~1_combout\,
	combout => \CPU|FSM|always0~24_combout\);

-- Location: LABCELL_X64_Y13_N57
\CPU|FSM|always0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~25_combout\ = ( !\CPU|FSM|Equal10~0_combout\ & ( (\CPU|FSM|WideNor26~0_combout\ & ((!\CPU|FSM|WideNor27~0_combout\) # (!\CPU|FSM|STATE|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor27~0_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor26~0_combout\,
	datad => \CPU|FSM|STATE|ALT_INV_out\(1),
	dataf => \CPU|FSM|ALT_INV_Equal10~0_combout\,
	combout => \CPU|FSM|always0~25_combout\);

-- Location: MLABCELL_X65_Y10_N51
\CPU|FSM|always0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|always0~26_combout\ = ( \CPU|FSM|always0~14_combout\ & ( \CPU|FSM|always0~25_combout\ & ( (\CPU|FSM|always0~24_combout\ & (\CPU|FSM|always0~22_combout\ & (!\CPU|FSM|WideNor27~1_combout\ & !\CPU|FSM|WideNor24~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~24_combout\,
	datab => \CPU|FSM|ALT_INV_always0~22_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor27~1_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datae => \CPU|FSM|ALT_INV_always0~14_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~25_combout\,
	combout => \CPU|FSM|always0~26_combout\);

-- Location: LABCELL_X64_Y10_N54
\CPU|FSM|next_reset_state[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[5]~0_combout\ = ( \CPU|FSM|always0~23_combout\ & ( !\CPU|FSM|always0~27_combout\ & ( (!\CPU|FSM|Equal9~1_combout\ & (!\CPU|FSM|WideNor26~1_combout\ & ((!\CPU|FSM|always0~26_combout\) # (!\CPU|FSM|always0~16_combout\)))) ) ) ) # ( 
-- !\CPU|FSM|always0~23_combout\ & ( !\CPU|FSM|always0~27_combout\ & ( (!\CPU|FSM|always0~26_combout\) # (!\CPU|FSM|always0~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~26_combout\,
	datab => \CPU|FSM|ALT_INV_Equal9~1_combout\,
	datac => \CPU|FSM|ALT_INV_WideNor26~1_combout\,
	datad => \CPU|FSM|ALT_INV_always0~16_combout\,
	datae => \CPU|FSM|ALT_INV_always0~23_combout\,
	dataf => \CPU|FSM|ALT_INV_always0~27_combout\,
	combout => \CPU|FSM|next_reset_state[5]~0_combout\);

-- Location: LABCELL_X66_Y12_N39
\CPU|FSM|next_reset_state[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_reset_state[5]~7_combout\ = ( \KEY[1]~input_o\ & ( (!\CPU|FSM|next_reset_state[5]~0_combout\) # (\CPU|FSM|always0~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|ALT_INV_next_reset_state[5]~0_combout\,
	datad => \CPU|FSM|ALT_INV_always0~28_combout\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \CPU|FSM|next_reset_state[5]~7_combout\);

-- Location: FF_X66_Y12_N41
\CPU|FSM|STATE|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_reset_state[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|STATE|out\(5));

-- Location: LABCELL_X68_Y12_N42
\CPU|FSM|WideNor1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideNor1~0_combout\ = ( !\CPU|FSM|STATE|out\(2) & ( \CPU|FSM|STATE|out\(4) & ( (!\CPU|FSM|STATE|out\(5) & (\CPU|FSM|STATE|out\(3) & \CPU|FSM|STATE|out\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|STATE|ALT_INV_out\(5),
	datac => \CPU|FSM|STATE|ALT_INV_out\(3),
	datad => \CPU|FSM|STATE|ALT_INV_out\(1),
	datae => \CPU|FSM|STATE|ALT_INV_out\(2),
	dataf => \CPU|FSM|STATE|ALT_INV_out\(4),
	combout => \CPU|FSM|WideNor1~0_combout\);

-- Location: MLABCELL_X65_Y10_N33
\CPU|FSM|WideOr35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr35~combout\ = ( \CPU|FSM|always0~26_combout\ & ( (\CPU|FSM|STATE|out\(0)) # (\CPU|FSM|always0~42_combout\) ) ) # ( !\CPU|FSM|always0~26_combout\ & ( ((\CPU|FSM|WideNor1~0_combout\ & \CPU|FSM|STATE|out\(0))) # (\CPU|FSM|always0~42_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideNor1~0_combout\,
	datac => \CPU|FSM|ALT_INV_always0~42_combout\,
	datad => \CPU|FSM|STATE|ALT_INV_out\(0),
	dataf => \CPU|FSM|ALT_INV_always0~26_combout\,
	combout => \CPU|FSM|WideOr35~combout\);

-- Location: FF_X65_Y13_N47
\CPU|instructionReg|out[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[11]~0_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out[11]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y13_N18
\CPU|PCReg|out[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PCReg|out[7]~0_combout\ = ( !\CPU|instructionReg|out\(12) & ( !\CPU|instructionReg|out[11]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out\(12),
	combout => \CPU|PCReg|out[7]~0_combout\);

-- Location: LABCELL_X63_Y12_N12
\CPU|intoPC[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|intoPC[2]~8_combout\ = ( \CPU|PCReg|out[7]~1_combout\ & ( \CPU|branchcalc|Add1~33_sumout\ ) ) # ( !\CPU|PCReg|out[7]~1_combout\ & ( (!\CPU|FSM|Equal9~0_combout\ & (((\CPU|branchcalc|Add1~33_sumout\)))) # (\CPU|FSM|Equal9~0_combout\ & 
-- ((!\CPU|PCReg|out[7]~0_combout\ & (\CPU|branchcalc|Add1~33_sumout\)) # (\CPU|PCReg|out[7]~0_combout\ & ((\CPU|branchcalc|Add0~33_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	datac => \CPU|branchcalc|ALT_INV_Add1~33_sumout\,
	datad => \CPU|branchcalc|ALT_INV_Add0~33_sumout\,
	dataf => \CPU|PCReg|ALT_INV_out[7]~1_combout\,
	combout => \CPU|intoPC[2]~8_combout\);

-- Location: FF_X63_Y12_N13
\CPU|PCReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[2]~8_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(2));

-- Location: MLABCELL_X65_Y11_N54
\e1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~3_combout\ = ( \CPU|FSM|WideOr39~0_combout\ & ( \CPU|FSM|WideOr11~0_combout\ & ( (!\CPU|DataAddress|out\(2) & !\CPU|DataAddress|out\(1)) ) ) ) # ( !\CPU|FSM|WideOr39~0_combout\ & ( \CPU|FSM|WideOr11~0_combout\ & ( (!\CPU|DataAddress|out\(2) & 
-- !\CPU|DataAddress|out\(1)) ) ) ) # ( \CPU|FSM|WideOr39~0_combout\ & ( !\CPU|FSM|WideOr11~0_combout\ & ( (!\CPU|PCReg|out\(2) & !\CPU|PCReg|out\(1)) ) ) ) # ( !\CPU|FSM|WideOr39~0_combout\ & ( !\CPU|FSM|WideOr11~0_combout\ & ( (!\CPU|DataAddress|out\(2) & 
-- !\CPU|DataAddress|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000100010001000100011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(2),
	datab => \CPU|PCReg|ALT_INV_out\(1),
	datac => \CPU|DataAddress|ALT_INV_out\(2),
	datad => \CPU|DataAddress|ALT_INV_out\(1),
	datae => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	combout => \e1~3_combout\);

-- Location: MLABCELL_X65_Y13_N45
\x[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[11]~0_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( (!\e1~1_combout\) # ((!\e1~3_combout\) # ((!\e1~2_combout\) # (!\e1~0_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~1_combout\,
	datab => \ALT_INV_e1~3_combout\,
	datac => \ALT_INV_e1~2_combout\,
	datad => \ALT_INV_e1~0_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \x[11]~0_combout\);

-- Location: FF_X65_Y13_N46
\CPU|instructionReg|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[11]~0_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(11));

-- Location: LABCELL_X71_Y12_N42
\CPU|DP|cRegister|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[8]~feeder_combout\ = ( \CPU|DP|CMP|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~49_sumout\,
	combout => \CPU|DP|cRegister|out[8]~feeder_combout\);

-- Location: FF_X71_Y12_N43
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(8));

-- Location: FF_X65_Y11_N26
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
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(8));

-- Location: LABCELL_X70_Y9_N3
write : cyclonev_lcell_comb
-- Equation(s):
-- \write~combout\ = ( \CPU|FSM|WideOr39~0_combout\ & ( \CPU|FSM|WideOr11~0_combout\ & ( (!\CPU|DataAddress|out\(8) & \CPU|FSM|mem_cmd\(0)) ) ) ) # ( !\CPU|FSM|WideOr39~0_combout\ & ( \CPU|FSM|WideOr11~0_combout\ & ( (!\CPU|DataAddress|out\(8) & 
-- \CPU|FSM|mem_cmd\(0)) ) ) ) # ( \CPU|FSM|WideOr39~0_combout\ & ( !\CPU|FSM|WideOr11~0_combout\ & ( (!\CPU|PCReg|out\(8) & \CPU|FSM|mem_cmd\(0)) ) ) ) # ( !\CPU|FSM|WideOr39~0_combout\ & ( !\CPU|FSM|WideOr11~0_combout\ & ( (!\CPU|DataAddress|out\(8) & 
-- \CPU|FSM|mem_cmd\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001100110000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DataAddress|ALT_INV_out\(8),
	datab => \CPU|PCReg|ALT_INV_out\(8),
	datad => \CPU|FSM|ALT_INV_mem_cmd\(0),
	datae => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	combout => \write~combout\);

-- Location: LABCELL_X66_Y11_N15
\x[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[3]~6_combout\ = ( \e1~combout\ & ( \SW[3]~input_o\ ) ) # ( !\e1~combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a3\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \ALT_INV_e1~combout\,
	combout => \x[3]~6_combout\);

-- Location: FF_X66_Y11_N32
\CPU|instructionReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \x[3]~6_combout\,
	sload => VCC,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out\(3));

-- Location: LABCELL_X67_Y12_N30
\CPU|DP|Bin[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Bin[1]~0_combout\ = ( \CPU|instructionReg|out\(4) ) # ( !\CPU|instructionReg|out\(4) & ( \CPU|instructionReg|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instructionReg|ALT_INV_out\(3),
	dataf => \CPU|instructionReg|ALT_INV_out\(4),
	combout => \CPU|DP|Bin[1]~0_combout\);

-- Location: LABCELL_X70_Y13_N18
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

-- Location: FF_X70_Y13_N19
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(3));

-- Location: FF_X65_Y9_N25
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
	ena => \CPU|FSM|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DataAddress|out\(3));

-- Location: FF_X63_Y12_N47
\CPU|PCReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[3]~3_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(3));

-- Location: MLABCELL_X65_Y11_N42
\e1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \e1~1_combout\ = ( \CPU|DataAddress|out\(4) & ( \CPU|FSM|WideOr39~0_combout\ & ( (!\CPU|PCReg|out\(4) & (!\CPU|FSM|WideOr11~0_combout\ & !\CPU|PCReg|out\(3))) ) ) ) # ( !\CPU|DataAddress|out\(4) & ( \CPU|FSM|WideOr39~0_combout\ & ( 
-- (!\CPU|FSM|WideOr11~0_combout\ & (((!\CPU|PCReg|out\(4) & !\CPU|PCReg|out\(3))))) # (\CPU|FSM|WideOr11~0_combout\ & (!\CPU|DataAddress|out\(3))) ) ) ) # ( !\CPU|DataAddress|out\(4) & ( !\CPU|FSM|WideOr39~0_combout\ & ( !\CPU|DataAddress|out\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000011001010000010101100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DataAddress|ALT_INV_out\(3),
	datab => \CPU|PCReg|ALT_INV_out\(4),
	datac => \CPU|FSM|ALT_INV_WideOr11~0_combout\,
	datad => \CPU|PCReg|ALT_INV_out\(3),
	datae => \CPU|DataAddress|ALT_INV_out\(4),
	dataf => \CPU|FSM|ALT_INV_WideOr39~0_combout\,
	combout => \e1~1_combout\);

-- Location: MLABCELL_X65_Y13_N39
\x[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[13]~3_combout\ = ( \e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( (!\e1~1_combout\) # ((!\e1~2_combout\) # ((!\e1~3_combout\) # (!\e1~0_combout\))) ) ) ) # ( !\e1~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_e1~1_combout\,
	datab => \ALT_INV_e1~2_combout\,
	datac => \ALT_INV_e1~3_combout\,
	datad => \ALT_INV_e1~0_combout\,
	datae => \ALT_INV_e1~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \x[13]~3_combout\);

-- Location: FF_X65_Y13_N41
\CPU|instructionReg|out[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \x[13]~3_combout\,
	ena => \CPU|FSM|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instructionReg|out[13]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y13_N27
\CPU|FSM|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Equal9~0_combout\ = ( !\CPU|instructionReg|out\(15) & ( (\CPU|instructionReg|out[13]~DUPLICATE_q\ & !\CPU|instructionReg|out[14]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|instructionReg|ALT_INV_out[13]~DUPLICATE_q\,
	datad => \CPU|instructionReg|ALT_INV_out[14]~DUPLICATE_q\,
	dataf => \CPU|instructionReg|ALT_INV_out\(15),
	combout => \CPU|FSM|Equal9~0_combout\);

-- Location: LABCELL_X63_Y12_N9
\CPU|intoPC[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|intoPC[1]~7_combout\ = ( \CPU|branchcalc|Add0~29_sumout\ & ( ((\CPU|FSM|Equal9~0_combout\ & (!\CPU|PCReg|out[7]~1_combout\ & \CPU|PCReg|out[7]~0_combout\))) # (\CPU|branchcalc|Add1~29_sumout\) ) ) # ( !\CPU|branchcalc|Add0~29_sumout\ & ( 
-- (\CPU|branchcalc|Add1~29_sumout\ & ((!\CPU|FSM|Equal9~0_combout\) # ((!\CPU|PCReg|out[7]~0_combout\) # (\CPU|PCReg|out[7]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_Equal9~0_combout\,
	datab => \CPU|PCReg|ALT_INV_out[7]~1_combout\,
	datac => \CPU|PCReg|ALT_INV_out[7]~0_combout\,
	datad => \CPU|branchcalc|ALT_INV_Add1~29_sumout\,
	dataf => \CPU|branchcalc|ALT_INV_Add0~29_sumout\,
	combout => \CPU|intoPC[1]~7_combout\);

-- Location: FF_X63_Y12_N10
\CPU|PCReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|intoPC[1]~7_combout\,
	sclr => \CPU|FSM|WideOr33~combout\,
	ena => \CPU|PCReg|out[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PCReg|out\(1));

-- Location: MLABCELL_X65_Y10_N36
\CPU|DP|muxintoregister|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|muxintoregister|Mux14~0_combout\ = ( \CPU|instructionReg|out\(1) & ( \x[1]~13_combout\ & ( (!\CPU|FSM|WideOr28~combout\) # ((!\CPU|FSM|WideOr30~combout\ & (\CPU|PCReg|out\(1))) # (\CPU|FSM|WideOr30~combout\ & ((\CPU|DP|cRegister|out\(1))))) ) ) ) 
-- # ( !\CPU|instructionReg|out\(1) & ( \x[1]~13_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & (((!\CPU|FSM|WideOr30~combout\)))) # (\CPU|FSM|WideOr28~combout\ & ((!\CPU|FSM|WideOr30~combout\ & (\CPU|PCReg|out\(1))) # (\CPU|FSM|WideOr30~combout\ & 
-- ((\CPU|DP|cRegister|out\(1)))))) ) ) ) # ( \CPU|instructionReg|out\(1) & ( !\x[1]~13_combout\ & ( (!\CPU|FSM|WideOr28~combout\ & (((\CPU|FSM|WideOr30~combout\)))) # (\CPU|FSM|WideOr28~combout\ & ((!\CPU|FSM|WideOr30~combout\ & (\CPU|PCReg|out\(1))) # 
-- (\CPU|FSM|WideOr30~combout\ & ((\CPU|DP|cRegister|out\(1)))))) ) ) ) # ( !\CPU|instructionReg|out\(1) & ( !\x[1]~13_combout\ & ( (\CPU|FSM|WideOr28~combout\ & ((!\CPU|FSM|WideOr30~combout\ & (\CPU|PCReg|out\(1))) # (\CPU|FSM|WideOr30~combout\ & 
-- ((\CPU|DP|cRegister|out\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PCReg|ALT_INV_out\(1),
	datab => \CPU|FSM|ALT_INV_WideOr28~combout\,
	datac => \CPU|DP|cRegister|ALT_INV_out\(1),
	datad => \CPU|FSM|ALT_INV_WideOr30~combout\,
	datae => \CPU|instructionReg|ALT_INV_out\(1),
	dataf => \ALT_INV_x[1]~13_combout\,
	combout => \CPU|DP|muxintoregister|Mux14~0_combout\);

-- Location: LABCELL_X64_Y10_N39
\CPU|DP|REGFILE|toR7|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR7|out[1]~feeder_combout\ = \CPU|DP|muxintoregister|Mux14~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|muxintoregister|ALT_INV_Mux14~0_combout\,
	combout => \CPU|DP|REGFILE|toR7|out[1]~feeder_combout\);

-- Location: FF_X64_Y10_N40
\CPU|DP|REGFILE|toR7|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR7|out[1]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR7|out\(1));

-- Location: LABCELL_X66_Y9_N54
\CPU|DP|REGFILE|toR3|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR3|out[1]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux14~0_combout\,
	combout => \CPU|DP|REGFILE|toR3|out[1]~feeder_combout\);

-- Location: FF_X66_Y9_N55
\CPU|DP|REGFILE|toR3|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR3|out[1]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR3|out\(1));

-- Location: LABCELL_X66_Y9_N24
\CPU|DP|REGFILE|toR0|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|toR0|out[1]~feeder_combout\ = ( \CPU|DP|muxintoregister|Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|muxintoregister|ALT_INV_Mux14~0_combout\,
	combout => \CPU|DP|REGFILE|toR0|out[1]~feeder_combout\);

-- Location: FF_X66_Y9_N25
\CPU|DP|REGFILE|toR0|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|toR0|out[1]~feeder_combout\,
	ena => \CPU|DP|REGFILE|load0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR0|out\(1));

-- Location: FF_X66_Y10_N44
\CPU|DP|REGFILE|toR2|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR2|out\(1));

-- Location: FF_X65_Y10_N55
\CPU|DP|REGFILE|toR1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR1|out\(1));

-- Location: LABCELL_X66_Y10_N42
\CPU|DP|REGFILE|chooser|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector14~0_combout\ = ( \CPU|DP|REGFILE|toR2|out\(1) & ( \CPU|DP|REGFILE|toR1|out\(1) & ( ((!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(1)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & 
-- (\CPU|DP|REGFILE|toR3|out\(1)))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( !\CPU|DP|REGFILE|toR2|out\(1) & ( \CPU|DP|REGFILE|toR1|out\(1) & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & 
-- ((!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(1)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(1))))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & 
-- (((!\CPU|DP|REGFILE|chooser|Selector10~2_combout\)))) ) ) ) # ( \CPU|DP|REGFILE|toR2|out\(1) & ( !\CPU|DP|REGFILE|toR1|out\(1) & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & 
-- ((\CPU|DP|REGFILE|toR0|out\(1)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & (\CPU|DP|REGFILE|toR3|out\(1))))) # (\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & (((\CPU|DP|REGFILE|chooser|Selector10~2_combout\)))) ) ) ) # ( 
-- !\CPU|DP|REGFILE|toR2|out\(1) & ( !\CPU|DP|REGFILE|toR1|out\(1) & ( (!\CPU|DP|REGFILE|chooser|Selector10~1_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & ((\CPU|DP|REGFILE|toR0|out\(1)))) # (\CPU|DP|REGFILE|chooser|Selector10~2_combout\ & 
-- (\CPU|DP|REGFILE|toR3|out\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR3|ALT_INV_out\(1),
	datab => \CPU|DP|REGFILE|toR0|ALT_INV_out\(1),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datae => \CPU|DP|REGFILE|toR2|ALT_INV_out\(1),
	dataf => \CPU|DP|REGFILE|toR1|ALT_INV_out\(1),
	combout => \CPU|DP|REGFILE|chooser|Selector14~0_combout\);

-- Location: FF_X64_Y10_N32
\CPU|DP|REGFILE|toR6|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR6|out\(1));

-- Location: FF_X65_Y10_N37
\CPU|DP|REGFILE|toR5|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|DP|muxintoregister|Mux14~0_combout\,
	ena => \CPU|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR5|out\(1));

-- Location: FF_X67_Y10_N26
\CPU|DP|REGFILE|toR4|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|DP|muxintoregister|Mux14~0_combout\,
	sload => VCC,
	ena => \CPU|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|toR4|out\(1));

-- Location: LABCELL_X67_Y10_N24
\CPU|DP|REGFILE|chooser|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector14~1_combout\ = ( \CPU|DP|REGFILE|toR4|out\(1) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & (((!\CPU|muxintoregister|Mux2~0_combout\) # (\CPU|DP|REGFILE|toR5|out\(1))))) # 
-- (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(1) & (!\CPU|muxintoregister|Mux2~0_combout\))) ) ) ) # ( !\CPU|DP|REGFILE|toR4|out\(1) & ( \CPU|muxintoregister|Mux0~0_combout\ & ( (!\CPU|muxintoregister|Mux1~0_combout\ & 
-- (((\CPU|muxintoregister|Mux2~0_combout\ & \CPU|DP|REGFILE|toR5|out\(1))))) # (\CPU|muxintoregister|Mux1~0_combout\ & (\CPU|DP|REGFILE|toR6|out\(1) & (!\CPU|muxintoregister|Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000110101011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|muxintoregister|ALT_INV_Mux1~0_combout\,
	datab => \CPU|DP|REGFILE|toR6|ALT_INV_out\(1),
	datac => \CPU|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \CPU|DP|REGFILE|toR5|ALT_INV_out\(1),
	datae => \CPU|DP|REGFILE|toR4|ALT_INV_out\(1),
	dataf => \CPU|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector14~1_combout\);

-- Location: LABCELL_X67_Y10_N9
\CPU|DP|REGFILE|chooser|Selector14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|chooser|Selector14~2_combout\ = ( \CPU|DP|REGFILE|chooser|Selector14~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector14~1_combout\ ) ) # ( !\CPU|DP|REGFILE|chooser|Selector14~0_combout\ & ( \CPU|DP|REGFILE|chooser|Selector14~1_combout\ ) ) 
-- # ( \CPU|DP|REGFILE|chooser|Selector14~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector14~1_combout\ & ( (!\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ((!\CPU|DP|REGFILE|chooser|Selector10~0_combout\))) # 
-- (\CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (\CPU|DP|REGFILE|toR7|out\(1))) ) ) ) # ( !\CPU|DP|REGFILE|chooser|Selector14~0_combout\ & ( !\CPU|DP|REGFILE|chooser|Selector14~1_combout\ & ( (\CPU|DP|REGFILE|toR7|out\(1) & 
-- \CPU|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111100000101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|toR7|ALT_INV_out\(1),
	datac => \CPU|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datad => \CPU|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|chooser|ALT_INV_Selector14~0_combout\,
	dataf => \CPU|DP|REGFILE|chooser|ALT_INV_Selector14~1_combout\,
	combout => \CPU|DP|REGFILE|chooser|Selector14~2_combout\);

-- Location: FF_X67_Y10_N44
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
	ena => \CPU|FSM|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|bRegister|out\(1));

-- Location: LABCELL_X70_Y13_N39
\CPU|DP|cRegister|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|cRegister|out[0]~feeder_combout\ = ( \CPU|DP|CMP|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|CMP|ALT_INV_Add0~1_sumout\,
	combout => \CPU|DP|cRegister|out[0]~feeder_combout\);

-- Location: LABCELL_X70_Y13_N36
\CPU|DP|CMP|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|CMP|Mux15~0_combout\ = ( \CPU|FSM|WideOr25~combout\ & ( (!\rtl~7_combout\ & \CPU|instructionReg|out[11]~DUPLICATE_q\) ) ) # ( !\CPU|FSM|WideOr25~combout\ & ( (!\rtl~7_combout\ & ((\CPU|instructionReg|out[11]~DUPLICATE_q\))) # (\rtl~7_combout\ & 
-- (\CPU|DP|aRegister|out\(0) & !\CPU|instructionReg|out[11]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110000000000111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|aRegister|ALT_INV_out\(0),
	datac => \ALT_INV_rtl~7_combout\,
	datad => \CPU|instructionReg|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \CPU|FSM|ALT_INV_WideOr25~combout\,
	combout => \CPU|DP|CMP|Mux15~0_combout\);

-- Location: FF_X70_Y13_N40
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
	ena => \CPU|FSM|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|cRegister|out\(0));

-- Location: LABCELL_X66_Y11_N36
e2 : cyclonev_lcell_comb
-- Equation(s):
-- \e2~combout\ = ( \e1~1_combout\ & ( !\CPU|mem_addr[6]~0_combout\ & ( (\CPU|FSM|mem_cmd\(0) & (\e1~0_combout\ & (\e1~3_combout\ & \e1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_mem_cmd\(0),
	datab => \ALT_INV_e1~0_combout\,
	datac => \ALT_INV_e1~3_combout\,
	datad => \ALT_INV_e1~2_combout\,
	datae => \ALT_INV_e1~1_combout\,
	dataf => \CPU|ALT_INV_mem_addr[6]~0_combout\,
	combout => \e2~combout\);

-- Location: FF_X66_Y11_N38
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

-- Location: FF_X66_Y11_N58
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

-- Location: FF_X66_Y12_N16
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

-- Location: FF_X66_Y12_N28
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

-- Location: FF_X66_Y12_N34
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

-- Location: FF_X66_Y11_N40
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

-- Location: FF_X66_Y11_N17
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

-- Location: FF_X66_Y11_N10
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

-- Location: MLABCELL_X65_Y10_N45
\CPU|FSM|out\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|out~combout\ = (!\CPU|FSM|always0~14_combout\) # ((!\CPU|FSM|WideNor25~0_combout\) # (\CPU|FSM|WideNor24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_always0~14_combout\,
	datab => \CPU|FSM|ALT_INV_WideNor24~0_combout\,
	datad => \CPU|FSM|ALT_INV_WideNor25~0_combout\,
	combout => \CPU|FSM|out~combout\);

-- Location: IOIBUF_X54_Y0_N52
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X4_Y81_N35
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X21_Y6_N0
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


