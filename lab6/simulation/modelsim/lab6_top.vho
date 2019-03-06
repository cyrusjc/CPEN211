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

-- DATE "10/23/2017 13:27:39"

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

ENTITY 	lab6_top IS
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
END lab6_top;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6_top IS
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
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \IN|LEDR[0]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \IN|REG|Q[9]~feeder_combout\ : std_logic;
SIGNAL \IN|LEDR[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \IN|LEDR[2]~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \IN|LEDR[3]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \IN|LEDR[4]~4_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \IN|LEDR[5]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \IN|LEDR[6]~6_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \IN|LEDR[7]~7_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \U|statemachine|Equal1~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \U|statemachine|WideOr6~0_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr6~1_combout\ : std_logic;
SIGNAL \U|statemachine|next_reset_state[1]~0_combout\ : std_logic;
SIGNAL \U|statemachine|next_reset_state[0]~5_combout\ : std_logic;
SIGNAL \U|statemachine|next_reset_state[0]~4_combout\ : std_logic;
SIGNAL \U|statemachine|next_reset_state[0]~6_combout\ : std_logic;
SIGNAL \U|statemachine|WideNor2~0_combout\ : std_logic;
SIGNAL \U|statemachine|WideNor1~0_combout\ : std_logic;
SIGNAL \U|statemachine|Equal2~0_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr26~0_combout\ : std_logic;
SIGNAL \U|statemachine|next_reset_state[3]~1_combout\ : std_logic;
SIGNAL \U|statemachine|next_reset_state[4]~7_combout\ : std_logic;
SIGNAL \U|statemachine|next_reset_state[2]~2_combout\ : std_logic;
SIGNAL \U|statemachine|next_reset_state[2]~3_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr26~combout\ : std_logic;
SIGNAL \U|statemachine|WideOr10~combout\ : std_logic;
SIGNAL \U|statemachine|WideOr12~0_combout\ : std_logic;
SIGNAL \U|muxintoregister|Mux0~0_combout\ : std_logic;
SIGNAL \U|muxintoregister|Mux2~0_combout\ : std_logic;
SIGNAL \U|muxintoregister|Mux1~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector10~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \U|statemachine|WideNor1~combout\ : std_logic;
SIGNAL \rtl~30_combout\ : std_logic;
SIGNAL \U|DP|aRegister|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr10~0_combout\ : std_logic;
SIGNAL \U|DP|Ain[15]~15_combout\ : std_logic;
SIGNAL \rtl~31_combout\ : std_logic;
SIGNAL \U|DP|Ain[14]~14_combout\ : std_logic;
SIGNAL \rtl~47_combout\ : std_logic;
SIGNAL \U|DP|Ain[13]~13_combout\ : std_logic;
SIGNAL \rtl~46_combout\ : std_logic;
SIGNAL \U|DP|Ain[12]~12_combout\ : std_logic;
SIGNAL \rtl~45_combout\ : std_logic;
SIGNAL \U|DP|Ain[11]~11_combout\ : std_logic;
SIGNAL \rtl~44_combout\ : std_logic;
SIGNAL \U|DP|Ain[10]~10_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr17~combout\ : std_logic;
SIGNAL \rtl~43_combout\ : std_logic;
SIGNAL \rtl~42_combout\ : std_logic;
SIGNAL \U|DP|Ain[9]~9_combout\ : std_logic;
SIGNAL \rtl~41_combout\ : std_logic;
SIGNAL \U|DP|Ain[8]~8_combout\ : std_logic;
SIGNAL \U|DP|Ain[7]~7_combout\ : std_logic;
SIGNAL \rtl~40_combout\ : std_logic;
SIGNAL \U|DP|Ain[6]~6_combout\ : std_logic;
SIGNAL \rtl~52_combout\ : std_logic;
SIGNAL \rtl~51_combout\ : std_logic;
SIGNAL \U|DP|Ain[5]~5_combout\ : std_logic;
SIGNAL \U|DP|Ain[4]~4_combout\ : std_logic;
SIGNAL \rtl~50_combout\ : std_logic;
SIGNAL \U|DP|Ain[3]~3_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux13~0_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr24~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|load6~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|load5~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|load4~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector13~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|load7~combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR0|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|load0~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR3|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|load3~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector10~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|load1~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|load2~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector10~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector13~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector13~2_combout\ : std_logic;
SIGNAL \rtl~49_combout\ : std_logic;
SIGNAL \U|DP|Ain[2]~2_combout\ : std_logic;
SIGNAL \U|DP|Ain[1]~1_combout\ : std_logic;
SIGNAL \U|DP|Ain[0]~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~66_cout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~1_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[0]~feeder_combout\ : std_logic;
SIGNAL \rtl~33_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux15~0_combout\ : std_logic;
SIGNAL \U|statemachine|WideOr19~combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux15~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector15~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[0]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[0]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector15~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector15~2_combout\ : std_logic;
SIGNAL \rtl~34_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~2\ : std_logic;
SIGNAL \U|DP|CMP|Add0~5_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux14~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux14~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector14~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR0|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector14~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector14~2_combout\ : std_logic;
SIGNAL \rtl~48_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~6\ : std_logic;
SIGNAL \U|DP|CMP|Add0~10\ : std_logic;
SIGNAL \U|DP|CMP|Add0~14\ : std_logic;
SIGNAL \U|DP|CMP|Add0~18\ : std_logic;
SIGNAL \U|DP|CMP|Add0~22\ : std_logic;
SIGNAL \U|DP|CMP|Add0~26\ : std_logic;
SIGNAL \U|DP|CMP|Add0~30\ : std_logic;
SIGNAL \U|DP|CMP|Add0~34\ : std_logic;
SIGNAL \U|DP|CMP|Add0~38\ : std_logic;
SIGNAL \U|DP|CMP|Add0~42\ : std_logic;
SIGNAL \U|DP|CMP|Add0~46\ : std_logic;
SIGNAL \U|DP|CMP|Add0~50\ : std_logic;
SIGNAL \U|DP|CMP|Add0~54\ : std_logic;
SIGNAL \U|DP|CMP|Add0~58\ : std_logic;
SIGNAL \U|DP|CMP|Add0~61_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux0~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux0~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR6|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector0~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR0|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR3|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector0~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector0~2_combout\ : std_logic;
SIGNAL \U|DP|bRegister|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|bRegister|out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|CMP|Add0~57_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[14]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux1~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux1~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector1~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector1~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector1~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~53_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux2~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux2~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR6|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector2~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector2~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector2~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~49_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux3~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux3~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR6|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector3~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR0|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector3~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector3~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~45_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux4~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux4~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector4~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR3|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector4~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector4~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~41_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[10]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux5~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux5~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[10]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[10]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector5~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[10]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector5~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector5~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~37_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[9]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux6~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux6~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector6~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[9]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[9]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector6~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector6~2_combout\ : std_logic;
SIGNAL \U|DP|bRegister|out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|CMP|Add0~33_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[8]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux7~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux7~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector7~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[8]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector7~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector7~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~29_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux8~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux8~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR0|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR3|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector8~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR6|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector8~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector8~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~25_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[6]~feeder_combout\ : std_logic;
SIGNAL \rtl~39_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux9~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux9~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[6]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector9~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR0|out[6]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR3|out[6]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[6]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector9~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector9~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~21_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[5]~feeder_combout\ : std_logic;
SIGNAL \rtl~38_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux10~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux10~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR6|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector10~4_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR3|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector10~3_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector10~5_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~17_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[4]~feeder_combout\ : std_logic;
SIGNAL \rtl~37_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux11~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux11~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR3|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector11~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR6|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector11~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector11~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~13_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[3]~feeder_combout\ : std_logic;
SIGNAL \rtl~36_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux12~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|Mux12~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR0|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR1|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector12~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR7|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR6|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector12~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|Selector12~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Add0~9_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|out[2]~feeder_combout\ : std_logic;
SIGNAL \rtl~35_combout\ : std_logic;
SIGNAL \U|DP|CMP|Mux13~0_combout\ : std_logic;
SIGNAL \U|DP|cRegister|out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \H0|WideOr6~0_combout\ : std_logic;
SIGNAL \H0|WideOr5~0_combout\ : std_logic;
SIGNAL \H0|WideOr4~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|WideOr6~0_combout\ : std_logic;
SIGNAL \H1|WideOr5~0_combout\ : std_logic;
SIGNAL \H1|WideOr4~0_combout\ : std_logic;
SIGNAL \H1|WideOr3~0_combout\ : std_logic;
SIGNAL \H1|WideOr2~0_combout\ : std_logic;
SIGNAL \H1|WideOr1~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \H2|WideOr6~0_combout\ : std_logic;
SIGNAL \H2|WideOr5~0_combout\ : std_logic;
SIGNAL \H2|WideOr4~0_combout\ : std_logic;
SIGNAL \H2|WideOr3~0_combout\ : std_logic;
SIGNAL \H2|WideOr2~0_combout\ : std_logic;
SIGNAL \H2|WideOr1~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \H3|WideOr6~0_combout\ : std_logic;
SIGNAL \H3|WideOr5~0_combout\ : std_logic;
SIGNAL \H3|WideOr4~0_combout\ : std_logic;
SIGNAL \H3|WideOr3~0_combout\ : std_logic;
SIGNAL \H3|WideOr2~0_combout\ : std_logic;
SIGNAL \H3|WideOr1~0_combout\ : std_logic;
SIGNAL \H3|WideOr0~0_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~1_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~3_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~4_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~5_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~6_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~0_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~9_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~8_combout\ : std_logic;
SIGNAL \U|DP|CMP|Equal0~7_combout\ : std_logic;
SIGNAL \U|statemachine|WideNor12~combout\ : std_logic;
SIGNAL \U|statemachine|WideNor2~combout\ : std_logic;
SIGNAL \U|DP|CMP|Decoder0~0_combout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|comb~0_combout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~22_cout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~23\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~19_cout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~20\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~16_cout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~17\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~13_cout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~14\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~10_cout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~11\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~7_cout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~8\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~4_cout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|_~5\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ai|cout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ovf~combout\ : std_logic;
SIGNAL \U|DP|stat|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|cRegister|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|instructionReg|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|statemachine|STATE|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR2|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|stat|out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IN|REG|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|bRegister|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR7|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|aRegister|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR0|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR1|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR3|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR4|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR6|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR5|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|bRegister|ALT_INV_out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|cRegister|ALT_INV_out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \U|DP|CMP|ADDER1|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideNor2~combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideOr24~0_combout\ : std_logic;
SIGNAL \U|DP|muxintoregister|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideNor1~combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR5|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR6|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR4|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|toR2|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR3|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR1|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR0|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|toR7|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~52_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~51_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector10~4_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector10~3_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~50_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~49_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector12~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~48_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \U|muxintoregister|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U|instructionReg|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|muxintoregister|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U|muxintoregister|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideOr12~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~31_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[15]~15_combout\ : std_logic;
SIGNAL \U|DP|aRegister|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rtl~30_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~47_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[14]~14_combout\ : std_logic;
SIGNAL \U|DP|bRegister|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|CMP|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~46_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[13]~13_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~45_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[12]~12_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~44_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[11]~11_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~43_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[10]~10_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~42_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[9]~9_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~41_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[8]~8_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~40_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[7]~7_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~39_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~38_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~37_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~36_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~35_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[2]~2_combout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~34_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~33_combout\ : std_logic;
SIGNAL \U|DP|ALT_INV_Ain[0]~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_next_reset_state[0]~5_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_next_reset_state[0]~4_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_next_reset_state[2]~2_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideOr26~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideOr6~1_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideNor1~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideNor2~0_combout\ : std_logic;
SIGNAL \U|DP|stat|ALT_INV_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \H3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \U|statemachine|ALT_INV_WideOr26~combout\ : std_logic;
SIGNAL \U|statemachine|STATE|ALT_INV_Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IN|REG|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|CMP|ADDER1|ai|ALT_INV_cout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \U|DP|CMP|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \U|DP|cRegister|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);

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
\U|DP|bRegister|ALT_INV_out[15]~DUPLICATE_q\ <= NOT \U|DP|bRegister|out[15]~DUPLICATE_q\;
\U|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\ <= NOT \U|DP|bRegister|out[9]~DUPLICATE_q\;
\U|DP|cRegister|ALT_INV_out[2]~DUPLICATE_q\ <= NOT \U|DP|cRegister|out[2]~DUPLICATE_q\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\U|DP|CMP|ALT_INV_Equal0~9_combout\ <= NOT \U|DP|CMP|Equal0~9_combout\;
\U|DP|CMP|ALT_INV_Equal0~8_combout\ <= NOT \U|DP|CMP|Equal0~8_combout\;
\U|DP|CMP|ADDER1|ALT_INV_comb~0_combout\ <= NOT \U|DP|CMP|ADDER1|comb~0_combout\;
\U|statemachine|ALT_INV_WideNor2~combout\ <= NOT \U|statemachine|WideNor2~combout\;
\U|DP|muxintoregister|ALT_INV_Mux0~0_combout\ <= NOT \U|DP|muxintoregister|Mux0~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux2~0_combout\ <= NOT \U|DP|muxintoregister|Mux2~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux3~0_combout\ <= NOT \U|DP|muxintoregister|Mux3~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux4~0_combout\ <= NOT \U|DP|muxintoregister|Mux4~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux5~0_combout\ <= NOT \U|DP|muxintoregister|Mux5~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux6~0_combout\ <= NOT \U|DP|muxintoregister|Mux6~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux7~0_combout\ <= NOT \U|DP|muxintoregister|Mux7~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux8~0_combout\ <= NOT \U|DP|muxintoregister|Mux8~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux9~0_combout\ <= NOT \U|DP|muxintoregister|Mux9~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux10~0_combout\ <= NOT \U|DP|muxintoregister|Mux10~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux11~0_combout\ <= NOT \U|DP|muxintoregister|Mux11~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux12~0_combout\ <= NOT \U|DP|muxintoregister|Mux12~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux13~0_combout\ <= NOT \U|DP|muxintoregister|Mux13~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux14~0_combout\ <= NOT \U|DP|muxintoregister|Mux14~0_combout\;
\U|statemachine|ALT_INV_WideOr24~0_combout\ <= NOT \U|statemachine|WideOr24~0_combout\;
\U|DP|muxintoregister|ALT_INV_Mux15~0_combout\ <= NOT \U|DP|muxintoregister|Mux15~0_combout\;
\U|statemachine|ALT_INV_WideNor1~combout\ <= NOT \U|statemachine|WideNor1~combout\;
\U|DP|REGFILE|chooser|ALT_INV_Selector0~2_combout\ <= NOT \U|DP|REGFILE|chooser|Selector0~2_combout\;
\U|DP|REGFILE|chooser|ALT_INV_Selector0~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector0~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|toR5|out\(15);
\U|DP|REGFILE|toR6|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|toR6|out\(15);
\U|DP|REGFILE|toR4|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|toR4|out\(15);
\U|DP|REGFILE|chooser|ALT_INV_Selector0~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector0~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|toR2|out\(15);
\U|DP|REGFILE|toR3|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|toR3|out\(15);
\U|DP|REGFILE|toR1|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|toR1|out\(15);
\U|DP|REGFILE|toR0|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|toR0|out\(15);
\U|DP|REGFILE|toR7|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|toR7|out\(15);
\U|DP|REGFILE|chooser|ALT_INV_Selector1~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector1~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|toR5|out\(14);
\U|DP|REGFILE|toR6|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|toR6|out\(14);
\U|DP|REGFILE|toR4|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|toR4|out\(14);
\U|DP|REGFILE|chooser|ALT_INV_Selector1~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector1~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|toR2|out\(14);
\U|DP|REGFILE|toR3|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|toR3|out\(14);
\U|DP|REGFILE|toR1|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|toR1|out\(14);
\U|DP|REGFILE|toR0|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|toR0|out\(14);
\U|DP|REGFILE|toR7|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|toR7|out\(14);
\U|DP|REGFILE|chooser|ALT_INV_Selector2~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector2~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|toR5|out\(13);
\U|DP|REGFILE|toR6|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|toR6|out\(13);
\U|DP|REGFILE|toR4|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|toR4|out\(13);
\U|DP|REGFILE|chooser|ALT_INV_Selector2~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector2~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|toR2|out\(13);
\U|DP|REGFILE|toR3|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|toR3|out\(13);
\U|DP|REGFILE|toR1|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|toR1|out\(13);
\U|DP|REGFILE|toR0|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|toR0|out\(13);
\U|DP|REGFILE|toR7|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|toR7|out\(13);
\U|DP|REGFILE|chooser|ALT_INV_Selector3~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector3~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|toR5|out\(12);
\U|DP|REGFILE|toR6|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|toR6|out\(12);
\U|DP|REGFILE|toR4|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|toR4|out\(12);
\U|DP|REGFILE|chooser|ALT_INV_Selector3~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector3~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|toR2|out\(12);
\U|DP|REGFILE|toR3|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|toR3|out\(12);
\U|DP|REGFILE|toR1|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|toR1|out\(12);
\U|DP|REGFILE|toR0|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|toR0|out\(12);
\U|DP|REGFILE|toR7|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|toR7|out\(12);
\U|DP|REGFILE|chooser|ALT_INV_Selector4~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector4~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|toR5|out\(11);
\U|DP|REGFILE|toR6|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|toR6|out\(11);
\U|DP|REGFILE|toR4|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|toR4|out\(11);
\U|DP|REGFILE|chooser|ALT_INV_Selector4~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector4~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|toR2|out\(11);
\U|DP|REGFILE|toR3|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|toR3|out\(11);
\U|DP|REGFILE|toR1|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|toR1|out\(11);
\U|DP|REGFILE|toR0|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|toR0|out\(11);
\U|DP|REGFILE|toR7|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|toR7|out\(11);
\U|DP|REGFILE|chooser|ALT_INV_Selector5~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector5~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|toR5|out\(10);
\U|DP|REGFILE|toR6|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|toR6|out\(10);
\U|DP|REGFILE|toR4|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|toR4|out\(10);
\U|DP|REGFILE|chooser|ALT_INV_Selector5~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector5~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|toR2|out\(10);
\U|DP|REGFILE|toR3|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|toR3|out\(10);
\U|DP|REGFILE|toR1|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|toR1|out\(10);
\U|DP|REGFILE|toR0|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|toR0|out\(10);
\U|DP|REGFILE|toR7|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|toR7|out\(10);
\U|DP|REGFILE|chooser|ALT_INV_Selector6~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector6~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|toR5|out\(9);
\U|DP|REGFILE|toR6|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|toR6|out\(9);
\U|DP|REGFILE|toR4|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|toR4|out\(9);
\U|DP|REGFILE|chooser|ALT_INV_Selector6~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector6~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|toR2|out\(9);
\U|DP|REGFILE|toR3|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|toR3|out\(9);
\U|DP|REGFILE|toR1|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|toR1|out\(9);
\U|DP|REGFILE|toR0|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|toR0|out\(9);
\U|DP|REGFILE|toR7|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|toR7|out\(9);
\U|DP|REGFILE|chooser|ALT_INV_Selector7~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector7~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|toR5|out\(8);
\U|DP|REGFILE|toR6|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|toR6|out\(8);
\U|DP|REGFILE|toR4|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|toR4|out\(8);
\U|DP|REGFILE|chooser|ALT_INV_Selector7~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector7~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|toR2|out\(8);
\U|DP|REGFILE|toR3|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|toR3|out\(8);
\U|DP|REGFILE|toR1|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|toR1|out\(8);
\U|DP|REGFILE|toR0|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|toR0|out\(8);
\U|DP|REGFILE|toR7|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|toR7|out\(8);
\U|DP|REGFILE|chooser|ALT_INV_Selector8~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector8~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|toR5|out\(7);
\U|DP|REGFILE|toR6|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|toR6|out\(7);
\U|DP|REGFILE|toR4|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|toR4|out\(7);
\U|DP|REGFILE|chooser|ALT_INV_Selector8~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector8~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|toR2|out\(7);
\U|DP|REGFILE|toR3|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|toR3|out\(7);
\U|DP|REGFILE|toR1|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|toR1|out\(7);
\U|DP|REGFILE|toR0|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|toR0|out\(7);
\U|DP|REGFILE|toR7|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|toR7|out\(7);
\ALT_INV_rtl~52_combout\ <= NOT \rtl~52_combout\;
\U|DP|REGFILE|chooser|ALT_INV_Selector9~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector9~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|toR5|out\(6);
\U|DP|REGFILE|toR6|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|toR6|out\(6);
\U|DP|REGFILE|toR4|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|toR4|out\(6);
\U|DP|REGFILE|chooser|ALT_INV_Selector9~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector9~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|toR2|out\(6);
\U|DP|REGFILE|toR3|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|toR3|out\(6);
\U|DP|REGFILE|toR1|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|toR1|out\(6);
\U|DP|REGFILE|toR0|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|toR0|out\(6);
\U|DP|REGFILE|toR7|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|toR7|out\(6);
\ALT_INV_rtl~51_combout\ <= NOT \rtl~51_combout\;
\U|DP|REGFILE|chooser|ALT_INV_Selector10~4_combout\ <= NOT \U|DP|REGFILE|chooser|Selector10~4_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|toR5|out\(5);
\U|DP|REGFILE|toR6|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|toR6|out\(5);
\U|DP|REGFILE|toR4|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|toR4|out\(5);
\U|DP|REGFILE|chooser|ALT_INV_Selector10~3_combout\ <= NOT \U|DP|REGFILE|chooser|Selector10~3_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|toR2|out\(5);
\U|DP|REGFILE|toR3|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|toR3|out\(5);
\U|DP|REGFILE|toR1|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|toR1|out\(5);
\U|DP|REGFILE|toR0|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|toR0|out\(5);
\U|DP|REGFILE|toR7|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|toR7|out\(5);
\ALT_INV_rtl~50_combout\ <= NOT \rtl~50_combout\;
\U|DP|REGFILE|chooser|ALT_INV_Selector11~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector11~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|toR5|out\(4);
\U|DP|REGFILE|toR6|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|toR6|out\(4);
\U|DP|REGFILE|toR4|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|toR4|out\(4);
\U|DP|REGFILE|chooser|ALT_INV_Selector11~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector11~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|toR2|out\(4);
\U|DP|REGFILE|toR3|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|toR3|out\(4);
\U|DP|REGFILE|toR1|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|toR1|out\(4);
\U|DP|REGFILE|toR0|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|toR0|out\(4);
\U|DP|REGFILE|toR7|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|toR7|out\(4);
\ALT_INV_rtl~49_combout\ <= NOT \rtl~49_combout\;
\U|DP|REGFILE|chooser|ALT_INV_Selector12~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector12~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|toR5|out\(3);
\U|DP|REGFILE|toR6|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|toR6|out\(3);
\U|DP|REGFILE|toR4|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|toR4|out\(3);
\U|DP|REGFILE|chooser|ALT_INV_Selector12~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector12~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|toR2|out\(3);
\U|DP|REGFILE|toR3|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|toR3|out\(3);
\U|DP|REGFILE|toR1|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|toR1|out\(3);
\U|DP|REGFILE|toR0|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|toR0|out\(3);
\U|DP|REGFILE|toR7|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|toR7|out\(3);
\ALT_INV_rtl~48_combout\ <= NOT \rtl~48_combout\;
\U|DP|REGFILE|chooser|ALT_INV_Selector13~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector13~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|toR5|out\(2);
\U|DP|REGFILE|toR6|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|toR6|out\(2);
\U|DP|REGFILE|toR4|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|toR4|out\(2);
\U|DP|REGFILE|chooser|ALT_INV_Selector13~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector13~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|toR2|out\(2);
\U|DP|REGFILE|toR3|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|toR3|out\(2);
\U|DP|REGFILE|toR1|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|toR1|out\(2);
\U|DP|REGFILE|toR0|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|toR0|out\(2);
\U|DP|REGFILE|toR7|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|toR7|out\(2);
\U|DP|REGFILE|chooser|ALT_INV_Selector14~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector14~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|toR5|out\(1);
\U|DP|REGFILE|toR6|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|toR6|out\(1);
\U|DP|REGFILE|toR4|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|toR4|out\(1);
\U|DP|REGFILE|chooser|ALT_INV_Selector14~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector14~0_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|toR2|out\(1);
\U|DP|REGFILE|toR3|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|toR3|out\(1);
\U|DP|REGFILE|toR1|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|toR1|out\(1);
\U|DP|REGFILE|toR0|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|toR0|out\(1);
\U|DP|REGFILE|toR7|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|toR7|out\(1);
\U|DP|REGFILE|chooser|ALT_INV_Selector15~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector15~1_combout\;
\U|DP|REGFILE|toR5|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|toR5|out\(0);
\U|DP|REGFILE|toR6|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|toR6|out\(0);
\U|DP|REGFILE|toR4|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|toR4|out\(0);
\U|DP|REGFILE|chooser|ALT_INV_Selector15~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector15~0_combout\;
\U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\ <= NOT \U|DP|REGFILE|chooser|Selector10~2_combout\;
\U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\ <= NOT \U|DP|REGFILE|chooser|Selector10~1_combout\;
\U|DP|REGFILE|toR2|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|toR2|out\(0);
\U|DP|REGFILE|toR3|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|toR3|out\(0);
\U|DP|REGFILE|toR1|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|toR1|out\(0);
\U|DP|REGFILE|toR0|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|toR0|out\(0);
\U|DP|REGFILE|toR7|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|toR7|out\(0);
\U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\ <= NOT \U|DP|REGFILE|chooser|Selector10~0_combout\;
\U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\ <= NOT \U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\;
\U|muxintoregister|ALT_INV_Mux2~0_combout\ <= NOT \U|muxintoregister|Mux2~0_combout\;
\U|instructionReg|ALT_INV_out\(0) <= NOT \U|instructionReg|out\(0);
\U|instructionReg|ALT_INV_out\(5) <= NOT \U|instructionReg|out\(5);
\U|instructionReg|ALT_INV_out\(8) <= NOT \U|instructionReg|out\(8);
\U|muxintoregister|ALT_INV_Mux1~0_combout\ <= NOT \U|muxintoregister|Mux1~0_combout\;
\U|instructionReg|ALT_INV_out\(1) <= NOT \U|instructionReg|out\(1);
\U|instructionReg|ALT_INV_out\(6) <= NOT \U|instructionReg|out\(6);
\U|instructionReg|ALT_INV_out\(9) <= NOT \U|instructionReg|out\(9);
\U|muxintoregister|ALT_INV_Mux0~0_combout\ <= NOT \U|muxintoregister|Mux0~0_combout\;
\U|instructionReg|ALT_INV_out\(2) <= NOT \U|instructionReg|out\(2);
\U|statemachine|ALT_INV_WideOr12~0_combout\ <= NOT \U|statemachine|WideOr12~0_combout\;
\U|instructionReg|ALT_INV_out\(7) <= NOT \U|instructionReg|out\(7);
\U|statemachine|ALT_INV_WideOr10~combout\ <= NOT \U|statemachine|WideOr10~combout\;
\U|instructionReg|ALT_INV_out\(10) <= NOT \U|instructionReg|out\(10);
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\U|DP|CMP|ALT_INV_Decoder0~0_combout\ <= NOT \U|DP|CMP|Decoder0~0_combout\;
\U|DP|CMP|ALT_INV_Equal0~6_combout\ <= NOT \U|DP|CMP|Equal0~6_combout\;
\U|DP|CMP|ALT_INV_Equal0~5_combout\ <= NOT \U|DP|CMP|Equal0~5_combout\;
\U|DP|CMP|ALT_INV_Equal0~4_combout\ <= NOT \U|DP|CMP|Equal0~4_combout\;
\U|DP|CMP|ALT_INV_Equal0~3_combout\ <= NOT \U|DP|CMP|Equal0~3_combout\;
\U|DP|CMP|ALT_INV_Equal0~2_combout\ <= NOT \U|DP|CMP|Equal0~2_combout\;
\U|DP|CMP|ALT_INV_Equal0~1_combout\ <= NOT \U|DP|CMP|Equal0~1_combout\;
\U|DP|CMP|ALT_INV_Equal0~0_combout\ <= NOT \U|DP|CMP|Equal0~0_combout\;
\U|DP|CMP|ALT_INV_Mux0~0_combout\ <= NOT \U|DP|CMP|Mux0~0_combout\;
\ALT_INV_rtl~31_combout\ <= NOT \rtl~31_combout\;
\U|DP|ALT_INV_Ain[15]~15_combout\ <= NOT \U|DP|Ain[15]~15_combout\;
\U|DP|aRegister|ALT_INV_out\(15) <= NOT \U|DP|aRegister|out\(15);
\ALT_INV_rtl~30_combout\ <= NOT \rtl~30_combout\;
\U|DP|CMP|ALT_INV_Mux1~0_combout\ <= NOT \U|DP|CMP|Mux1~0_combout\;
\ALT_INV_rtl~47_combout\ <= NOT \rtl~47_combout\;
\U|DP|ALT_INV_Ain[14]~14_combout\ <= NOT \U|DP|Ain[14]~14_combout\;
\U|DP|aRegister|ALT_INV_out\(14) <= NOT \U|DP|aRegister|out\(14);
\U|DP|bRegister|ALT_INV_out\(15) <= NOT \U|DP|bRegister|out\(15);
\U|DP|CMP|ALT_INV_Mux2~0_combout\ <= NOT \U|DP|CMP|Mux2~0_combout\;
\ALT_INV_rtl~46_combout\ <= NOT \rtl~46_combout\;
\U|DP|ALT_INV_Ain[13]~13_combout\ <= NOT \U|DP|Ain[13]~13_combout\;
\U|DP|aRegister|ALT_INV_out\(13) <= NOT \U|DP|aRegister|out\(13);
\U|DP|bRegister|ALT_INV_out\(14) <= NOT \U|DP|bRegister|out\(14);
\U|DP|CMP|ALT_INV_Mux3~0_combout\ <= NOT \U|DP|CMP|Mux3~0_combout\;
\ALT_INV_rtl~45_combout\ <= NOT \rtl~45_combout\;
\U|DP|ALT_INV_Ain[12]~12_combout\ <= NOT \U|DP|Ain[12]~12_combout\;
\U|DP|aRegister|ALT_INV_out\(12) <= NOT \U|DP|aRegister|out\(12);
\U|DP|bRegister|ALT_INV_out\(13) <= NOT \U|DP|bRegister|out\(13);
\U|DP|CMP|ALT_INV_Mux4~0_combout\ <= NOT \U|DP|CMP|Mux4~0_combout\;
\ALT_INV_rtl~44_combout\ <= NOT \rtl~44_combout\;
\U|DP|ALT_INV_Ain[11]~11_combout\ <= NOT \U|DP|Ain[11]~11_combout\;
\U|DP|aRegister|ALT_INV_out\(11) <= NOT \U|DP|aRegister|out\(11);
\U|DP|bRegister|ALT_INV_out\(12) <= NOT \U|DP|bRegister|out\(12);
\U|DP|CMP|ALT_INV_Mux5~0_combout\ <= NOT \U|DP|CMP|Mux5~0_combout\;
\ALT_INV_rtl~43_combout\ <= NOT \rtl~43_combout\;
\U|DP|ALT_INV_Ain[10]~10_combout\ <= NOT \U|DP|Ain[10]~10_combout\;
\U|DP|aRegister|ALT_INV_out\(10) <= NOT \U|DP|aRegister|out\(10);
\U|DP|bRegister|ALT_INV_out\(11) <= NOT \U|DP|bRegister|out\(11);
\U|DP|CMP|ALT_INV_Mux6~0_combout\ <= NOT \U|DP|CMP|Mux6~0_combout\;
\ALT_INV_rtl~42_combout\ <= NOT \rtl~42_combout\;
\U|DP|ALT_INV_Ain[9]~9_combout\ <= NOT \U|DP|Ain[9]~9_combout\;
\U|DP|aRegister|ALT_INV_out\(9) <= NOT \U|DP|aRegister|out\(9);
\U|DP|bRegister|ALT_INV_out\(10) <= NOT \U|DP|bRegister|out\(10);
\U|DP|CMP|ALT_INV_Mux7~0_combout\ <= NOT \U|DP|CMP|Mux7~0_combout\;
\ALT_INV_rtl~41_combout\ <= NOT \rtl~41_combout\;
\U|DP|ALT_INV_Ain[8]~8_combout\ <= NOT \U|DP|Ain[8]~8_combout\;
\U|DP|aRegister|ALT_INV_out\(8) <= NOT \U|DP|aRegister|out\(8);
\U|DP|bRegister|ALT_INV_out\(9) <= NOT \U|DP|bRegister|out\(9);
\U|DP|CMP|ALT_INV_Mux8~0_combout\ <= NOT \U|DP|CMP|Mux8~0_combout\;
\ALT_INV_rtl~40_combout\ <= NOT \rtl~40_combout\;
\U|DP|ALT_INV_Ain[7]~7_combout\ <= NOT \U|DP|Ain[7]~7_combout\;
\U|DP|aRegister|ALT_INV_out\(7) <= NOT \U|DP|aRegister|out\(7);
\U|DP|bRegister|ALT_INV_out\(8) <= NOT \U|DP|bRegister|out\(8);
\U|DP|CMP|ALT_INV_Mux9~0_combout\ <= NOT \U|DP|CMP|Mux9~0_combout\;
\ALT_INV_rtl~39_combout\ <= NOT \rtl~39_combout\;
\U|DP|bRegister|ALT_INV_out\(7) <= NOT \U|DP|bRegister|out\(7);
\U|DP|ALT_INV_Ain[6]~6_combout\ <= NOT \U|DP|Ain[6]~6_combout\;
\U|DP|aRegister|ALT_INV_out\(6) <= NOT \U|DP|aRegister|out\(6);
\ALT_INV_rtl~38_combout\ <= NOT \rtl~38_combout\;
\U|DP|bRegister|ALT_INV_out\(6) <= NOT \U|DP|bRegister|out\(6);
\U|DP|ALT_INV_Ain[5]~5_combout\ <= NOT \U|DP|Ain[5]~5_combout\;
\U|DP|aRegister|ALT_INV_out\(5) <= NOT \U|DP|aRegister|out\(5);
\ALT_INV_rtl~37_combout\ <= NOT \rtl~37_combout\;
\U|DP|bRegister|ALT_INV_out\(5) <= NOT \U|DP|bRegister|out\(5);
\U|DP|ALT_INV_Ain[4]~4_combout\ <= NOT \U|DP|Ain[4]~4_combout\;
\U|DP|aRegister|ALT_INV_out\(4) <= NOT \U|DP|aRegister|out\(4);
\ALT_INV_rtl~36_combout\ <= NOT \rtl~36_combout\;
\U|DP|bRegister|ALT_INV_out\(4) <= NOT \U|DP|bRegister|out\(4);
\U|DP|ALT_INV_Ain[3]~3_combout\ <= NOT \U|DP|Ain[3]~3_combout\;
\U|DP|aRegister|ALT_INV_out\(3) <= NOT \U|DP|aRegister|out\(3);
\ALT_INV_rtl~35_combout\ <= NOT \rtl~35_combout\;
\U|DP|bRegister|ALT_INV_out\(3) <= NOT \U|DP|bRegister|out\(3);
\U|DP|ALT_INV_Ain[2]~2_combout\ <= NOT \U|DP|Ain[2]~2_combout\;
\U|DP|aRegister|ALT_INV_out\(2) <= NOT \U|DP|aRegister|out\(2);
\U|DP|CMP|ALT_INV_Mux14~0_combout\ <= NOT \U|DP|CMP|Mux14~0_combout\;
\ALT_INV_rtl~34_combout\ <= NOT \rtl~34_combout\;
\U|DP|ALT_INV_Ain[1]~1_combout\ <= NOT \U|DP|Ain[1]~1_combout\;
\U|DP|aRegister|ALT_INV_out\(1) <= NOT \U|DP|aRegister|out\(1);
\U|DP|bRegister|ALT_INV_out\(2) <= NOT \U|DP|bRegister|out\(2);
\ALT_INV_rtl~33_combout\ <= NOT \rtl~33_combout\;
\U|DP|bRegister|ALT_INV_out\(0) <= NOT \U|DP|bRegister|out\(0);
\U|instructionReg|ALT_INV_out\(3) <= NOT \U|instructionReg|out\(3);
\U|DP|bRegister|ALT_INV_out\(1) <= NOT \U|DP|bRegister|out\(1);
\U|instructionReg|ALT_INV_out\(4) <= NOT \U|instructionReg|out\(4);
\U|DP|ALT_INV_Ain[0]~0_combout\ <= NOT \U|DP|Ain[0]~0_combout\;
\U|DP|aRegister|ALT_INV_out\(0) <= NOT \U|DP|aRegister|out\(0);
\U|statemachine|ALT_INV_next_reset_state[0]~5_combout\ <= NOT \U|statemachine|next_reset_state[0]~5_combout\;
\U|statemachine|ALT_INV_next_reset_state[0]~4_combout\ <= NOT \U|statemachine|next_reset_state[0]~4_combout\;
\U|statemachine|ALT_INV_next_reset_state[2]~2_combout\ <= NOT \U|statemachine|next_reset_state[2]~2_combout\;
\U|statemachine|ALT_INV_WideOr26~0_combout\ <= NOT \U|statemachine|WideOr26~0_combout\;
\U|statemachine|ALT_INV_WideOr6~1_combout\ <= NOT \U|statemachine|WideOr6~1_combout\;
\U|statemachine|ALT_INV_WideOr6~0_combout\ <= NOT \U|statemachine|WideOr6~0_combout\;
\U|statemachine|ALT_INV_Equal1~0_combout\ <= NOT \U|statemachine|Equal1~0_combout\;
\U|statemachine|ALT_INV_Equal2~0_combout\ <= NOT \U|statemachine|Equal2~0_combout\;
\U|instructionReg|ALT_INV_out\(14) <= NOT \U|instructionReg|out\(14);
\U|instructionReg|ALT_INV_out\(13) <= NOT \U|instructionReg|out\(13);
\U|instructionReg|ALT_INV_out\(15) <= NOT \U|instructionReg|out\(15);
\U|statemachine|ALT_INV_WideNor1~0_combout\ <= NOT \U|statemachine|WideNor1~0_combout\;
\U|statemachine|ALT_INV_WideNor2~0_combout\ <= NOT \U|statemachine|WideNor2~0_combout\;
\U|instructionReg|ALT_INV_out\(11) <= NOT \U|instructionReg|out\(11);
\U|instructionReg|ALT_INV_out\(12) <= NOT \U|instructionReg|out\(12);
\U|DP|stat|ALT_INV_out\(1) <= NOT \U|DP|stat|out\(1);
\U|DP|stat|ALT_INV_out\(0) <= NOT \U|DP|stat|out\(0);
\H3|ALT_INV_WideOr0~0_combout\ <= NOT \H3|WideOr0~0_combout\;
\H2|ALT_INV_WideOr0~0_combout\ <= NOT \H2|WideOr0~0_combout\;
\H1|ALT_INV_WideOr0~0_combout\ <= NOT \H1|WideOr0~0_combout\;
\H0|ALT_INV_WideOr0~0_combout\ <= NOT \H0|WideOr0~0_combout\;
\U|statemachine|ALT_INV_WideOr26~combout\ <= NOT \U|statemachine|WideOr26~combout\;
\U|statemachine|STATE|ALT_INV_Q\(4) <= NOT \U|statemachine|STATE|Q\(4);
\U|statemachine|STATE|ALT_INV_Q\(0) <= NOT \U|statemachine|STATE|Q\(0);
\U|statemachine|STATE|ALT_INV_Q\(2) <= NOT \U|statemachine|STATE|Q\(2);
\U|statemachine|STATE|ALT_INV_Q\(3) <= NOT \U|statemachine|STATE|Q\(3);
\U|statemachine|STATE|ALT_INV_Q\(1) <= NOT \U|statemachine|STATE|Q\(1);
\IN|REG|ALT_INV_Q\(15) <= NOT \IN|REG|Q\(15);
\IN|REG|ALT_INV_Q\(7) <= NOT \IN|REG|Q\(7);
\IN|REG|ALT_INV_Q\(14) <= NOT \IN|REG|Q\(14);
\IN|REG|ALT_INV_Q\(6) <= NOT \IN|REG|Q\(6);
\IN|REG|ALT_INV_Q\(13) <= NOT \IN|REG|Q\(13);
\IN|REG|ALT_INV_Q\(5) <= NOT \IN|REG|Q\(5);
\IN|REG|ALT_INV_Q\(12) <= NOT \IN|REG|Q\(12);
\IN|REG|ALT_INV_Q\(4) <= NOT \IN|REG|Q\(4);
\IN|REG|ALT_INV_Q\(11) <= NOT \IN|REG|Q\(11);
\IN|REG|ALT_INV_Q\(3) <= NOT \IN|REG|Q\(3);
\IN|REG|ALT_INV_Q\(10) <= NOT \IN|REG|Q\(10);
\IN|REG|ALT_INV_Q\(2) <= NOT \IN|REG|Q\(2);
\IN|REG|ALT_INV_Q\(9) <= NOT \IN|REG|Q\(9);
\IN|REG|ALT_INV_Q\(1) <= NOT \IN|REG|Q\(1);
\IN|REG|ALT_INV_Q\(8) <= NOT \IN|REG|Q\(8);
\IN|REG|ALT_INV_Q\(0) <= NOT \IN|REG|Q\(0);
\U|DP|CMP|ADDER1|ai|ALT_INV_cout\ <= NOT \U|DP|CMP|ADDER1|ai|cout\;
\U|DP|CMP|ALT_INV_Add0~61_sumout\ <= NOT \U|DP|CMP|Add0~61_sumout\;
\U|DP|CMP|ALT_INV_Add0~57_sumout\ <= NOT \U|DP|CMP|Add0~57_sumout\;
\U|DP|CMP|ALT_INV_Add0~53_sumout\ <= NOT \U|DP|CMP|Add0~53_sumout\;
\U|DP|CMP|ALT_INV_Add0~49_sumout\ <= NOT \U|DP|CMP|Add0~49_sumout\;
\U|DP|CMP|ALT_INV_Add0~45_sumout\ <= NOT \U|DP|CMP|Add0~45_sumout\;
\U|DP|CMP|ALT_INV_Add0~41_sumout\ <= NOT \U|DP|CMP|Add0~41_sumout\;
\U|DP|CMP|ALT_INV_Add0~37_sumout\ <= NOT \U|DP|CMP|Add0~37_sumout\;
\U|DP|CMP|ALT_INV_Add0~33_sumout\ <= NOT \U|DP|CMP|Add0~33_sumout\;
\U|DP|CMP|ALT_INV_Add0~29_sumout\ <= NOT \U|DP|CMP|Add0~29_sumout\;
\U|DP|CMP|ALT_INV_Add0~25_sumout\ <= NOT \U|DP|CMP|Add0~25_sumout\;
\U|DP|CMP|ALT_INV_Add0~21_sumout\ <= NOT \U|DP|CMP|Add0~21_sumout\;
\U|DP|CMP|ALT_INV_Add0~17_sumout\ <= NOT \U|DP|CMP|Add0~17_sumout\;
\U|DP|CMP|ALT_INV_Add0~13_sumout\ <= NOT \U|DP|CMP|Add0~13_sumout\;
\U|DP|CMP|ALT_INV_Add0~9_sumout\ <= NOT \U|DP|CMP|Add0~9_sumout\;
\U|DP|CMP|ALT_INV_Add0~5_sumout\ <= NOT \U|DP|CMP|Add0~5_sumout\;
\U|DP|CMP|ALT_INV_Add0~1_sumout\ <= NOT \U|DP|CMP|Add0~1_sumout\;
\U|DP|stat|ALT_INV_out\(2) <= NOT \U|DP|stat|out\(2);
\U|DP|cRegister|ALT_INV_out\(15) <= NOT \U|DP|cRegister|out\(15);
\U|DP|cRegister|ALT_INV_out\(14) <= NOT \U|DP|cRegister|out\(14);
\U|DP|cRegister|ALT_INV_out\(13) <= NOT \U|DP|cRegister|out\(13);
\U|DP|cRegister|ALT_INV_out\(12) <= NOT \U|DP|cRegister|out\(12);
\U|DP|cRegister|ALT_INV_out\(11) <= NOT \U|DP|cRegister|out\(11);
\U|DP|cRegister|ALT_INV_out\(10) <= NOT \U|DP|cRegister|out\(10);
\U|DP|cRegister|ALT_INV_out\(9) <= NOT \U|DP|cRegister|out\(9);
\U|DP|cRegister|ALT_INV_out\(8) <= NOT \U|DP|cRegister|out\(8);
\U|DP|cRegister|ALT_INV_out\(7) <= NOT \U|DP|cRegister|out\(7);
\U|DP|cRegister|ALT_INV_out\(6) <= NOT \U|DP|cRegister|out\(6);
\U|DP|cRegister|ALT_INV_out\(5) <= NOT \U|DP|cRegister|out\(5);
\U|DP|cRegister|ALT_INV_out\(4) <= NOT \U|DP|cRegister|out\(4);
\U|DP|cRegister|ALT_INV_out\(3) <= NOT \U|DP|cRegister|out\(3);
\U|DP|cRegister|ALT_INV_out\(2) <= NOT \U|DP|cRegister|out\(2);
\U|DP|cRegister|ALT_INV_out\(1) <= NOT \U|DP|cRegister|out\(1);
\U|DP|cRegister|ALT_INV_out\(0) <= NOT \U|DP|cRegister|out\(0);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[0]~0_combout\,
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
	i => \IN|LEDR[1]~1_combout\,
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
	i => \IN|LEDR[2]~2_combout\,
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
	i => \IN|LEDR[3]~3_combout\,
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
	i => \IN|LEDR[4]~4_combout\,
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
	i => \IN|LEDR[5]~5_combout\,
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
	i => \IN|LEDR[6]~6_combout\,
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
	i => \IN|LEDR[7]~7_combout\,
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
	i => \U|statemachine|ALT_INV_WideOr26~combout\,
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
	i => \H0|WideOr6~0_combout\,
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
	i => \H0|WideOr5~0_combout\,
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
	i => \H0|WideOr4~0_combout\,
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
	i => \H0|WideOr3~0_combout\,
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
	i => \H0|WideOr2~0_combout\,
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
	i => \H0|WideOr1~0_combout\,
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
	i => \H0|ALT_INV_WideOr0~0_combout\,
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
	i => \H1|WideOr6~0_combout\,
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
	i => \H1|WideOr5~0_combout\,
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
	i => \H1|WideOr4~0_combout\,
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
	i => \H1|WideOr3~0_combout\,
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
	i => \H1|WideOr2~0_combout\,
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
	i => \H1|WideOr1~0_combout\,
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
	i => \H1|ALT_INV_WideOr0~0_combout\,
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
	i => \H2|WideOr6~0_combout\,
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
	i => \H2|WideOr5~0_combout\,
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
	i => \H2|WideOr4~0_combout\,
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
	i => \H2|WideOr3~0_combout\,
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
	i => \H2|WideOr2~0_combout\,
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
	i => \H2|WideOr1~0_combout\,
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
	i => \H2|ALT_INV_WideOr0~0_combout\,
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
	i => \H3|WideOr6~0_combout\,
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
	i => \H3|WideOr5~0_combout\,
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
	i => \H3|WideOr4~0_combout\,
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
	i => \H3|WideOr3~0_combout\,
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
	i => \H3|WideOr2~0_combout\,
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
	i => \H3|WideOr1~0_combout\,
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
	i => \H3|ALT_INV_WideOr0~0_combout\,
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
	i => \U|DP|stat|ALT_INV_out\(0),
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
	i => \U|DP|stat|ALT_INV_out\(1),
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
	i => \U|DP|stat|ALT_INV_out\(2),
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

-- Location: CLKCTRL_G7
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

-- Location: FF_X84_Y3_N29
\IN|REG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(8));

-- Location: FF_X83_Y3_N26
\IN|REG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(0));

-- Location: LABCELL_X83_Y3_N9
\IN|LEDR[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[0]~0_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(0) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(0) & ( \IN|REG|Q\(8) ) ) ) # ( !\SW[9]~input_o\ & ( !\IN|REG|Q\(0) & ( \IN|REG|Q\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IN|REG|ALT_INV_Q\(8),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(0),
	combout => \IN|LEDR[0]~0_combout\);

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

-- Location: LABCELL_X83_Y2_N15
\IN|REG|Q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|REG|Q[9]~feeder_combout\ = ( \SW[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \IN|REG|Q[9]~feeder_combout\);

-- Location: FF_X83_Y2_N17
\IN|REG|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \IN|REG|Q[9]~feeder_combout\,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(9));

-- Location: FF_X87_Y6_N53
\IN|REG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(1));

-- Location: LABCELL_X83_Y2_N54
\IN|LEDR[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[1]~1_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(1) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(1) & ( \IN|REG|Q\(9) ) ) ) # ( !\SW[9]~input_o\ & ( !\IN|REG|Q\(1) & ( \IN|REG|Q\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IN|REG|ALT_INV_Q\(9),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(1),
	combout => \IN|LEDR[1]~1_combout\);

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

-- Location: FF_X85_Y3_N53
\IN|REG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(2));

-- Location: FF_X84_Y3_N11
\IN|REG|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(10));

-- Location: LABCELL_X85_Y3_N54
\IN|LEDR[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[2]~2_combout\ = ( \IN|REG|Q\(10) & ( (!\SW[9]~input_o\) # (\IN|REG|Q\(2)) ) ) # ( !\IN|REG|Q\(10) & ( (\IN|REG|Q\(2) & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IN|REG|ALT_INV_Q\(2),
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(10),
	combout => \IN|LEDR[2]~2_combout\);

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

-- Location: FF_X87_Y6_N23
\IN|REG|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(11));

-- Location: FF_X87_Y6_N41
\IN|REG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(3));

-- Location: MLABCELL_X87_Y6_N24
\IN|LEDR[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[3]~3_combout\ = ( \IN|REG|Q\(3) & ( (\IN|REG|Q\(11)) # (\SW[9]~input_o\) ) ) # ( !\IN|REG|Q\(3) & ( (!\SW[9]~input_o\ & \IN|REG|Q\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \IN|REG|ALT_INV_Q\(11),
	dataf => \IN|REG|ALT_INV_Q\(3),
	combout => \IN|LEDR[3]~3_combout\);

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

-- Location: FF_X87_Y6_N26
\IN|REG|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(12));

-- Location: FF_X87_Y6_N59
\IN|REG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(4));

-- Location: MLABCELL_X87_Y6_N9
\IN|LEDR[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[4]~4_combout\ = ( \IN|REG|Q\(4) & ( (\SW[9]~input_o\) # (\IN|REG|Q\(12)) ) ) # ( !\IN|REG|Q\(4) & ( (\IN|REG|Q\(12) & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN|REG|ALT_INV_Q\(12),
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(4),
	combout => \IN|LEDR[4]~4_combout\);

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

-- Location: FF_X83_Y3_N53
\IN|REG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(5));

-- Location: FF_X84_Y3_N5
\IN|REG|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(13));

-- Location: LABCELL_X83_Y3_N42
\IN|LEDR[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[5]~5_combout\ = (!\SW[9]~input_o\ & ((\IN|REG|Q\(13)))) # (\SW[9]~input_o\ & (\IN|REG|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \IN|REG|ALT_INV_Q\(5),
	datad => \IN|REG|ALT_INV_Q\(13),
	combout => \IN|LEDR[5]~5_combout\);

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

-- Location: FF_X84_Y3_N56
\IN|REG|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(14));

-- Location: FF_X85_Y3_N26
\IN|REG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(6));

-- Location: LABCELL_X83_Y2_N51
\IN|LEDR[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[6]~6_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(6) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(6) & ( \IN|REG|Q\(14) ) ) ) # ( !\SW[9]~input_o\ & ( !\IN|REG|Q\(6) & ( \IN|REG|Q\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IN|REG|ALT_INV_Q\(14),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(6),
	combout => \IN|LEDR[6]~6_combout\);

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

-- Location: FF_X84_Y3_N20
\IN|REG|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(15));

-- Location: FF_X84_Y3_N17
\IN|REG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(7));

-- Location: MLABCELL_X84_Y3_N21
\IN|LEDR[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[7]~7_combout\ = (!\SW[9]~input_o\ & (\IN|REG|Q\(15))) # (\SW[9]~input_o\ & ((\IN|REG|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN|REG|ALT_INV_Q\(15),
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \IN|REG|ALT_INV_Q\(7),
	combout => \IN|LEDR[7]~7_combout\);

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

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

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

-- Location: FF_X87_Y6_N17
\U|instructionReg|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(11),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(11));

-- Location: FF_X84_Y3_N35
\U|instructionReg|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(14),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(14));

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

-- Location: FF_X87_Y6_N2
\U|instructionReg|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(12),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(12));

-- Location: FF_X84_Y3_N32
\U|instructionReg|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(13),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(13));

-- Location: MLABCELL_X84_Y3_N0
\U|statemachine|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|Equal1~0_combout\ = ( !\U|instructionReg|out\(13) & ( (\U|instructionReg|out\(14) & (!\U|instructionReg|out\(12) & !\U|instructionReg|out\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(14),
	datab => \U|instructionReg|ALT_INV_out\(12),
	datac => \U|instructionReg|ALT_INV_out\(11),
	dataf => \U|instructionReg|ALT_INV_out\(13),
	combout => \U|statemachine|Equal1~0_combout\);

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

-- Location: FF_X84_Y3_N41
\U|instructionReg|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(15),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(15));

-- Location: MLABCELL_X84_Y3_N57
\U|statemachine|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr6~0_combout\ = ( \U|statemachine|STATE|Q\(3) & ( \U|statemachine|WideNor2~0_combout\ & ( \U|statemachine|STATE|Q\(1) ) ) ) # ( !\U|statemachine|STATE|Q\(3) & ( \U|statemachine|WideNor2~0_combout\ & ( 
-- ((\U|statemachine|Equal1~0_combout\ & (!\KEY[2]~input_o\ & \U|instructionReg|out\(15)))) # (\U|statemachine|STATE|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \U|statemachine|STATE|ALT_INV_Q\(1),
	datad => \U|instructionReg|ALT_INV_out\(15),
	datae => \U|statemachine|STATE|ALT_INV_Q\(3),
	dataf => \U|statemachine|ALT_INV_WideNor2~0_combout\,
	combout => \U|statemachine|WideOr6~0_combout\);

-- Location: MLABCELL_X84_Y5_N3
\U|statemachine|WideOr6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr6~1_combout\ = ( \U|statemachine|STATE|Q\(1) & ( (!\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(4) & \U|statemachine|STATE|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(4),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(1),
	combout => \U|statemachine|WideOr6~1_combout\);

-- Location: LABCELL_X85_Y5_N48
\U|statemachine|next_reset_state[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|next_reset_state[1]~0_combout\ = ( \U|statemachine|WideOr6~1_combout\ & ( \KEY[1]~input_o\ ) ) # ( !\U|statemachine|WideOr6~1_combout\ & ( (\KEY[1]~input_o\ & ((\U|statemachine|WideOr6~0_combout\) # (\U|statemachine|Equal2~0_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \U|statemachine|ALT_INV_WideOr6~0_combout\,
	dataf => \U|statemachine|ALT_INV_WideOr6~1_combout\,
	combout => \U|statemachine|next_reset_state[1]~0_combout\);

-- Location: FF_X85_Y5_N50
\U|statemachine|STATE|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|next_reset_state[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|STATE|Q\(1));

-- Location: MLABCELL_X84_Y5_N48
\U|statemachine|next_reset_state[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|next_reset_state[0]~5_combout\ = ( !\U|statemachine|STATE|Q\(0) & ( (!\U|statemachine|STATE|Q\(4) & \KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|STATE|ALT_INV_Q\(4),
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \U|statemachine|STATE|ALT_INV_Q\(0),
	combout => \U|statemachine|next_reset_state[0]~5_combout\);

-- Location: MLABCELL_X84_Y3_N24
\U|statemachine|next_reset_state[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|next_reset_state[0]~4_combout\ = ( !\KEY[2]~input_o\ & ( !\U|instructionReg|out\(11) & ( (\U|instructionReg|out\(14) & (\U|instructionReg|out\(12) & (!\U|instructionReg|out\(13) & \U|instructionReg|out\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(14),
	datab => \U|instructionReg|ALT_INV_out\(12),
	datac => \U|instructionReg|ALT_INV_out\(13),
	datad => \U|instructionReg|ALT_INV_out\(15),
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \U|instructionReg|ALT_INV_out\(11),
	combout => \U|statemachine|next_reset_state[0]~4_combout\);

-- Location: LABCELL_X85_Y5_N18
\U|statemachine|next_reset_state[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|next_reset_state[0]~6_combout\ = ( \U|statemachine|next_reset_state[0]~4_combout\ & ( (\U|statemachine|next_reset_state[0]~5_combout\ & ((!\U|statemachine|STATE|Q\(2)) # (\U|statemachine|STATE|Q\(1)))) ) ) # ( 
-- !\U|statemachine|next_reset_state[0]~4_combout\ & ( (\U|statemachine|next_reset_state[0]~5_combout\ & (((\U|statemachine|STATE|Q\(3) & !\U|statemachine|STATE|Q\(2))) # (\U|statemachine|STATE|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110101000000000111010100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|ALT_INV_next_reset_state[0]~5_combout\,
	dataf => \U|statemachine|ALT_INV_next_reset_state[0]~4_combout\,
	combout => \U|statemachine|next_reset_state[0]~6_combout\);

-- Location: FF_X85_Y5_N20
\U|statemachine|STATE|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|next_reset_state[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|STATE|Q\(0));

-- Location: MLABCELL_X84_Y3_N12
\U|statemachine|WideNor2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideNor2~0_combout\ = ( !\U|statemachine|STATE|Q\(0) & ( (!\U|statemachine|STATE|Q\(4) & !\U|statemachine|STATE|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(4),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|statemachine|STATE|ALT_INV_Q\(0),
	combout => \U|statemachine|WideNor2~0_combout\);

-- Location: LABCELL_X85_Y3_N21
\U|statemachine|WideNor1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideNor1~0_combout\ = ( !\U|statemachine|STATE|Q\(1) & ( !\U|statemachine|STATE|Q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|statemachine|STATE|ALT_INV_Q\(3),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(1),
	combout => \U|statemachine|WideNor1~0_combout\);

-- Location: MLABCELL_X84_Y3_N6
\U|statemachine|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|Equal2~0_combout\ = ( \U|statemachine|WideNor1~0_combout\ & ( \U|instructionReg|out\(13) & ( (!\U|instructionReg|out\(14) & (\U|statemachine|WideNor2~0_combout\ & (\U|instructionReg|out\(15) & !\KEY[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(14),
	datab => \U|statemachine|ALT_INV_WideNor2~0_combout\,
	datac => \U|instructionReg|ALT_INV_out\(15),
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \U|statemachine|ALT_INV_WideNor1~0_combout\,
	dataf => \U|instructionReg|ALT_INV_out\(13),
	combout => \U|statemachine|Equal2~0_combout\);

-- Location: LABCELL_X85_Y5_N0
\U|statemachine|WideOr26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr26~0_combout\ = ( \U|statemachine|STATE|Q\(3) & ( (!\U|statemachine|STATE|Q\(4) & ((!\U|statemachine|STATE|Q\(2) & ((!\U|statemachine|STATE|Q\(0)) # (\U|statemachine|STATE|Q\(1)))) # (\U|statemachine|STATE|Q\(2) & 
-- (!\U|statemachine|STATE|Q\(0) & \U|statemachine|STATE|Q\(1))))) ) ) # ( !\U|statemachine|STATE|Q\(3) & ( (\U|statemachine|STATE|Q\(2) & (!\U|statemachine|STATE|Q\(4) & (\U|statemachine|STATE|Q\(0) & \U|statemachine|STATE|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010010000000110010001000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(2),
	datab => \U|statemachine|STATE|ALT_INV_Q\(4),
	datac => \U|statemachine|STATE|ALT_INV_Q\(0),
	datad => \U|statemachine|STATE|ALT_INV_Q\(1),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(3),
	combout => \U|statemachine|WideOr26~0_combout\);

-- Location: LABCELL_X85_Y5_N51
\U|statemachine|next_reset_state[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|next_reset_state[3]~1_combout\ = ( \U|instructionReg|out\(11) & ( (\KEY[1]~input_o\ & ((\U|statemachine|WideOr26~0_combout\) # (\U|statemachine|Equal2~0_combout\))) ) ) # ( !\U|instructionReg|out\(11) & ( (\KEY[1]~input_o\ & 
-- \U|statemachine|WideOr26~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \U|statemachine|ALT_INV_WideOr26~0_combout\,
	dataf => \U|instructionReg|ALT_INV_out\(11),
	combout => \U|statemachine|next_reset_state[3]~1_combout\);

-- Location: FF_X85_Y5_N53
\U|statemachine|STATE|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|next_reset_state[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|STATE|Q\(3));

-- Location: LABCELL_X85_Y5_N57
\U|statemachine|next_reset_state[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|next_reset_state[4]~7_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|statemachine|STATE|Q\(2) & ( (\U|statemachine|STATE|Q\(3) & (\U|statemachine|STATE|Q\(0) & (\U|statemachine|STATE|Q\(1) & \KEY[1]~input_o\))) ) ) ) # ( 
-- !\U|statemachine|STATE|Q\(4) & ( \U|statemachine|STATE|Q\(2) & ( (\U|statemachine|STATE|Q\(3) & (!\U|statemachine|STATE|Q\(0) & (\U|statemachine|STATE|Q\(1) & \KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(3),
	datab => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(1),
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(2),
	combout => \U|statemachine|next_reset_state[4]~7_combout\);

-- Location: FF_X85_Y5_N59
\U|statemachine|STATE|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|statemachine|next_reset_state[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|STATE|Q\(4));

-- Location: LABCELL_X83_Y3_N36
\U|statemachine|next_reset_state[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|next_reset_state[2]~2_combout\ = ( \U|statemachine|STATE|Q\(1) & ( (!\U|statemachine|STATE|Q\(4) & (!\U|statemachine|STATE|Q\(2) & \U|statemachine|STATE|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|STATE|ALT_INV_Q\(4),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|STATE|ALT_INV_Q\(0),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(1),
	combout => \U|statemachine|next_reset_state[2]~2_combout\);

-- Location: MLABCELL_X84_Y5_N9
\U|statemachine|next_reset_state[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|next_reset_state[2]~3_combout\ = ( \U|statemachine|WideOr6~1_combout\ & ( \U|statemachine|Equal2~0_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( !\U|statemachine|WideOr6~1_combout\ & ( \U|statemachine|Equal2~0_combout\ & ( (\KEY[1]~input_o\ & 
-- ((!\U|instructionReg|out\(11)) # ((\U|instructionReg|out\(12)) # (\U|statemachine|next_reset_state[2]~2_combout\)))) ) ) ) # ( \U|statemachine|WideOr6~1_combout\ & ( !\U|statemachine|Equal2~0_combout\ & ( \KEY[1]~input_o\ ) ) ) # ( 
-- !\U|statemachine|WideOr6~1_combout\ & ( !\U|statemachine|Equal2~0_combout\ & ( (\U|statemachine|next_reset_state[2]~2_combout\ & \KEY[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001011000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|statemachine|ALT_INV_next_reset_state[2]~2_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \U|instructionReg|ALT_INV_out\(12),
	datae => \U|statemachine|ALT_INV_WideOr6~1_combout\,
	dataf => \U|statemachine|ALT_INV_Equal2~0_combout\,
	combout => \U|statemachine|next_reset_state[2]~3_combout\);

-- Location: FF_X85_Y5_N5
\U|statemachine|STATE|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|statemachine|next_reset_state[2]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|statemachine|STATE|Q\(2));

-- Location: MLABCELL_X84_Y4_N0
\U|statemachine|WideOr26\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr26~combout\ = ( \U|statemachine|STATE|Q\(3) & ( (!\U|statemachine|STATE|Q\(2) & (!\U|statemachine|STATE|Q\(4))) # (\U|statemachine|STATE|Q\(2) & ((!\U|statemachine|STATE|Q\(4) & ((!\U|statemachine|STATE|Q\(0)))) # 
-- (\U|statemachine|STATE|Q\(4) & (\U|statemachine|STATE|Q\(1) & \U|statemachine|STATE|Q\(0))))) ) ) # ( !\U|statemachine|STATE|Q\(3) & ( (!\U|statemachine|STATE|Q\(2) & (!\U|statemachine|STATE|Q\(4) $ (((!\U|statemachine|STATE|Q\(1) & 
-- !\U|statemachine|STATE|Q\(0)))))) # (\U|statemachine|STATE|Q\(2) & (!\U|statemachine|STATE|Q\(4) & ((!\U|statemachine|STATE|Q\(0)) # (\U|statemachine|STATE|Q\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010001100011011001000110011001100100010011100110010001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(2),
	datab => \U|statemachine|STATE|ALT_INV_Q\(4),
	datac => \U|statemachine|STATE|ALT_INV_Q\(1),
	datad => \U|statemachine|STATE|ALT_INV_Q\(0),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(3),
	combout => \U|statemachine|WideOr26~combout\);

-- Location: FF_X87_Y6_N11
\U|instructionReg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(4),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(4));

-- Location: FF_X85_Y3_N2
\U|instructionReg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(2),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(2));

-- Location: FF_X85_Y3_N55
\U|instructionReg|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(10),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(10));

-- Location: MLABCELL_X84_Y3_N51
\U|statemachine|WideOr10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr10~combout\ = ( \U|statemachine|STATE|Q\(3) & ( !\U|statemachine|STATE|Q\(4) & ( (!\U|statemachine|STATE|Q\(0) & (\U|statemachine|STATE|Q\(1) & !\U|statemachine|STATE|Q\(2))) ) ) ) # ( !\U|statemachine|STATE|Q\(3) & ( 
-- !\U|statemachine|STATE|Q\(4) & ( (!\U|statemachine|STATE|Q\(0) & (\U|statemachine|STATE|Q\(1) & \U|statemachine|STATE|Q\(2))) # (\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(1) & !\U|statemachine|STATE|Q\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(1),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|statemachine|STATE|ALT_INV_Q\(3),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(4),
	combout => \U|statemachine|WideOr10~combout\);

-- Location: FF_X84_Y3_N50
\U|instructionReg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(7),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(7));

-- Location: MLABCELL_X84_Y3_N30
\U|statemachine|WideOr12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr12~0_combout\ = ( !\U|statemachine|STATE|Q\(3) & ( \U|statemachine|STATE|Q\(4) & ( (!\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(2) & !\U|statemachine|STATE|Q\(1))) ) ) ) # ( \U|statemachine|STATE|Q\(3) & ( 
-- !\U|statemachine|STATE|Q\(4) & ( (\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(2) & !\U|statemachine|STATE|Q\(1))) ) ) ) # ( !\U|statemachine|STATE|Q\(3) & ( !\U|statemachine|STATE|Q\(4) & ( (!\U|statemachine|STATE|Q\(0) & 
-- (\U|statemachine|STATE|Q\(2) & !\U|statemachine|STATE|Q\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000001100000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|STATE|ALT_INV_Q\(1),
	datae => \U|statemachine|STATE|ALT_INV_Q\(3),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(4),
	combout => \U|statemachine|WideOr12~0_combout\);

-- Location: LABCELL_X85_Y3_N18
\U|muxintoregister|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|muxintoregister|Mux0~0_combout\ = ( \U|statemachine|WideOr12~0_combout\ & ( (!\U|statemachine|WideOr10~combout\ & ((\U|instructionReg|out\(7)))) # (\U|statemachine|WideOr10~combout\ & (\U|instructionReg|out\(10))) ) ) # ( 
-- !\U|statemachine|WideOr12~0_combout\ & ( (!\U|statemachine|WideOr10~combout\ & (\U|instructionReg|out\(2))) # (\U|statemachine|WideOr10~combout\ & ((\U|instructionReg|out\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(2),
	datab => \U|instructionReg|ALT_INV_out\(10),
	datac => \U|statemachine|ALT_INV_WideOr10~combout\,
	datad => \U|instructionReg|ALT_INV_out\(7),
	dataf => \U|statemachine|ALT_INV_WideOr12~0_combout\,
	combout => \U|muxintoregister|Mux0~0_combout\);

-- Location: FF_X83_Y3_N46
\U|instructionReg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(5),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(5));

-- Location: FF_X83_Y3_N8
\U|instructionReg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(0),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(0));

-- Location: FF_X84_Y3_N44
\U|instructionReg|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(8),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(8));

-- Location: MLABCELL_X84_Y3_N42
\U|muxintoregister|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|muxintoregister|Mux2~0_combout\ = ( \U|statemachine|WideOr12~0_combout\ & ( (!\U|statemachine|WideOr10~combout\ & (\U|instructionReg|out\(5))) # (\U|statemachine|WideOr10~combout\ & ((\U|instructionReg|out\(8)))) ) ) # ( 
-- !\U|statemachine|WideOr12~0_combout\ & ( (!\U|statemachine|WideOr10~combout\ & (\U|instructionReg|out\(0))) # (\U|statemachine|WideOr10~combout\ & ((\U|instructionReg|out\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(5),
	datab => \U|instructionReg|ALT_INV_out\(0),
	datac => \U|statemachine|ALT_INV_WideOr10~combout\,
	datad => \U|instructionReg|ALT_INV_out\(8),
	dataf => \U|statemachine|ALT_INV_WideOr12~0_combout\,
	combout => \U|muxintoregister|Mux2~0_combout\);

-- Location: FF_X84_Y3_N38
\U|instructionReg|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(9),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(9));

-- Location: FF_X85_Y3_N8
\U|instructionReg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(6),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(6));

-- Location: FF_X87_Y6_N5
\U|instructionReg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(1),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(1));

-- Location: MLABCELL_X84_Y3_N39
\U|muxintoregister|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|muxintoregister|Mux1~0_combout\ = ( \U|instructionReg|out\(1) & ( \U|statemachine|WideOr10~combout\ & ( \U|instructionReg|out\(9) ) ) ) # ( !\U|instructionReg|out\(1) & ( \U|statemachine|WideOr10~combout\ & ( \U|instructionReg|out\(9) ) ) ) # ( 
-- \U|instructionReg|out\(1) & ( !\U|statemachine|WideOr10~combout\ & ( (!\U|statemachine|WideOr12~0_combout\) # (\U|instructionReg|out\(6)) ) ) ) # ( !\U|instructionReg|out\(1) & ( !\U|statemachine|WideOr10~combout\ & ( (\U|statemachine|WideOr12~0_combout\ 
-- & \U|instructionReg|out\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(9),
	datac => \U|statemachine|ALT_INV_WideOr12~0_combout\,
	datad => \U|instructionReg|ALT_INV_out\(6),
	datae => \U|instructionReg|ALT_INV_out\(1),
	dataf => \U|statemachine|ALT_INV_WideOr10~combout\,
	combout => \U|muxintoregister|Mux1~0_combout\);

-- Location: LABCELL_X85_Y3_N30
\U|DP|REGFILE|chooser|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector10~0_combout\ = ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\) ) ) # ( !\U|muxintoregister|Mux1~0_combout\ & ( \U|muxintoregister|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector10~0_combout\);

-- Location: LABCELL_X85_Y3_N15
\U|DP|REGFILE|decodetomux|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ = ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & \U|muxintoregister|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\);

-- Location: FF_X87_Y5_N50
\U|instructionReg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(3),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instructionReg|out\(3));

-- Location: MLABCELL_X84_Y4_N30
\U|statemachine|WideNor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideNor1~combout\ = ( !\U|statemachine|STATE|Q\(4) & ( !\U|statemachine|STATE|Q\(1) & ( (\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(2) & !\U|statemachine|STATE|Q\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|STATE|ALT_INV_Q\(3),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(1),
	combout => \U|statemachine|WideNor1~combout\);

-- Location: MLABCELL_X84_Y6_N48
\rtl~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~30_combout\ = ( \U|instructionReg|out\(3) & ( \U|DP|bRegister|out\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U|DP|bRegister|ALT_INV_out\(14),
	dataf => \U|instructionReg|ALT_INV_out\(3),
	combout => \rtl~30_combout\);

-- Location: LABCELL_X85_Y2_N42
\U|DP|aRegister|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|aRegister|out[15]~feeder_combout\ = ( \U|DP|REGFILE|chooser|Selector0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector0~2_combout\,
	combout => \U|DP|aRegister|out[15]~feeder_combout\);

-- Location: MLABCELL_X84_Y4_N12
\U|statemachine|WideOr10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr10~0_combout\ = ( \U|statemachine|STATE|Q\(2) & ( \U|statemachine|STATE|Q\(1) & ( (!\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(4) & !\U|statemachine|STATE|Q\(3))) ) ) ) # ( !\U|statemachine|STATE|Q\(2) & ( 
-- \U|statemachine|STATE|Q\(1) & ( (!\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(4) & \U|statemachine|STATE|Q\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100010001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(0),
	datab => \U|statemachine|STATE|ALT_INV_Q\(4),
	datad => \U|statemachine|STATE|ALT_INV_Q\(3),
	datae => \U|statemachine|STATE|ALT_INV_Q\(2),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(1),
	combout => \U|statemachine|WideOr10~0_combout\);

-- Location: FF_X85_Y2_N43
\U|DP|aRegister|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|aRegister|out[15]~feeder_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(15));

-- Location: LABCELL_X85_Y5_N42
\U|DP|Ain[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[15]~15_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(15) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(15) & ( (((!\U|statemachine|STATE|Q\(1)) # (\U|statemachine|STATE|Q\(2))) # (\U|statemachine|STATE|Q\(3))) 
-- # (\U|statemachine|STATE|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(0),
	datab => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|statemachine|STATE|ALT_INV_Q\(1),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(15),
	combout => \U|DP|Ain[15]~15_combout\);

-- Location: LABCELL_X85_Y6_N18
\rtl~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~31_combout\ = ( \U|instructionReg|out\(3) & ( !\U|instructionReg|out\(4) ) ) # ( !\U|instructionReg|out\(3) & ( \U|instructionReg|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instructionReg|ALT_INV_out\(4),
	dataf => \U|instructionReg|ALT_INV_out\(3),
	combout => \rtl~31_combout\);

-- Location: FF_X84_Y4_N53
\U|DP|aRegister|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector1~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(14));

-- Location: MLABCELL_X84_Y4_N42
\U|DP|Ain[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[14]~14_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|statemachine|STATE|Q\(0) & ( \U|DP|aRegister|out\(14) ) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|statemachine|STATE|Q\(0) & ( \U|DP|aRegister|out\(14) ) ) ) # ( 
-- \U|statemachine|STATE|Q\(4) & ( !\U|statemachine|STATE|Q\(0) & ( \U|DP|aRegister|out\(14) ) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( !\U|statemachine|STATE|Q\(0) & ( (\U|DP|aRegister|out\(14) & (((!\U|statemachine|STATE|Q\(1)) # 
-- (\U|statemachine|STATE|Q\(3))) # (\U|statemachine|STATE|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(2),
	datab => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|DP|aRegister|ALT_INV_out\(14),
	datad => \U|statemachine|STATE|ALT_INV_Q\(1),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(0),
	combout => \U|DP|Ain[14]~14_combout\);

-- Location: LABCELL_X88_Y4_N24
\rtl~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~47_combout\ = ( \U|DP|bRegister|out\(13) & ( (\U|DP|bRegister|out\(14)) # (\U|instructionReg|out\(3)) ) ) # ( !\U|DP|bRegister|out\(13) & ( (!\U|instructionReg|out\(3) & \U|DP|bRegister|out\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(14),
	dataf => \U|DP|bRegister|ALT_INV_out\(13),
	combout => \rtl~47_combout\);

-- Location: FF_X85_Y2_N40
\U|DP|aRegister|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector2~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(13));

-- Location: MLABCELL_X84_Y4_N39
\U|DP|Ain[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[13]~13_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|statemachine|STATE|Q\(0) & ( \U|DP|aRegister|out\(13) ) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|statemachine|STATE|Q\(0) & ( \U|DP|aRegister|out\(13) ) ) ) # ( 
-- \U|statemachine|STATE|Q\(4) & ( !\U|statemachine|STATE|Q\(0) & ( \U|DP|aRegister|out\(13) ) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( !\U|statemachine|STATE|Q\(0) & ( (\U|DP|aRegister|out\(13) & (((!\U|statemachine|STATE|Q\(1)) # 
-- (\U|statemachine|STATE|Q\(3))) # (\U|statemachine|STATE|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(2),
	datab => \U|DP|aRegister|ALT_INV_out\(13),
	datac => \U|statemachine|STATE|ALT_INV_Q\(3),
	datad => \U|statemachine|STATE|ALT_INV_Q\(1),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(0),
	combout => \U|DP|Ain[13]~13_combout\);

-- Location: LABCELL_X88_Y4_N15
\rtl~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~46_combout\ = ( \U|DP|bRegister|out\(13) & ( (!\U|instructionReg|out\(3)) # (\U|DP|bRegister|out\(12)) ) ) # ( !\U|DP|bRegister|out\(13) & ( (\U|instructionReg|out\(3) & \U|DP|bRegister|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(12),
	dataf => \U|DP|bRegister|ALT_INV_out\(13),
	combout => \rtl~46_combout\);

-- Location: FF_X87_Y4_N10
\U|DP|aRegister|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector3~2_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(12));

-- Location: LABCELL_X88_Y4_N3
\U|DP|Ain[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[12]~12_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(12) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(12) & ( (!\U|statemachine|STATE|Q\(1)) # (((\U|statemachine|STATE|Q\(3)) # (\U|statemachine|STATE|Q\(2))) 
-- # (\U|statemachine|STATE|Q\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|STATE|ALT_INV_Q\(3),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(12),
	combout => \U|DP|Ain[12]~12_combout\);

-- Location: LABCELL_X88_Y4_N57
\rtl~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~45_combout\ = ( \U|DP|bRegister|out\(11) & ( (\U|DP|bRegister|out\(12)) # (\U|instructionReg|out\(3)) ) ) # ( !\U|DP|bRegister|out\(11) & ( (!\U|instructionReg|out\(3) & \U|DP|bRegister|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(3),
	datad => \U|DP|bRegister|ALT_INV_out\(12),
	dataf => \U|DP|bRegister|ALT_INV_out\(11),
	combout => \rtl~45_combout\);

-- Location: FF_X87_Y4_N8
\U|DP|aRegister|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector4~2_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(11));

-- Location: LABCELL_X88_Y4_N0
\U|DP|Ain[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[11]~11_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(11) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(11) & ( (!\U|statemachine|STATE|Q\(1)) # (((\U|statemachine|STATE|Q\(2)) # (\U|statemachine|STATE|Q\(3))) 
-- # (\U|statemachine|STATE|Q\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(3),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(11),
	combout => \U|DP|Ain[11]~11_combout\);

-- Location: LABCELL_X88_Y4_N27
\rtl~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~44_combout\ = (!\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(11)))) # (\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(10),
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(11),
	combout => \rtl~44_combout\);

-- Location: FF_X87_Y4_N4
\U|DP|aRegister|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector5~2_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(10));

-- Location: LABCELL_X88_Y4_N9
\U|DP|Ain[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[10]~10_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(10) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(10) & ( (!\U|statemachine|STATE|Q\(1)) # (((\U|statemachine|STATE|Q\(3)) # (\U|statemachine|STATE|Q\(0))) 
-- # (\U|statemachine|STATE|Q\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(2),
	datac => \U|statemachine|STATE|ALT_INV_Q\(0),
	datad => \U|statemachine|STATE|ALT_INV_Q\(3),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(10),
	combout => \U|DP|Ain[10]~10_combout\);

-- Location: MLABCELL_X84_Y4_N54
\U|statemachine|WideOr17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr17~combout\ = ( \U|statemachine|STATE|Q\(2) & ( \U|statemachine|STATE|Q\(1) & ( (!\U|statemachine|STATE|Q\(4) & (!\U|statemachine|STATE|Q\(0) $ (!\U|statemachine|STATE|Q\(3)))) ) ) ) # ( !\U|statemachine|STATE|Q\(2) & ( 
-- \U|statemachine|STATE|Q\(1) & ( (!\U|statemachine|STATE|Q\(4) & (!\U|statemachine|STATE|Q\(0) $ (\U|statemachine|STATE|Q\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000010001000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(0),
	datab => \U|statemachine|STATE|ALT_INV_Q\(4),
	datad => \U|statemachine|STATE|ALT_INV_Q\(3),
	datae => \U|statemachine|STATE|ALT_INV_Q\(2),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(1),
	combout => \U|statemachine|WideOr17~combout\);

-- Location: FF_X88_Y4_N23
\U|DP|bRegister|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector6~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(9));

-- Location: LABCELL_X88_Y4_N12
\rtl~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~43_combout\ = (!\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(10))) # (\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(10),
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(9),
	combout => \rtl~43_combout\);

-- Location: LABCELL_X88_Y4_N54
\rtl~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~42_combout\ = ( \U|DP|bRegister|out\(8) & ( (\U|instructionReg|out\(3)) # (\U|DP|bRegister|out\(9)) ) ) # ( !\U|DP|bRegister|out\(8) & ( (\U|DP|bRegister|out\(9) & !\U|instructionReg|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|bRegister|ALT_INV_out\(9),
	datad => \U|instructionReg|ALT_INV_out\(3),
	dataf => \U|DP|bRegister|ALT_INV_out\(8),
	combout => \rtl~42_combout\);

-- Location: FF_X87_Y4_N44
\U|DP|aRegister|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector6~2_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(9));

-- Location: LABCELL_X88_Y4_N6
\U|DP|Ain[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[9]~9_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(9) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(9) & ( (!\U|statemachine|STATE|Q\(1)) # (((\U|statemachine|STATE|Q\(0)) # (\U|statemachine|STATE|Q\(3))) # 
-- (\U|statemachine|STATE|Q\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(2),
	datac => \U|statemachine|STATE|ALT_INV_Q\(3),
	datad => \U|statemachine|STATE|ALT_INV_Q\(0),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(9),
	combout => \U|DP|Ain[9]~9_combout\);

-- Location: LABCELL_X88_Y6_N45
\rtl~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~41_combout\ = (!\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(8)))) # (\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(7),
	datad => \U|DP|bRegister|ALT_INV_out\(8),
	combout => \rtl~41_combout\);

-- Location: FF_X88_Y6_N35
\U|DP|aRegister|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector7~2_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(8));

-- Location: LABCELL_X85_Y5_N9
\U|DP|Ain[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[8]~8_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(8) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(8) & ( (!\U|statemachine|STATE|Q\(1)) # (((\U|statemachine|STATE|Q\(2)) # (\U|statemachine|STATE|Q\(0))) # 
-- (\U|statemachine|STATE|Q\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|statemachine|STATE|ALT_INV_Q\(0),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(8),
	combout => \U|DP|Ain[8]~8_combout\);

-- Location: FF_X88_Y6_N5
\U|DP|aRegister|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector8~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(7));

-- Location: LABCELL_X85_Y5_N15
\U|DP|Ain[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[7]~7_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(7) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(7) & ( (((!\U|statemachine|STATE|Q\(1)) # (\U|statemachine|STATE|Q\(2))) # (\U|statemachine|STATE|Q\(3))) # 
-- (\U|statemachine|STATE|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(0),
	datab => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|statemachine|STATE|ALT_INV_Q\(1),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(7),
	combout => \U|DP|Ain[7]~7_combout\);

-- Location: LABCELL_X88_Y6_N36
\rtl~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~40_combout\ = ( \U|DP|bRegister|out\(7) & ( (!\U|instructionReg|out\(3)) # (\U|DP|bRegister|out\(6)) ) ) # ( !\U|DP|bRegister|out\(7) & ( (\U|DP|bRegister|out\(6) & \U|instructionReg|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|bRegister|ALT_INV_out\(6),
	datad => \U|instructionReg|ALT_INV_out\(3),
	dataf => \U|DP|bRegister|ALT_INV_out\(7),
	combout => \rtl~40_combout\);

-- Location: FF_X88_Y6_N53
\U|DP|aRegister|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector9~2_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(6));

-- Location: MLABCELL_X87_Y6_N42
\U|DP|Ain[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[6]~6_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(6) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(6) & ( ((!\U|statemachine|STATE|Q\(1)) # ((\U|statemachine|STATE|Q\(2)) # (\U|statemachine|STATE|Q\(0)))) # 
-- (\U|statemachine|STATE|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(3),
	datab => \U|statemachine|STATE|ALT_INV_Q\(1),
	datac => \U|statemachine|STATE|ALT_INV_Q\(0),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(6),
	combout => \U|DP|Ain[6]~6_combout\);

-- Location: MLABCELL_X87_Y5_N39
\rtl~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~52_combout\ = ( \U|instructionReg|out\(3) & ( \U|DP|bRegister|out\(5) ) ) # ( !\U|instructionReg|out\(3) & ( \U|DP|bRegister|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|bRegister|ALT_INV_out\(6),
	datad => \U|DP|bRegister|ALT_INV_out\(5),
	dataf => \U|instructionReg|ALT_INV_out\(3),
	combout => \rtl~52_combout\);

-- Location: MLABCELL_X87_Y5_N27
\rtl~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~51_combout\ = (!\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(5))) # (\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(3),
	datab => \U|DP|bRegister|ALT_INV_out\(5),
	datac => \U|DP|bRegister|ALT_INV_out\(4),
	combout => \rtl~51_combout\);

-- Location: FF_X85_Y5_N29
\U|DP|aRegister|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector10~5_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(5));

-- Location: LABCELL_X85_Y5_N39
\U|DP|Ain[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[5]~5_combout\ = ( \U|DP|aRegister|out\(5) & ( \U|statemachine|STATE|Q\(4) ) ) # ( \U|DP|aRegister|out\(5) & ( !\U|statemachine|STATE|Q\(4) & ( (!\U|statemachine|STATE|Q\(1)) # (((\U|statemachine|STATE|Q\(3)) # (\U|statemachine|STATE|Q\(2))) # 
-- (\U|statemachine|STATE|Q\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|STATE|ALT_INV_Q\(3),
	datae => \U|DP|aRegister|ALT_INV_out\(5),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(4),
	combout => \U|DP|Ain[5]~5_combout\);

-- Location: FF_X87_Y4_N47
\U|DP|aRegister|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector11~2_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(4));

-- Location: LABCELL_X85_Y5_N12
\U|DP|Ain[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[4]~4_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(4) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(4) & ( (((!\U|statemachine|STATE|Q\(1)) # (\U|statemachine|STATE|Q\(2))) # (\U|statemachine|STATE|Q\(3))) # 
-- (\U|statemachine|STATE|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(0),
	datab => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|STATE|ALT_INV_Q\(1),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(4),
	combout => \U|DP|Ain[4]~4_combout\);

-- Location: MLABCELL_X87_Y5_N24
\rtl~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~50_combout\ = ( \U|instructionReg|out\(3) & ( \U|DP|bRegister|out\(3) ) ) # ( !\U|instructionReg|out\(3) & ( \U|DP|bRegister|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|bRegister|ALT_INV_out\(3),
	datad => \U|DP|bRegister|ALT_INV_out\(4),
	dataf => \U|instructionReg|ALT_INV_out\(3),
	combout => \rtl~50_combout\);

-- Location: FF_X87_Y4_N2
\U|DP|aRegister|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector12~2_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(3));

-- Location: MLABCELL_X87_Y6_N45
\U|DP|Ain[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[3]~3_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(3) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(3) & ( ((!\U|statemachine|STATE|Q\(1)) # ((\U|statemachine|STATE|Q\(0)) # (\U|statemachine|STATE|Q\(2)))) # 
-- (\U|statemachine|STATE|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(3),
	datab => \U|statemachine|STATE|ALT_INV_Q\(1),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|STATE|ALT_INV_Q\(0),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(3),
	combout => \U|DP|Ain[3]~3_combout\);

-- Location: LABCELL_X85_Y3_N0
\U|DP|muxintoregister|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux13~0_combout\ = ( \U|DP|cRegister|out[2]~DUPLICATE_q\ & ( (!\U|statemachine|WideNor1~combout\) # (\U|instructionReg|out\(2)) ) ) # ( !\U|DP|cRegister|out[2]~DUPLICATE_q\ & ( (\U|statemachine|WideNor1~combout\ & 
-- \U|instructionReg|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|statemachine|ALT_INV_WideNor1~combout\,
	datad => \U|instructionReg|ALT_INV_out\(2),
	dataf => \U|DP|cRegister|ALT_INV_out[2]~DUPLICATE_q\,
	combout => \U|DP|muxintoregister|Mux13~0_combout\);

-- Location: LABCELL_X85_Y3_N36
\U|statemachine|WideOr24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr24~0_combout\ = ( \U|statemachine|STATE|Q\(1) & ( (\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(2) & (!\U|statemachine|STATE|Q\(4) & !\U|statemachine|STATE|Q\(3)))) ) ) # ( !\U|statemachine|STATE|Q\(1) & ( 
-- (!\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(3) & (!\U|statemachine|STATE|Q\(2) $ (!\U|statemachine|STATE|Q\(4))))) # (\U|statemachine|STATE|Q\(0) & (!\U|statemachine|STATE|Q\(2) & (!\U|statemachine|STATE|Q\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001000000011010000100000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(0),
	datab => \U|statemachine|STATE|ALT_INV_Q\(2),
	datac => \U|statemachine|STATE|ALT_INV_Q\(4),
	datad => \U|statemachine|STATE|ALT_INV_Q\(3),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(1),
	combout => \U|statemachine|WideOr24~0_combout\);

-- Location: LABCELL_X85_Y3_N45
\U|DP|REGFILE|load6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|load6~0_combout\ = ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|statemachine|WideOr24~0_combout\ & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_WideOr24~0_combout\,
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|load6~0_combout\);

-- Location: FF_X82_Y5_N1
\U|DP|REGFILE|toR6|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(2));

-- Location: LABCELL_X85_Y3_N57
\U|DP|REGFILE|load5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|load5~0_combout\ = ( !\U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & (\U|muxintoregister|Mux2~0_combout\ & \U|statemachine|WideOr24~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \U|statemachine|ALT_INV_WideOr24~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|load5~0_combout\);

-- Location: FF_X85_Y3_N22
\U|DP|REGFILE|toR5|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(2));

-- Location: LABCELL_X85_Y3_N3
\U|DP|REGFILE|load4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|load4~0_combout\ = ( !\U|muxintoregister|Mux1~0_combout\ & ( (!\U|muxintoregister|Mux2~0_combout\ & (\U|muxintoregister|Mux0~0_combout\ & \U|statemachine|WideOr24~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \U|statemachine|ALT_INV_WideOr24~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|load4~0_combout\);

-- Location: FF_X84_Y5_N7
\U|DP|REGFILE|toR4|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(2));

-- Location: LABCELL_X85_Y4_N48
\U|DP|REGFILE|chooser|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector13~1_combout\ = ( \U|muxintoregister|Mux0~0_combout\ & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(2) & !\U|muxintoregister|Mux1~0_combout\) ) ) ) # ( \U|muxintoregister|Mux0~0_combout\ & ( 
-- !\U|muxintoregister|Mux2~0_combout\ & ( (!\U|muxintoregister|Mux1~0_combout\ & ((\U|DP|REGFILE|toR4|out\(2)))) # (\U|muxintoregister|Mux1~0_combout\ & (\U|DP|REGFILE|toR6|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110101010100000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR6|ALT_INV_out\(2),
	datab => \U|DP|REGFILE|toR5|ALT_INV_out\(2),
	datac => \U|DP|REGFILE|toR4|ALT_INV_out\(2),
	datad => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector13~1_combout\);

-- Location: MLABCELL_X84_Y6_N6
\U|DP|REGFILE|toR7|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[2]~feeder_combout\ = ( \U|DP|muxintoregister|Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux13~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[2]~feeder_combout\);

-- Location: LABCELL_X85_Y3_N12
\U|DP|REGFILE|load7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|load7~combout\ = ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & (\U|muxintoregister|Mux2~0_combout\ & \U|statemachine|WideOr24~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datab => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datac => \U|statemachine|ALT_INV_WideOr24~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|load7~combout\);

-- Location: FF_X84_Y6_N7
\U|DP|REGFILE|toR7|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[2]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(2));

-- Location: MLABCELL_X82_Y6_N15
\U|DP|REGFILE|toR0|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR0|out[2]~feeder_combout\ = ( \U|DP|muxintoregister|Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux13~0_combout\,
	combout => \U|DP|REGFILE|toR0|out[2]~feeder_combout\);

-- Location: LABCELL_X85_Y3_N27
\U|DP|REGFILE|load0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|load0~0_combout\ = ( \U|statemachine|WideOr24~0_combout\ & ( !\U|muxintoregister|Mux1~0_combout\ & ( (!\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \U|statemachine|ALT_INV_WideOr24~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|load0~0_combout\);

-- Location: FF_X82_Y6_N16
\U|DP|REGFILE|toR0|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR0|out[2]~feeder_combout\,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(2));

-- Location: LABCELL_X80_Y6_N12
\U|DP|REGFILE|toR3|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR3|out[2]~feeder_combout\ = ( \U|DP|muxintoregister|Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux13~0_combout\,
	combout => \U|DP|REGFILE|toR3|out[2]~feeder_combout\);

-- Location: LABCELL_X85_Y3_N42
\U|DP|REGFILE|load3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|load3~0_combout\ = ( !\U|muxintoregister|Mux0~0_combout\ & ( (\U|statemachine|WideOr24~0_combout\ & (\U|muxintoregister|Mux1~0_combout\ & \U|muxintoregister|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_WideOr24~0_combout\,
	datac => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|load3~0_combout\);

-- Location: FF_X80_Y6_N13
\U|DP|REGFILE|toR3|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR3|out[2]~feeder_combout\,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(2));

-- Location: LABCELL_X85_Y3_N39
\U|DP|REGFILE|chooser|Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector10~2_combout\ = ( \U|muxintoregister|Mux1~0_combout\ & ( !\U|muxintoregister|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector10~2_combout\);

-- Location: MLABCELL_X82_Y6_N45
\U|DP|REGFILE|toR1|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[2]~feeder_combout\ = ( \U|DP|muxintoregister|Mux13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux13~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[2]~feeder_combout\);

-- Location: LABCELL_X85_Y3_N48
\U|DP|REGFILE|load1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|load1~0_combout\ = ( \U|muxintoregister|Mux2~0_combout\ & ( !\U|muxintoregister|Mux1~0_combout\ & ( (\U|statemachine|WideOr24~0_combout\ & !\U|muxintoregister|Mux0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|ALT_INV_WideOr24~0_combout\,
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datae => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|load1~0_combout\);

-- Location: FF_X82_Y6_N46
\U|DP|REGFILE|toR1|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[2]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(2));

-- Location: LABCELL_X85_Y3_N33
\U|DP|REGFILE|load2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|load2~0_combout\ = ( !\U|muxintoregister|Mux0~0_combout\ & ( (\U|muxintoregister|Mux1~0_combout\ & (!\U|muxintoregister|Mux2~0_combout\ & \U|statemachine|WideOr24~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datab => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \U|statemachine|ALT_INV_WideOr24~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|load2~0_combout\);

-- Location: FF_X88_Y6_N26
\U|DP|REGFILE|toR2|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux13~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(2));

-- Location: MLABCELL_X84_Y3_N45
\U|DP|REGFILE|chooser|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ = ( !\U|muxintoregister|Mux0~0_combout\ & ( !\U|muxintoregister|Mux2~0_combout\ $ (!\U|muxintoregister|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	dataf => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector10~1_combout\);

-- Location: LABCELL_X88_Y6_N24
\U|DP|REGFILE|chooser|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector13~0_combout\ = ( \U|DP|REGFILE|toR2|out\(2) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(2)) # (\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(2) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & \U|DP|REGFILE|toR1|out\(2)) ) ) ) # ( \U|DP|REGFILE|toR2|out\(2) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(2))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(2)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(2) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(2))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR0|ALT_INV_out\(2),
	datab => \U|DP|REGFILE|toR3|ALT_INV_out\(2),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \U|DP|REGFILE|toR1|ALT_INV_out\(2),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(2),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector13~0_combout\);

-- Location: LABCELL_X88_Y6_N30
\U|DP|REGFILE|chooser|Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector13~2_combout\ = ( \U|DP|REGFILE|chooser|Selector13~0_combout\ & ( ((!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\)) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ((\U|DP|REGFILE|toR7|out\(2))))) # (\U|DP|REGFILE|chooser|Selector13~1_combout\) ) ) # ( !\U|DP|REGFILE|chooser|Selector13~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(2))) # 
-- (\U|DP|REGFILE|chooser|Selector13~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111110001111110111111000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector13~1_combout\,
	datad => \U|DP|REGFILE|toR7|ALT_INV_out\(2),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector13~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector13~2_combout\);

-- Location: FF_X87_Y5_N44
\U|DP|bRegister|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector13~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(2));

-- Location: MLABCELL_X87_Y5_N51
\rtl~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~49_combout\ = ( \U|instructionReg|out\(3) & ( \U|DP|bRegister|out\(2) ) ) # ( !\U|instructionReg|out\(3) & ( \U|DP|bRegister|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|bRegister|ALT_INV_out\(2),
	datad => \U|DP|bRegister|ALT_INV_out\(3),
	dataf => \U|instructionReg|ALT_INV_out\(3),
	combout => \rtl~49_combout\);

-- Location: FF_X88_Y6_N2
\U|DP|aRegister|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector13~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(2));

-- Location: LABCELL_X85_Y5_N6
\U|DP|Ain[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[2]~2_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(2) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(2) & ( (!\U|statemachine|STATE|Q\(1)) # (((\U|statemachine|STATE|Q\(0)) # (\U|statemachine|STATE|Q\(2))) # 
-- (\U|statemachine|STATE|Q\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|STATE|ALT_INV_Q\(0),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(2),
	combout => \U|DP|Ain[2]~2_combout\);

-- Location: FF_X85_Y5_N26
\U|DP|aRegister|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector14~2_combout\,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(1));

-- Location: LABCELL_X85_Y5_N45
\U|DP|Ain[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[1]~1_combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(1) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( \U|DP|aRegister|out\(1) & ( (((!\U|statemachine|STATE|Q\(1)) # (\U|statemachine|STATE|Q\(2))) # (\U|statemachine|STATE|Q\(3))) # 
-- (\U|statemachine|STATE|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(0),
	datab => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datad => \U|statemachine|STATE|ALT_INV_Q\(1),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|DP|aRegister|ALT_INV_out\(1),
	combout => \U|DP|Ain[1]~1_combout\);

-- Location: FF_X85_Y5_N38
\U|DP|aRegister|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector15~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|aRegister|out\(0));

-- Location: LABCELL_X85_Y5_N36
\U|DP|Ain[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Ain[0]~0_combout\ = ( \U|DP|aRegister|out\(0) & ( \U|statemachine|STATE|Q\(4) ) ) # ( \U|DP|aRegister|out\(0) & ( !\U|statemachine|STATE|Q\(4) & ( (!\U|statemachine|STATE|Q\(1)) # (((\U|statemachine|STATE|Q\(2)) # (\U|statemachine|STATE|Q\(3))) # 
-- (\U|statemachine|STATE|Q\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(3),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|DP|aRegister|ALT_INV_out\(0),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(4),
	combout => \U|DP|Ain[0]~0_combout\);

-- Location: MLABCELL_X87_Y5_N42
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\U|DP|bRegister|out\(0) & !\U|instructionReg|out\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|bRegister|ALT_INV_out\(0),
	datac => \U|instructionReg|ALT_INV_out\(3),
	combout => \rtl~0_combout\);

-- Location: LABCELL_X88_Y5_N30
\U|DP|CMP|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~66_cout\ = CARRY(( \U|instructionReg|out\(11) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instructionReg|ALT_INV_out\(11),
	cin => GND,
	cout => \U|DP|CMP|Add0~66_cout\);

-- Location: LABCELL_X88_Y5_N33
\U|DP|CMP|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~1_sumout\ = SUM(( \U|DP|Ain[0]~0_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~0_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(1))))) ) + ( \U|DP|CMP|Add0~66_cout\ ))
-- \U|DP|CMP|Add0~2\ = CARRY(( \U|DP|Ain[0]~0_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~0_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(1))))) ) + ( \U|DP|CMP|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010101100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|DP|bRegister|ALT_INV_out\(1),
	datac => \U|instructionReg|ALT_INV_out\(4),
	datad => \U|DP|ALT_INV_Ain[0]~0_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	cin => \U|DP|CMP|Add0~66_cout\,
	sumout => \U|DP|CMP|Add0~1_sumout\,
	cout => \U|DP|CMP|Add0~2\);

-- Location: LABCELL_X88_Y3_N3
\U|DP|cRegister|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[0]~feeder_combout\ = \U|DP|CMP|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Add0~1_sumout\,
	combout => \U|DP|cRegister|out[0]~feeder_combout\);

-- Location: MLABCELL_X87_Y5_N48
\rtl~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~33_combout\ = ( \U|instructionReg|out\(4) & ( \U|DP|bRegister|out\(1) ) ) # ( !\U|instructionReg|out\(4) & ( (\U|DP|bRegister|out\(0) & !\U|instructionReg|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|bRegister|ALT_INV_out\(1),
	datac => \U|DP|bRegister|ALT_INV_out\(0),
	datad => \U|instructionReg|ALT_INV_out\(3),
	dataf => \U|instructionReg|ALT_INV_out\(4),
	combout => \rtl~33_combout\);

-- Location: LABCELL_X85_Y6_N51
\U|DP|CMP|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux15~0_combout\ = ( \rtl~33_combout\ & ( \U|DP|Ain[0]~0_combout\ & ( !\U|instructionReg|out\(11) ) ) ) # ( !\rtl~33_combout\ & ( \U|DP|Ain[0]~0_combout\ & ( \U|instructionReg|out\(11) ) ) ) # ( !\rtl~33_combout\ & ( !\U|DP|Ain[0]~0_combout\ & ( 
-- \U|instructionReg|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instructionReg|ALT_INV_out\(11),
	datae => \ALT_INV_rtl~33_combout\,
	dataf => \U|DP|ALT_INV_Ain[0]~0_combout\,
	combout => \U|DP|CMP|Mux15~0_combout\);

-- Location: MLABCELL_X84_Y5_N30
\U|statemachine|WideOr19\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideOr19~combout\ = ( \U|statemachine|STATE|Q\(4) & ( \U|statemachine|STATE|Q\(1) & ( (\U|statemachine|STATE|Q\(3) & (\U|statemachine|STATE|Q\(0) & \U|statemachine|STATE|Q\(2))) ) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( 
-- \U|statemachine|STATE|Q\(1) & ( (!\U|statemachine|STATE|Q\(3) & (\U|statemachine|STATE|Q\(0) & !\U|statemachine|STATE|Q\(2))) ) ) ) # ( !\U|statemachine|STATE|Q\(4) & ( !\U|statemachine|STATE|Q\(1) & ( (\U|statemachine|STATE|Q\(3) & 
-- !\U|statemachine|STATE|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000000100000001000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(3),
	datab => \U|statemachine|STATE|ALT_INV_Q\(0),
	datac => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(1),
	combout => \U|statemachine|WideOr19~combout\);

-- Location: FF_X88_Y3_N4
\U|DP|cRegister|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[0]~feeder_combout\,
	asdata => \U|DP|CMP|Mux15~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(0));

-- Location: LABCELL_X83_Y3_N12
\U|DP|muxintoregister|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux15~0_combout\ = ( \U|DP|cRegister|out\(0) & ( (!\U|statemachine|WideNor1~combout\) # (\U|instructionReg|out\(0)) ) ) # ( !\U|DP|cRegister|out\(0) & ( (\U|statemachine|WideNor1~combout\ & \U|instructionReg|out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|ALT_INV_WideNor1~combout\,
	datac => \U|instructionReg|ALT_INV_out\(0),
	dataf => \U|DP|cRegister|ALT_INV_out\(0),
	combout => \U|DP|muxintoregister|Mux15~0_combout\);

-- Location: FF_X84_Y5_N53
\U|DP|REGFILE|toR5|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(0));

-- Location: FF_X84_Y5_N35
\U|DP|REGFILE|toR6|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(0));

-- Location: FF_X84_Y5_N20
\U|DP|REGFILE|toR4|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(0));

-- Location: MLABCELL_X84_Y5_N18
\U|DP|REGFILE|chooser|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector15~1_combout\ = ( \U|DP|REGFILE|toR4|out\(0) & ( \U|muxintoregister|Mux1~0_combout\ & ( (!\U|muxintoregister|Mux2~0_combout\ & (\U|DP|REGFILE|toR6|out\(0) & \U|muxintoregister|Mux0~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(0) & ( \U|muxintoregister|Mux1~0_combout\ & ( (!\U|muxintoregister|Mux2~0_combout\ & (\U|DP|REGFILE|toR6|out\(0) & \U|muxintoregister|Mux0~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(0) & ( !\U|muxintoregister|Mux1~0_combout\ & 
-- ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux2~0_combout\) # (\U|DP|REGFILE|toR5|out\(0)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(0) & ( !\U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(0) & 
-- (\U|muxintoregister|Mux2~0_combout\ & \U|muxintoregister|Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000001101110100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR5|ALT_INV_out\(0),
	datab => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datac => \U|DP|REGFILE|toR6|ALT_INV_out\(0),
	datad => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(0),
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector15~1_combout\);

-- Location: LABCELL_X83_Y5_N12
\U|DP|REGFILE|toR7|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[0]~feeder_combout\ = ( \U|DP|muxintoregister|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux15~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[0]~feeder_combout\);

-- Location: FF_X83_Y5_N13
\U|DP|REGFILE|toR7|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[0]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(0));

-- Location: FF_X87_Y3_N23
\U|DP|REGFILE|toR3|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(0));

-- Location: FF_X87_Y3_N11
\U|DP|REGFILE|toR0|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(0));

-- Location: LABCELL_X83_Y5_N45
\U|DP|REGFILE|toR1|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[0]~feeder_combout\ = ( \U|DP|muxintoregister|Mux15~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux15~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[0]~feeder_combout\);

-- Location: FF_X83_Y5_N46
\U|DP|REGFILE|toR1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[0]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(0));

-- Location: FF_X87_Y3_N2
\U|DP|REGFILE|toR2|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux15~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(0));

-- Location: MLABCELL_X87_Y3_N0
\U|DP|REGFILE|chooser|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector15~0_combout\ = ( \U|DP|REGFILE|toR2|out\(0) & ( \U|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~1_combout\) # (\U|DP|REGFILE|toR3|out\(0)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(0) & ( 
-- \U|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\U|DP|REGFILE|toR3|out\(0) & !\U|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(0) & ( !\U|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~1_combout\ & (\U|DP|REGFILE|toR0|out\(0))) # (\U|DP|REGFILE|chooser|Selector10~1_combout\ & ((\U|DP|REGFILE|toR1|out\(0)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(0) & ( !\U|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~1_combout\ & (\U|DP|REGFILE|toR0|out\(0))) # (\U|DP|REGFILE|chooser|Selector10~1_combout\ & ((\U|DP|REGFILE|toR1|out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR3|ALT_INV_out\(0),
	datab => \U|DP|REGFILE|toR0|ALT_INV_out\(0),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datad => \U|DP|REGFILE|toR1|ALT_INV_out\(0),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(0),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \U|DP|REGFILE|chooser|Selector15~0_combout\);

-- Location: MLABCELL_X87_Y5_N57
\U|DP|REGFILE|chooser|Selector15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector15~2_combout\ = ( \U|DP|REGFILE|chooser|Selector15~0_combout\ & ( ((!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\)) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ((\U|DP|REGFILE|toR7|out\(0))))) # (\U|DP|REGFILE|chooser|Selector15~1_combout\) ) ) # ( !\U|DP|REGFILE|chooser|Selector15~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(0))) # 
-- (\U|DP|REGFILE|chooser|Selector15~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111110001111110111111000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector15~1_combout\,
	datad => \U|DP|REGFILE|toR7|ALT_INV_out\(0),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector15~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector15~2_combout\);

-- Location: FF_X87_Y5_N59
\U|DP|bRegister|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|chooser|Selector15~2_combout\,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(0));

-- Location: MLABCELL_X87_Y5_N45
\rtl~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~34_combout\ = (!\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(1)))) # (\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(0),
	datad => \U|DP|bRegister|ALT_INV_out\(1),
	combout => \rtl~34_combout\);

-- Location: LABCELL_X88_Y5_N36
\U|DP|CMP|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~5_sumout\ = SUM(( \U|DP|Ain[1]~1_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~34_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(2))))) ) + ( \U|DP|CMP|Add0~2\ ))
-- \U|DP|CMP|Add0~6\ = CARRY(( \U|DP|Ain[1]~1_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~34_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(2))))) ) + ( \U|DP|CMP|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(2),
	datad => \U|DP|ALT_INV_Ain[1]~1_combout\,
	dataf => \ALT_INV_rtl~34_combout\,
	cin => \U|DP|CMP|Add0~2\,
	sumout => \U|DP|CMP|Add0~5_sumout\,
	cout => \U|DP|CMP|Add0~6\);

-- Location: LABCELL_X88_Y3_N42
\U|DP|cRegister|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[1]~feeder_combout\ = ( \U|DP|CMP|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~5_sumout\,
	combout => \U|DP|cRegister|out[1]~feeder_combout\);

-- Location: LABCELL_X88_Y5_N18
\U|DP|CMP|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux14~0_combout\ = ( \U|DP|Ain[1]~1_combout\ & ( \rtl~34_combout\ & ( !\U|instructionReg|out\(11) $ (((!\U|DP|bRegister|out\(2) & \U|instructionReg|out\(4)))) ) ) ) # ( !\U|DP|Ain[1]~1_combout\ & ( \rtl~34_combout\ & ( 
-- (\U|instructionReg|out\(11) & (!\U|DP|bRegister|out\(2) & \U|instructionReg|out\(4))) ) ) ) # ( \U|DP|Ain[1]~1_combout\ & ( !\rtl~34_combout\ & ( !\U|instructionReg|out\(11) $ (((!\U|DP|bRegister|out\(2)) # (!\U|instructionReg|out\(4)))) ) ) ) # ( 
-- !\U|DP|Ain[1]~1_combout\ & ( !\rtl~34_combout\ & ( (\U|instructionReg|out\(11) & ((!\U|DP|bRegister|out\(2)) # (!\U|instructionReg|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101101000000000010100001010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datac => \U|DP|bRegister|ALT_INV_out\(2),
	datad => \U|instructionReg|ALT_INV_out\(4),
	datae => \U|DP|ALT_INV_Ain[1]~1_combout\,
	dataf => \ALT_INV_rtl~34_combout\,
	combout => \U|DP|CMP|Mux14~0_combout\);

-- Location: FF_X88_Y3_N43
\U|DP|cRegister|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[1]~feeder_combout\,
	asdata => \U|DP|CMP|Mux14~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(1));

-- Location: LABCELL_X83_Y3_N33
\U|DP|muxintoregister|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux14~0_combout\ = ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(1) ) ) # ( !\U|statemachine|WideNor1~combout\ & ( \U|DP|cRegister|out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(1),
	datad => \U|instructionReg|ALT_INV_out\(1),
	dataf => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux14~0_combout\);

-- Location: LABCELL_X83_Y5_N48
\U|DP|REGFILE|toR7|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[1]~feeder_combout\ = ( \U|DP|muxintoregister|Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux14~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[1]~feeder_combout\);

-- Location: FF_X83_Y5_N49
\U|DP|REGFILE|toR7|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[1]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(1));

-- Location: FF_X84_Y5_N38
\U|DP|REGFILE|toR6|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(1));

-- Location: MLABCELL_X82_Y5_N9
\U|DP|REGFILE|toR5|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[1]~feeder_combout\ = ( \U|DP|muxintoregister|Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux14~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[1]~feeder_combout\);

-- Location: FF_X82_Y5_N10
\U|DP|REGFILE|toR5|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[1]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(1));

-- Location: FF_X84_Y5_N14
\U|DP|REGFILE|toR4|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(1));

-- Location: MLABCELL_X84_Y5_N12
\U|DP|REGFILE|chooser|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector14~1_combout\ = ( \U|DP|REGFILE|toR4|out\(1) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(1) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(1) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(1) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(1) & ( !\U|muxintoregister|Mux1~0_combout\ & 
-- ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux2~0_combout\) # (\U|DP|REGFILE|toR5|out\(1)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(1) & ( !\U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(1) & 
-- (\U|muxintoregister|Mux0~0_combout\ & \U|muxintoregister|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000001100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR6|ALT_INV_out\(1),
	datab => \U|DP|REGFILE|toR5|ALT_INV_out\(1),
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(1),
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector14~1_combout\);

-- Location: MLABCELL_X82_Y5_N12
\U|DP|REGFILE|toR0|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR0|out[1]~feeder_combout\ = ( \U|DP|muxintoregister|Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux14~0_combout\,
	combout => \U|DP|REGFILE|toR0|out[1]~feeder_combout\);

-- Location: FF_X82_Y5_N13
\U|DP|REGFILE|toR0|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR0|out[1]~feeder_combout\,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(1));

-- Location: FF_X81_Y5_N25
\U|DP|REGFILE|toR3|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(1));

-- Location: LABCELL_X83_Y5_N18
\U|DP|REGFILE|toR1|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[1]~feeder_combout\ = ( \U|DP|muxintoregister|Mux14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux14~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[1]~feeder_combout\);

-- Location: FF_X83_Y5_N20
\U|DP|REGFILE|toR1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[1]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(1));

-- Location: FF_X83_Y5_N38
\U|DP|REGFILE|toR2|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux14~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(1));

-- Location: LABCELL_X83_Y5_N36
\U|DP|REGFILE|chooser|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector14~0_combout\ = ( \U|DP|REGFILE|toR2|out\(1) & ( \U|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~1_combout\) # (\U|DP|REGFILE|toR3|out\(1)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(1) & ( 
-- \U|DP|REGFILE|chooser|Selector10~2_combout\ & ( (\U|DP|REGFILE|toR3|out\(1) & !\U|DP|REGFILE|chooser|Selector10~1_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(1) & ( !\U|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~1_combout\ & (\U|DP|REGFILE|toR0|out\(1))) # (\U|DP|REGFILE|chooser|Selector10~1_combout\ & ((\U|DP|REGFILE|toR1|out\(1)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(1) & ( !\U|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~1_combout\ & (\U|DP|REGFILE|toR0|out\(1))) # (\U|DP|REGFILE|chooser|Selector10~1_combout\ & ((\U|DP|REGFILE|toR1|out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR0|ALT_INV_out\(1),
	datab => \U|DP|REGFILE|toR3|ALT_INV_out\(1),
	datac => \U|DP|REGFILE|toR1|ALT_INV_out\(1),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(1),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	combout => \U|DP|REGFILE|chooser|Selector14~0_combout\);

-- Location: LABCELL_X85_Y5_N24
\U|DP|REGFILE|chooser|Selector14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector14~2_combout\ = ( \U|DP|REGFILE|chooser|Selector14~0_combout\ & ( ((!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\)) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ((\U|DP|REGFILE|toR7|out\(1))))) # (\U|DP|REGFILE|chooser|Selector14~1_combout\) ) ) # ( !\U|DP|REGFILE|chooser|Selector14~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(1))) # 
-- (\U|DP|REGFILE|chooser|Selector14~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111110001101111111111000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \U|DP|REGFILE|toR7|ALT_INV_out\(1),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector14~1_combout\,
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector14~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector14~2_combout\);

-- Location: FF_X87_Y5_N47
\U|DP|bRegister|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector14~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(1));

-- Location: MLABCELL_X87_Y5_N54
\rtl~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~48_combout\ = ( \U|DP|bRegister|out\(2) & ( (!\U|instructionReg|out\(3)) # (\U|DP|bRegister|out\(1)) ) ) # ( !\U|DP|bRegister|out\(2) & ( (\U|instructionReg|out\(3) & \U|DP|bRegister|out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instructionReg|ALT_INV_out\(3),
	datad => \U|DP|bRegister|ALT_INV_out\(1),
	dataf => \U|DP|bRegister|ALT_INV_out\(2),
	combout => \rtl~48_combout\);

-- Location: LABCELL_X88_Y5_N39
\U|DP|CMP|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~9_sumout\ = SUM(( \U|DP|Ain[2]~2_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~48_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(3))))) ) + ( \U|DP|CMP|Add0~6\ ))
-- \U|DP|CMP|Add0~10\ = CARRY(( \U|DP|Ain[2]~2_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~48_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(3))))) ) + ( \U|DP|CMP|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(3),
	datad => \U|DP|ALT_INV_Ain[2]~2_combout\,
	dataf => \ALT_INV_rtl~48_combout\,
	cin => \U|DP|CMP|Add0~6\,
	sumout => \U|DP|CMP|Add0~9_sumout\,
	cout => \U|DP|CMP|Add0~10\);

-- Location: LABCELL_X88_Y5_N42
\U|DP|CMP|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~13_sumout\ = SUM(( \U|DP|Ain[3]~3_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~49_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(4))))) ) + ( \U|DP|CMP|Add0~10\ ))
-- \U|DP|CMP|Add0~14\ = CARRY(( \U|DP|Ain[3]~3_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~49_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(4))))) ) + ( \U|DP|CMP|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(4),
	datad => \U|DP|ALT_INV_Ain[3]~3_combout\,
	dataf => \ALT_INV_rtl~49_combout\,
	cin => \U|DP|CMP|Add0~10\,
	sumout => \U|DP|CMP|Add0~13_sumout\,
	cout => \U|DP|CMP|Add0~14\);

-- Location: LABCELL_X88_Y5_N45
\U|DP|CMP|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~17_sumout\ = SUM(( \U|DP|Ain[4]~4_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~50_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(5))))) ) + ( \U|DP|CMP|Add0~14\ ))
-- \U|DP|CMP|Add0~18\ = CARRY(( \U|DP|Ain[4]~4_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~50_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(5))))) ) + ( \U|DP|CMP|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(5),
	datad => \U|DP|ALT_INV_Ain[4]~4_combout\,
	dataf => \ALT_INV_rtl~50_combout\,
	cin => \U|DP|CMP|Add0~14\,
	sumout => \U|DP|CMP|Add0~17_sumout\,
	cout => \U|DP|CMP|Add0~18\);

-- Location: LABCELL_X88_Y5_N48
\U|DP|CMP|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~21_sumout\ = SUM(( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~51_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(6))))) ) + ( \U|DP|Ain[5]~5_combout\ ) + ( \U|DP|CMP|Add0~18\ ))
-- \U|DP|CMP|Add0~22\ = CARRY(( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~51_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(6))))) ) + ( \U|DP|Ain[5]~5_combout\ ) + ( \U|DP|CMP|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(6),
	datad => \ALT_INV_rtl~51_combout\,
	dataf => \U|DP|ALT_INV_Ain[5]~5_combout\,
	cin => \U|DP|CMP|Add0~18\,
	sumout => \U|DP|CMP|Add0~21_sumout\,
	cout => \U|DP|CMP|Add0~22\);

-- Location: LABCELL_X88_Y5_N51
\U|DP|CMP|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~25_sumout\ = SUM(( \U|DP|Ain[6]~6_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~52_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(7))))) ) + ( \U|DP|CMP|Add0~22\ ))
-- \U|DP|CMP|Add0~26\ = CARRY(( \U|DP|Ain[6]~6_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~52_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(7))))) ) + ( \U|DP|CMP|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(7),
	datad => \U|DP|ALT_INV_Ain[6]~6_combout\,
	dataf => \ALT_INV_rtl~52_combout\,
	cin => \U|DP|CMP|Add0~22\,
	sumout => \U|DP|CMP|Add0~25_sumout\,
	cout => \U|DP|CMP|Add0~26\);

-- Location: LABCELL_X88_Y5_N54
\U|DP|CMP|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~29_sumout\ = SUM(( \U|DP|Ain[7]~7_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~40_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(8))))) ) + ( \U|DP|CMP|Add0~26\ ))
-- \U|DP|CMP|Add0~30\ = CARRY(( \U|DP|Ain[7]~7_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~40_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(8))))) ) + ( \U|DP|CMP|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(8),
	datad => \U|DP|ALT_INV_Ain[7]~7_combout\,
	dataf => \ALT_INV_rtl~40_combout\,
	cin => \U|DP|CMP|Add0~26\,
	sumout => \U|DP|CMP|Add0~29_sumout\,
	cout => \U|DP|CMP|Add0~30\);

-- Location: LABCELL_X88_Y5_N57
\U|DP|CMP|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~33_sumout\ = SUM(( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~41_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out[9]~DUPLICATE_q\)))) ) + ( \U|DP|Ain[8]~8_combout\ ) + ( \U|DP|CMP|Add0~30\ ))
-- \U|DP|CMP|Add0~34\ = CARRY(( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~41_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out[9]~DUPLICATE_q\)))) ) + ( \U|DP|Ain[8]~8_combout\ ) + ( \U|DP|CMP|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\,
	datad => \ALT_INV_rtl~41_combout\,
	dataf => \U|DP|ALT_INV_Ain[8]~8_combout\,
	cin => \U|DP|CMP|Add0~30\,
	sumout => \U|DP|CMP|Add0~33_sumout\,
	cout => \U|DP|CMP|Add0~34\);

-- Location: LABCELL_X88_Y4_N30
\U|DP|CMP|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~37_sumout\ = SUM(( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~42_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(10))))) ) + ( \U|DP|Ain[9]~9_combout\ ) + ( \U|DP|CMP|Add0~34\ ))
-- \U|DP|CMP|Add0~38\ = CARRY(( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~42_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(10))))) ) + ( \U|DP|Ain[9]~9_combout\ ) + ( \U|DP|CMP|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(10),
	datad => \ALT_INV_rtl~42_combout\,
	dataf => \U|DP|ALT_INV_Ain[9]~9_combout\,
	cin => \U|DP|CMP|Add0~34\,
	sumout => \U|DP|CMP|Add0~37_sumout\,
	cout => \U|DP|CMP|Add0~38\);

-- Location: LABCELL_X88_Y4_N33
\U|DP|CMP|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~41_sumout\ = SUM(( \U|DP|Ain[10]~10_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~43_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(11))))) ) + ( \U|DP|CMP|Add0~38\ ))
-- \U|DP|CMP|Add0~42\ = CARRY(( \U|DP|Ain[10]~10_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~43_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(11))))) ) + ( \U|DP|CMP|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(11),
	datad => \U|DP|ALT_INV_Ain[10]~10_combout\,
	dataf => \ALT_INV_rtl~43_combout\,
	cin => \U|DP|CMP|Add0~38\,
	sumout => \U|DP|CMP|Add0~41_sumout\,
	cout => \U|DP|CMP|Add0~42\);

-- Location: LABCELL_X88_Y4_N36
\U|DP|CMP|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~45_sumout\ = SUM(( \U|DP|Ain[11]~11_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~44_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(12))))) ) + ( \U|DP|CMP|Add0~42\ ))
-- \U|DP|CMP|Add0~46\ = CARRY(( \U|DP|Ain[11]~11_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~44_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(12))))) ) + ( \U|DP|CMP|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(12),
	datad => \U|DP|ALT_INV_Ain[11]~11_combout\,
	dataf => \ALT_INV_rtl~44_combout\,
	cin => \U|DP|CMP|Add0~42\,
	sumout => \U|DP|CMP|Add0~45_sumout\,
	cout => \U|DP|CMP|Add0~46\);

-- Location: LABCELL_X88_Y4_N39
\U|DP|CMP|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~49_sumout\ = SUM(( \U|DP|Ain[12]~12_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~45_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(13))))) ) + ( \U|DP|CMP|Add0~46\ ))
-- \U|DP|CMP|Add0~50\ = CARRY(( \U|DP|Ain[12]~12_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~45_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(13))))) ) + ( \U|DP|CMP|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(13),
	datad => \U|DP|ALT_INV_Ain[12]~12_combout\,
	dataf => \ALT_INV_rtl~45_combout\,
	cin => \U|DP|CMP|Add0~46\,
	sumout => \U|DP|CMP|Add0~49_sumout\,
	cout => \U|DP|CMP|Add0~50\);

-- Location: LABCELL_X88_Y4_N42
\U|DP|CMP|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~53_sumout\ = SUM(( \U|DP|Ain[13]~13_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~46_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(14))))) ) + ( \U|DP|CMP|Add0~50\ ))
-- \U|DP|CMP|Add0~54\ = CARRY(( \U|DP|Ain[13]~13_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~46_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(14))))) ) + ( \U|DP|CMP|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(14),
	datad => \U|DP|ALT_INV_Ain[13]~13_combout\,
	dataf => \ALT_INV_rtl~46_combout\,
	cin => \U|DP|CMP|Add0~50\,
	sumout => \U|DP|CMP|Add0~53_sumout\,
	cout => \U|DP|CMP|Add0~54\);

-- Location: LABCELL_X88_Y4_N45
\U|DP|CMP|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~57_sumout\ = SUM(( \U|DP|Ain[14]~14_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~47_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out[15]~DUPLICATE_q\)))) ) + ( \U|DP|CMP|Add0~54\ ))
-- \U|DP|CMP|Add0~58\ = CARRY(( \U|DP|Ain[14]~14_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & ((!\rtl~47_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out[15]~DUPLICATE_q\)))) ) + ( \U|DP|CMP|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out[15]~DUPLICATE_q\,
	datad => \U|DP|ALT_INV_Ain[14]~14_combout\,
	dataf => \ALT_INV_rtl~47_combout\,
	cin => \U|DP|CMP|Add0~54\,
	sumout => \U|DP|CMP|Add0~57_sumout\,
	cout => \U|DP|CMP|Add0~58\);

-- Location: LABCELL_X88_Y4_N48
\U|DP|CMP|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Add0~61_sumout\ = SUM(( \U|DP|Ain[15]~15_combout\ ) + ( !\U|instructionReg|out\(11) $ (((!\rtl~31_combout\ & ((!\U|DP|bRegister|out[15]~DUPLICATE_q\))) # (\rtl~31_combout\ & (!\rtl~30_combout\)))) ) + ( \U|DP|CMP|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~30_combout\,
	datab => \U|DP|bRegister|ALT_INV_out[15]~DUPLICATE_q\,
	datac => \U|instructionReg|ALT_INV_out\(11),
	datad => \U|DP|ALT_INV_Ain[15]~15_combout\,
	dataf => \ALT_INV_rtl~31_combout\,
	cin => \U|DP|CMP|Add0~58\,
	sumout => \U|DP|CMP|Add0~61_sumout\);

-- Location: LABCELL_X88_Y3_N48
\U|DP|cRegister|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[15]~feeder_combout\ = ( \U|DP|CMP|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~61_sumout\,
	combout => \U|DP|cRegister|out[15]~feeder_combout\);

-- Location: FF_X84_Y2_N14
\U|DP|bRegister|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|bRegister|out[15]~feeder_combout\,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(15));

-- Location: LABCELL_X85_Y6_N12
\U|DP|CMP|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux0~0_combout\ = ( \rtl~30_combout\ & ( \U|DP|Ain[15]~15_combout\ & ( !\U|instructionReg|out\(11) $ (((!\U|DP|bRegister|out\(15) & !\rtl~31_combout\))) ) ) ) # ( !\rtl~30_combout\ & ( \U|DP|Ain[15]~15_combout\ & ( !\U|instructionReg|out\(11) $ 
-- (((!\U|DP|bRegister|out\(15)) # (\rtl~31_combout\))) ) ) ) # ( \rtl~30_combout\ & ( !\U|DP|Ain[15]~15_combout\ & ( (!\U|DP|bRegister|out\(15) & (\U|instructionReg|out\(11) & !\rtl~31_combout\)) ) ) ) # ( !\rtl~30_combout\ & ( !\U|DP|Ain[15]~15_combout\ & 
-- ( (\U|instructionReg|out\(11) & ((!\U|DP|bRegister|out\(15)) # (\rtl~31_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000000010000001100011011000110110110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(15),
	datab => \U|instructionReg|ALT_INV_out\(11),
	datac => \ALT_INV_rtl~31_combout\,
	datae => \ALT_INV_rtl~30_combout\,
	dataf => \U|DP|ALT_INV_Ain[15]~15_combout\,
	combout => \U|DP|CMP|Mux0~0_combout\);

-- Location: FF_X88_Y3_N50
\U|DP|cRegister|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[15]~feeder_combout\,
	asdata => \U|DP|CMP|Mux0~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(15));

-- Location: LABCELL_X88_Y3_N39
\U|DP|muxintoregister|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux0~0_combout\ = ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(7) ) ) # ( !\U|statemachine|WideNor1~combout\ & ( \U|DP|cRegister|out\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(15),
	datad => \U|instructionReg|ALT_INV_out\(7),
	dataf => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y2_N30
\U|DP|REGFILE|toR5|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[15]~feeder_combout\ = ( \U|DP|muxintoregister|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[15]~feeder_combout\);

-- Location: FF_X84_Y2_N31
\U|DP|REGFILE|toR5|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(15));

-- Location: MLABCELL_X84_Y2_N0
\U|DP|REGFILE|toR6|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR6|out[15]~feeder_combout\ = ( \U|DP|muxintoregister|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|toR6|out[15]~feeder_combout\);

-- Location: FF_X84_Y2_N1
\U|DP|REGFILE|toR6|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR6|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(15));

-- Location: FF_X85_Y2_N32
\U|DP|REGFILE|toR4|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux0~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(15));

-- Location: LABCELL_X85_Y2_N30
\U|DP|REGFILE|chooser|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector0~1_combout\ = ( \U|DP|REGFILE|toR4|out\(15) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(15) & (!\U|muxintoregister|Mux2~0_combout\ & \U|muxintoregister|Mux0~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(15) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(15) & (!\U|muxintoregister|Mux2~0_combout\ & \U|muxintoregister|Mux0~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(15) & ( 
-- !\U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux2~0_combout\) # (\U|DP|REGFILE|toR5|out\(15)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(15) & ( !\U|muxintoregister|Mux1~0_combout\ & ( 
-- (\U|DP|REGFILE|toR5|out\(15) & (\U|muxintoregister|Mux2~0_combout\ & \U|muxintoregister|Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001111010100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR5|ALT_INV_out\(15),
	datab => \U|DP|REGFILE|toR6|ALT_INV_out\(15),
	datac => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(15),
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector0~1_combout\);

-- Location: MLABCELL_X82_Y3_N33
\U|DP|REGFILE|toR7|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[15]~feeder_combout\ = ( \U|DP|muxintoregister|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[15]~feeder_combout\);

-- Location: FF_X82_Y3_N34
\U|DP|REGFILE|toR7|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(15));

-- Location: MLABCELL_X87_Y3_N30
\U|DP|REGFILE|toR0|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR0|out[15]~feeder_combout\ = ( \U|DP|muxintoregister|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|toR0|out[15]~feeder_combout\);

-- Location: FF_X87_Y3_N31
\U|DP|REGFILE|toR0|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR0|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(15));

-- Location: LABCELL_X81_Y2_N6
\U|DP|REGFILE|toR1|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[15]~feeder_combout\ = ( \U|DP|muxintoregister|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[15]~feeder_combout\);

-- Location: FF_X81_Y2_N7
\U|DP|REGFILE|toR1|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(15));

-- Location: MLABCELL_X82_Y3_N39
\U|DP|REGFILE|toR3|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR3|out[15]~feeder_combout\ = ( \U|DP|muxintoregister|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux0~0_combout\,
	combout => \U|DP|REGFILE|toR3|out[15]~feeder_combout\);

-- Location: FF_X82_Y3_N40
\U|DP|REGFILE|toR3|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR3|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(15));

-- Location: FF_X85_Y2_N26
\U|DP|REGFILE|toR2|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux0~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(15));

-- Location: LABCELL_X85_Y2_N24
\U|DP|REGFILE|chooser|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector0~0_combout\ = ( \U|DP|REGFILE|toR2|out\(15) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~2_combout\) # (\U|DP|REGFILE|toR1|out\(15)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(15) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(15) & !\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(15) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(15))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(15)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(15) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(15))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR0|ALT_INV_out\(15),
	datab => \U|DP|REGFILE|toR1|ALT_INV_out\(15),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \U|DP|REGFILE|toR3|ALT_INV_out\(15),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(15),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector0~0_combout\);

-- Location: LABCELL_X85_Y2_N51
\U|DP|REGFILE|chooser|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector0~2_combout\ = ( \U|DP|REGFILE|chooser|Selector10~0_combout\ & ( \U|DP|REGFILE|chooser|Selector0~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(15))) # 
-- (\U|DP|REGFILE|chooser|Selector0~1_combout\) ) ) ) # ( !\U|DP|REGFILE|chooser|Selector10~0_combout\ & ( \U|DP|REGFILE|chooser|Selector0~0_combout\ & ( (!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\) # ((\U|DP|REGFILE|toR7|out\(15)) # 
-- (\U|DP|REGFILE|chooser|Selector0~1_combout\)) ) ) ) # ( \U|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\U|DP|REGFILE|chooser|Selector0~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(15))) # 
-- (\U|DP|REGFILE|chooser|Selector0~1_combout\) ) ) ) # ( !\U|DP|REGFILE|chooser|Selector10~0_combout\ & ( !\U|DP|REGFILE|chooser|Selector0~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(15))) # 
-- (\U|DP|REGFILE|chooser|Selector0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011110111111101111110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|chooser|ALT_INV_Selector0~1_combout\,
	datac => \U|DP|REGFILE|toR7|ALT_INV_out\(15),
	datae => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector0~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector0~2_combout\);

-- Location: MLABCELL_X84_Y2_N12
\U|DP|bRegister|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|bRegister|out[15]~feeder_combout\ = ( \U|DP|REGFILE|chooser|Selector0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector0~2_combout\,
	combout => \U|DP|bRegister|out[15]~feeder_combout\);

-- Location: FF_X84_Y2_N13
\U|DP|bRegister|out[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|bRegister|out[15]~feeder_combout\,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out[15]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y3_N57
\U|DP|cRegister|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[14]~feeder_combout\ = ( \U|DP|CMP|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~57_sumout\,
	combout => \U|DP|cRegister|out[14]~feeder_combout\);

-- Location: MLABCELL_X84_Y4_N48
\U|DP|CMP|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux1~0_combout\ = ( \U|instructionReg|out\(4) & ( \rtl~47_combout\ & ( (!\U|instructionReg|out\(11) & (\U|DP|bRegister|out[15]~DUPLICATE_q\ & \U|DP|Ain[14]~14_combout\)) # (\U|instructionReg|out\(11) & (!\U|DP|bRegister|out[15]~DUPLICATE_q\)) ) 
-- ) ) # ( !\U|instructionReg|out\(4) & ( \rtl~47_combout\ & ( (!\U|instructionReg|out\(11) & \U|DP|Ain[14]~14_combout\) ) ) ) # ( \U|instructionReg|out\(4) & ( !\rtl~47_combout\ & ( (!\U|instructionReg|out\(11) & (\U|DP|bRegister|out[15]~DUPLICATE_q\ & 
-- \U|DP|Ain[14]~14_combout\)) # (\U|instructionReg|out\(11) & (!\U|DP|bRegister|out[15]~DUPLICATE_q\)) ) ) ) # ( !\U|instructionReg|out\(4) & ( !\rtl~47_combout\ & ( \U|instructionReg|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100000011110000000000110011000011000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(11),
	datac => \U|DP|bRegister|ALT_INV_out[15]~DUPLICATE_q\,
	datad => \U|DP|ALT_INV_Ain[14]~14_combout\,
	datae => \U|instructionReg|ALT_INV_out\(4),
	dataf => \ALT_INV_rtl~47_combout\,
	combout => \U|DP|CMP|Mux1~0_combout\);

-- Location: FF_X88_Y3_N59
\U|DP|cRegister|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[14]~feeder_combout\,
	asdata => \U|DP|CMP|Mux1~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(14));

-- Location: LABCELL_X88_Y3_N21
\U|DP|muxintoregister|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux1~0_combout\ = ( \U|DP|cRegister|out\(14) & ( (!\U|statemachine|WideNor1~combout\) # (\U|instructionReg|out\(7)) ) ) # ( !\U|DP|cRegister|out\(14) & ( (\U|instructionReg|out\(7) & \U|statemachine|WideNor1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(7),
	datab => \U|statemachine|ALT_INV_WideNor1~combout\,
	dataf => \U|DP|cRegister|ALT_INV_out\(14),
	combout => \U|DP|muxintoregister|Mux1~0_combout\);

-- Location: FF_X81_Y4_N46
\U|DP|REGFILE|toR7|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(14));

-- Location: FF_X84_Y4_N19
\U|DP|REGFILE|toR4|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(14));

-- Location: FF_X88_Y3_N22
\U|DP|REGFILE|toR5|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|muxintoregister|Mux1~0_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(14));

-- Location: FF_X84_Y4_N26
\U|DP|REGFILE|toR6|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(14));

-- Location: LABCELL_X85_Y4_N21
\U|DP|REGFILE|chooser|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector1~1_combout\ = ( \U|muxintoregister|Mux0~0_combout\ & ( \U|DP|REGFILE|toR6|out\(14) & ( (!\U|muxintoregister|Mux2~0_combout\ & (((\U|muxintoregister|Mux1~0_combout\)) # (\U|DP|REGFILE|toR4|out\(14)))) # 
-- (\U|muxintoregister|Mux2~0_combout\ & (((!\U|muxintoregister|Mux1~0_combout\ & \U|DP|REGFILE|toR5|out\(14))))) ) ) ) # ( \U|muxintoregister|Mux0~0_combout\ & ( !\U|DP|REGFILE|toR6|out\(14) & ( (!\U|muxintoregister|Mux1~0_combout\ & 
-- ((!\U|muxintoregister|Mux2~0_combout\ & (\U|DP|REGFILE|toR4|out\(14))) # (\U|muxintoregister|Mux2~0_combout\ & ((\U|DP|REGFILE|toR5|out\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000111000000000000000000000010101001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datab => \U|DP|REGFILE|toR4|ALT_INV_out\(14),
	datac => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \U|DP|REGFILE|toR5|ALT_INV_out\(14),
	datae => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	dataf => \U|DP|REGFILE|toR6|ALT_INV_out\(14),
	combout => \U|DP|REGFILE|chooser|Selector1~1_combout\);

-- Location: FF_X81_Y4_N4
\U|DP|REGFILE|toR1|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(14));

-- Location: FF_X85_Y4_N14
\U|DP|REGFILE|toR0|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(14));

-- Location: FF_X85_Y4_N55
\U|DP|REGFILE|toR3|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(14));

-- Location: FF_X85_Y4_N7
\U|DP|REGFILE|toR2|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux1~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(14));

-- Location: LABCELL_X85_Y4_N9
\U|DP|REGFILE|chooser|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector1~0_combout\ = ( \U|DP|REGFILE|chooser|Selector10~2_combout\ & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( \U|DP|REGFILE|toR2|out\(14) ) ) ) # ( !\U|DP|REGFILE|chooser|Selector10~2_combout\ & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( \U|DP|REGFILE|toR1|out\(14) ) ) ) # ( \U|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( \U|DP|REGFILE|toR3|out\(14) ) ) ) # ( 
-- !\U|DP|REGFILE|chooser|Selector10~2_combout\ & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( \U|DP|REGFILE|toR0|out\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR1|ALT_INV_out\(14),
	datab => \U|DP|REGFILE|toR0|ALT_INV_out\(14),
	datac => \U|DP|REGFILE|toR3|ALT_INV_out\(14),
	datad => \U|DP|REGFILE|toR2|ALT_INV_out\(14),
	datae => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector1~0_combout\);

-- Location: LABCELL_X85_Y4_N12
\U|DP|REGFILE|chooser|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector1~2_combout\ = ( \U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|chooser|Selector1~0_combout\ & ( (\U|DP|REGFILE|chooser|Selector1~1_combout\) # (\U|DP|REGFILE|toR7|out\(14)) ) ) ) # ( 
-- !\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|chooser|Selector1~0_combout\ & ( (!\U|DP|REGFILE|chooser|Selector10~0_combout\) # (\U|DP|REGFILE|chooser|Selector1~1_combout\) ) ) ) # ( \U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( 
-- !\U|DP|REGFILE|chooser|Selector1~0_combout\ & ( (\U|DP|REGFILE|chooser|Selector1~1_combout\) # (\U|DP|REGFILE|toR7|out\(14)) ) ) ) # ( !\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( !\U|DP|REGFILE|chooser|Selector1~0_combout\ & ( 
-- \U|DP|REGFILE|chooser|Selector1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001111110011111110101111101011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \U|DP|REGFILE|toR7|ALT_INV_out\(14),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector1~1_combout\,
	datae => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector1~2_combout\);

-- Location: FF_X88_Y4_N29
\U|DP|bRegister|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector1~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(14));

-- Location: LABCELL_X88_Y3_N54
\U|DP|cRegister|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[13]~feeder_combout\ = ( \U|DP|CMP|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~53_sumout\,
	combout => \U|DP|cRegister|out[13]~feeder_combout\);

-- Location: MLABCELL_X84_Y4_N21
\U|DP|CMP|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux2~0_combout\ = ( \U|instructionReg|out\(11) & ( \rtl~46_combout\ & ( (\U|instructionReg|out\(4) & !\U|DP|bRegister|out\(14)) ) ) ) # ( !\U|instructionReg|out\(11) & ( \rtl~46_combout\ & ( (\U|DP|Ain[13]~13_combout\ & 
-- ((!\U|instructionReg|out\(4)) # (\U|DP|bRegister|out\(14)))) ) ) ) # ( \U|instructionReg|out\(11) & ( !\rtl~46_combout\ & ( (!\U|instructionReg|out\(4)) # (!\U|DP|bRegister|out\(14)) ) ) ) # ( !\U|instructionReg|out\(11) & ( !\rtl~46_combout\ & ( 
-- (\U|instructionReg|out\(4) & (\U|DP|Ain[13]~13_combout\ & \U|DP|bRegister|out\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111110101111101000100011001000110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(4),
	datab => \U|DP|ALT_INV_Ain[13]~13_combout\,
	datac => \U|DP|bRegister|ALT_INV_out\(14),
	datae => \U|instructionReg|ALT_INV_out\(11),
	dataf => \ALT_INV_rtl~46_combout\,
	combout => \U|DP|CMP|Mux2~0_combout\);

-- Location: FF_X88_Y3_N56
\U|DP|cRegister|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[13]~feeder_combout\,
	asdata => \U|DP|CMP|Mux2~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(13));

-- Location: LABCELL_X88_Y3_N18
\U|DP|muxintoregister|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux2~0_combout\ = (!\U|statemachine|WideNor1~combout\ & ((\U|DP|cRegister|out\(13)))) # (\U|statemachine|WideNor1~combout\ & (\U|instructionReg|out\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(7),
	datab => \U|statemachine|ALT_INV_WideNor1~combout\,
	datac => \U|DP|cRegister|ALT_INV_out\(13),
	combout => \U|DP|muxintoregister|Mux2~0_combout\);

-- Location: FF_X84_Y2_N22
\U|DP|REGFILE|toR5|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(13));

-- Location: LABCELL_X83_Y2_N39
\U|DP|REGFILE|toR6|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR6|out[13]~feeder_combout\ = ( \U|DP|muxintoregister|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|toR6|out[13]~feeder_combout\);

-- Location: FF_X83_Y2_N40
\U|DP|REGFILE|toR6|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR6|out[13]~feeder_combout\,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(13));

-- Location: FF_X85_Y2_N20
\U|DP|REGFILE|toR4|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(13));

-- Location: LABCELL_X85_Y2_N18
\U|DP|REGFILE|chooser|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector2~1_combout\ = ( \U|DP|REGFILE|toR4|out\(13) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & (!\U|muxintoregister|Mux2~0_combout\ & \U|DP|REGFILE|toR6|out\(13))) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(13) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & (!\U|muxintoregister|Mux2~0_combout\ & \U|DP|REGFILE|toR6|out\(13))) ) ) ) # ( \U|DP|REGFILE|toR4|out\(13) & ( 
-- !\U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux2~0_combout\) # (\U|DP|REGFILE|toR5|out\(13)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(13) & ( !\U|muxintoregister|Mux1~0_combout\ & ( 
-- (\U|DP|REGFILE|toR5|out\(13) & (\U|muxintoregister|Mux0~0_combout\ & \U|muxintoregister|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001100010011000100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR5|ALT_INV_out\(13),
	datab => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datad => \U|DP|REGFILE|toR6|ALT_INV_out\(13),
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(13),
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector2~1_combout\);

-- Location: MLABCELL_X82_Y4_N51
\U|DP|REGFILE|toR7|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[13]~feeder_combout\ = ( \U|DP|muxintoregister|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[13]~feeder_combout\);

-- Location: FF_X82_Y4_N52
\U|DP|REGFILE|toR7|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[13]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(13));

-- Location: FF_X85_Y4_N58
\U|DP|REGFILE|toR3|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(13));

-- Location: FF_X81_Y2_N13
\U|DP|REGFILE|toR0|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(13));

-- Location: LABCELL_X83_Y2_N6
\U|DP|REGFILE|toR1|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[13]~feeder_combout\ = ( \U|DP|muxintoregister|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[13]~feeder_combout\);

-- Location: FF_X83_Y2_N7
\U|DP|REGFILE|toR1|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[13]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(13));

-- Location: FF_X85_Y2_N2
\U|DP|REGFILE|toR2|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux2~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(13));

-- Location: LABCELL_X85_Y2_N0
\U|DP|REGFILE|chooser|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector2~0_combout\ = ( \U|DP|REGFILE|toR2|out\(13) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(13)) # (\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(13) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & \U|DP|REGFILE|toR1|out\(13)) ) ) ) # ( \U|DP|REGFILE|toR2|out\(13) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR0|out\(13)))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR3|out\(13))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(13) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR0|out\(13)))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR3|out\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR3|ALT_INV_out\(13),
	datab => \U|DP|REGFILE|toR0|ALT_INV_out\(13),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \U|DP|REGFILE|toR1|ALT_INV_out\(13),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(13),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector2~0_combout\);

-- Location: LABCELL_X85_Y2_N36
\U|DP|REGFILE|chooser|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector2~2_combout\ = ( \U|DP|REGFILE|chooser|Selector2~0_combout\ & ( \U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( (\U|DP|REGFILE|toR7|out\(13)) # (\U|DP|REGFILE|chooser|Selector2~1_combout\) ) ) ) # ( 
-- !\U|DP|REGFILE|chooser|Selector2~0_combout\ & ( \U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( (\U|DP|REGFILE|toR7|out\(13)) # (\U|DP|REGFILE|chooser|Selector2~1_combout\) ) ) ) # ( \U|DP|REGFILE|chooser|Selector2~0_combout\ & ( 
-- !\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & ( (!\U|DP|REGFILE|chooser|Selector10~0_combout\) # (\U|DP|REGFILE|chooser|Selector2~1_combout\) ) ) ) # ( !\U|DP|REGFILE|chooser|Selector2~0_combout\ & ( !\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ( \U|DP|REGFILE|chooser|Selector2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111110101010101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|chooser|ALT_INV_Selector2~1_combout\,
	datab => \U|DP|REGFILE|toR7|ALT_INV_out\(13),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datae => \U|DP|REGFILE|chooser|ALT_INV_Selector2~0_combout\,
	dataf => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector2~2_combout\);

-- Location: FF_X88_Y4_N14
\U|DP|bRegister|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector2~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(13));

-- Location: LABCELL_X88_Y3_N51
\U|DP|cRegister|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[12]~feeder_combout\ = ( \U|DP|CMP|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~49_sumout\,
	combout => \U|DP|cRegister|out[12]~feeder_combout\);

-- Location: MLABCELL_X84_Y4_N6
\U|DP|CMP|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux3~0_combout\ = ( \rtl~45_combout\ & ( \U|DP|Ain[12]~12_combout\ & ( !\U|instructionReg|out\(11) $ (((!\U|DP|bRegister|out\(13) & \U|instructionReg|out\(4)))) ) ) ) # ( !\rtl~45_combout\ & ( \U|DP|Ain[12]~12_combout\ & ( 
-- !\U|instructionReg|out\(11) $ (((!\U|DP|bRegister|out\(13)) # (!\U|instructionReg|out\(4)))) ) ) ) # ( \rtl~45_combout\ & ( !\U|DP|Ain[12]~12_combout\ & ( (!\U|DP|bRegister|out\(13) & (\U|instructionReg|out\(11) & \U|instructionReg|out\(4))) ) ) ) # ( 
-- !\rtl~45_combout\ & ( !\U|DP|Ain[12]~12_combout\ & ( (\U|instructionReg|out\(11) & ((!\U|DP|bRegister|out\(13)) # (!\U|instructionReg|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010000000100000001000110110001101101100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(13),
	datab => \U|instructionReg|ALT_INV_out\(11),
	datac => \U|instructionReg|ALT_INV_out\(4),
	datae => \ALT_INV_rtl~45_combout\,
	dataf => \U|DP|ALT_INV_Ain[12]~12_combout\,
	combout => \U|DP|CMP|Mux3~0_combout\);

-- Location: FF_X88_Y3_N52
\U|DP|cRegister|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[12]~feeder_combout\,
	asdata => \U|DP|CMP|Mux3~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(12));

-- Location: LABCELL_X83_Y3_N15
\U|DP|muxintoregister|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux3~0_combout\ = ( \U|DP|cRegister|out\(12) & ( (!\U|statemachine|WideNor1~combout\) # (\U|instructionReg|out\(7)) ) ) # ( !\U|DP|cRegister|out\(12) & ( (\U|statemachine|WideNor1~combout\ & \U|instructionReg|out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|ALT_INV_WideNor1~combout\,
	datac => \U|instructionReg|ALT_INV_out\(7),
	dataf => \U|DP|cRegister|ALT_INV_out\(12),
	combout => \U|DP|muxintoregister|Mux3~0_combout\);

-- Location: LABCELL_X83_Y4_N57
\U|DP|REGFILE|toR5|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[12]~feeder_combout\ = ( \U|DP|muxintoregister|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux3~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[12]~feeder_combout\);

-- Location: FF_X83_Y4_N58
\U|DP|REGFILE|toR5|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(12));

-- Location: LABCELL_X80_Y4_N48
\U|DP|REGFILE|toR6|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR6|out[12]~feeder_combout\ = ( \U|DP|muxintoregister|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux3~0_combout\,
	combout => \U|DP|REGFILE|toR6|out[12]~feeder_combout\);

-- Location: FF_X80_Y4_N49
\U|DP|REGFILE|toR6|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR6|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(12));

-- Location: FF_X87_Y4_N32
\U|DP|REGFILE|toR4|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux3~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(12));

-- Location: MLABCELL_X87_Y4_N30
\U|DP|REGFILE|chooser|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector3~1_combout\ = ( \U|DP|REGFILE|toR4|out\(12) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & (!\U|muxintoregister|Mux1~0_combout\ & \U|DP|REGFILE|toR5|out\(12))) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(12) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & (!\U|muxintoregister|Mux1~0_combout\ & \U|DP|REGFILE|toR5|out\(12))) ) ) ) # ( \U|DP|REGFILE|toR4|out\(12) & ( 
-- !\U|muxintoregister|Mux2~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux1~0_combout\) # (\U|DP|REGFILE|toR6|out\(12)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(12) & ( !\U|muxintoregister|Mux2~0_combout\ & ( 
-- (\U|muxintoregister|Mux0~0_combout\ & (\U|muxintoregister|Mux1~0_combout\ & \U|DP|REGFILE|toR6|out\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010001000101010100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datab => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datac => \U|DP|REGFILE|toR5|ALT_INV_out\(12),
	datad => \U|DP|REGFILE|toR6|ALT_INV_out\(12),
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(12),
	dataf => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector3~1_combout\);

-- Location: MLABCELL_X82_Y4_N54
\U|DP|REGFILE|toR7|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[12]~feeder_combout\ = ( \U|DP|muxintoregister|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux3~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[12]~feeder_combout\);

-- Location: FF_X82_Y4_N55
\U|DP|REGFILE|toR7|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(12));

-- Location: LABCELL_X80_Y4_N42
\U|DP|REGFILE|toR0|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR0|out[12]~feeder_combout\ = ( \U|DP|muxintoregister|Mux3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux3~0_combout\,
	combout => \U|DP|REGFILE|toR0|out[12]~feeder_combout\);

-- Location: FF_X80_Y4_N43
\U|DP|REGFILE|toR0|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR0|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(12));

-- Location: FF_X82_Y3_N16
\U|DP|REGFILE|toR3|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux3~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(12));

-- Location: FF_X83_Y5_N4
\U|DP|REGFILE|toR1|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux3~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(12));

-- Location: FF_X87_Y3_N44
\U|DP|REGFILE|toR2|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux3~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(12));

-- Location: MLABCELL_X87_Y3_N42
\U|DP|REGFILE|chooser|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector3~0_combout\ = ( \U|DP|REGFILE|toR2|out\(12) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(12)) # (\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(12) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & \U|DP|REGFILE|toR1|out\(12)) ) ) ) # ( \U|DP|REGFILE|toR2|out\(12) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(12))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(12)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(12) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(12))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR0|ALT_INV_out\(12),
	datab => \U|DP|REGFILE|toR3|ALT_INV_out\(12),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \U|DP|REGFILE|toR1|ALT_INV_out\(12),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(12),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector3~0_combout\);

-- Location: MLABCELL_X87_Y4_N9
\U|DP|REGFILE|chooser|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector3~2_combout\ = ( \U|DP|REGFILE|chooser|Selector3~0_combout\ & ( ((!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\)) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ((\U|DP|REGFILE|toR7|out\(12))))) # (\U|DP|REGFILE|chooser|Selector3~1_combout\) ) ) # ( !\U|DP|REGFILE|chooser|Selector3~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(12))) # 
-- (\U|DP|REGFILE|chooser|Selector3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111110001111101111111000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector3~1_combout\,
	datad => \U|DP|REGFILE|toR7|ALT_INV_out\(12),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector3~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector3~2_combout\);

-- Location: FF_X88_Y4_N59
\U|DP|bRegister|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector3~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(12));

-- Location: LABCELL_X88_Y7_N6
\U|DP|cRegister|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[11]~feeder_combout\ = ( \U|DP|CMP|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~45_sumout\,
	combout => \U|DP|cRegister|out[11]~feeder_combout\);

-- Location: LABCELL_X88_Y7_N9
\U|DP|CMP|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux4~0_combout\ = ( \rtl~44_combout\ & ( (!\U|instructionReg|out\(11) & (\U|DP|Ain[11]~11_combout\ & ((!\U|instructionReg|out\(4)) # (\U|DP|bRegister|out\(12))))) # (\U|instructionReg|out\(11) & (\U|instructionReg|out\(4) & 
-- (!\U|DP|bRegister|out\(12)))) ) ) # ( !\rtl~44_combout\ & ( (!\U|instructionReg|out\(11) & (\U|instructionReg|out\(4) & (\U|DP|bRegister|out\(12) & \U|DP|Ain[11]~11_combout\))) # (\U|instructionReg|out\(11) & ((!\U|instructionReg|out\(4)) # 
-- ((!\U|DP|bRegister|out\(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010110010101000101011000010000100110100001000010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|DP|bRegister|ALT_INV_out\(12),
	datad => \U|DP|ALT_INV_Ain[11]~11_combout\,
	dataf => \ALT_INV_rtl~44_combout\,
	combout => \U|DP|CMP|Mux4~0_combout\);

-- Location: FF_X88_Y7_N8
\U|DP|cRegister|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[11]~feeder_combout\,
	asdata => \U|DP|CMP|Mux4~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(11));

-- Location: LABCELL_X88_Y7_N54
\U|DP|muxintoregister|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux4~0_combout\ = ( \U|instructionReg|out\(7) & ( \U|statemachine|WideNor1~combout\ ) ) # ( \U|instructionReg|out\(7) & ( !\U|statemachine|WideNor1~combout\ & ( \U|DP|cRegister|out\(11) ) ) ) # ( !\U|instructionReg|out\(7) & ( 
-- !\U|statemachine|WideNor1~combout\ & ( \U|DP|cRegister|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|cRegister|ALT_INV_out\(11),
	datae => \U|instructionReg|ALT_INV_out\(7),
	dataf => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux4~0_combout\);

-- Location: LABCELL_X83_Y4_N15
\U|DP|REGFILE|toR5|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[11]~feeder_combout\ = ( \U|DP|muxintoregister|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux4~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[11]~feeder_combout\);

-- Location: FF_X83_Y4_N17
\U|DP|REGFILE|toR5|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[11]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(11));

-- Location: FF_X87_Y4_N55
\U|DP|REGFILE|toR6|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(11));

-- Location: FF_X83_Y4_N11
\U|DP|REGFILE|toR4|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(11));

-- Location: LABCELL_X83_Y4_N9
\U|DP|REGFILE|chooser|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector4~1_combout\ = ( \U|DP|REGFILE|toR4|out\(11) & ( \U|muxintoregister|Mux1~0_combout\ & ( (!\U|muxintoregister|Mux2~0_combout\ & (\U|DP|REGFILE|toR6|out\(11) & \U|muxintoregister|Mux0~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(11) & ( \U|muxintoregister|Mux1~0_combout\ & ( (!\U|muxintoregister|Mux2~0_combout\ & (\U|DP|REGFILE|toR6|out\(11) & \U|muxintoregister|Mux0~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(11) & ( 
-- !\U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux2~0_combout\) # (\U|DP|REGFILE|toR5|out\(11)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(11) & ( !\U|muxintoregister|Mux1~0_combout\ & ( 
-- (\U|muxintoregister|Mux2~0_combout\ & (\U|DP|REGFILE|toR5|out\(11) & \U|muxintoregister|Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000001011101100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datab => \U|DP|REGFILE|toR5|ALT_INV_out\(11),
	datac => \U|DP|REGFILE|toR6|ALT_INV_out\(11),
	datad => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(11),
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector4~1_combout\);

-- Location: LABCELL_X83_Y5_N27
\U|DP|REGFILE|toR7|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[11]~feeder_combout\ = ( \U|DP|muxintoregister|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux4~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[11]~feeder_combout\);

-- Location: FF_X83_Y5_N28
\U|DP|REGFILE|toR7|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[11]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(11));

-- Location: LABCELL_X83_Y5_N6
\U|DP|REGFILE|toR1|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[11]~feeder_combout\ = ( \U|DP|muxintoregister|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux4~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[11]~feeder_combout\);

-- Location: FF_X83_Y5_N7
\U|DP|REGFILE|toR1|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[11]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(11));

-- Location: FF_X85_Y4_N17
\U|DP|REGFILE|toR0|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(11));

-- Location: LABCELL_X85_Y4_N54
\U|DP|REGFILE|toR3|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR3|out[11]~feeder_combout\ = ( \U|DP|muxintoregister|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux4~0_combout\,
	combout => \U|DP|REGFILE|toR3|out[11]~feeder_combout\);

-- Location: FF_X85_Y4_N56
\U|DP|REGFILE|toR3|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR3|out[11]~feeder_combout\,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(11));

-- Location: FF_X85_Y4_N26
\U|DP|REGFILE|toR2|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux4~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(11));

-- Location: LABCELL_X85_Y4_N24
\U|DP|REGFILE|chooser|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector4~0_combout\ = ( \U|DP|REGFILE|toR2|out\(11) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~2_combout\) # (\U|DP|REGFILE|toR1|out\(11)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(11) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(11) & !\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(11) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(11))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(11)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(11) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(11))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR1|ALT_INV_out\(11),
	datab => \U|DP|REGFILE|toR0|ALT_INV_out\(11),
	datac => \U|DP|REGFILE|toR3|ALT_INV_out\(11),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(11),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector4~0_combout\);

-- Location: MLABCELL_X87_Y4_N6
\U|DP|REGFILE|chooser|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector4~2_combout\ = ( \U|DP|REGFILE|chooser|Selector4~0_combout\ & ( ((!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\)) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ((\U|DP|REGFILE|toR7|out\(11))))) # (\U|DP|REGFILE|chooser|Selector4~1_combout\) ) ) # ( !\U|DP|REGFILE|chooser|Selector4~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(11))) # 
-- (\U|DP|REGFILE|chooser|Selector4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111110001111101111111000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector4~1_combout\,
	datad => \U|DP|REGFILE|toR7|ALT_INV_out\(11),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector4~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector4~2_combout\);

-- Location: FF_X88_Y4_N26
\U|DP|bRegister|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector4~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(11));

-- Location: LABCELL_X88_Y7_N51
\U|DP|cRegister|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[10]~feeder_combout\ = ( \U|DP|CMP|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~41_sumout\,
	combout => \U|DP|cRegister|out[10]~feeder_combout\);

-- Location: LABCELL_X88_Y7_N48
\U|DP|CMP|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux5~0_combout\ = ( \U|DP|bRegister|out\(11) & ( (!\U|instructionReg|out\(11) & (\U|DP|Ain[10]~10_combout\ & ((\rtl~43_combout\) # (\U|instructionReg|out\(4))))) # (\U|instructionReg|out\(11) & (!\U|instructionReg|out\(4) & (!\rtl~43_combout\))) 
-- ) ) # ( !\U|DP|bRegister|out\(11) & ( (!\U|instructionReg|out\(11) & (!\U|instructionReg|out\(4) & (\rtl~43_combout\ & \U|DP|Ain[10]~10_combout\))) # (\U|instructionReg|out\(11) & (((!\rtl~43_combout\)) # (\U|instructionReg|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101011001010100010101100101000000011010100100000001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \ALT_INV_rtl~43_combout\,
	datad => \U|DP|ALT_INV_Ain[10]~10_combout\,
	dataf => \U|DP|bRegister|ALT_INV_out\(11),
	combout => \U|DP|CMP|Mux5~0_combout\);

-- Location: FF_X88_Y7_N53
\U|DP|cRegister|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[10]~feeder_combout\,
	asdata => \U|DP|CMP|Mux5~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(10));

-- Location: LABCELL_X88_Y7_N0
\U|DP|muxintoregister|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux5~0_combout\ = (!\U|statemachine|WideNor1~combout\ & (\U|DP|cRegister|out\(10))) # (\U|statemachine|WideNor1~combout\ & ((\U|instructionReg|out\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|statemachine|ALT_INV_WideNor1~combout\,
	datac => \U|DP|cRegister|ALT_INV_out\(10),
	datad => \U|instructionReg|ALT_INV_out\(7),
	combout => \U|DP|muxintoregister|Mux5~0_combout\);

-- Location: MLABCELL_X82_Y4_N18
\U|DP|REGFILE|toR7|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[10]~feeder_combout\ = ( \U|DP|muxintoregister|Mux5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux5~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[10]~feeder_combout\);

-- Location: FF_X82_Y4_N20
\U|DP|REGFILE|toR7|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[10]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(10));

-- Location: LABCELL_X79_Y4_N27
\U|DP|REGFILE|toR5|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[10]~feeder_combout\ = ( \U|DP|muxintoregister|Mux5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux5~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[10]~feeder_combout\);

-- Location: FF_X79_Y4_N28
\U|DP|REGFILE|toR5|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[10]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(10));

-- Location: FF_X87_Y4_N17
\U|DP|REGFILE|toR6|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(10));

-- Location: FF_X87_Y4_N38
\U|DP|REGFILE|toR4|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(10));

-- Location: MLABCELL_X87_Y4_N36
\U|DP|REGFILE|chooser|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector5~1_combout\ = ( \U|DP|REGFILE|toR4|out\(10) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(10) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux1~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(10) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(10) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(10) & ( 
-- !\U|muxintoregister|Mux2~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux1~0_combout\) # (\U|DP|REGFILE|toR6|out\(10)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(10) & ( !\U|muxintoregister|Mux2~0_combout\ & ( 
-- (\U|DP|REGFILE|toR6|out\(10) & (\U|muxintoregister|Mux0~0_combout\ & \U|muxintoregister|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000001100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR5|ALT_INV_out\(10),
	datab => \U|DP|REGFILE|toR6|ALT_INV_out\(10),
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(10),
	dataf => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector5~1_combout\);

-- Location: FF_X85_Y4_N53
\U|DP|REGFILE|toR0|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(10));

-- Location: MLABCELL_X82_Y4_N27
\U|DP|REGFILE|toR1|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[10]~feeder_combout\ = ( \U|DP|muxintoregister|Mux5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux5~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[10]~feeder_combout\);

-- Location: FF_X82_Y4_N28
\U|DP|REGFILE|toR1|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[10]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(10));

-- Location: FF_X85_Y4_N31
\U|DP|REGFILE|toR3|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(10));

-- Location: FF_X85_Y4_N44
\U|DP|REGFILE|toR2|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux5~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(10));

-- Location: LABCELL_X85_Y4_N42
\U|DP|REGFILE|chooser|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector5~0_combout\ = ( \U|DP|REGFILE|toR2|out\(10) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~2_combout\) # (\U|DP|REGFILE|toR1|out\(10)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(10) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(10) & !\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(10) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(10))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(10)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(10) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(10))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR0|ALT_INV_out\(10),
	datab => \U|DP|REGFILE|toR1|ALT_INV_out\(10),
	datac => \U|DP|REGFILE|toR3|ALT_INV_out\(10),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(10),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector5~0_combout\);

-- Location: MLABCELL_X87_Y4_N3
\U|DP|REGFILE|chooser|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector5~2_combout\ = ( \U|DP|REGFILE|chooser|Selector5~0_combout\ & ( ((!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\)) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ((\U|DP|REGFILE|toR7|out\(10))))) # (\U|DP|REGFILE|chooser|Selector5~1_combout\) ) ) # ( !\U|DP|REGFILE|chooser|Selector5~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(10))) # 
-- (\U|DP|REGFILE|chooser|Selector5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111110001011111111111000101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|toR7|ALT_INV_out\(10),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector5~1_combout\,
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector5~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector5~2_combout\);

-- Location: FF_X88_Y4_N17
\U|DP|bRegister|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector5~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(10));

-- Location: LABCELL_X88_Y7_N18
\U|DP|cRegister|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[9]~feeder_combout\ = ( \U|DP|CMP|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~37_sumout\,
	combout => \U|DP|cRegister|out[9]~feeder_combout\);

-- Location: MLABCELL_X87_Y4_N12
\U|DP|CMP|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux6~0_combout\ = ( \U|instructionReg|out\(4) & ( (!\U|DP|bRegister|out\(10) & ((\U|instructionReg|out\(11)))) # (\U|DP|bRegister|out\(10) & (\U|DP|Ain[9]~9_combout\ & !\U|instructionReg|out\(11))) ) ) # ( !\U|instructionReg|out\(4) & ( 
-- (!\U|instructionReg|out\(11) & (\U|DP|Ain[9]~9_combout\ & \rtl~42_combout\)) # (\U|instructionReg|out\(11) & ((!\rtl~42_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110000000110100001101000001111001100000001101000011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(10),
	datab => \U|DP|ALT_INV_Ain[9]~9_combout\,
	datac => \U|instructionReg|ALT_INV_out\(11),
	datad => \ALT_INV_rtl~42_combout\,
	datae => \U|instructionReg|ALT_INV_out\(4),
	combout => \U|DP|CMP|Mux6~0_combout\);

-- Location: FF_X88_Y7_N20
\U|DP|cRegister|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[9]~feeder_combout\,
	asdata => \U|DP|CMP|Mux6~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(9));

-- Location: LABCELL_X88_Y7_N24
\U|DP|muxintoregister|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux6~0_combout\ = ( \U|instructionReg|out\(7) & ( \U|statemachine|WideNor1~combout\ ) ) # ( \U|instructionReg|out\(7) & ( !\U|statemachine|WideNor1~combout\ & ( \U|DP|cRegister|out\(9) ) ) ) # ( !\U|instructionReg|out\(7) & ( 
-- !\U|statemachine|WideNor1~combout\ & ( \U|DP|cRegister|out\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|cRegister|ALT_INV_out\(9),
	datae => \U|instructionReg|ALT_INV_out\(7),
	dataf => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux6~0_combout\);

-- Location: FF_X83_Y4_N1
\U|DP|REGFILE|toR5|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux6~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(9));

-- Location: FF_X83_Y4_N34
\U|DP|REGFILE|toR6|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux6~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(9));

-- Location: FF_X87_Y4_N20
\U|DP|REGFILE|toR4|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux6~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(9));

-- Location: MLABCELL_X87_Y4_N18
\U|DP|REGFILE|chooser|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector6~1_combout\ = ( \U|DP|REGFILE|toR4|out\(9) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & (\U|DP|REGFILE|toR5|out\(9) & !\U|muxintoregister|Mux1~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(9) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & (\U|DP|REGFILE|toR5|out\(9) & !\U|muxintoregister|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(9) & ( !\U|muxintoregister|Mux2~0_combout\ & 
-- ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux1~0_combout\) # (\U|DP|REGFILE|toR6|out\(9)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(9) & ( !\U|muxintoregister|Mux2~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & 
-- (\U|DP|REGFILE|toR6|out\(9) & \U|muxintoregister|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101010101010000010100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datab => \U|DP|REGFILE|toR5|ALT_INV_out\(9),
	datac => \U|DP|REGFILE|toR6|ALT_INV_out\(9),
	datad => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(9),
	dataf => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector6~1_combout\);

-- Location: MLABCELL_X82_Y4_N15
\U|DP|REGFILE|toR7|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[9]~feeder_combout\ = ( \U|DP|muxintoregister|Mux6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux6~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[9]~feeder_combout\);

-- Location: FF_X82_Y4_N16
\U|DP|REGFILE|toR7|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[9]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(9));

-- Location: FF_X85_Y4_N20
\U|DP|REGFILE|toR0|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux6~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(9));

-- Location: LABCELL_X81_Y4_N36
\U|DP|REGFILE|toR1|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[9]~feeder_combout\ = ( \U|DP|muxintoregister|Mux6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux6~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[9]~feeder_combout\);

-- Location: FF_X81_Y4_N38
\U|DP|REGFILE|toR1|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[9]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(9));

-- Location: FF_X85_Y4_N35
\U|DP|REGFILE|toR3|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux6~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(9));

-- Location: FF_X85_Y4_N2
\U|DP|REGFILE|toR2|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux6~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(9));

-- Location: LABCELL_X85_Y4_N0
\U|DP|REGFILE|chooser|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector6~0_combout\ = ( \U|DP|REGFILE|toR2|out\(9) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~2_combout\) # (\U|DP|REGFILE|toR1|out\(9)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(9) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(9) & !\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(9) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(9))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(9)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(9) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(9))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR0|ALT_INV_out\(9),
	datab => \U|DP|REGFILE|toR1|ALT_INV_out\(9),
	datac => \U|DP|REGFILE|toR3|ALT_INV_out\(9),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(9),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector6~0_combout\);

-- Location: MLABCELL_X87_Y4_N42
\U|DP|REGFILE|chooser|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector6~2_combout\ = ( \U|DP|REGFILE|chooser|Selector6~0_combout\ & ( ((!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\)) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ((\U|DP|REGFILE|toR7|out\(9))))) # (\U|DP|REGFILE|chooser|Selector6~1_combout\) ) ) # ( !\U|DP|REGFILE|chooser|Selector6~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(9))) # 
-- (\U|DP|REGFILE|chooser|Selector6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111110001111101111111000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector6~1_combout\,
	datad => \U|DP|REGFILE|toR7|ALT_INV_out\(9),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector6~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector6~2_combout\);

-- Location: FF_X88_Y4_N22
\U|DP|bRegister|out[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector6~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out[9]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y7_N3
\U|DP|cRegister|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[8]~feeder_combout\ = ( \U|DP|CMP|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~33_sumout\,
	combout => \U|DP|cRegister|out[8]~feeder_combout\);

-- Location: LABCELL_X88_Y5_N24
\U|DP|CMP|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux7~0_combout\ = ( \U|DP|Ain[8]~8_combout\ & ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & (!\rtl~41_combout\)) # (\U|instructionReg|out\(4) & ((!\U|DP|bRegister|out[9]~DUPLICATE_q\))))) ) ) # ( !\U|DP|Ain[8]~8_combout\ & ( 
-- (\U|instructionReg|out\(11) & ((!\U|instructionReg|out\(4) & (!\rtl~41_combout\)) # (\U|instructionReg|out\(4) & ((!\U|DP|bRegister|out[9]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001000000010110000100001001011011110000100101101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~41_combout\,
	datab => \U|instructionReg|ALT_INV_out\(4),
	datac => \U|instructionReg|ALT_INV_out\(11),
	datad => \U|DP|bRegister|ALT_INV_out[9]~DUPLICATE_q\,
	dataf => \U|DP|ALT_INV_Ain[8]~8_combout\,
	combout => \U|DP|CMP|Mux7~0_combout\);

-- Location: FF_X88_Y7_N5
\U|DP|cRegister|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[8]~feeder_combout\,
	asdata => \U|DP|CMP|Mux7~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(8));

-- Location: LABCELL_X88_Y7_N21
\U|DP|muxintoregister|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux7~0_combout\ = ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(7) ) ) # ( !\U|statemachine|WideNor1~combout\ & ( \U|DP|cRegister|out\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instructionReg|ALT_INV_out\(7),
	datad => \U|DP|cRegister|ALT_INV_out\(8),
	dataf => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux7~0_combout\);

-- Location: FF_X84_Y6_N40
\U|DP|REGFILE|toR7|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux7~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(8));

-- Location: FF_X85_Y6_N46
\U|DP|REGFILE|toR3|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux7~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(8));

-- Location: FF_X85_Y6_N19
\U|DP|REGFILE|toR0|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux7~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(8));

-- Location: FF_X85_Y6_N4
\U|DP|REGFILE|toR1|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux7~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(8));

-- Location: FF_X88_Y6_N56
\U|DP|REGFILE|toR2|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux7~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(8));

-- Location: LABCELL_X88_Y6_N54
\U|DP|REGFILE|chooser|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector7~0_combout\ = ( \U|DP|REGFILE|toR2|out\(8) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(8)) # (\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(8) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & \U|DP|REGFILE|toR1|out\(8)) ) ) ) # ( \U|DP|REGFILE|toR2|out\(8) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR0|out\(8)))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR3|out\(8))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(8) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR0|out\(8)))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR3|out\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR3|ALT_INV_out\(8),
	datab => \U|DP|REGFILE|toR0|ALT_INV_out\(8),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \U|DP|REGFILE|toR1|ALT_INV_out\(8),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(8),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector7~0_combout\);

-- Location: FF_X84_Y5_N5
\U|DP|REGFILE|toR6|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux7~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(8));

-- Location: LABCELL_X80_Y5_N9
\U|DP|REGFILE|toR5|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[8]~feeder_combout\ = ( \U|DP|muxintoregister|Mux7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux7~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[8]~feeder_combout\);

-- Location: FF_X80_Y5_N10
\U|DP|REGFILE|toR5|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[8]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(8));

-- Location: FF_X84_Y5_N56
\U|DP|REGFILE|toR4|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux7~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(8));

-- Location: MLABCELL_X84_Y5_N54
\U|DP|REGFILE|chooser|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector7~1_combout\ = ( \U|DP|REGFILE|toR4|out\(8) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(8) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(8) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(8) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(8) & ( !\U|muxintoregister|Mux1~0_combout\ & 
-- ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux2~0_combout\) # (\U|DP|REGFILE|toR5|out\(8)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(8) & ( !\U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & 
-- (\U|DP|REGFILE|toR5|out\(8) & \U|muxintoregister|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100110000001100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR6|ALT_INV_out\(8),
	datab => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \U|DP|REGFILE|toR5|ALT_INV_out\(8),
	datad => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(8),
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector7~1_combout\);

-- Location: LABCELL_X88_Y6_N33
\U|DP|REGFILE|chooser|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector7~2_combout\ = ( \U|DP|REGFILE|chooser|Selector7~1_combout\ ) # ( !\U|DP|REGFILE|chooser|Selector7~1_combout\ & ( (!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\ & 
-- ((\U|DP|REGFILE|chooser|Selector7~0_combout\)))) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (((\U|DP|REGFILE|toR7|out\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \U|DP|REGFILE|toR7|ALT_INV_out\(8),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector7~0_combout\,
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector7~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector7~2_combout\);

-- Location: FF_X88_Y6_N47
\U|DP|bRegister|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector7~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(8));

-- Location: LABCELL_X88_Y8_N42
\U|DP|cRegister|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[7]~feeder_combout\ = ( \U|DP|CMP|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~29_sumout\,
	combout => \U|DP|cRegister|out[7]~feeder_combout\);

-- Location: MLABCELL_X87_Y6_N36
\U|DP|CMP|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux8~0_combout\ = ( \U|DP|Ain[7]~7_combout\ & ( !\U|instructionReg|out\(11) $ (((!\U|instructionReg|out\(4) & (!\rtl~40_combout\)) # (\U|instructionReg|out\(4) & ((!\U|DP|bRegister|out\(8)))))) ) ) # ( !\U|DP|Ain[7]~7_combout\ & ( 
-- (\U|instructionReg|out\(11) & ((!\U|instructionReg|out\(4) & (!\rtl~40_combout\)) # (\U|instructionReg|out\(4) & ((!\U|DP|bRegister|out\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110000001000100011000001100110001111000110011000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~40_combout\,
	datab => \U|instructionReg|ALT_INV_out\(11),
	datac => \U|DP|bRegister|ALT_INV_out\(8),
	datad => \U|instructionReg|ALT_INV_out\(4),
	dataf => \U|DP|ALT_INV_Ain[7]~7_combout\,
	combout => \U|DP|CMP|Mux8~0_combout\);

-- Location: FF_X88_Y8_N43
\U|DP|cRegister|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[7]~feeder_combout\,
	asdata => \U|DP|CMP|Mux8~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(7));

-- Location: MLABCELL_X84_Y7_N36
\U|DP|muxintoregister|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux8~0_combout\ = ( \U|DP|cRegister|out\(7) & ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(7) ) ) ) # ( !\U|DP|cRegister|out\(7) & ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(7) ) ) ) # ( 
-- \U|DP|cRegister|out\(7) & ( !\U|statemachine|WideNor1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(7),
	datae => \U|DP|cRegister|ALT_INV_out\(7),
	dataf => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux8~0_combout\);

-- Location: LABCELL_X85_Y6_N36
\U|DP|REGFILE|toR0|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR0|out[7]~feeder_combout\ = ( \U|DP|muxintoregister|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \U|DP|REGFILE|toR0|out[7]~feeder_combout\);

-- Location: FF_X85_Y6_N37
\U|DP|REGFILE|toR0|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR0|out[7]~feeder_combout\,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(7));

-- Location: MLABCELL_X84_Y6_N21
\U|DP|REGFILE|toR1|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[7]~feeder_combout\ = ( \U|DP|muxintoregister|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[7]~feeder_combout\);

-- Location: FF_X84_Y6_N22
\U|DP|REGFILE|toR1|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[7]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(7));

-- Location: LABCELL_X85_Y6_N54
\U|DP|REGFILE|toR3|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR3|out[7]~feeder_combout\ = ( \U|DP|muxintoregister|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \U|DP|REGFILE|toR3|out[7]~feeder_combout\);

-- Location: FF_X85_Y6_N55
\U|DP|REGFILE|toR3|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR3|out[7]~feeder_combout\,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(7));

-- Location: FF_X88_Y6_N20
\U|DP|REGFILE|toR2|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux8~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(7));

-- Location: LABCELL_X88_Y6_N18
\U|DP|REGFILE|chooser|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector8~0_combout\ = ( \U|DP|REGFILE|toR2|out\(7) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~2_combout\) # (\U|DP|REGFILE|toR1|out\(7)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(7) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(7) & !\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(7) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(7))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(7)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(7) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(7))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR0|ALT_INV_out\(7),
	datab => \U|DP|REGFILE|toR1|ALT_INV_out\(7),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \U|DP|REGFILE|toR3|ALT_INV_out\(7),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(7),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector8~0_combout\);

-- Location: MLABCELL_X84_Y6_N0
\U|DP|REGFILE|toR7|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[7]~feeder_combout\ = ( \U|DP|muxintoregister|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[7]~feeder_combout\);

-- Location: FF_X84_Y6_N1
\U|DP|REGFILE|toR7|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[7]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(7));

-- Location: LABCELL_X83_Y3_N21
\U|DP|REGFILE|toR5|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[7]~feeder_combout\ = ( \U|DP|muxintoregister|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[7]~feeder_combout\);

-- Location: FF_X83_Y3_N23
\U|DP|REGFILE|toR5|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[7]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(7));

-- Location: LABCELL_X80_Y5_N12
\U|DP|REGFILE|toR6|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR6|out[7]~feeder_combout\ = ( \U|DP|muxintoregister|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux8~0_combout\,
	combout => \U|DP|REGFILE|toR6|out[7]~feeder_combout\);

-- Location: FF_X80_Y5_N13
\U|DP|REGFILE|toR6|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR6|out[7]~feeder_combout\,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(7));

-- Location: FF_X84_Y5_N26
\U|DP|REGFILE|toR4|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux8~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(7));

-- Location: MLABCELL_X84_Y5_N24
\U|DP|REGFILE|chooser|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector8~1_combout\ = ( \U|DP|REGFILE|toR4|out\(7) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(7) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(7) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(7) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(7) & ( !\U|muxintoregister|Mux1~0_combout\ & 
-- ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux2~0_combout\) # (\U|DP|REGFILE|toR5|out\(7)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(7) & ( !\U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(7) & 
-- (\U|muxintoregister|Mux0~0_combout\ & \U|muxintoregister|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000011110000010100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR5|ALT_INV_out\(7),
	datab => \U|DP|REGFILE|toR6|ALT_INV_out\(7),
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(7),
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector8~1_combout\);

-- Location: LABCELL_X88_Y6_N48
\U|DP|REGFILE|chooser|Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector8~2_combout\ = ( \U|DP|REGFILE|chooser|Selector8~1_combout\ ) # ( !\U|DP|REGFILE|chooser|Selector8~1_combout\ & ( (!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\ & 
-- (\U|DP|REGFILE|chooser|Selector8~0_combout\))) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (((\U|DP|REGFILE|toR7|out\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector8~0_combout\,
	datad => \U|DP|REGFILE|toR7|ALT_INV_out\(7),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector8~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector8~2_combout\);

-- Location: FF_X88_Y6_N44
\U|DP|bRegister|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector8~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(7));

-- Location: LABCELL_X88_Y8_N27
\U|DP|cRegister|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[6]~feeder_combout\ = ( \U|DP|CMP|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~25_sumout\,
	combout => \U|DP|cRegister|out[6]~feeder_combout\);

-- Location: LABCELL_X88_Y6_N6
\rtl~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~39_combout\ = ( \U|DP|bRegister|out\(7) & ( ((!\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(6)))) # (\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(5)))) # (\U|instructionReg|out\(4)) ) ) # ( !\U|DP|bRegister|out\(7) & ( 
-- (!\U|instructionReg|out\(4) & ((!\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(6)))) # (\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(5),
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(6),
	datad => \U|instructionReg|ALT_INV_out\(4),
	dataf => \U|DP|bRegister|ALT_INV_out\(7),
	combout => \rtl~39_combout\);

-- Location: MLABCELL_X87_Y6_N54
\U|DP|CMP|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux9~0_combout\ = ( \U|DP|Ain[6]~6_combout\ & ( !\U|instructionReg|out\(11) $ (!\rtl~39_combout\) ) ) # ( !\U|DP|Ain[6]~6_combout\ & ( (\U|instructionReg|out\(11) & !\rtl~39_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(11),
	datad => \ALT_INV_rtl~39_combout\,
	dataf => \U|DP|ALT_INV_Ain[6]~6_combout\,
	combout => \U|DP|CMP|Mux9~0_combout\);

-- Location: FF_X88_Y8_N29
\U|DP|cRegister|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[6]~feeder_combout\,
	asdata => \U|DP|CMP|Mux9~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(6));

-- Location: LABCELL_X85_Y3_N9
\U|DP|muxintoregister|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux9~0_combout\ = ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(6) ) ) # ( !\U|statemachine|WideNor1~combout\ & ( \U|DP|cRegister|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|cRegister|ALT_INV_out\(6),
	datac => \U|instructionReg|ALT_INV_out\(6),
	datae => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux9~0_combout\);

-- Location: LABCELL_X81_Y6_N48
\U|DP|REGFILE|toR7|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[6]~feeder_combout\ = ( \U|DP|muxintoregister|Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux9~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[6]~feeder_combout\);

-- Location: FF_X81_Y6_N49
\U|DP|REGFILE|toR7|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[6]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(6));

-- Location: FF_X84_Y5_N2
\U|DP|REGFILE|toR6|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(6));

-- Location: FF_X85_Y3_N41
\U|DP|REGFILE|toR5|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(6));

-- Location: FF_X85_Y5_N35
\U|DP|REGFILE|toR4|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(6));

-- Location: LABCELL_X85_Y5_N33
\U|DP|REGFILE|chooser|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector9~1_combout\ = ( \U|DP|REGFILE|toR4|out\(6) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(6) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(6) & ( \U|muxintoregister|Mux1~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(6) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux2~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(6) & ( !\U|muxintoregister|Mux1~0_combout\ & 
-- ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux2~0_combout\) # (\U|DP|REGFILE|toR5|out\(6)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(6) & ( !\U|muxintoregister|Mux1~0_combout\ & ( (\U|muxintoregister|Mux0~0_combout\ & 
-- (\U|DP|REGFILE|toR5|out\(6) & \U|muxintoregister|Mux2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100110000001100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR6|ALT_INV_out\(6),
	datab => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datac => \U|DP|REGFILE|toR5|ALT_INV_out\(6),
	datad => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(6),
	dataf => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector9~1_combout\);

-- Location: LABCELL_X85_Y6_N33
\U|DP|REGFILE|toR0|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR0|out[6]~feeder_combout\ = ( \U|DP|muxintoregister|Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux9~0_combout\,
	combout => \U|DP|REGFILE|toR0|out[6]~feeder_combout\);

-- Location: FF_X85_Y6_N34
\U|DP|REGFILE|toR0|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR0|out[6]~feeder_combout\,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(6));

-- Location: LABCELL_X85_Y6_N42
\U|DP|REGFILE|toR3|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR3|out[6]~feeder_combout\ = ( \U|DP|muxintoregister|Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux9~0_combout\,
	combout => \U|DP|REGFILE|toR3|out[6]~feeder_combout\);

-- Location: FF_X85_Y6_N43
\U|DP|REGFILE|toR3|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR3|out[6]~feeder_combout\,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(6));

-- Location: LABCELL_X85_Y6_N24
\U|DP|REGFILE|toR1|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[6]~feeder_combout\ = ( \U|DP|muxintoregister|Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux9~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[6]~feeder_combout\);

-- Location: FF_X85_Y6_N25
\U|DP|REGFILE|toR1|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[6]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(6));

-- Location: FF_X88_Y6_N14
\U|DP|REGFILE|toR2|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux9~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(6));

-- Location: LABCELL_X88_Y6_N12
\U|DP|REGFILE|chooser|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector9~0_combout\ = ( \U|DP|REGFILE|toR2|out\(6) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(6)) # (\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(6) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & \U|DP|REGFILE|toR1|out\(6)) ) ) ) # ( \U|DP|REGFILE|toR2|out\(6) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(6))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(6)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(6) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(6))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR0|ALT_INV_out\(6),
	datab => \U|DP|REGFILE|toR3|ALT_INV_out\(6),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \U|DP|REGFILE|toR1|ALT_INV_out\(6),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(6),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector9~0_combout\);

-- Location: LABCELL_X88_Y6_N51
\U|DP|REGFILE|chooser|Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector9~2_combout\ = ( \U|DP|REGFILE|chooser|Selector9~0_combout\ & ( ((!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\)) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ((\U|DP|REGFILE|toR7|out\(6))))) # (\U|DP|REGFILE|chooser|Selector9~1_combout\) ) ) # ( !\U|DP|REGFILE|chooser|Selector9~0_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(6))) # 
-- (\U|DP|REGFILE|chooser|Selector9~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111110001101111111111000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \U|DP|REGFILE|toR7|ALT_INV_out\(6),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector9~1_combout\,
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector9~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector9~2_combout\);

-- Location: FF_X87_Y5_N38
\U|DP|bRegister|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector9~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(6));

-- Location: LABCELL_X88_Y8_N54
\U|DP|cRegister|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[5]~feeder_combout\ = ( \U|DP|CMP|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~21_sumout\,
	combout => \U|DP|cRegister|out[5]~feeder_combout\);

-- Location: LABCELL_X88_Y6_N9
\rtl~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~38_combout\ = ( \U|DP|bRegister|out\(6) & ( ((!\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(5))) # (\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(4))))) # (\U|instructionReg|out\(4)) ) ) # ( !\U|DP|bRegister|out\(6) & ( 
-- (!\U|instructionReg|out\(4) & ((!\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(5))) # (\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000001000111111111110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(5),
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(4),
	datad => \U|instructionReg|ALT_INV_out\(4),
	dataf => \U|DP|bRegister|ALT_INV_out\(6),
	combout => \rtl~38_combout\);

-- Location: LABCELL_X88_Y8_N57
\U|DP|CMP|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux10~0_combout\ = ( \U|DP|Ain[5]~5_combout\ & ( !\U|instructionReg|out\(11) $ (!\rtl~38_combout\) ) ) # ( !\U|DP|Ain[5]~5_combout\ & ( (\U|instructionReg|out\(11) & !\rtl~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instructionReg|ALT_INV_out\(11),
	datad => \ALT_INV_rtl~38_combout\,
	dataf => \U|DP|ALT_INV_Ain[5]~5_combout\,
	combout => \U|DP|CMP|Mux10~0_combout\);

-- Location: FF_X88_Y8_N55
\U|DP|cRegister|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[5]~feeder_combout\,
	asdata => \U|DP|CMP|Mux10~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(5));

-- Location: LABCELL_X83_Y3_N45
\U|DP|muxintoregister|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux10~0_combout\ = ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(5) ) ) # ( !\U|statemachine|WideNor1~combout\ & ( \U|DP|cRegister|out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|cRegister|ALT_INV_out\(5),
	datad => \U|instructionReg|ALT_INV_out\(5),
	dataf => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux10~0_combout\);

-- Location: MLABCELL_X82_Y5_N36
\U|DP|REGFILE|toR5|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[5]~feeder_combout\ = ( \U|DP|muxintoregister|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux10~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[5]~feeder_combout\);

-- Location: FF_X82_Y5_N37
\U|DP|REGFILE|toR5|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[5]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(5));

-- Location: MLABCELL_X82_Y5_N45
\U|DP|REGFILE|toR6|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR6|out[5]~feeder_combout\ = ( \U|DP|muxintoregister|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux10~0_combout\,
	combout => \U|DP|REGFILE|toR6|out[5]~feeder_combout\);

-- Location: FF_X82_Y5_N46
\U|DP|REGFILE|toR6|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR6|out[5]~feeder_combout\,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(5));

-- Location: FF_X84_Y5_N44
\U|DP|REGFILE|toR4|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(5));

-- Location: MLABCELL_X84_Y5_N42
\U|DP|REGFILE|chooser|Selector10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector10~4_combout\ = ( \U|DP|REGFILE|toR4|out\(5) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(5) & (!\U|muxintoregister|Mux1~0_combout\ & \U|muxintoregister|Mux0~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(5) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(5) & (!\U|muxintoregister|Mux1~0_combout\ & \U|muxintoregister|Mux0~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(5) & ( !\U|muxintoregister|Mux2~0_combout\ & 
-- ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux1~0_combout\) # (\U|DP|REGFILE|toR6|out\(5)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(5) & ( !\U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(5) & 
-- (\U|muxintoregister|Mux1~0_combout\ & \U|muxintoregister|Mux0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000001111001100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR5|ALT_INV_out\(5),
	datab => \U|DP|REGFILE|toR6|ALT_INV_out\(5),
	datac => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(5),
	dataf => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector10~4_combout\);

-- Location: LABCELL_X83_Y5_N30
\U|DP|REGFILE|toR7|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[5]~feeder_combout\ = ( \U|DP|muxintoregister|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux10~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[5]~feeder_combout\);

-- Location: FF_X83_Y5_N32
\U|DP|REGFILE|toR7|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[5]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(5));

-- Location: LABCELL_X80_Y4_N36
\U|DP|REGFILE|toR3|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR3|out[5]~feeder_combout\ = ( \U|DP|muxintoregister|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux10~0_combout\,
	combout => \U|DP|REGFILE|toR3|out[5]~feeder_combout\);

-- Location: FF_X80_Y4_N37
\U|DP|REGFILE|toR3|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR3|out[5]~feeder_combout\,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(5));

-- Location: FF_X85_Y4_N22
\U|DP|REGFILE|toR0|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(5));

-- Location: FF_X81_Y4_N10
\U|DP|REGFILE|toR1|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(5));

-- Location: FF_X85_Y4_N41
\U|DP|REGFILE|toR2|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux10~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(5));

-- Location: LABCELL_X85_Y4_N39
\U|DP|REGFILE|chooser|Selector10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector10~3_combout\ = ( \U|DP|REGFILE|toR2|out\(5) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~2_combout\) # (\U|DP|REGFILE|toR1|out\(5)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(5) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(5) & !\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(5) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR0|out\(5)))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR3|out\(5))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(5) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR0|out\(5)))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR3|out\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR3|ALT_INV_out\(5),
	datab => \U|DP|REGFILE|toR0|ALT_INV_out\(5),
	datac => \U|DP|REGFILE|toR1|ALT_INV_out\(5),
	datad => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(5),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector10~3_combout\);

-- Location: LABCELL_X85_Y5_N27
\U|DP|REGFILE|chooser|Selector10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector10~5_combout\ = ( \U|DP|REGFILE|chooser|Selector10~3_combout\ & ( ((!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\)) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & 
-- ((\U|DP|REGFILE|toR7|out\(5))))) # (\U|DP|REGFILE|chooser|Selector10~4_combout\) ) ) # ( !\U|DP|REGFILE|chooser|Selector10~3_combout\ & ( ((\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & \U|DP|REGFILE|toR7|out\(5))) # 
-- (\U|DP|REGFILE|chooser|Selector10~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111110001111110111111000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~4_combout\,
	datad => \U|DP|REGFILE|toR7|ALT_INV_out\(5),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~3_combout\,
	combout => \U|DP|REGFILE|chooser|Selector10~5_combout\);

-- Location: FF_X87_Y5_N41
\U|DP|bRegister|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector10~5_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(5));

-- Location: LABCELL_X88_Y8_N3
\U|DP|cRegister|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[4]~feeder_combout\ = ( \U|DP|CMP|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~17_sumout\,
	combout => \U|DP|cRegister|out[4]~feeder_combout\);

-- Location: LABCELL_X88_Y6_N39
\rtl~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~37_combout\ = ( \U|DP|bRegister|out\(3) & ( (!\U|instructionReg|out\(4) & (((\U|DP|bRegister|out\(4)) # (\U|instructionReg|out\(3))))) # (\U|instructionReg|out\(4) & (\U|DP|bRegister|out\(5))) ) ) # ( !\U|DP|bRegister|out\(3) & ( 
-- (!\U|instructionReg|out\(4) & (((!\U|instructionReg|out\(3) & \U|DP|bRegister|out\(4))))) # (\U|instructionReg|out\(4) & (\U|DP|bRegister|out\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100110101111101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(5),
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|instructionReg|ALT_INV_out\(4),
	datad => \U|DP|bRegister|ALT_INV_out\(4),
	dataf => \U|DP|bRegister|ALT_INV_out\(3),
	combout => \rtl~37_combout\);

-- Location: LABCELL_X88_Y8_N0
\U|DP|CMP|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux11~0_combout\ = ( \U|DP|Ain[4]~4_combout\ & ( !\U|instructionReg|out\(11) $ (!\rtl~37_combout\) ) ) # ( !\U|DP|Ain[4]~4_combout\ & ( (\U|instructionReg|out\(11) & !\rtl~37_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(11),
	datac => \ALT_INV_rtl~37_combout\,
	dataf => \U|DP|ALT_INV_Ain[4]~4_combout\,
	combout => \U|DP|CMP|Mux11~0_combout\);

-- Location: FF_X88_Y8_N4
\U|DP|cRegister|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[4]~feeder_combout\,
	asdata => \U|DP|CMP|Mux11~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(4));

-- Location: MLABCELL_X82_Y4_N33
\U|DP|muxintoregister|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux11~0_combout\ = ( \U|DP|cRegister|out\(4) & ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(4) ) ) ) # ( !\U|DP|cRegister|out\(4) & ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(4) ) ) ) # ( 
-- \U|DP|cRegister|out\(4) & ( !\U|statemachine|WideNor1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instructionReg|ALT_INV_out\(4),
	datae => \U|DP|cRegister|ALT_INV_out\(4),
	dataf => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux11~0_combout\);

-- Location: MLABCELL_X82_Y3_N42
\U|DP|REGFILE|toR3|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR3|out[4]~feeder_combout\ = ( \U|DP|muxintoregister|Mux11~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux11~0_combout\,
	combout => \U|DP|REGFILE|toR3|out[4]~feeder_combout\);

-- Location: FF_X82_Y3_N43
\U|DP|REGFILE|toR3|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR3|out[4]~feeder_combout\,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(4));

-- Location: MLABCELL_X82_Y3_N24
\U|DP|REGFILE|toR1|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[4]~feeder_combout\ = ( \U|DP|muxintoregister|Mux11~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux11~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[4]~feeder_combout\);

-- Location: FF_X82_Y3_N25
\U|DP|REGFILE|toR1|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[4]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(4));

-- Location: FF_X87_Y3_N59
\U|DP|REGFILE|toR0|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(4));

-- Location: FF_X87_Y3_N50
\U|DP|REGFILE|toR2|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(4));

-- Location: MLABCELL_X87_Y3_N48
\U|DP|REGFILE|chooser|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector11~0_combout\ = ( \U|DP|REGFILE|toR2|out\(4) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~2_combout\) # (\U|DP|REGFILE|toR1|out\(4)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(4) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(4) & !\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(4) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR0|out\(4)))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR3|out\(4))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(4) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR0|out\(4)))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR3|out\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR3|ALT_INV_out\(4),
	datab => \U|DP|REGFILE|toR1|ALT_INV_out\(4),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \U|DP|REGFILE|toR0|ALT_INV_out\(4),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(4),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector11~0_combout\);

-- Location: FF_X81_Y4_N25
\U|DP|REGFILE|toR7|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(4));

-- Location: LABCELL_X83_Y3_N18
\U|DP|REGFILE|toR5|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[4]~feeder_combout\ = ( \U|DP|muxintoregister|Mux11~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux11~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[4]~feeder_combout\);

-- Location: FF_X83_Y3_N19
\U|DP|REGFILE|toR5|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[4]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(4));

-- Location: MLABCELL_X87_Y4_N57
\U|DP|REGFILE|toR6|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR6|out[4]~feeder_combout\ = ( \U|DP|muxintoregister|Mux11~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux11~0_combout\,
	combout => \U|DP|REGFILE|toR6|out[4]~feeder_combout\);

-- Location: FF_X87_Y4_N59
\U|DP|REGFILE|toR6|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR6|out[4]~feeder_combout\,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(4));

-- Location: FF_X87_Y4_N26
\U|DP|REGFILE|toR4|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux11~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(4));

-- Location: MLABCELL_X87_Y4_N24
\U|DP|REGFILE|chooser|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector11~1_combout\ = ( \U|DP|REGFILE|toR4|out\(4) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(4) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux1~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(4) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(4) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(4) & ( !\U|muxintoregister|Mux2~0_combout\ & 
-- ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux1~0_combout\) # (\U|DP|REGFILE|toR6|out\(4)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(4) & ( !\U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(4) & 
-- (\U|muxintoregister|Mux0~0_combout\ & \U|muxintoregister|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000001100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR5|ALT_INV_out\(4),
	datab => \U|DP|REGFILE|toR6|ALT_INV_out\(4),
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(4),
	dataf => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector11~1_combout\);

-- Location: MLABCELL_X87_Y4_N45
\U|DP|REGFILE|chooser|Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector11~2_combout\ = ( \U|DP|REGFILE|chooser|Selector11~1_combout\ ) # ( !\U|DP|REGFILE|chooser|Selector11~1_combout\ & ( (!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\ & 
-- (\U|DP|REGFILE|chooser|Selector11~0_combout\))) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (((\U|DP|REGFILE|toR7|out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector11~0_combout\,
	datad => \U|DP|REGFILE|toR7|ALT_INV_out\(4),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector11~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector11~2_combout\);

-- Location: FF_X87_Y5_N26
\U|DP|bRegister|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector11~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(4));

-- Location: LABCELL_X88_Y3_N0
\U|DP|cRegister|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[3]~feeder_combout\ = ( \U|DP|CMP|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~13_sumout\,
	combout => \U|DP|cRegister|out[3]~feeder_combout\);

-- Location: LABCELL_X88_Y6_N3
\rtl~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~36_combout\ = ( \U|DP|bRegister|out\(4) & ( ((!\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(3)))) # (\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(2)))) # (\U|instructionReg|out\(4)) ) ) # ( !\U|DP|bRegister|out\(4) & ( 
-- (!\U|instructionReg|out\(4) & ((!\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(3)))) # (\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(4),
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(2),
	datad => \U|DP|bRegister|ALT_INV_out\(3),
	datae => \U|DP|bRegister|ALT_INV_out\(4),
	combout => \rtl~36_combout\);

-- Location: MLABCELL_X84_Y4_N3
\U|DP|CMP|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux12~0_combout\ = ( \U|instructionReg|out\(11) & ( !\rtl~36_combout\ ) ) # ( !\U|instructionReg|out\(11) & ( (\rtl~36_combout\ & \U|DP|Ain[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~36_combout\,
	datad => \U|DP|ALT_INV_Ain[3]~3_combout\,
	dataf => \U|instructionReg|ALT_INV_out\(11),
	combout => \U|DP|CMP|Mux12~0_combout\);

-- Location: FF_X88_Y3_N1
\U|DP|cRegister|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[3]~feeder_combout\,
	asdata => \U|DP|CMP|Mux12~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(3));

-- Location: LABCELL_X83_Y3_N27
\U|DP|muxintoregister|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|muxintoregister|Mux12~0_combout\ = ( \U|DP|cRegister|out\(3) & ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(3) ) ) ) # ( !\U|DP|cRegister|out\(3) & ( \U|statemachine|WideNor1~combout\ & ( \U|instructionReg|out\(3) ) ) ) # ( 
-- \U|DP|cRegister|out\(3) & ( !\U|statemachine|WideNor1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instructionReg|ALT_INV_out\(3),
	datae => \U|DP|cRegister|ALT_INV_out\(3),
	dataf => \U|statemachine|ALT_INV_WideNor1~combout\,
	combout => \U|DP|muxintoregister|Mux12~0_combout\);

-- Location: MLABCELL_X87_Y3_N33
\U|DP|REGFILE|toR0|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR0|out[3]~feeder_combout\ = ( \U|DP|muxintoregister|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \U|DP|REGFILE|toR0|out[3]~feeder_combout\);

-- Location: FF_X87_Y3_N35
\U|DP|REGFILE|toR0|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR0|out[3]~feeder_combout\,
	ena => \U|DP|REGFILE|load0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR0|out\(3));

-- Location: LABCELL_X81_Y3_N36
\U|DP|REGFILE|toR1|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR1|out[3]~feeder_combout\ = ( \U|DP|muxintoregister|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \U|DP|REGFILE|toR1|out[3]~feeder_combout\);

-- Location: FF_X81_Y3_N37
\U|DP|REGFILE|toR1|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR1|out[3]~feeder_combout\,
	ena => \U|DP|REGFILE|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR1|out\(3));

-- Location: FF_X87_Y3_N14
\U|DP|REGFILE|toR3|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR3|out\(3));

-- Location: FF_X87_Y3_N26
\U|DP|REGFILE|toR2|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR2|out\(3));

-- Location: MLABCELL_X87_Y3_N24
\U|DP|REGFILE|chooser|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector12~0_combout\ = ( \U|DP|REGFILE|toR2|out\(3) & ( \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|chooser|Selector10~2_combout\) # (\U|DP|REGFILE|toR1|out\(3)) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(3) & ( 
-- \U|DP|REGFILE|chooser|Selector10~1_combout\ & ( (\U|DP|REGFILE|toR1|out\(3) & !\U|DP|REGFILE|chooser|Selector10~2_combout\) ) ) ) # ( \U|DP|REGFILE|toR2|out\(3) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(3))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(3)))) ) ) ) # ( !\U|DP|REGFILE|toR2|out\(3) & ( !\U|DP|REGFILE|chooser|Selector10~1_combout\ & ( 
-- (!\U|DP|REGFILE|chooser|Selector10~2_combout\ & (\U|DP|REGFILE|toR0|out\(3))) # (\U|DP|REGFILE|chooser|Selector10~2_combout\ & ((\U|DP|REGFILE|toR3|out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR0|ALT_INV_out\(3),
	datab => \U|DP|REGFILE|toR1|ALT_INV_out\(3),
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector10~2_combout\,
	datad => \U|DP|REGFILE|toR3|ALT_INV_out\(3),
	datae => \U|DP|REGFILE|toR2|ALT_INV_out\(3),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector10~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector12~0_combout\);

-- Location: MLABCELL_X82_Y4_N12
\U|DP|REGFILE|toR7|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR7|out[3]~feeder_combout\ = ( \U|DP|muxintoregister|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \U|DP|REGFILE|toR7|out[3]~feeder_combout\);

-- Location: FF_X82_Y4_N13
\U|DP|REGFILE|toR7|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR7|out[3]~feeder_combout\,
	ena => \U|DP|REGFILE|load7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR7|out\(3));

-- Location: MLABCELL_X87_Y4_N54
\U|DP|REGFILE|toR6|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR6|out[3]~feeder_combout\ = ( \U|DP|muxintoregister|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \U|DP|REGFILE|toR6|out[3]~feeder_combout\);

-- Location: FF_X87_Y4_N56
\U|DP|REGFILE|toR6|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR6|out[3]~feeder_combout\,
	ena => \U|DP|REGFILE|load6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR6|out\(3));

-- Location: LABCELL_X83_Y4_N36
\U|DP|REGFILE|toR5|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|toR5|out[3]~feeder_combout\ = ( \U|DP|muxintoregister|Mux12~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|muxintoregister|ALT_INV_Mux12~0_combout\,
	combout => \U|DP|REGFILE|toR5|out[3]~feeder_combout\);

-- Location: FF_X83_Y4_N37
\U|DP|REGFILE|toR5|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|toR5|out[3]~feeder_combout\,
	ena => \U|DP|REGFILE|load5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR5|out\(3));

-- Location: FF_X87_Y4_N50
\U|DP|REGFILE|toR4|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|muxintoregister|Mux12~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|load4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|toR4|out\(3));

-- Location: MLABCELL_X87_Y4_N48
\U|DP|REGFILE|chooser|Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector12~1_combout\ = ( \U|DP|REGFILE|toR4|out\(3) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(3) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux1~0_combout\)) ) ) ) # ( 
-- !\U|DP|REGFILE|toR4|out\(3) & ( \U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR5|out\(3) & (\U|muxintoregister|Mux0~0_combout\ & !\U|muxintoregister|Mux1~0_combout\)) ) ) ) # ( \U|DP|REGFILE|toR4|out\(3) & ( !\U|muxintoregister|Mux2~0_combout\ & 
-- ( (\U|muxintoregister|Mux0~0_combout\ & ((!\U|muxintoregister|Mux1~0_combout\) # (\U|DP|REGFILE|toR6|out\(3)))) ) ) ) # ( !\U|DP|REGFILE|toR4|out\(3) & ( !\U|muxintoregister|Mux2~0_combout\ & ( (\U|DP|REGFILE|toR6|out\(3) & 
-- (\U|muxintoregister|Mux0~0_combout\ & \U|muxintoregister|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000011110000010100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|toR6|ALT_INV_out\(3),
	datab => \U|DP|REGFILE|toR5|ALT_INV_out\(3),
	datac => \U|muxintoregister|ALT_INV_Mux0~0_combout\,
	datad => \U|muxintoregister|ALT_INV_Mux1~0_combout\,
	datae => \U|DP|REGFILE|toR4|ALT_INV_out\(3),
	dataf => \U|muxintoregister|ALT_INV_Mux2~0_combout\,
	combout => \U|DP|REGFILE|chooser|Selector12~1_combout\);

-- Location: MLABCELL_X87_Y4_N0
\U|DP|REGFILE|chooser|Selector12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|chooser|Selector12~2_combout\ = ( \U|DP|REGFILE|chooser|Selector12~1_combout\ ) # ( !\U|DP|REGFILE|chooser|Selector12~1_combout\ & ( (!\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (!\U|DP|REGFILE|chooser|Selector10~0_combout\ & 
-- (\U|DP|REGFILE|chooser|Selector12~0_combout\))) # (\U|DP|REGFILE|decodetomux|ShiftLeft0~0_combout\ & (((\U|DP|REGFILE|toR7|out\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|chooser|ALT_INV_Selector10~0_combout\,
	datab => \U|DP|REGFILE|decodetomux|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|chooser|ALT_INV_Selector12~0_combout\,
	datad => \U|DP|REGFILE|toR7|ALT_INV_out\(3),
	dataf => \U|DP|REGFILE|chooser|ALT_INV_Selector12~1_combout\,
	combout => \U|DP|REGFILE|chooser|Selector12~2_combout\);

-- Location: FF_X87_Y5_N29
\U|DP|bRegister|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|chooser|Selector12~2_combout\,
	sload => VCC,
	ena => \U|statemachine|WideOr17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|bRegister|out\(3));

-- Location: LABCELL_X88_Y3_N45
\U|DP|cRegister|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|cRegister|out[2]~feeder_combout\ = ( \U|DP|CMP|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~9_sumout\,
	combout => \U|DP|cRegister|out[2]~feeder_combout\);

-- Location: LABCELL_X88_Y6_N42
\rtl~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~35_combout\ = ( \U|instructionReg|out\(4) & ( \U|DP|bRegister|out\(3) ) ) # ( !\U|instructionReg|out\(4) & ( (!\U|instructionReg|out\(3) & ((\U|DP|bRegister|out\(2)))) # (\U|instructionReg|out\(3) & (\U|DP|bRegister|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(1),
	datab => \U|instructionReg|ALT_INV_out\(3),
	datac => \U|DP|bRegister|ALT_INV_out\(3),
	datad => \U|DP|bRegister|ALT_INV_out\(2),
	dataf => \U|instructionReg|ALT_INV_out\(4),
	combout => \rtl~35_combout\);

-- Location: MLABCELL_X87_Y6_N27
\U|DP|CMP|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Mux13~0_combout\ = ( \rtl~35_combout\ & ( (\U|DP|Ain[2]~2_combout\ & !\U|instructionReg|out\(11)) ) ) # ( !\rtl~35_combout\ & ( \U|instructionReg|out\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|ALT_INV_Ain[2]~2_combout\,
	datac => \U|instructionReg|ALT_INV_out\(11),
	dataf => \ALT_INV_rtl~35_combout\,
	combout => \U|DP|CMP|Mux13~0_combout\);

-- Location: FF_X88_Y3_N46
\U|DP|cRegister|out[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[2]~feeder_combout\,
	asdata => \U|DP|CMP|Mux13~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out[2]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y3_N0
\H0|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = ( \U|DP|cRegister|out\(3) & ( \U|DP|cRegister|out\(0) & ( !\U|DP|cRegister|out[2]~DUPLICATE_q\ $ (!\U|DP|cRegister|out\(1)) ) ) ) # ( !\U|DP|cRegister|out\(3) & ( \U|DP|cRegister|out\(0) & ( (!\U|DP|cRegister|out[2]~DUPLICATE_q\ & 
-- !\U|DP|cRegister|out\(1)) ) ) ) # ( \U|DP|cRegister|out\(3) & ( !\U|DP|cRegister|out\(0) & ( (\U|DP|cRegister|out[2]~DUPLICATE_q\ & !\U|DP|cRegister|out\(1)) ) ) ) # ( !\U|DP|cRegister|out\(3) & ( !\U|DP|cRegister|out\(0) & ( 
-- (\U|DP|cRegister|out[2]~DUPLICATE_q\ & !\U|DP|cRegister|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000010100000101000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out[2]~DUPLICATE_q\,
	datac => \U|DP|cRegister|ALT_INV_out\(1),
	datae => \U|DP|cRegister|ALT_INV_out\(3),
	dataf => \U|DP|cRegister|ALT_INV_out\(0),
	combout => \H0|WideOr6~0_combout\);

-- Location: MLABCELL_X87_Y3_N12
\H0|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = ( \U|DP|cRegister|out[2]~DUPLICATE_q\ & ( (!\U|DP|cRegister|out\(1) & (!\U|DP|cRegister|out\(0) $ (!\U|DP|cRegister|out\(3)))) # (\U|DP|cRegister|out\(1) & ((!\U|DP|cRegister|out\(0)) # (\U|DP|cRegister|out\(3)))) ) ) # ( 
-- !\U|DP|cRegister|out[2]~DUPLICATE_q\ & ( (\U|DP|cRegister|out\(1) & (\U|DP|cRegister|out\(0) & \U|DP|cRegister|out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(1),
	datac => \U|DP|cRegister|ALT_INV_out\(0),
	datad => \U|DP|cRegister|ALT_INV_out\(3),
	dataf => \U|DP|cRegister|ALT_INV_out[2]~DUPLICATE_q\,
	combout => \H0|WideOr5~0_combout\);

-- Location: LABCELL_X83_Y3_N57
\H0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = ( \U|DP|cRegister|out[2]~DUPLICATE_q\ & ( \U|DP|cRegister|out\(0) & ( (\U|DP|cRegister|out\(1) & \U|DP|cRegister|out\(3)) ) ) ) # ( \U|DP|cRegister|out[2]~DUPLICATE_q\ & ( !\U|DP|cRegister|out\(0) & ( (\U|DP|cRegister|out\(1) & 
-- \U|DP|cRegister|out\(3)) ) ) ) # ( !\U|DP|cRegister|out[2]~DUPLICATE_q\ & ( !\U|DP|cRegister|out\(0) & ( (\U|DP|cRegister|out\(1) & !\U|DP|cRegister|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000000000101010100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(1),
	datad => \U|DP|cRegister|ALT_INV_out\(3),
	datae => \U|DP|cRegister|ALT_INV_out[2]~DUPLICATE_q\,
	dataf => \U|DP|cRegister|ALT_INV_out\(0),
	combout => \H0|WideOr4~0_combout\);

-- Location: MLABCELL_X87_Y3_N6
\H0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = ( \U|DP|cRegister|out\(0) & ( \U|DP|cRegister|out[2]~DUPLICATE_q\ & ( \U|DP|cRegister|out\(1) ) ) ) # ( !\U|DP|cRegister|out\(0) & ( \U|DP|cRegister|out[2]~DUPLICATE_q\ & ( (!\U|DP|cRegister|out\(1) & !\U|DP|cRegister|out\(3)) ) ) 
-- ) # ( \U|DP|cRegister|out\(0) & ( !\U|DP|cRegister|out[2]~DUPLICATE_q\ & ( !\U|DP|cRegister|out\(1) ) ) ) # ( !\U|DP|cRegister|out\(0) & ( !\U|DP|cRegister|out[2]~DUPLICATE_q\ & ( (\U|DP|cRegister|out\(1) & \U|DP|cRegister|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101010101010101010001000100010000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(1),
	datab => \U|DP|cRegister|ALT_INV_out\(3),
	datae => \U|DP|cRegister|ALT_INV_out\(0),
	dataf => \U|DP|cRegister|ALT_INV_out[2]~DUPLICATE_q\,
	combout => \H0|WideOr3~0_combout\);

-- Location: MLABCELL_X87_Y3_N39
\H0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = ( \U|DP|cRegister|out\(0) & ( \U|DP|cRegister|out\(1) & ( !\U|DP|cRegister|out\(3) ) ) ) # ( \U|DP|cRegister|out\(0) & ( !\U|DP|cRegister|out\(1) & ( (!\U|DP|cRegister|out[2]~DUPLICATE_q\) # (!\U|DP|cRegister|out\(3)) ) ) ) # ( 
-- !\U|DP|cRegister|out\(0) & ( !\U|DP|cRegister|out\(1) & ( (\U|DP|cRegister|out[2]~DUPLICATE_q\ & !\U|DP|cRegister|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111001111110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|cRegister|ALT_INV_out[2]~DUPLICATE_q\,
	datac => \U|DP|cRegister|ALT_INV_out\(3),
	datae => \U|DP|cRegister|ALT_INV_out\(0),
	dataf => \U|DP|cRegister|ALT_INV_out\(1),
	combout => \H0|WideOr2~0_combout\);

-- Location: FF_X88_Y3_N47
\U|DP|cRegister|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|cRegister|out[2]~feeder_combout\,
	asdata => \U|DP|CMP|Mux13~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|cRegister|out\(2));

-- Location: LABCELL_X88_Y3_N15
\H0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = ( \U|DP|cRegister|out\(3) & ( (\U|DP|cRegister|out\(0) & (!\U|DP|cRegister|out\(1) & \U|DP|cRegister|out\(2))) ) ) # ( !\U|DP|cRegister|out\(3) & ( (!\U|DP|cRegister|out\(0) & (\U|DP|cRegister|out\(1) & !\U|DP|cRegister|out\(2))) 
-- # (\U|DP|cRegister|out\(0) & ((!\U|DP|cRegister|out\(2)) # (\U|DP|cRegister|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(0),
	datab => \U|DP|cRegister|ALT_INV_out\(1),
	datac => \U|DP|cRegister|ALT_INV_out\(2),
	dataf => \U|DP|cRegister|ALT_INV_out\(3),
	combout => \H0|WideOr1~0_combout\);

-- Location: LABCELL_X83_Y3_N39
\H0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = ( \U|DP|cRegister|out\(1) & ( (!\U|DP|cRegister|out[2]~DUPLICATE_q\) # ((!\U|DP|cRegister|out\(0)) # (\U|DP|cRegister|out\(3))) ) ) # ( !\U|DP|cRegister|out\(1) & ( (!\U|DP|cRegister|out[2]~DUPLICATE_q\ & 
-- ((\U|DP|cRegister|out\(3)))) # (\U|DP|cRegister|out[2]~DUPLICATE_q\ & ((!\U|DP|cRegister|out\(3)) # (\U|DP|cRegister|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101111010101011010111111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out[2]~DUPLICATE_q\,
	datac => \U|DP|cRegister|ALT_INV_out\(0),
	datad => \U|DP|cRegister|ALT_INV_out\(3),
	dataf => \U|DP|cRegister|ALT_INV_out\(1),
	combout => \H0|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\H1|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr6~0_combout\ = ( \U|DP|cRegister|out\(7) & ( (!\U|DP|cRegister|out\(6) & (\U|DP|cRegister|out\(4) & \U|DP|cRegister|out\(5))) # (\U|DP|cRegister|out\(6) & ((!\U|DP|cRegister|out\(5)))) ) ) # ( !\U|DP|cRegister|out\(7) & ( 
-- (!\U|DP|cRegister|out\(5) & (!\U|DP|cRegister|out\(6) $ (!\U|DP|cRegister|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000010100100101001001100000011000000101001001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(6),
	datab => \U|DP|cRegister|ALT_INV_out\(4),
	datac => \U|DP|cRegister|ALT_INV_out\(5),
	datae => \U|DP|cRegister|ALT_INV_out\(7),
	combout => \H1|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y8_N6
\H1|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr5~0_combout\ = ( \U|DP|cRegister|out\(7) & ( \U|DP|cRegister|out\(4) & ( \U|DP|cRegister|out\(5) ) ) ) # ( !\U|DP|cRegister|out\(7) & ( \U|DP|cRegister|out\(4) & ( (\U|DP|cRegister|out\(6) & !\U|DP|cRegister|out\(5)) ) ) ) # ( 
-- \U|DP|cRegister|out\(7) & ( !\U|DP|cRegister|out\(4) & ( \U|DP|cRegister|out\(6) ) ) ) # ( !\U|DP|cRegister|out\(7) & ( !\U|DP|cRegister|out\(4) & ( (\U|DP|cRegister|out\(6) & \U|DP|cRegister|out\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001010101010101010101000100010001000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(6),
	datab => \U|DP|cRegister|ALT_INV_out\(5),
	datae => \U|DP|cRegister|ALT_INV_out\(7),
	dataf => \U|DP|cRegister|ALT_INV_out\(4),
	combout => \H1|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y8_N39
\H1|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr4~0_combout\ = ( \U|DP|cRegister|out\(7) & ( (\U|DP|cRegister|out\(6) & \U|DP|cRegister|out\(5)) ) ) # ( !\U|DP|cRegister|out\(7) & ( (!\U|DP|cRegister|out\(6) & (!\U|DP|cRegister|out\(4) & \U|DP|cRegister|out\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000001010000010100001000000010000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(6),
	datab => \U|DP|cRegister|ALT_INV_out\(4),
	datac => \U|DP|cRegister|ALT_INV_out\(5),
	datae => \U|DP|cRegister|ALT_INV_out\(7),
	combout => \H1|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y8_N33
\H1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr3~0_combout\ = ( \U|DP|cRegister|out\(7) & ( (!\U|DP|cRegister|out\(6) & (!\U|DP|cRegister|out\(4) $ (!\U|DP|cRegister|out\(5)))) # (\U|DP|cRegister|out\(6) & (\U|DP|cRegister|out\(4) & \U|DP|cRegister|out\(5))) ) ) # ( !\U|DP|cRegister|out\(7) 
-- & ( (!\U|DP|cRegister|out\(6) & (\U|DP|cRegister|out\(4) & !\U|DP|cRegister|out\(5))) # (\U|DP|cRegister|out\(6) & (!\U|DP|cRegister|out\(4) $ (\U|DP|cRegister|out\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001001010010010100101100001011000010010100100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(6),
	datab => \U|DP|cRegister|ALT_INV_out\(4),
	datac => \U|DP|cRegister|ALT_INV_out\(5),
	datae => \U|DP|cRegister|ALT_INV_out\(7),
	combout => \H1|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y8_N12
\H1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr2~0_combout\ = ( \U|DP|cRegister|out\(4) & ( (!\U|DP|cRegister|out\(7)) # ((!\U|DP|cRegister|out\(6) & !\U|DP|cRegister|out\(5))) ) ) # ( !\U|DP|cRegister|out\(4) & ( (\U|DP|cRegister|out\(6) & (!\U|DP|cRegister|out\(5) & 
-- !\U|DP|cRegister|out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(6),
	datab => \U|DP|cRegister|ALT_INV_out\(5),
	datad => \U|DP|cRegister|ALT_INV_out\(7),
	dataf => \U|DP|cRegister|ALT_INV_out\(4),
	combout => \H1|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y8_N15
\H1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr1~0_combout\ = ( \U|DP|cRegister|out\(4) & ( !\U|DP|cRegister|out\(7) $ (((\U|DP|cRegister|out\(6) & !\U|DP|cRegister|out\(5)))) ) ) # ( !\U|DP|cRegister|out\(4) & ( (!\U|DP|cRegister|out\(6) & (\U|DP|cRegister|out\(5) & 
-- !\U|DP|cRegister|out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010110100101101001011010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(6),
	datab => \U|DP|cRegister|ALT_INV_out\(5),
	datac => \U|DP|cRegister|ALT_INV_out\(7),
	dataf => \U|DP|cRegister|ALT_INV_out\(4),
	combout => \H1|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\H1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = ( \U|DP|cRegister|out\(7) & ( \U|DP|cRegister|out\(4) ) ) # ( !\U|DP|cRegister|out\(7) & ( \U|DP|cRegister|out\(4) & ( !\U|DP|cRegister|out\(6) $ (!\U|DP|cRegister|out\(5)) ) ) ) # ( \U|DP|cRegister|out\(7) & ( 
-- !\U|DP|cRegister|out\(4) & ( (!\U|DP|cRegister|out\(6)) # (\U|DP|cRegister|out\(5)) ) ) ) # ( !\U|DP|cRegister|out\(7) & ( !\U|DP|cRegister|out\(4) & ( (\U|DP|cRegister|out\(5)) # (\U|DP|cRegister|out\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111101110111011101101100110011001101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(6),
	datab => \U|DP|cRegister|ALT_INV_out\(5),
	datae => \U|DP|cRegister|ALT_INV_out\(7),
	dataf => \U|DP|cRegister|ALT_INV_out\(4),
	combout => \H1|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y7_N36
\H2|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr6~0_combout\ = ( \U|DP|cRegister|out\(9) & ( (\U|DP|cRegister|out\(11) & (!\U|DP|cRegister|out\(10) & \U|DP|cRegister|out\(8))) ) ) # ( !\U|DP|cRegister|out\(9) & ( !\U|DP|cRegister|out\(10) $ (((!\U|DP|cRegister|out\(8)) # 
-- (\U|DP|cRegister|out\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|cRegister|ALT_INV_out\(11),
	datac => \U|DP|cRegister|ALT_INV_out\(10),
	datad => \U|DP|cRegister|ALT_INV_out\(8),
	dataf => \U|DP|cRegister|ALT_INV_out\(9),
	combout => \H2|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y7_N39
\H2|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr5~0_combout\ = ( \U|DP|cRegister|out\(10) & ( (!\U|DP|cRegister|out\(9) & (!\U|DP|cRegister|out\(11) $ (!\U|DP|cRegister|out\(8)))) # (\U|DP|cRegister|out\(9) & ((!\U|DP|cRegister|out\(8)) # (\U|DP|cRegister|out\(11)))) ) ) # ( 
-- !\U|DP|cRegister|out\(10) & ( (\U|DP|cRegister|out\(9) & (\U|DP|cRegister|out\(11) & \U|DP|cRegister|out\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101110111100110010111011110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(9),
	datab => \U|DP|cRegister|ALT_INV_out\(11),
	datad => \U|DP|cRegister|ALT_INV_out\(8),
	dataf => \U|DP|cRegister|ALT_INV_out\(10),
	combout => \H2|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y7_N30
\H2|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr4~0_combout\ = ( \U|DP|cRegister|out\(9) & ( (!\U|DP|cRegister|out\(11) & (!\U|DP|cRegister|out\(10) & !\U|DP|cRegister|out\(8))) # (\U|DP|cRegister|out\(11) & (\U|DP|cRegister|out\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|cRegister|ALT_INV_out\(11),
	datac => \U|DP|cRegister|ALT_INV_out\(10),
	datad => \U|DP|cRegister|ALT_INV_out\(8),
	dataf => \U|DP|cRegister|ALT_INV_out\(9),
	combout => \H2|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y7_N33
\H2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr3~0_combout\ = ( \U|DP|cRegister|out\(10) & ( (!\U|DP|cRegister|out\(9) & (!\U|DP|cRegister|out\(11) & !\U|DP|cRegister|out\(8))) # (\U|DP|cRegister|out\(9) & ((\U|DP|cRegister|out\(8)))) ) ) # ( !\U|DP|cRegister|out\(10) & ( 
-- (!\U|DP|cRegister|out\(9) & ((\U|DP|cRegister|out\(8)))) # (\U|DP|cRegister|out\(9) & (\U|DP|cRegister|out\(11) & !\U|DP|cRegister|out\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110101010000100011010101010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(9),
	datab => \U|DP|cRegister|ALT_INV_out\(11),
	datad => \U|DP|cRegister|ALT_INV_out\(8),
	dataf => \U|DP|cRegister|ALT_INV_out\(10),
	combout => \H2|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y7_N12
\H2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr2~0_combout\ = ( \U|DP|cRegister|out\(9) & ( (!\U|DP|cRegister|out\(11) & \U|DP|cRegister|out\(8)) ) ) # ( !\U|DP|cRegister|out\(9) & ( (!\U|DP|cRegister|out\(10) & ((\U|DP|cRegister|out\(8)))) # (\U|DP|cRegister|out\(10) & 
-- (!\U|DP|cRegister|out\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|cRegister|ALT_INV_out\(11),
	datac => \U|DP|cRegister|ALT_INV_out\(10),
	datad => \U|DP|cRegister|ALT_INV_out\(8),
	dataf => \U|DP|cRegister|ALT_INV_out\(9),
	combout => \H2|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y7_N15
\H2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr1~0_combout\ = ( \U|DP|cRegister|out\(10) & ( (\U|DP|cRegister|out\(8) & (!\U|DP|cRegister|out\(9) $ (!\U|DP|cRegister|out\(11)))) ) ) # ( !\U|DP|cRegister|out\(10) & ( (!\U|DP|cRegister|out\(11) & ((\U|DP|cRegister|out\(8)) # 
-- (\U|DP|cRegister|out\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(9),
	datab => \U|DP|cRegister|ALT_INV_out\(11),
	datad => \U|DP|cRegister|ALT_INV_out\(8),
	dataf => \U|DP|cRegister|ALT_INV_out\(10),
	combout => \H2|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y7_N42
\H2|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = ( \U|DP|cRegister|out\(8) & ( \U|DP|cRegister|out\(11) ) ) # ( !\U|DP|cRegister|out\(8) & ( \U|DP|cRegister|out\(11) & ( (!\U|DP|cRegister|out\(10)) # (\U|DP|cRegister|out\(9)) ) ) ) # ( \U|DP|cRegister|out\(8) & ( 
-- !\U|DP|cRegister|out\(11) & ( !\U|DP|cRegister|out\(10) $ (!\U|DP|cRegister|out\(9)) ) ) ) # ( !\U|DP|cRegister|out\(8) & ( !\U|DP|cRegister|out\(11) & ( (\U|DP|cRegister|out\(9)) # (\U|DP|cRegister|out\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010110100101101010101111101011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(10),
	datac => \U|DP|cRegister|ALT_INV_out\(9),
	datae => \U|DP|cRegister|ALT_INV_out\(8),
	dataf => \U|DP|cRegister|ALT_INV_out\(11),
	combout => \H2|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y3_N9
\H3|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr6~0_combout\ = ( \U|DP|cRegister|out\(15) & ( (!\U|DP|cRegister|out\(14) & (\U|DP|cRegister|out\(12) & \U|DP|cRegister|out\(13))) # (\U|DP|cRegister|out\(14) & ((!\U|DP|cRegister|out\(13)))) ) ) # ( !\U|DP|cRegister|out\(15) & ( 
-- (!\U|DP|cRegister|out\(13) & (!\U|DP|cRegister|out\(14) $ (!\U|DP|cRegister|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000001010101000010100101010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(14),
	datac => \U|DP|cRegister|ALT_INV_out\(12),
	datad => \U|DP|cRegister|ALT_INV_out\(13),
	dataf => \U|DP|cRegister|ALT_INV_out\(15),
	combout => \H3|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y3_N24
\H3|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr5~0_combout\ = ( \U|DP|cRegister|out\(15) & ( (!\U|DP|cRegister|out\(12) & (\U|DP|cRegister|out\(14))) # (\U|DP|cRegister|out\(12) & ((\U|DP|cRegister|out\(13)))) ) ) # ( !\U|DP|cRegister|out\(15) & ( (\U|DP|cRegister|out\(14) & 
-- (!\U|DP|cRegister|out\(13) $ (!\U|DP|cRegister|out\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(14),
	datac => \U|DP|cRegister|ALT_INV_out\(13),
	datad => \U|DP|cRegister|ALT_INV_out\(12),
	dataf => \U|DP|cRegister|ALT_INV_out\(15),
	combout => \H3|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y3_N30
\H3|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr4~0_combout\ = ( \U|DP|cRegister|out\(15) & ( (\U|DP|cRegister|out\(14) & \U|DP|cRegister|out\(13)) ) ) # ( !\U|DP|cRegister|out\(15) & ( (!\U|DP|cRegister|out\(14) & (\U|DP|cRegister|out\(13) & !\U|DP|cRegister|out\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(14),
	datac => \U|DP|cRegister|ALT_INV_out\(13),
	datad => \U|DP|cRegister|ALT_INV_out\(12),
	dataf => \U|DP|cRegister|ALT_INV_out\(15),
	combout => \H3|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y3_N33
\H3|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr3~0_combout\ = ( \U|DP|cRegister|out\(15) & ( (!\U|DP|cRegister|out\(14) & (!\U|DP|cRegister|out\(12) $ (!\U|DP|cRegister|out\(13)))) # (\U|DP|cRegister|out\(14) & (\U|DP|cRegister|out\(12) & \U|DP|cRegister|out\(13))) ) ) # ( 
-- !\U|DP|cRegister|out\(15) & ( (!\U|DP|cRegister|out\(14) & (\U|DP|cRegister|out\(12) & !\U|DP|cRegister|out\(13))) # (\U|DP|cRegister|out\(14) & (!\U|DP|cRegister|out\(12) $ (\U|DP|cRegister|out\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(14),
	datac => \U|DP|cRegister|ALT_INV_out\(12),
	datad => \U|DP|cRegister|ALT_INV_out\(13),
	dataf => \U|DP|cRegister|ALT_INV_out\(15),
	combout => \H3|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y3_N6
\H3|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr2~0_combout\ = ( \U|DP|cRegister|out\(15) & ( (!\U|DP|cRegister|out\(14) & (!\U|DP|cRegister|out\(13) & \U|DP|cRegister|out\(12))) ) ) # ( !\U|DP|cRegister|out\(15) & ( ((\U|DP|cRegister|out\(14) & !\U|DP|cRegister|out\(13))) # 
-- (\U|DP|cRegister|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(14),
	datac => \U|DP|cRegister|ALT_INV_out\(13),
	datad => \U|DP|cRegister|ALT_INV_out\(12),
	dataf => \U|DP|cRegister|ALT_INV_out\(15),
	combout => \H3|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y3_N27
\H3|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr1~0_combout\ = ( \U|DP|cRegister|out\(15) & ( (\U|DP|cRegister|out\(14) & (\U|DP|cRegister|out\(12) & !\U|DP|cRegister|out\(13))) ) ) # ( !\U|DP|cRegister|out\(15) & ( (!\U|DP|cRegister|out\(14) & ((\U|DP|cRegister|out\(13)) # 
-- (\U|DP|cRegister|out\(12)))) # (\U|DP|cRegister|out\(14) & (\U|DP|cRegister|out\(12) & \U|DP|cRegister|out\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(14),
	datac => \U|DP|cRegister|ALT_INV_out\(12),
	datad => \U|DP|cRegister|ALT_INV_out\(13),
	dataf => \U|DP|cRegister|ALT_INV_out\(15),
	combout => \H3|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y3_N36
\H3|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr0~0_combout\ = ( \U|DP|cRegister|out\(14) & ( (!\U|DP|cRegister|out\(15) & ((!\U|DP|cRegister|out\(13)) # (!\U|DP|cRegister|out\(12)))) # (\U|DP|cRegister|out\(15) & ((\U|DP|cRegister|out\(12)) # (\U|DP|cRegister|out\(13)))) ) ) # ( 
-- !\U|DP|cRegister|out\(14) & ( (\U|DP|cRegister|out\(13)) # (\U|DP|cRegister|out\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110101111111101011010111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|cRegister|ALT_INV_out\(15),
	datac => \U|DP|cRegister|ALT_INV_out\(13),
	datad => \U|DP|cRegister|ALT_INV_out\(12),
	dataf => \U|DP|cRegister|ALT_INV_out\(14),
	combout => \H3|WideOr0~0_combout\);

-- Location: MLABCELL_X87_Y6_N33
\U|DP|CMP|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~1_combout\ = ( \U|DP|Ain[5]~5_combout\ & ( (!\U|instructionReg|out\(11) & (!\rtl~38_combout\ & ((!\U|DP|Ain[4]~4_combout\) # (!\rtl~37_combout\)))) # (\U|instructionReg|out\(11) & (((\rtl~37_combout\ & \rtl~38_combout\)))) ) ) # ( 
-- !\U|DP|Ain[5]~5_combout\ & ( (!\U|instructionReg|out\(11) & ((!\U|DP|Ain[4]~4_combout\) # ((!\rtl~37_combout\)))) # (\U|instructionReg|out\(11) & (((\rtl~37_combout\ & \rtl~38_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001011110010001100101111001000000000111100100000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|ALT_INV_Ain[4]~4_combout\,
	datab => \U|instructionReg|ALT_INV_out\(11),
	datac => \ALT_INV_rtl~37_combout\,
	datad => \ALT_INV_rtl~38_combout\,
	dataf => \U|DP|ALT_INV_Ain[5]~5_combout\,
	combout => \U|DP|CMP|Equal0~1_combout\);

-- Location: MLABCELL_X87_Y6_N18
\U|DP|CMP|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~3_combout\ = ( \U|DP|Ain[3]~3_combout\ & ( \rtl~35_combout\ & ( (!\U|instructionReg|out\(11) & (!\U|DP|Ain[2]~2_combout\ & !\rtl~36_combout\)) # (\U|instructionReg|out\(11) & ((\rtl~36_combout\))) ) ) ) # ( !\U|DP|Ain[3]~3_combout\ & ( 
-- \rtl~35_combout\ & ( (!\U|instructionReg|out\(11) & (!\U|DP|Ain[2]~2_combout\)) # (\U|instructionReg|out\(11) & ((\rtl~36_combout\))) ) ) ) # ( \U|DP|Ain[3]~3_combout\ & ( !\rtl~35_combout\ & ( (!\U|instructionReg|out\(11) & !\rtl~36_combout\) ) ) ) # ( 
-- !\U|DP|Ain[3]~3_combout\ & ( !\rtl~35_combout\ & ( !\U|instructionReg|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000001100000010001011100010111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|ALT_INV_Ain[2]~2_combout\,
	datab => \U|instructionReg|ALT_INV_out\(11),
	datac => \ALT_INV_rtl~36_combout\,
	datae => \U|DP|ALT_INV_Ain[3]~3_combout\,
	dataf => \ALT_INV_rtl~35_combout\,
	combout => \U|DP|CMP|Equal0~3_combout\);

-- Location: MLABCELL_X87_Y6_N30
\U|DP|CMP|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~2_combout\ = ( \rtl~33_combout\ & ( (\U|instructionReg|out\(12) & ((!\U|DP|Ain[0]~0_combout\) # (\U|instructionReg|out\(11)))) ) ) # ( !\rtl~33_combout\ & ( (!\U|instructionReg|out\(11) & \U|instructionReg|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(11),
	datac => \U|instructionReg|ALT_INV_out\(12),
	datad => \U|DP|ALT_INV_Ain[0]~0_combout\,
	dataf => \ALT_INV_rtl~33_combout\,
	combout => \U|DP|CMP|Equal0~2_combout\);

-- Location: MLABCELL_X87_Y6_N48
\U|DP|CMP|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~4_combout\ = ( !\U|DP|CMP|Mux8~0_combout\ & ( !\U|DP|CMP|Mux14~0_combout\ & ( (\U|DP|CMP|Equal0~1_combout\ & (\U|DP|CMP|Equal0~3_combout\ & (!\U|DP|CMP|Mux9~0_combout\ & \U|DP|CMP|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Equal0~1_combout\,
	datab => \U|DP|CMP|ALT_INV_Equal0~3_combout\,
	datac => \U|DP|CMP|ALT_INV_Mux9~0_combout\,
	datad => \U|DP|CMP|ALT_INV_Equal0~2_combout\,
	datae => \U|DP|CMP|ALT_INV_Mux8~0_combout\,
	dataf => \U|DP|CMP|ALT_INV_Mux14~0_combout\,
	combout => \U|DP|CMP|Equal0~4_combout\);

-- Location: MLABCELL_X87_Y6_N6
\U|DP|CMP|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~5_combout\ = ( !\U|DP|CMP|Mux3~0_combout\ & ( (!\U|DP|CMP|Mux0~0_combout\ & (!\U|DP|CMP|Mux2~0_combout\ & !\U|DP|CMP|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|CMP|ALT_INV_Mux0~0_combout\,
	datac => \U|DP|CMP|ALT_INV_Mux2~0_combout\,
	datad => \U|DP|CMP|ALT_INV_Mux1~0_combout\,
	dataf => \U|DP|CMP|ALT_INV_Mux3~0_combout\,
	combout => \U|DP|CMP|Equal0~5_combout\);

-- Location: MLABCELL_X87_Y6_N12
\U|DP|CMP|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~6_combout\ = ( !\U|DP|CMP|Mux4~0_combout\ & ( !\U|DP|CMP|Mux5~0_combout\ & ( (\U|DP|CMP|Equal0~4_combout\ & (!\U|DP|CMP|Mux6~0_combout\ & (!\U|DP|CMP|Mux7~0_combout\ & \U|DP|CMP|Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Equal0~4_combout\,
	datab => \U|DP|CMP|ALT_INV_Mux6~0_combout\,
	datac => \U|DP|CMP|ALT_INV_Mux7~0_combout\,
	datad => \U|DP|CMP|ALT_INV_Equal0~5_combout\,
	datae => \U|DP|CMP|ALT_INV_Mux4~0_combout\,
	dataf => \U|DP|CMP|ALT_INV_Mux5~0_combout\,
	combout => \U|DP|CMP|Equal0~6_combout\);

-- Location: LABCELL_X88_Y5_N6
\U|DP|CMP|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~0_combout\ = ( !\U|DP|CMP|Add0~5_sumout\ & ( !\U|DP|CMP|Add0~1_sumout\ & ( (!\U|instructionReg|out\(12) & !\U|DP|CMP|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instructionReg|ALT_INV_out\(12),
	datad => \U|DP|CMP|ALT_INV_Add0~9_sumout\,
	datae => \U|DP|CMP|ALT_INV_Add0~5_sumout\,
	dataf => \U|DP|CMP|ALT_INV_Add0~1_sumout\,
	combout => \U|DP|CMP|Equal0~0_combout\);

-- Location: LABCELL_X88_Y5_N0
\U|DP|CMP|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~9_combout\ = ( !\U|DP|CMP|Add0~17_sumout\ & ( !\U|DP|CMP|Add0~45_sumout\ & ( (!\U|DP|CMP|Add0~25_sumout\ & (!\U|DP|CMP|Add0~13_sumout\ & !\U|DP|CMP|Add0~21_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Add0~25_sumout\,
	datab => \U|DP|CMP|ALT_INV_Add0~13_sumout\,
	datac => \U|DP|CMP|ALT_INV_Add0~21_sumout\,
	datae => \U|DP|CMP|ALT_INV_Add0~17_sumout\,
	dataf => \U|DP|CMP|ALT_INV_Add0~45_sumout\,
	combout => \U|DP|CMP|Equal0~9_combout\);

-- Location: LABCELL_X88_Y4_N18
\U|DP|CMP|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~8_combout\ = ( !\U|DP|CMP|Add0~57_sumout\ & ( !\U|DP|CMP|Add0~61_sumout\ & ( (!\U|DP|CMP|Add0~29_sumout\ & (!\U|DP|CMP|Add0~37_sumout\ & (!\U|DP|CMP|Add0~33_sumout\ & !\U|DP|CMP|Add0~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Add0~29_sumout\,
	datab => \U|DP|CMP|ALT_INV_Add0~37_sumout\,
	datac => \U|DP|CMP|ALT_INV_Add0~33_sumout\,
	datad => \U|DP|CMP|ALT_INV_Add0~53_sumout\,
	datae => \U|DP|CMP|ALT_INV_Add0~57_sumout\,
	dataf => \U|DP|CMP|ALT_INV_Add0~61_sumout\,
	combout => \U|DP|CMP|Equal0~8_combout\);

-- Location: LABCELL_X88_Y5_N12
\U|DP|CMP|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Equal0~7_combout\ = ( \U|DP|CMP|Equal0~9_combout\ & ( \U|DP|CMP|Equal0~8_combout\ & ( ((!\U|DP|CMP|Add0~49_sumout\ & (!\U|DP|CMP|Add0~41_sumout\ & \U|DP|CMP|Equal0~0_combout\))) # (\U|DP|CMP|Equal0~6_combout\) ) ) ) # ( 
-- !\U|DP|CMP|Equal0~9_combout\ & ( \U|DP|CMP|Equal0~8_combout\ & ( \U|DP|CMP|Equal0~6_combout\ ) ) ) # ( \U|DP|CMP|Equal0~9_combout\ & ( !\U|DP|CMP|Equal0~8_combout\ & ( \U|DP|CMP|Equal0~6_combout\ ) ) ) # ( !\U|DP|CMP|Equal0~9_combout\ & ( 
-- !\U|DP|CMP|Equal0~8_combout\ & ( \U|DP|CMP|Equal0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Add0~49_sumout\,
	datab => \U|DP|CMP|ALT_INV_Add0~41_sumout\,
	datac => \U|DP|CMP|ALT_INV_Equal0~6_combout\,
	datad => \U|DP|CMP|ALT_INV_Equal0~0_combout\,
	datae => \U|DP|CMP|ALT_INV_Equal0~9_combout\,
	dataf => \U|DP|CMP|ALT_INV_Equal0~8_combout\,
	combout => \U|DP|CMP|Equal0~7_combout\);

-- Location: MLABCELL_X84_Y5_N39
\U|statemachine|WideNor12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideNor12~combout\ = ( !\U|statemachine|STATE|Q\(4) & ( !\U|statemachine|STATE|Q\(1) & ( (\U|statemachine|STATE|Q\(3) & (!\U|statemachine|STATE|Q\(0) & \U|statemachine|STATE|Q\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|statemachine|STATE|ALT_INV_Q\(0),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	datae => \U|statemachine|STATE|ALT_INV_Q\(4),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(1),
	combout => \U|statemachine|WideNor12~combout\);

-- Location: FF_X88_Y5_N13
\U|DP|stat|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|CMP|Equal0~7_combout\,
	ena => \U|statemachine|WideNor12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|stat|out\(0));

-- Location: LABCELL_X85_Y5_N21
\U|statemachine|WideNor2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|statemachine|WideNor2~combout\ = ( \U|statemachine|STATE|Q\(0) ) # ( !\U|statemachine|STATE|Q\(0) & ( (!\U|statemachine|STATE|Q\(1)) # (((\U|statemachine|STATE|Q\(2)) # (\U|statemachine|STATE|Q\(4))) # (\U|statemachine|STATE|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|statemachine|STATE|ALT_INV_Q\(1),
	datab => \U|statemachine|STATE|ALT_INV_Q\(3),
	datac => \U|statemachine|STATE|ALT_INV_Q\(4),
	datad => \U|statemachine|STATE|ALT_INV_Q\(2),
	dataf => \U|statemachine|STATE|ALT_INV_Q\(0),
	combout => \U|statemachine|WideNor2~combout\);

-- Location: MLABCELL_X87_Y6_N0
\U|DP|CMP|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|Decoder0~0_combout\ = ( !\U|instructionReg|out\(12) & ( \U|instructionReg|out\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U|instructionReg|ALT_INV_out\(12),
	dataf => \U|instructionReg|ALT_INV_out\(11),
	combout => \U|DP|CMP|Decoder0~0_combout\);

-- Location: MLABCELL_X87_Y5_N36
\U|DP|CMP|ADDER1|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|comb~0_combout\ = ( \U|DP|CMP|Decoder0~0_combout\ & ( (!\U|instructionReg|out\(4) & (!\rtl~34_combout\)) # (\U|instructionReg|out\(4) & ((!\U|DP|bRegister|out\(2)))) ) ) # ( !\U|DP|CMP|Decoder0~0_combout\ & ( (!\U|instructionReg|out\(4) & 
-- (\rtl~34_combout\)) # (\U|instructionReg|out\(4) & ((\U|DP|bRegister|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001110101100101011001010110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~34_combout\,
	datab => \U|DP|bRegister|ALT_INV_out\(2),
	datac => \U|instructionReg|ALT_INV_out\(4),
	dataf => \U|DP|CMP|ALT_INV_Decoder0~0_combout\,
	combout => \U|DP|CMP|ADDER1|comb~0_combout\);

-- Location: MLABCELL_X87_Y5_N0
\U|DP|CMP|ADDER1|ai|_~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|ai|_~22_cout\ = CARRY(( !\U|DP|Ain[0]~0_combout\ $ (!\rtl~33_combout\) ) + ( !VCC ) + ( !VCC ))
-- \U|DP|CMP|ADDER1|ai|_~23\ = SHARE((!\rtl~33_combout\ & (\U|instructionReg|out\(11) & (!\U|instructionReg|out\(12)))) # (\rtl~33_combout\ & (((\U|DP|Ain[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \U|instructionReg|ALT_INV_out\(11),
	datab => \U|instructionReg|ALT_INV_out\(12),
	datac => \U|DP|ALT_INV_Ain[0]~0_combout\,
	datad => \ALT_INV_rtl~33_combout\,
	cin => GND,
	sharein => GND,
	cout => \U|DP|CMP|ADDER1|ai|_~22_cout\,
	shareout => \U|DP|CMP|ADDER1|ai|_~23\);

-- Location: MLABCELL_X87_Y5_N3
\U|DP|CMP|ADDER1|ai|_~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|ai|_~19_cout\ = CARRY(( !\U|DP|Ain[1]~1_combout\ $ (!\U|DP|CMP|ADDER1|comb~0_combout\) ) + ( \U|DP|CMP|ADDER1|ai|_~23\ ) + ( \U|DP|CMP|ADDER1|ai|_~22_cout\ ))
-- \U|DP|CMP|ADDER1|ai|_~20\ = SHARE((\U|DP|Ain[1]~1_combout\ & \U|DP|CMP|ADDER1|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|ALT_INV_Ain[1]~1_combout\,
	datad => \U|DP|CMP|ADDER1|ALT_INV_comb~0_combout\,
	cin => \U|DP|CMP|ADDER1|ai|_~22_cout\,
	sharein => \U|DP|CMP|ADDER1|ai|_~23\,
	cout => \U|DP|CMP|ADDER1|ai|_~19_cout\,
	shareout => \U|DP|CMP|ADDER1|ai|_~20\);

-- Location: MLABCELL_X87_Y5_N6
\U|DP|CMP|ADDER1|ai|_~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|ai|_~16_cout\ = CARRY(( !\U|DP|CMP|Decoder0~0_combout\ $ (!\rtl~35_combout\ $ (((\U|statemachine|WideNor2~combout\ & \U|DP|aRegister|out\(2))))) ) + ( \U|DP|CMP|ADDER1|ai|_~20\ ) + ( \U|DP|CMP|ADDER1|ai|_~19_cout\ ))
-- \U|DP|CMP|ADDER1|ai|_~17\ = SHARE((\U|statemachine|WideNor2~combout\ & (\U|DP|aRegister|out\(2) & (!\U|DP|CMP|Decoder0~0_combout\ $ (!\rtl~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001001000000000000000000101101001101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datab => \U|statemachine|ALT_INV_WideNor2~combout\,
	datac => \ALT_INV_rtl~35_combout\,
	datad => \U|DP|aRegister|ALT_INV_out\(2),
	cin => \U|DP|CMP|ADDER1|ai|_~19_cout\,
	sharein => \U|DP|CMP|ADDER1|ai|_~20\,
	cout => \U|DP|CMP|ADDER1|ai|_~16_cout\,
	shareout => \U|DP|CMP|ADDER1|ai|_~17\);

-- Location: MLABCELL_X87_Y5_N9
\U|DP|CMP|ADDER1|ai|_~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|ai|_~13_cout\ = CARRY(( !\U|DP|CMP|Decoder0~0_combout\ $ (!\rtl~36_combout\ $ (((\U|statemachine|WideNor2~combout\ & \U|DP|aRegister|out\(3))))) ) + ( \U|DP|CMP|ADDER1|ai|_~17\ ) + ( \U|DP|CMP|ADDER1|ai|_~16_cout\ ))
-- \U|DP|CMP|ADDER1|ai|_~14\ = SHARE((\U|statemachine|WideNor2~combout\ & (\U|DP|aRegister|out\(3) & (!\U|DP|CMP|Decoder0~0_combout\ $ (!\rtl~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001000000000000000000101011010101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datab => \U|statemachine|ALT_INV_WideNor2~combout\,
	datac => \U|DP|aRegister|ALT_INV_out\(3),
	datad => \ALT_INV_rtl~36_combout\,
	cin => \U|DP|CMP|ADDER1|ai|_~16_cout\,
	sharein => \U|DP|CMP|ADDER1|ai|_~17\,
	cout => \U|DP|CMP|ADDER1|ai|_~13_cout\,
	shareout => \U|DP|CMP|ADDER1|ai|_~14\);

-- Location: MLABCELL_X87_Y5_N12
\U|DP|CMP|ADDER1|ai|_~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|ai|_~10_cout\ = CARRY(( !\U|DP|CMP|Decoder0~0_combout\ $ (!\rtl~37_combout\ $ (((\U|statemachine|WideNor2~combout\ & \U|DP|aRegister|out\(4))))) ) + ( \U|DP|CMP|ADDER1|ai|_~14\ ) + ( \U|DP|CMP|ADDER1|ai|_~13_cout\ ))
-- \U|DP|CMP|ADDER1|ai|_~11\ = SHARE((\U|statemachine|WideNor2~combout\ & (\U|DP|aRegister|out\(4) & (!\U|DP|CMP|Decoder0~0_combout\ $ (!\rtl~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001000000000000000000101011010101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datab => \U|statemachine|ALT_INV_WideNor2~combout\,
	datac => \U|DP|aRegister|ALT_INV_out\(4),
	datad => \ALT_INV_rtl~37_combout\,
	cin => \U|DP|CMP|ADDER1|ai|_~13_cout\,
	sharein => \U|DP|CMP|ADDER1|ai|_~14\,
	cout => \U|DP|CMP|ADDER1|ai|_~10_cout\,
	shareout => \U|DP|CMP|ADDER1|ai|_~11\);

-- Location: MLABCELL_X87_Y5_N15
\U|DP|CMP|ADDER1|ai|_~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|ai|_~7_cout\ = CARRY(( !\U|DP|CMP|Decoder0~0_combout\ $ (!\rtl~38_combout\ $ (((\U|statemachine|WideNor2~combout\ & \U|DP|aRegister|out\(5))))) ) + ( \U|DP|CMP|ADDER1|ai|_~11\ ) + ( \U|DP|CMP|ADDER1|ai|_~10_cout\ ))
-- \U|DP|CMP|ADDER1|ai|_~8\ = SHARE((\U|statemachine|WideNor2~combout\ & (\U|DP|aRegister|out\(5) & (!\U|DP|CMP|Decoder0~0_combout\ $ (!\rtl~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001000000000000000000101011010101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datab => \U|statemachine|ALT_INV_WideNor2~combout\,
	datac => \U|DP|aRegister|ALT_INV_out\(5),
	datad => \ALT_INV_rtl~38_combout\,
	cin => \U|DP|CMP|ADDER1|ai|_~10_cout\,
	sharein => \U|DP|CMP|ADDER1|ai|_~11\,
	cout => \U|DP|CMP|ADDER1|ai|_~7_cout\,
	shareout => \U|DP|CMP|ADDER1|ai|_~8\);

-- Location: MLABCELL_X87_Y5_N18
\U|DP|CMP|ADDER1|ai|_~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|ai|_~4_cout\ = CARRY(( !\rtl~39_combout\ $ (!\U|DP|CMP|Decoder0~0_combout\ $ (((\U|statemachine|WideNor2~combout\ & \U|DP|aRegister|out\(6))))) ) + ( \U|DP|CMP|ADDER1|ai|_~8\ ) + ( \U|DP|CMP|ADDER1|ai|_~7_cout\ ))
-- \U|DP|CMP|ADDER1|ai|_~5\ = SHARE((\U|statemachine|WideNor2~combout\ & (\U|DP|aRegister|out\(6) & (!\rtl~39_combout\ $ (!\U|DP|CMP|Decoder0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001001000000000000000000101101001101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~39_combout\,
	datab => \U|statemachine|ALT_INV_WideNor2~combout\,
	datac => \U|DP|CMP|ALT_INV_Decoder0~0_combout\,
	datad => \U|DP|aRegister|ALT_INV_out\(6),
	cin => \U|DP|CMP|ADDER1|ai|_~7_cout\,
	sharein => \U|DP|CMP|ADDER1|ai|_~8\,
	cout => \U|DP|CMP|ADDER1|ai|_~4_cout\,
	shareout => \U|DP|CMP|ADDER1|ai|_~5\);

-- Location: MLABCELL_X87_Y5_N21
\U|DP|CMP|ADDER1|ai|_\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|ai|cout\ = SUM(( GND ) + ( \U|DP|CMP|ADDER1|ai|_~5\ ) + ( \U|DP|CMP|ADDER1|ai|_~4_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \U|DP|CMP|ADDER1|ai|_~4_cout\,
	sharein => \U|DP|CMP|ADDER1|ai|_~5\,
	sumout => \U|DP|CMP|ADDER1|ai|cout\);

-- Location: MLABCELL_X87_Y5_N30
\U|DP|CMP|ADDER1|ovf\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|CMP|ADDER1|ovf~combout\ = ( \U|DP|CMP|ADDER1|ai|cout\ & ( \U|DP|CMP|Decoder0~0_combout\ & ( (!\U|DP|Ain[7]~7_combout\ & ((!\U|instructionReg|out\(4) & ((\rtl~40_combout\))) # (\U|instructionReg|out\(4) & (\U|DP|bRegister|out\(8))))) ) ) ) # ( 
-- !\U|DP|CMP|ADDER1|ai|cout\ & ( \U|DP|CMP|Decoder0~0_combout\ & ( (\U|DP|Ain[7]~7_combout\ & ((!\U|instructionReg|out\(4) & ((!\rtl~40_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(8))))) ) ) ) # ( \U|DP|CMP|ADDER1|ai|cout\ & ( 
-- !\U|DP|CMP|Decoder0~0_combout\ & ( (!\U|DP|Ain[7]~7_combout\ & ((!\U|instructionReg|out\(4) & ((!\rtl~40_combout\))) # (\U|instructionReg|out\(4) & (!\U|DP|bRegister|out\(8))))) ) ) ) # ( !\U|DP|CMP|ADDER1|ai|cout\ & ( !\U|DP|CMP|Decoder0~0_combout\ & ( 
-- (\U|DP|Ain[7]~7_combout\ & ((!\U|instructionReg|out\(4) & ((\rtl~40_combout\))) # (\U|instructionReg|out\(4) & (\U|DP|bRegister|out\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101110010100000000000000000110010100011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|bRegister|ALT_INV_out\(8),
	datab => \ALT_INV_rtl~40_combout\,
	datac => \U|instructionReg|ALT_INV_out\(4),
	datad => \U|DP|ALT_INV_Ain[7]~7_combout\,
	datae => \U|DP|CMP|ADDER1|ai|ALT_INV_cout\,
	dataf => \U|DP|CMP|ALT_INV_Decoder0~0_combout\,
	combout => \U|DP|CMP|ADDER1|ovf~combout\);

-- Location: FF_X87_Y5_N31
\U|DP|stat|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|CMP|ADDER1|ovf~combout\,
	ena => \U|statemachine|WideNor12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|stat|out\(1));

-- Location: LABCELL_X88_Y3_N12
\U|DP|stat|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|stat|out[2]~feeder_combout\ = ( \U|DP|CMP|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|CMP|ALT_INV_Add0~61_sumout\,
	combout => \U|DP|stat|out[2]~feeder_combout\);

-- Location: FF_X88_Y3_N13
\U|DP|stat|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|stat|out[2]~feeder_combout\,
	asdata => \U|DP|CMP|Mux0~0_combout\,
	sload => \U|instructionReg|out\(12),
	ena => \U|statemachine|WideNor12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|stat|out\(2));

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

-- Location: MLABCELL_X21_Y26_N0
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


