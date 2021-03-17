-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/17/2021 02:02:57"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu_dec_slow IS
    PORT (
	CLK : IN std_logic;
	RESET_N : IN std_logic;
	IO65_IN : IN std_logic_vector(15 DOWNTO 0);
	IO64_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END cpu_dec_slow;

-- Design Ports Information
-- IO65_IN[10]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[11]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[12]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[14]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[15]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[10]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[11]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[12]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[13]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[14]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO64_OUT[15]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_N	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IO65_IN[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu_dec_slow IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET_N : std_logic;
SIGNAL ww_IO65_IN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IO64_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \IO65_IN[10]~input_o\ : std_logic;
SIGNAL \IO65_IN[11]~input_o\ : std_logic;
SIGNAL \IO65_IN[12]~input_o\ : std_logic;
SIGNAL \IO65_IN[13]~input_o\ : std_logic;
SIGNAL \IO65_IN[14]~input_o\ : std_logic;
SIGNAL \IO65_IN[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \C1|COUNT[0]~0_combout\ : std_logic;
SIGNAL \C1|Add0~77_sumout\ : std_logic;
SIGNAL \C1|Add0~78\ : std_logic;
SIGNAL \C1|Add0~73_sumout\ : std_logic;
SIGNAL \C1|Add0~74\ : std_logic;
SIGNAL \C1|Add0~69_sumout\ : std_logic;
SIGNAL \C1|Add0~70\ : std_logic;
SIGNAL \C1|Add0~65_sumout\ : std_logic;
SIGNAL \C1|Add0~66\ : std_logic;
SIGNAL \C1|Add0~61_sumout\ : std_logic;
SIGNAL \C1|Add0~62\ : std_logic;
SIGNAL \C1|Add0~57_sumout\ : std_logic;
SIGNAL \C1|Add0~58\ : std_logic;
SIGNAL \C1|Add0~53_sumout\ : std_logic;
SIGNAL \C1|Add0~54\ : std_logic;
SIGNAL \C1|Add0~49_sumout\ : std_logic;
SIGNAL \C1|Add0~50\ : std_logic;
SIGNAL \C1|Add0~45_sumout\ : std_logic;
SIGNAL \C1|Add0~46\ : std_logic;
SIGNAL \C1|Add0~41_sumout\ : std_logic;
SIGNAL \C1|Add0~42\ : std_logic;
SIGNAL \C1|Add0~37_sumout\ : std_logic;
SIGNAL \C1|Add0~38\ : std_logic;
SIGNAL \C1|Add0~33_sumout\ : std_logic;
SIGNAL \C1|Add0~34\ : std_logic;
SIGNAL \C1|Add0~29_sumout\ : std_logic;
SIGNAL \C1|Add0~30\ : std_logic;
SIGNAL \C1|Add0~25_sumout\ : std_logic;
SIGNAL \C1|Add0~26\ : std_logic;
SIGNAL \C1|Add0~21_sumout\ : std_logic;
SIGNAL \C1|Add0~22\ : std_logic;
SIGNAL \C1|Add0~17_sumout\ : std_logic;
SIGNAL \C1|Add0~18\ : std_logic;
SIGNAL \C1|Add0~13_sumout\ : std_logic;
SIGNAL \C1|Add0~14\ : std_logic;
SIGNAL \C1|Add0~9_sumout\ : std_logic;
SIGNAL \C1|Add0~10\ : std_logic;
SIGNAL \C1|Add0~5_sumout\ : std_logic;
SIGNAL \C1|Add0~6\ : std_logic;
SIGNAL \C1|Add0~1_sumout\ : std_logic;
SIGNAL \C2|C1|C1|COUNT[0]~1_combout\ : std_logic;
SIGNAL \C2|C1|C1|COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C1|COUNT[1]~0_combout\ : std_logic;
SIGNAL \C2|C1|C1|COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C1|Mux2~0_combout\ : std_logic;
SIGNAL \C2|C1|C1|CLK_EX~q\ : std_logic;
SIGNAL \C2|C1|C1|Mux2~1_combout\ : std_logic;
SIGNAL \C2|C1|C1|CLK_DC~q\ : std_logic;
SIGNAL \C2|C1|C1|Mux2~2_combout\ : std_logic;
SIGNAL \C2|C1|C1|CLK_WB~q\ : std_logic;
SIGNAL \C2|C1|C1|Mux0~0_combout\ : std_logic;
SIGNAL \C2|C1|C1|CLK_FT~q\ : std_logic;
SIGNAL \C2|C1|C6|Add2~1_sumout\ : std_logic;
SIGNAL \C2|C1|C6|PC[0]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add2~2\ : std_logic;
SIGNAL \C2|C1|C6|Add2~5_sumout\ : std_logic;
SIGNAL \C2|C1|C6|PC[1]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add2~6\ : std_logic;
SIGNAL \C2|C1|C6|Add2~9_sumout\ : std_logic;
SIGNAL \C2|C1|C6|PC[2]~feeder_combout\ : std_logic;
SIGNAL \RESET_N~input_o\ : std_logic;
SIGNAL \C2|C1|C6|Add2~10\ : std_logic;
SIGNAL \C2|C1|C6|Add2~13_sumout\ : std_logic;
SIGNAL \C2|C1|C6|PC[3]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add2~14\ : std_logic;
SIGNAL \C2|C1|C6|Add2~17_sumout\ : std_logic;
SIGNAL \C2|C1|C6|PC[4]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add2~18\ : std_logic;
SIGNAL \C2|C1|C6|Add2~21_sumout\ : std_logic;
SIGNAL \C2|C1|C6|PC[5]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add2~22\ : std_logic;
SIGNAL \C2|C1|C6|Add2~25_sumout\ : std_logic;
SIGNAL \C2|C1|C6|PC[6]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add2~26\ : std_logic;
SIGNAL \C2|C1|C6|Add2~29_sumout\ : std_logic;
SIGNAL \C2|C1|C6|PC[7]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C3|OP_DATA[7]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C6|PC[5]~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux26~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux42~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|RAM_WEN~q\ : std_logic;
SIGNAL \C2|C1|C8|RAM_WREN~combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_6[1]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux16~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|REG_WEN~q\ : std_logic;
SIGNAL \C2|C1|C7|REG_6[1]~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_4[1]~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_5[7]~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux14~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_0[5]~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[1]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[3]~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[1]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[3]~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_2[10]~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux14~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux14~2_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_6[0]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[0]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[13]~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux15~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[0]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux15~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux15~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~2\ : std_logic;
SIGNAL \C2|C1|C6|Add0~5_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux14~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|PC[5]~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|RAM_IN[0]~0_combout\ : std_logic;
SIGNAL \IO65_IN[3]~input_o\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN[2]~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_5[4]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux11~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_0[4]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[4]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_2[4]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux11~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux11~2_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[3]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[3]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux12~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux12~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux12~2_combout\ : std_logic;
SIGNAL \C2|C1|C5|REG_OUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[2]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[2]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux13~1_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_6[2]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[2]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux13~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux13~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~2\ : std_logic;
SIGNAL \C2|C1|C6|Add1~3\ : std_logic;
SIGNAL \C2|C1|C6|Add1~6\ : std_logic;
SIGNAL \C2|C1|C6|Add1~7\ : std_logic;
SIGNAL \C2|C1|C6|Add1~10\ : std_logic;
SIGNAL \C2|C1|C6|Add1~11\ : std_logic;
SIGNAL \C2|C1|C6|Add1~14\ : std_logic;
SIGNAL \C2|C1|C6|Add1~15\ : std_logic;
SIGNAL \C2|C1|C6|Add1~17_sumout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN[2]~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN[2]~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN[2]~3_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_2[5]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_0[5]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux10~1_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_6[5]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[5]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux10~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux10~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~18\ : std_logic;
SIGNAL \C2|C1|C6|Add1~19\ : std_logic;
SIGNAL \C2|C1|C6|Add1~21_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~6\ : std_logic;
SIGNAL \C2|C1|C6|Add0~10\ : std_logic;
SIGNAL \C2|C1|C6|Add0~14\ : std_logic;
SIGNAL \C2|C1|C6|Add0~18\ : std_logic;
SIGNAL \C2|C1|C6|Add0~21_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux10~1_combout\ : std_logic;
SIGNAL \IO65_IN[6]~input_o\ : std_logic;
SIGNAL \C2|C1|C6|RAM_IN[6]~feeder_combout\ : std_logic;
SIGNAL \IO65_IN[7]~input_o\ : std_logic;
SIGNAL \IO65_IN[8]~input_o\ : std_logic;
SIGNAL \C2|C1|C5|Mux6~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux6~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux6~2_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[8]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_6[8]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux7~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[8]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux7~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux7~2_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[7]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_6[7]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux8~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_2[7]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[7]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_0[7]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux8~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux8~2_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux9~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux9~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux9~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~22\ : std_logic;
SIGNAL \C2|C1|C6|Add1~23\ : std_logic;
SIGNAL \C2|C1|C6|Add1~26\ : std_logic;
SIGNAL \C2|C1|C6|Add1~27\ : std_logic;
SIGNAL \C2|C1|C6|Add1~30\ : std_logic;
SIGNAL \C2|C1|C6|Add1~31\ : std_logic;
SIGNAL \C2|C1|C6|Add1~34\ : std_logic;
SIGNAL \C2|C1|C6|Add1~35\ : std_logic;
SIGNAL \C2|C1|C6|Add1~37_sumout\ : std_logic;
SIGNAL \IO65_IN[9]~input_o\ : std_logic;
SIGNAL \C2|C1|C7|REG_0[10]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[10]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux5~1_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[10]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux5~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux5~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN~5_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~38\ : std_logic;
SIGNAL \C2|C1|C6|Add1~39\ : std_logic;
SIGNAL \C2|C1|C6|Add1~41_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~22\ : std_logic;
SIGNAL \C2|C1|C6|Add0~26\ : std_logic;
SIGNAL \C2|C1|C6|Add0~30\ : std_logic;
SIGNAL \C2|C1|C6|Add0~34\ : std_logic;
SIGNAL \C2|C1|C6|Add0~38\ : std_logic;
SIGNAL \C2|C1|C6|Add0~41_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux5~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux4~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN[13]~6_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[12]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_2[12]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_0[12]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux3~1_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[12]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux3~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux3~2_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_5[11]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_6[11]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux4~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_2[11]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_0[11]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux4~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux4~2_combout\ : std_logic;
SIGNAL \C2|C1|C5|REG_OUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C6|Add0~42\ : std_logic;
SIGNAL \C2|C1|C6|Add0~46\ : std_logic;
SIGNAL \C2|C1|C6|Add0~49_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux3~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~42\ : std_logic;
SIGNAL \C2|C1|C6|Add1~43\ : std_logic;
SIGNAL \C2|C1|C6|Add1~46\ : std_logic;
SIGNAL \C2|C1|C6|Add1~47\ : std_logic;
SIGNAL \C2|C1|C6|Add1~49_sumout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN~8_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_6[13]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux2~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[13]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_0[13]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux2~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux2~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~50\ : std_logic;
SIGNAL \C2|C1|C6|Add0~53_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux2~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux1~2_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[14]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_2[14]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_0[14]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux1~1_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[14]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux1~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux1~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN~10_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~54\ : std_logic;
SIGNAL \C2|C1|C6|Add0~57_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux1~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~50\ : std_logic;
SIGNAL \C2|C1|C6|Add1~51\ : std_logic;
SIGNAL \C2|C1|C6|Add1~54\ : std_logic;
SIGNAL \C2|C1|C6|Add1~55\ : std_logic;
SIGNAL \C2|C1|C6|Add1~57_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux1~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux1~3_combout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN[1]~4_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux1~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux1~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux1~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN~9_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~53_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux2~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux2~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux2~3_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_2[13]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux2~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux2~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux2~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux3~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux3~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux3~3_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux3~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux3~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux3~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~45_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux4~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~45_sumout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN~7_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux4~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux4~3_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux4~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux4~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux4~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux5~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux5~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux5~3_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_2[10]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux5~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux5~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux5~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|RAM_IN[10]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux6~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~37_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux6~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux6~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux6~3_combout\ : std_logic;
SIGNAL \C2|C1|C6|REG_IN[2]~11_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux6~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux6~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux6~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux7~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~33_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~33_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux7~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux7~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux7~3_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux7~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux7~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux7~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux8~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~29_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~29_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux8~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux8~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux8~3_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[7]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux8~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux8~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux8~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux9~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~25_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~25_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux9~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux9~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux9~3_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_5[6]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux9~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux9~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux9~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux10~2_combout\ : std_logic;
SIGNAL \IO65_IN[5]~input_o\ : std_logic;
SIGNAL \C2|C1|C6|Mux10~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux10~3_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux10~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux10~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux10~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~17_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux11~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux11~2_combout\ : std_logic;
SIGNAL \IO65_IN[4]~input_o\ : std_logic;
SIGNAL \C2|C1|C6|Mux11~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux11~3_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[4]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux11~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux11~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux11~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux12~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~13_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux12~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux12~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~13_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux12~3_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux12~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux12~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux12~2_combout\ : std_logic;
SIGNAL \C2|C1|C4|REG_OUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \IO65_IN[2]~input_o\ : std_logic;
SIGNAL \C2|C1|C6|Mux13~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~9_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux13~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux13~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~9_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux13~3_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux13~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux13~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux13~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux14~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~5_sumout\ : std_logic;
SIGNAL \IO65_IN[1]~input_o\ : std_logic;
SIGNAL \C2|C1|C6|Mux14~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux14~3_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[1]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux14~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux14~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux14~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux0~2_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_7[15]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux0~0_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_1[15]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[15]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux0~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|Mux0~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~58\ : std_logic;
SIGNAL \C2|C1|C6|Add1~59\ : std_logic;
SIGNAL \C2|C1|C6|Add1~61_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~58\ : std_logic;
SIGNAL \C2|C1|C6|Add0~61_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux25~3_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux0~6_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux0~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux0~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux0~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux0~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux0~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux26~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux26~4_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux26~5_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux26~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux26~3_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux26~6_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux26~7_combout\ : std_logic;
SIGNAL \C2|C1|C6|CMP_FLAG~q\ : std_logic;
SIGNAL \C2|C1|C6|PC[5]~0_combout\ : std_logic;
SIGNAL \C2|C1|C3|OP_DATA[0]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C8|Equal0~0_combout\ : std_logic;
SIGNAL \IO65_IN[0]~input_o\ : std_logic;
SIGNAL \C2|C1|C6|Mux15~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux15~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux15~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Add0~1_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Add1~1_sumout\ : std_logic;
SIGNAL \C2|C1|C6|Mux25~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux25~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux25~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux15~4_combout\ : std_logic;
SIGNAL \C2|C1|C6|Mux15~3_combout\ : std_logic;
SIGNAL \C2|C1|C7|REG_3[0]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux15~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux15~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|Mux15~2_combout\ : std_logic;
SIGNAL \C2|C1|C8|IO64_OUT[0]~0_combout\ : std_logic;
SIGNAL \C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|IO64_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|IO64_OUT[8]~feeder_combout\ : std_logic;
SIGNAL \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C2|LessThan3~1_combout\ : std_logic;
SIGNAL \C2|C2|LessThan4~0_combout\ : std_logic;
SIGNAL \C2|C2|LessThan3~0_combout\ : std_logic;
SIGNAL \C2|C2|REM_INT~0_combout\ : std_logic;
SIGNAL \C2|C2|LessThan4~2_combout\ : std_logic;
SIGNAL \C2|C2|LessThan4~1_combout\ : std_logic;
SIGNAL \C2|C2|LessThan4~3_combout\ : std_logic;
SIGNAL \C2|C2|DEC_OUT4~5_combout\ : std_logic;
SIGNAL \C2|C2|LessThan2~0_combout\ : std_logic;
SIGNAL \C2|C2|DEC_OUT4[1]~0_combout\ : std_logic;
SIGNAL \C2|C2|DEC_OUT4[1]~2_combout\ : std_logic;
SIGNAL \C2|C2|LessThan0~0_combout\ : std_logic;
SIGNAL \C2|C2|LessThan0~1_combout\ : std_logic;
SIGNAL \C2|C2|LessThan0~2_combout\ : std_logic;
SIGNAL \C2|C2|DEC_OUT4[1]~6_combout\ : std_logic;
SIGNAL \C2|C2|DEC_OUT4[2]~1_combout\ : std_logic;
SIGNAL \C2|C2|LessThan5~0_combout\ : std_logic;
SIGNAL \C2|C2|LessThan5~1_combout\ : std_logic;
SIGNAL \C2|C2|LessThan5~2_combout\ : std_logic;
SIGNAL \C2|C2|LessThan3~2_combout\ : std_logic;
SIGNAL \C2|C2|LessThan1~0_combout\ : std_logic;
SIGNAL \C2|C2|LessThan1~1_combout\ : std_logic;
SIGNAL \C2|C2|DEC_OUT4[0]~3_combout\ : std_logic;
SIGNAL \C2|C2|DEC_OUT4[0]~4_combout\ : std_logic;
SIGNAL \C2|C6|Mux6~0_combout\ : std_logic;
SIGNAL \C2|C6|Mux5~0_combout\ : std_logic;
SIGNAL \C2|C6|Mux4~0_combout\ : std_logic;
SIGNAL \C2|C6|Mux3~0_combout\ : std_logic;
SIGNAL \C2|C6|Mux2~0_combout\ : std_logic;
SIGNAL \C2|C6|Mux1~0_combout\ : std_logic;
SIGNAL \C2|C6|Mux0~0_combout\ : std_logic;
SIGNAL \C2|C2|Add0~10\ : std_logic;
SIGNAL \C2|C2|Add0~18\ : std_logic;
SIGNAL \C2|C2|Add0~14\ : std_logic;
SIGNAL \C2|C2|Add0~22\ : std_logic;
SIGNAL \C2|C2|Add0~26\ : std_logic;
SIGNAL \C2|C2|Add0~30\ : std_logic;
SIGNAL \C2|C2|Add0~34\ : std_logic;
SIGNAL \C2|C2|Add0~5_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[12]~2_combout\ : std_logic;
SIGNAL \C2|C2|Add4~10\ : std_logic;
SIGNAL \C2|C2|Add4~18\ : std_logic;
SIGNAL \C2|C2|Add4~14\ : std_logic;
SIGNAL \C2|C2|Add4~22\ : std_logic;
SIGNAL \C2|C2|Add4~26\ : std_logic;
SIGNAL \C2|C2|Add4~30\ : std_logic;
SIGNAL \C2|C2|Add4~34\ : std_logic;
SIGNAL \C2|C2|Add4~5_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~14\ : std_logic;
SIGNAL \C2|C2|Add5~10\ : std_logic;
SIGNAL \C2|C2|Add5~22\ : std_logic;
SIGNAL \C2|C2|Add5~18\ : std_logic;
SIGNAL \C2|C2|Add5~26\ : std_logic;
SIGNAL \C2|C2|Add5~30\ : std_logic;
SIGNAL \C2|C2|Add5~34\ : std_logic;
SIGNAL \C2|C2|Add5~38\ : std_logic;
SIGNAL \C2|C2|Add5~5_sumout\ : std_logic;
SIGNAL \C2|C2|Add3~14\ : std_logic;
SIGNAL \C2|C2|Add3~10\ : std_logic;
SIGNAL \C2|C2|Add3~22\ : std_logic;
SIGNAL \C2|C2|Add3~18\ : std_logic;
SIGNAL \C2|C2|Add3~26\ : std_logic;
SIGNAL \C2|C2|Add3~30\ : std_logic;
SIGNAL \C2|C2|Add3~34\ : std_logic;
SIGNAL \C2|C2|Add3~38\ : std_logic;
SIGNAL \C2|C2|Add3~5_sumout\ : std_logic;
SIGNAL \C2|C2|LessThan5~3_combout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[12]~0_combout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[12]~4_combout\ : std_logic;
SIGNAL \C2|C2|Add1~14\ : std_logic;
SIGNAL \C2|C2|Add1~10\ : std_logic;
SIGNAL \C2|C2|Add1~22\ : std_logic;
SIGNAL \C2|C2|Add1~18\ : std_logic;
SIGNAL \C2|C2|Add1~26\ : std_logic;
SIGNAL \C2|C2|Add1~30\ : std_logic;
SIGNAL \C2|C2|Add1~34\ : std_logic;
SIGNAL \C2|C2|Add1~38\ : std_logic;
SIGNAL \C2|C2|Add1~5_sumout\ : std_logic;
SIGNAL \C2|C2|LessThan1~2_combout\ : std_logic;
SIGNAL \C2|C2|Add2~14\ : std_logic;
SIGNAL \C2|C2|Add2~10\ : std_logic;
SIGNAL \C2|C2|Add2~18\ : std_logic;
SIGNAL \C2|C2|Add2~22\ : std_logic;
SIGNAL \C2|C2|Add2~26\ : std_logic;
SIGNAL \C2|C2|Add2~30\ : std_logic;
SIGNAL \C2|C2|Add2~5_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[12]~5_combout\ : std_logic;
SIGNAL \C2|C2|Add2~13_sumout\ : std_logic;
SIGNAL \C2|C2|Add0~17_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~21_sumout\ : std_logic;
SIGNAL \C2|C2|Add3~21_sumout\ : std_logic;
SIGNAL \C2|C2|Add4~17_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[6]~11_combout\ : std_logic;
SIGNAL \C2|C2|Add1~21_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[6]~12_combout\ : std_logic;
SIGNAL \C2|C2|Add0~21_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~25_sumout\ : std_logic;
SIGNAL \C2|C2|Add3~25_sumout\ : std_logic;
SIGNAL \C2|C2|Add4~21_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[8]~13_combout\ : std_logic;
SIGNAL \C2|C2|Add2~17_sumout\ : std_logic;
SIGNAL \C2|C2|Add1~25_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[8]~14_combout\ : std_logic;
SIGNAL \C2|C2|Add1~29_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~29_sumout\ : std_logic;
SIGNAL \C2|C2|Add3~29_sumout\ : std_logic;
SIGNAL \C2|C2|Add4~25_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[9]~15_combout\ : std_logic;
SIGNAL \C2|C2|Add0~25_sumout\ : std_logic;
SIGNAL \C2|C2|Add2~21_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[9]~16_combout\ : std_logic;
SIGNAL \C2|C2|Add3~9_sumout\ : std_logic;
SIGNAL \C2|C2|Add1~9_sumout\ : std_logic;
SIGNAL \C2|C2|REM_INT~2_combout\ : std_logic;
SIGNAL \C2|C2|Add0~9_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[4]~6_combout\ : std_logic;
SIGNAL \C2|C2|Add4~9_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~9_sumout\ : std_logic;
SIGNAL \C2|C2|REM_INT~1_combout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[5]~7_combout\ : std_logic;
SIGNAL \C2|C2|Add1~17_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~17_sumout\ : std_logic;
SIGNAL \C2|C2|Add3~17_sumout\ : std_logic;
SIGNAL \C2|C2|Add4~13_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[7]~9_combout\ : std_logic;
SIGNAL \C2|C2|Add2~9_sumout\ : std_logic;
SIGNAL \C2|C2|Add0~13_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[7]~10_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3~3_combout\ : std_logic;
SIGNAL \C2|C2|Add3~33_sumout\ : std_logic;
SIGNAL \C2|C2|Add4~29_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~33_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[10]~17_combout\ : std_logic;
SIGNAL \C2|C2|Add0~29_sumout\ : std_logic;
SIGNAL \C2|C2|Add1~33_sumout\ : std_logic;
SIGNAL \C2|C2|Add2~25_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[10]~18_combout\ : std_logic;
SIGNAL \C2|C2|Add1~37_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~37_sumout\ : std_logic;
SIGNAL \C2|C2|Add3~37_sumout\ : std_logic;
SIGNAL \C2|C2|Add4~33_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[11]~19_combout\ : std_logic;
SIGNAL \C2|C2|Add0~33_sumout\ : std_logic;
SIGNAL \C2|C2|Add2~29_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[11]~20_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3~4_combout\ : std_logic;
SIGNAL \C2|C2|Add0~6\ : std_logic;
SIGNAL \C2|C2|Add0~1_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~6\ : std_logic;
SIGNAL \C2|C2|Add5~1_sumout\ : std_logic;
SIGNAL \C2|C2|Add4~6\ : std_logic;
SIGNAL \C2|C2|Add4~1_sumout\ : std_logic;
SIGNAL \C2|C2|Add3~6\ : std_logic;
SIGNAL \C2|C2|Add3~1_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[13]~1_combout\ : std_logic;
SIGNAL \C2|C2|Add1~6\ : std_logic;
SIGNAL \C2|C2|Add1~1_sumout\ : std_logic;
SIGNAL \C2|C2|Add2~6\ : std_logic;
SIGNAL \C2|C2|Add2~1_sumout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[13]~3_combout\ : std_logic;
SIGNAL \C2|C3|LessThan2~2_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3[1]~1_combout\ : std_logic;
SIGNAL \C2|C7|Mux2~0_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3[3]~10_combout\ : std_logic;
SIGNAL \C2|C3|LessThan6~1_combout\ : std_logic;
SIGNAL \C2|C2|Add1~13_sumout\ : std_logic;
SIGNAL \C2|C2|REM_INT~4_combout\ : std_logic;
SIGNAL \C2|C2|Add3~13_sumout\ : std_logic;
SIGNAL \C2|C2|Add5~13_sumout\ : std_logic;
SIGNAL \C2|C2|REM_INT~3_combout\ : std_logic;
SIGNAL \C2|C2|REMINDER4[4]~8_combout\ : std_logic;
SIGNAL \C2|C3|LessThan7~0_combout\ : std_logic;
SIGNAL \C2|C3|LessThan7~2_combout\ : std_logic;
SIGNAL \C2|C3|LessThan8~0_combout\ : std_logic;
SIGNAL \C2|C3|LessThan3~0_combout\ : std_logic;
SIGNAL \C2|C3|LessThan6~0_combout\ : std_logic;
SIGNAL \C2|C3|LessThan5~0_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3~7_combout\ : std_logic;
SIGNAL \C2|C3|LessThan3~1_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3[1]~8_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3[1]~9_combout\ : std_logic;
SIGNAL \C2|C3|LessThan0~0_combout\ : std_logic;
SIGNAL \C2|C3|LessThan8~1_combout\ : std_logic;
SIGNAL \C2|C3|LessThan7~1_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3~2_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3[0]~5_combout\ : std_logic;
SIGNAL \C2|C3|LessThan4~0_combout\ : std_logic;
SIGNAL \C2|C3|LessThan2~0_combout\ : std_logic;
SIGNAL \C2|C3|LessThan2~1_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3[0]~0_combout\ : std_logic;
SIGNAL \C2|C3|LessThan0~1_combout\ : std_logic;
SIGNAL \C2|C3|LessThan0~2_combout\ : std_logic;
SIGNAL \C2|C3|LessThan0~3_combout\ : std_logic;
SIGNAL \C2|C3|DEC_OUT3[0]~6_combout\ : std_logic;
SIGNAL \C2|C7|Mux6~0_combout\ : std_logic;
SIGNAL \C2|C7|Mux5~0_combout\ : std_logic;
SIGNAL \C2|C7|Mux4~0_combout\ : std_logic;
SIGNAL \C2|C7|Mux3~0_combout\ : std_logic;
SIGNAL \C2|C7|Mux2~1_combout\ : std_logic;
SIGNAL \C2|C7|Mux1~0_combout\ : std_logic;
SIGNAL \C2|C7|Mux0~0_combout\ : std_logic;
SIGNAL \C2|C2|LessThan0~3_combout\ : std_logic;
SIGNAL \C2|C2|REM_INT~6_combout\ : std_logic;
SIGNAL \C2|C2|REM_INT~5_combout\ : std_logic;
SIGNAL \C2|C3|Add0~6\ : std_logic;
SIGNAL \C2|C3|Add0~10\ : std_logic;
SIGNAL \C2|C3|Add0~26\ : std_logic;
SIGNAL \C2|C3|Add0~22\ : std_logic;
SIGNAL \C2|C3|Add0~17_sumout\ : std_logic;
SIGNAL \C2|C3|Add4~6\ : std_logic;
SIGNAL \C2|C3|Add4~10\ : std_logic;
SIGNAL \C2|C3|Add4~26\ : std_logic;
SIGNAL \C2|C3|Add4~22\ : std_logic;
SIGNAL \C2|C3|Add4~17_sumout\ : std_logic;
SIGNAL \C2|C3|Add8~6\ : std_logic;
SIGNAL \C2|C3|Add8~10\ : std_logic;
SIGNAL \C2|C3|Add8~26\ : std_logic;
SIGNAL \C2|C3|Add8~22\ : std_logic;
SIGNAL \C2|C3|Add8~17_sumout\ : std_logic;
SIGNAL \C2|C3|Add6~6\ : std_logic;
SIGNAL \C2|C3|Add6~10\ : std_logic;
SIGNAL \C2|C3|Add6~26\ : std_logic;
SIGNAL \C2|C3|Add6~22\ : std_logic;
SIGNAL \C2|C3|Add6~17_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[9]~0_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[7]~25_combout\ : std_logic;
SIGNAL \C2|C3|Add3~2_combout\ : std_logic;
SIGNAL \C2|C3|Add5~2_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[9]~3_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[9]~2_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[7]~26_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[9]~5_combout\ : std_logic;
SIGNAL \C2|C3|Add2~6\ : std_logic;
SIGNAL \C2|C3|Add2~10\ : std_logic;
SIGNAL \C2|C3|Add2~26\ : std_logic;
SIGNAL \C2|C3|Add2~22\ : std_logic;
SIGNAL \C2|C3|Add2~17_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[7]~41_combout\ : std_logic;
SIGNAL \C2|C3|Add0~21_sumout\ : std_logic;
SIGNAL \C2|C3|Add2~21_sumout\ : std_logic;
SIGNAL \C2|C3|Add4~21_sumout\ : std_logic;
SIGNAL \C2|C3|Add8~21_sumout\ : std_logic;
SIGNAL \C2|C3|Add6~21_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[6]~27_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[6]~37_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[6]~28_combout\ : std_logic;
SIGNAL \C2|C3|LessThan5~1_combout\ : std_logic;
SIGNAL \C2|C3|LessThan7~3_combout\ : std_logic;
SIGNAL \C2|C3|Add8~25_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[5]~31_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[9]~9_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[5]~32_combout\ : std_logic;
SIGNAL \C2|C3|LessThan2~3_combout\ : std_logic;
SIGNAL \C2|C3|LessThan3~2_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[5]~34_combout\ : std_logic;
SIGNAL \C2|C3|Add2~25_sumout\ : std_logic;
SIGNAL \C2|C3|Add0~25_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[5]~35_combout\ : std_logic;
SIGNAL \C2|C3|LessThan4~1_combout\ : std_logic;
SIGNAL \C2|C3|Add4~25_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[5]~30_combout\ : std_logic;
SIGNAL \C2|C3|Add6~25_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[5]~33_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[4]~29_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[5]~36_combout\ : std_logic;
SIGNAL \C2|C3|Add1~1_combout\ : std_logic;
SIGNAL \C2|C3|Add2~18\ : std_logic;
SIGNAL \C2|C3|Add2~13_sumout\ : std_logic;
SIGNAL \C2|C3|Add0~18\ : std_logic;
SIGNAL \C2|C3|Add0~13_sumout\ : std_logic;
SIGNAL \C2|C3|Add4~18\ : std_logic;
SIGNAL \C2|C3|Add4~13_sumout\ : std_logic;
SIGNAL \C2|C3|Add7~1_combout\ : std_logic;
SIGNAL \C2|C3|Add8~18\ : std_logic;
SIGNAL \C2|C3|Add8~13_sumout\ : std_logic;
SIGNAL \C2|C3|Add6~18\ : std_logic;
SIGNAL \C2|C3|Add6~13_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[8]~22_combout\ : std_logic;
SIGNAL \C2|C3|Add3~1_combout\ : std_logic;
SIGNAL \C2|C3|Add5~1_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[8]~23_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[8]~24_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[3]~11_combout\ : std_logic;
SIGNAL \C2|C3|Add0~5_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[3]~14_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[3]~12_combout\ : std_logic;
SIGNAL \C2|C3|Add4~5_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[3]~7_combout\ : std_logic;
SIGNAL \C2|C3|Add2~5_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[3]~8_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[3]~13_combout\ : std_logic;
SIGNAL \C2|C3|Add6~5_sumout\ : std_logic;
SIGNAL \C2|C3|Add8~5_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[3]~10_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[3]~15_combout\ : std_logic;
SIGNAL \C2|C3|Add0~9_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[4]~20_combout\ : std_logic;
SIGNAL \C2|C3|Add4~9_sumout\ : std_logic;
SIGNAL \C2|C3|Add2~9_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[4]~16_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[4]~17_combout\ : std_logic;
SIGNAL \C2|C3|Add8~9_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[4]~18_combout\ : std_logic;
SIGNAL \C2|C3|Add6~9_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[4]~19_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[4]~21_combout\ : std_logic;
SIGNAL \C2|C4|LessThan3~0_combout\ : std_logic;
SIGNAL \C2|C4|DEC_OUT2[1]~5_combout\ : std_logic;
SIGNAL \C2|C4|LessThan5~0_combout\ : std_logic;
SIGNAL \C2|C3|Add8~14\ : std_logic;
SIGNAL \C2|C3|Add8~1_sumout\ : std_logic;
SIGNAL \C2|C3|Add7~0_combout\ : std_logic;
SIGNAL \C2|C3|Add6~14\ : std_logic;
SIGNAL \C2|C3|Add6~1_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[9]~1_combout\ : std_logic;
SIGNAL \C2|C3|Add3~0_combout\ : std_logic;
SIGNAL \C2|C3|Add4~14\ : std_logic;
SIGNAL \C2|C3|Add4~1_sumout\ : std_logic;
SIGNAL \C2|C3|Add5~0_combout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[9]~4_combout\ : std_logic;
SIGNAL \C2|C3|Add0~14\ : std_logic;
SIGNAL \C2|C3|Add0~1_sumout\ : std_logic;
SIGNAL \C2|C3|Add1~0_combout\ : std_logic;
SIGNAL \C2|C3|Add2~14\ : std_logic;
SIGNAL \C2|C3|Add2~1_sumout\ : std_logic;
SIGNAL \C2|C3|REMINDER3[9]~6_combout\ : std_logic;
SIGNAL \C2|C4|LessThan5~1_combout\ : std_logic;
SIGNAL \C2|C4|Add7~0_combout\ : std_logic;
SIGNAL \C2|C4|DEC_OUT2~4_combout\ : std_logic;
SIGNAL \C2|C4|DEC_OUT2[1]~6_combout\ : std_logic;
SIGNAL \C2|C4|LessThan0~0_combout\ : std_logic;
SIGNAL \C2|C4|LessThan3~1_combout\ : std_logic;
SIGNAL \C2|C4|LessThan2~0_combout\ : std_logic;
SIGNAL \C2|C4|LessThan2~1_combout\ : std_logic;
SIGNAL \C2|C4|LessThan1~0_combout\ : std_logic;
SIGNAL \C2|C4|DEC_OUT2[0]~0_combout\ : std_logic;
SIGNAL \C2|C4|LessThan8~0_combout\ : std_logic;
SIGNAL \C2|C4|DEC_OUT2[0]~1_combout\ : std_logic;
SIGNAL \C2|C4|LessThan6~0_combout\ : std_logic;
SIGNAL \C2|C4|LessThan4~0_combout\ : std_logic;
SIGNAL \C2|C4|DEC_OUT2[0]~2_combout\ : std_logic;
SIGNAL \C2|C4|DEC_OUT2[0]~3_combout\ : std_logic;
SIGNAL \C2|C4|DEC_OUT2[2]~7_combout\ : std_logic;
SIGNAL \C2|C4|DEC_OUT2[3]~8_combout\ : std_logic;
SIGNAL \C2|C8|Mux6~0_combout\ : std_logic;
SIGNAL \C2|C8|Mux5~0_combout\ : std_logic;
SIGNAL \C2|C8|Mux4~0_combout\ : std_logic;
SIGNAL \C2|C8|Mux3~0_combout\ : std_logic;
SIGNAL \C2|C8|Mux2~0_combout\ : std_logic;
SIGNAL \C2|C8|Mux1~0_combout\ : std_logic;
SIGNAL \C2|C8|Mux0~0_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[5]~2_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[5]~3_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[5]~0_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[5]~5_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[5]~16_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[5]~4_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[5]~6_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[5]~7_combout\ : std_logic;
SIGNAL \C2|C4|LessThan8~1_combout\ : std_logic;
SIGNAL \C2|C4|REM_INT~1_combout\ : std_logic;
SIGNAL \C2|C4|LessThan3~2_combout\ : std_logic;
SIGNAL \C2|C4|REM_INT~0_combout\ : std_logic;
SIGNAL \C2|C4|LessThan2~2_combout\ : std_logic;
SIGNAL \C2|C4|LessThan0~1_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[2]~8_combout\ : std_logic;
SIGNAL \C2|C4|REM_INT~2_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[4]~9_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[4]~10_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[6]~1_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[6]~24_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[6]~20_combout\ : std_logic;
SIGNAL \C2|C5|DEC_OUT1[3]~0_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[2]~14_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[2]~13_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[2]~15_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[3]~11_combout\ : std_logic;
SIGNAL \C2|C4|REM_INT~3_combout\ : std_logic;
SIGNAL \C2|C4|REM_INT~4_combout\ : std_logic;
SIGNAL \C2|C4|REMINDER2[3]~12_combout\ : std_logic;
SIGNAL \C2|C5|DEC_OUT1[0]~2_combout\ : std_logic;
SIGNAL \C2|C5|LessThan5~0_combout\ : std_logic;
SIGNAL \C2|C5|DEC_OUT1[1]~1_combout\ : std_logic;
SIGNAL \C2|C9|Mux6~0_combout\ : std_logic;
SIGNAL \C2|C9|Mux5~0_combout\ : std_logic;
SIGNAL \C2|C9|Mux4~0_combout\ : std_logic;
SIGNAL \C2|C9|Mux3~0_combout\ : std_logic;
SIGNAL \C2|C9|Mux2~0_combout\ : std_logic;
SIGNAL \C2|C9|Mux1~0_combout\ : std_logic;
SIGNAL \C2|C9|Mux0~0_combout\ : std_logic;
SIGNAL \C2|C5|REMINDER1[3]~2_combout\ : std_logic;
SIGNAL \C2|C5|REMINDER1[2]~1_combout\ : std_logic;
SIGNAL \C2|C5|REMINDER1[1]~0_combout\ : std_logic;
SIGNAL \C2|C10|Mux6~0_combout\ : std_logic;
SIGNAL \C2|C10|Mux5~0_combout\ : std_logic;
SIGNAL \C2|C10|Mux4~0_combout\ : std_logic;
SIGNAL \C2|C10|Mux3~0_combout\ : std_logic;
SIGNAL \C2|C10|Mux2~0_combout\ : std_logic;
SIGNAL \C2|C10|Mux1~0_combout\ : std_logic;
SIGNAL \C2|C10|Mux0~0_combout\ : std_logic;
SIGNAL \C2|C1|C2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \C2|C1|C7|REG_0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C6|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|C1|C7|REG_4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|REG_5\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|REG_6\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|REG_7\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|REG_2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|REG_3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|REG_1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C6|REG_IN\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C8|IO64_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C6|RAM_IN\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C1|COUNT\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \C2|C1|C4|REG_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C3|OP_CODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C2|C1|C1|COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C2|C1|C3|OP_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|C1|C4|N_REG_OUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C2|C1|C5|REG_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C5|ALT_INV_REG_OUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_REG_OUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C3|ALT_INV_OP_DATA[7]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_REG_OUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|C1|C8|ALT_INV_IO64_OUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO65_IN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET_N~input_o\ : std_logic;
SIGNAL \C2|C1|C1|ALT_INV_COUNT[0]~1_combout\ : std_logic;
SIGNAL \C1|ALT_INV_COUNT\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \C2|C1|C6|ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN~10_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN~9_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN~8_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN~7_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN[13]~6_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN~5_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN[2]~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN[2]~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_PC[5]~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_IN\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C6|ALT_INV_Mux26~6_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux26~5_combout\ : std_logic;
SIGNAL \C2|C1|C5|ALT_INV_REG_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C6|ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_REG_WEN~q\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_N_REG_OUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C2|C1|C4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \C2|C1|C1|ALT_INV_COUNT[1]~0_combout\ : std_logic;
SIGNAL \C2|C1|C3|ALT_INV_OP_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|C1|C4|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \C2|C1|C4|ALT_INV_REG_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C1|ALT_INV_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C2|C1|C3|ALT_INV_OP_CODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C2|C2|ALT_INV_REM_INT~6_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REM_INT~5_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_RAM_IN\ : std_logic_vector(8 DOWNTO 4);
SIGNAL \C2|C1|C8|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_RAM_WEN~q\ : std_logic;
SIGNAL \C2|C1|C1|ALT_INV_CLK_EX~q\ : std_logic;
SIGNAL \C2|C10|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \C2|C5|ALT_INV_REMINDER1[3]~2_combout\ : std_logic;
SIGNAL \C2|C5|ALT_INV_REMINDER1[2]~1_combout\ : std_logic;
SIGNAL \C2|C5|ALT_INV_REMINDER1[1]~0_combout\ : std_logic;
SIGNAL \C2|C9|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \C2|C9|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \C2|C9|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \C2|C5|ALT_INV_DEC_OUT1[0]~2_combout\ : std_logic;
SIGNAL \C2|C5|ALT_INV_DEC_OUT1[1]~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[2]~15_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[2]~14_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[2]~13_combout\ : std_logic;
SIGNAL \C2|C5|ALT_INV_DEC_OUT1[3]~0_combout\ : std_logic;
SIGNAL \C2|C5|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[3]~12_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[3]~11_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REM_INT~4_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REM_INT~3_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[4]~10_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[4]~9_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REM_INT~2_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[2]~8_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REM_INT~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[5]~7_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REM_INT~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[5]~6_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[5]~5_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[5]~4_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[5]~3_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[5]~2_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[6]~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[5]~0_combout\ : std_logic;
SIGNAL \C2|C8|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_DEC_OUT2[2]~7_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_DEC_OUT2[1]~6_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_DEC_OUT2[1]~5_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_DEC_OUT2~4_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_DEC_OUT2[0]~3_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_DEC_OUT2[0]~2_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_DEC_OUT2[0]~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_Add7~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_DEC_OUT2[0]~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[5]~36_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[5]~35_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[5]~34_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[5]~33_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[5]~32_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[5]~31_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[5]~30_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[4]~29_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[6]~28_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[6]~27_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[7]~26_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add3~2_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[7]~25_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add5~2_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[8]~24_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[8]~23_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[8]~22_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add7~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[4]~21_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[4]~20_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[4]~19_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[4]~18_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan7~3_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[4]~17_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[4]~16_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[3]~15_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[3]~14_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[3]~13_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[3]~12_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[3]~11_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[3]~10_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[9]~9_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[3]~8_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[3]~7_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[9]~6_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[9]~5_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[9]~4_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[9]~3_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[9]~2_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[9]~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[9]~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add7~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \C2|C7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\ : std_logic;
SIGNAL \C2|C7|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3[1]~9_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3[1]~8_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3~7_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan7~2_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3[0]~6_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3[0]~5_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3~4_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3~3_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3~2_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3[1]~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_DEC_OUT3[0]~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[11]~20_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[11]~19_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[10]~18_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[10]~17_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[9]~16_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[9]~15_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[8]~14_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[8]~13_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[6]~12_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[6]~11_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[7]~10_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[7]~9_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[4]~8_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REM_INT~4_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REM_INT~3_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[5]~7_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REM_INT~2_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REM_INT~1_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[4]~6_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[12]~5_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[12]~4_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[13]~3_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[12]~2_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[13]~1_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REMINDER4[12]~0_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_DEC_OUT4[1]~6_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_DEC_OUT4~5_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_REM_INT~0_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_DEC_OUT4[0]~4_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_DEC_OUT4[0]~3_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_DEC_OUT4[1]~2_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_DEC_OUT4[1]~0_combout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \C2|C1|C8|ALT_INV_IO64_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C3|ALT_INV_REMINDER3[7]~41_combout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_REMINDER3[6]~37_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[6]~24_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[6]~20_combout\ : std_logic;
SIGNAL \C2|C4|ALT_INV_REMINDER2[5]~16_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C6|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \C2|C1|C7|ALT_INV_REG_1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|ALT_INV_REG_3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|ALT_INV_REG_0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|ALT_INV_REG_2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|ALT_INV_REG_7\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|ALT_INV_REG_6\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|ALT_INV_REG_5\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C7|ALT_INV_REG_4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C2|C1|C6|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_CMP_FLAG~q\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \C2|C1|C6|ALT_INV_PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C2|C3|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \C2|C3|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \C2|C2|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RESET_N <= RESET_N;
ww_IO65_IN <= IO65_IN;
IO64_OUT <= ww_IO64_OUT;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\C2|C1|C6|PC\(7) & \C2|C1|C6|PC\(6) & \C2|C1|C6|PC\(5) & \C2|C1|C6|PC\(4) & \C2|C1|C6|PC\(3) & \C2|C1|C6|PC\(2) & \C2|C1|C6|PC\(1) & \C2|C1|C6|PC\(0));

\C2|C1|C2|altsyncram_component|auto_generated|q_a\(0) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(1) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(2) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(3) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(4) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(11) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(12) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(13) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(14) <= \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);

\C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \C2|C1|C6|RAM_IN\(15) & \C2|C1|C6|RAM_IN\(14) & \C2|C1|C6|RAM_IN\(13) & \C2|C1|C6|RAM_IN\(12) & \C2|C1|C6|RAM_IN\(11) & \C2|C1|C6|RAM_IN\(10)
& \C2|C1|C6|RAM_IN\(9) & \C2|C1|C6|RAM_IN\(8) & \C2|C1|C6|RAM_IN\(7) & \C2|C1|C6|RAM_IN\(6) & \C2|C1|C6|RAM_IN\(5) & \C2|C1|C6|RAM_IN\(4) & \C2|C1|C6|RAM_IN\(3) & \C2|C1|C6|RAM_IN\(2) & \C2|C1|C6|RAM_IN\(1) & \C2|C1|C6|RAM_IN\(0));

\C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(4) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(3) & 
\C2|C1|C2|altsyncram_component|auto_generated|q_a\(2) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(1) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(0));

\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(0) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(1) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(2) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(3) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(4) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(5) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(6) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(7) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(8) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(9) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(10) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(11) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(12) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(13) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(14) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(15) <= \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\C2|C1|C5|ALT_INV_REG_OUT[3]~DUPLICATE_q\ <= NOT \C2|C1|C5|REG_OUT[3]~DUPLICATE_q\;
\C2|C1|C5|ALT_INV_REG_OUT[11]~DUPLICATE_q\ <= NOT \C2|C1|C5|REG_OUT[11]~DUPLICATE_q\;
\C2|C1|C3|ALT_INV_OP_DATA[7]~DUPLICATE_q\ <= NOT \C2|C1|C3|OP_DATA[7]~DUPLICATE_q\;
\C2|C1|C4|ALT_INV_REG_OUT[3]~DUPLICATE_q\ <= NOT \C2|C1|C4|REG_OUT[3]~DUPLICATE_q\;
\C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\ <= NOT \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\;
\C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\ <= NOT \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\;
\C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\ <= NOT \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\;
\C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\ <= NOT \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\;
\C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\ <= NOT \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\;
\C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\ <= NOT \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\;
\C2|C1|C8|ALT_INV_IO64_OUT[2]~DUPLICATE_q\ <= NOT \C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\;
\ALT_INV_IO65_IN[9]~input_o\ <= NOT \IO65_IN[9]~input_o\;
\ALT_INV_IO65_IN[8]~input_o\ <= NOT \IO65_IN[8]~input_o\;
\ALT_INV_IO65_IN[7]~input_o\ <= NOT \IO65_IN[7]~input_o\;
\ALT_INV_IO65_IN[6]~input_o\ <= NOT \IO65_IN[6]~input_o\;
\ALT_INV_IO65_IN[5]~input_o\ <= NOT \IO65_IN[5]~input_o\;
\ALT_INV_IO65_IN[4]~input_o\ <= NOT \IO65_IN[4]~input_o\;
\ALT_INV_IO65_IN[3]~input_o\ <= NOT \IO65_IN[3]~input_o\;
\ALT_INV_IO65_IN[2]~input_o\ <= NOT \IO65_IN[2]~input_o\;
\ALT_INV_IO65_IN[1]~input_o\ <= NOT \IO65_IN[1]~input_o\;
\ALT_INV_IO65_IN[0]~input_o\ <= NOT \IO65_IN[0]~input_o\;
\ALT_INV_RESET_N~input_o\ <= NOT \RESET_N~input_o\;
\C2|C1|C1|ALT_INV_COUNT[0]~1_combout\ <= NOT \C2|C1|C1|COUNT[0]~1_combout\;
\C1|ALT_INV_COUNT\(0) <= NOT \C1|COUNT\(0);
\C1|ALT_INV_COUNT\(1) <= NOT \C1|COUNT\(1);
\C1|ALT_INV_COUNT\(2) <= NOT \C1|COUNT\(2);
\C1|ALT_INV_COUNT\(3) <= NOT \C1|COUNT\(3);
\C1|ALT_INV_COUNT\(4) <= NOT \C1|COUNT\(4);
\C1|ALT_INV_COUNT\(5) <= NOT \C1|COUNT\(5);
\C1|ALT_INV_COUNT\(6) <= NOT \C1|COUNT\(6);
\C1|ALT_INV_COUNT\(7) <= NOT \C1|COUNT\(7);
\C1|ALT_INV_COUNT\(8) <= NOT \C1|COUNT\(8);
\C1|ALT_INV_COUNT\(9) <= NOT \C1|COUNT\(9);
\C1|ALT_INV_COUNT\(10) <= NOT \C1|COUNT\(10);
\C1|ALT_INV_COUNT\(11) <= NOT \C1|COUNT\(11);
\C1|ALT_INV_COUNT\(12) <= NOT \C1|COUNT\(12);
\C1|ALT_INV_COUNT\(13) <= NOT \C1|COUNT\(13);
\C1|ALT_INV_COUNT\(14) <= NOT \C1|COUNT\(14);
\C1|ALT_INV_COUNT\(15) <= NOT \C1|COUNT\(15);
\C1|ALT_INV_COUNT\(16) <= NOT \C1|COUNT\(16);
\C1|ALT_INV_COUNT\(17) <= NOT \C1|COUNT\(17);
\C2|C1|C6|ALT_INV_Mux25~3_combout\ <= NOT \C2|C1|C6|Mux25~3_combout\;
\C2|C1|C6|ALT_INV_Mux1~2_combout\ <= NOT \C2|C1|C6|Mux1~2_combout\;
\C2|C1|C6|ALT_INV_Mux1~1_combout\ <= NOT \C2|C1|C6|Mux1~1_combout\;
\C2|C1|C6|ALT_INV_Mux1~0_combout\ <= NOT \C2|C1|C6|Mux1~0_combout\;
\C2|C1|C6|ALT_INV_REG_IN~10_combout\ <= NOT \C2|C1|C6|REG_IN~10_combout\;
\C2|C1|C6|ALT_INV_Mux2~2_combout\ <= NOT \C2|C1|C6|Mux2~2_combout\;
\C2|C1|C6|ALT_INV_Mux2~1_combout\ <= NOT \C2|C1|C6|Mux2~1_combout\;
\C2|C1|C6|ALT_INV_Mux2~0_combout\ <= NOT \C2|C1|C6|Mux2~0_combout\;
\C2|C1|C6|ALT_INV_REG_IN~9_combout\ <= NOT \C2|C1|C6|REG_IN~9_combout\;
\C2|C1|C6|ALT_INV_Mux3~2_combout\ <= NOT \C2|C1|C6|Mux3~2_combout\;
\C2|C1|C6|ALT_INV_Mux3~1_combout\ <= NOT \C2|C1|C6|Mux3~1_combout\;
\C2|C1|C6|ALT_INV_Mux3~0_combout\ <= NOT \C2|C1|C6|Mux3~0_combout\;
\C2|C1|C6|ALT_INV_REG_IN~8_combout\ <= NOT \C2|C1|C6|REG_IN~8_combout\;
\C2|C1|C6|ALT_INV_Mux4~2_combout\ <= NOT \C2|C1|C6|Mux4~2_combout\;
\C2|C1|C6|ALT_INV_Mux4~1_combout\ <= NOT \C2|C1|C6|Mux4~1_combout\;
\C2|C1|C6|ALT_INV_Mux4~0_combout\ <= NOT \C2|C1|C6|Mux4~0_combout\;
\C2|C1|C6|ALT_INV_REG_IN~7_combout\ <= NOT \C2|C1|C6|REG_IN~7_combout\;
\C2|C1|C6|ALT_INV_Mux5~2_combout\ <= NOT \C2|C1|C6|Mux5~2_combout\;
\C2|C1|C6|ALT_INV_REG_IN[13]~6_combout\ <= NOT \C2|C1|C6|REG_IN[13]~6_combout\;
\C2|C1|C6|ALT_INV_Mux5~1_combout\ <= NOT \C2|C1|C6|Mux5~1_combout\;
\C2|C1|C6|ALT_INV_Mux5~0_combout\ <= NOT \C2|C1|C6|Mux5~0_combout\;
\C2|C1|C6|ALT_INV_REG_IN~5_combout\ <= NOT \C2|C1|C6|REG_IN~5_combout\;
\C2|C1|C6|ALT_INV_Mux6~2_combout\ <= NOT \C2|C1|C6|Mux6~2_combout\;
\C2|C1|C6|ALT_INV_Mux6~1_combout\ <= NOT \C2|C1|C6|Mux6~1_combout\;
\C2|C1|C6|ALT_INV_Mux6~0_combout\ <= NOT \C2|C1|C6|Mux6~0_combout\;
\C2|C1|C6|ALT_INV_Mux7~2_combout\ <= NOT \C2|C1|C6|Mux7~2_combout\;
\C2|C1|C6|ALT_INV_Mux7~1_combout\ <= NOT \C2|C1|C6|Mux7~1_combout\;
\C2|C1|C6|ALT_INV_Mux7~0_combout\ <= NOT \C2|C1|C6|Mux7~0_combout\;
\C2|C1|C6|ALT_INV_Mux8~2_combout\ <= NOT \C2|C1|C6|Mux8~2_combout\;
\C2|C1|C6|ALT_INV_Mux8~1_combout\ <= NOT \C2|C1|C6|Mux8~1_combout\;
\C2|C1|C6|ALT_INV_Mux8~0_combout\ <= NOT \C2|C1|C6|Mux8~0_combout\;
\C2|C1|C6|ALT_INV_Mux9~2_combout\ <= NOT \C2|C1|C6|Mux9~2_combout\;
\C2|C1|C6|ALT_INV_Mux9~1_combout\ <= NOT \C2|C1|C6|Mux9~1_combout\;
\C2|C1|C6|ALT_INV_Mux9~0_combout\ <= NOT \C2|C1|C6|Mux9~0_combout\;
\C2|C1|C6|ALT_INV_Mux10~2_combout\ <= NOT \C2|C1|C6|Mux10~2_combout\;
\C2|C1|C6|ALT_INV_Mux10~1_combout\ <= NOT \C2|C1|C6|Mux10~1_combout\;
\C2|C1|C6|ALT_INV_Mux10~0_combout\ <= NOT \C2|C1|C6|Mux10~0_combout\;
\C2|C1|C6|ALT_INV_Mux11~2_combout\ <= NOT \C2|C1|C6|Mux11~2_combout\;
\C2|C1|C6|ALT_INV_Mux11~1_combout\ <= NOT \C2|C1|C6|Mux11~1_combout\;
\C2|C1|C6|ALT_INV_Mux11~0_combout\ <= NOT \C2|C1|C6|Mux11~0_combout\;
\C2|C1|C6|ALT_INV_Mux12~2_combout\ <= NOT \C2|C1|C6|Mux12~2_combout\;
\C2|C1|C6|ALT_INV_Mux12~1_combout\ <= NOT \C2|C1|C6|Mux12~1_combout\;
\C2|C1|C6|ALT_INV_Mux12~0_combout\ <= NOT \C2|C1|C6|Mux12~0_combout\;
\C2|C1|C6|ALT_INV_Mux13~2_combout\ <= NOT \C2|C1|C6|Mux13~2_combout\;
\C2|C1|C6|ALT_INV_Mux13~1_combout\ <= NOT \C2|C1|C6|Mux13~1_combout\;
\C2|C1|C6|ALT_INV_Mux13~0_combout\ <= NOT \C2|C1|C6|Mux13~0_combout\;
\C2|C1|C6|ALT_INV_Mux14~2_combout\ <= NOT \C2|C1|C6|Mux14~2_combout\;
\C2|C1|C6|ALT_INV_Mux14~1_combout\ <= NOT \C2|C1|C6|Mux14~1_combout\;
\C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\ <= NOT \C2|C1|C6|REG_IN[2]~3_combout\;
\C2|C1|C6|ALT_INV_REG_IN[2]~2_combout\ <= NOT \C2|C1|C6|REG_IN[2]~2_combout\;
\C2|C1|C6|ALT_INV_REG_IN[2]~1_combout\ <= NOT \C2|C1|C6|REG_IN[2]~1_combout\;
\C2|C1|C6|ALT_INV_Mux14~0_combout\ <= NOT \C2|C1|C6|Mux14~0_combout\;
\C2|C1|C6|ALT_INV_PC[5]~2_combout\ <= NOT \C2|C1|C6|PC[5]~2_combout\;
\C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\ <= NOT \C2|C1|C6|REG_IN[2]~0_combout\;
\C2|C1|C5|ALT_INV_Mux10~1_combout\ <= NOT \C2|C1|C5|Mux10~1_combout\;
\C2|C1|C5|ALT_INV_Mux10~0_combout\ <= NOT \C2|C1|C5|Mux10~0_combout\;
\C2|C1|C5|ALT_INV_Mux11~1_combout\ <= NOT \C2|C1|C5|Mux11~1_combout\;
\C2|C1|C5|ALT_INV_Mux11~0_combout\ <= NOT \C2|C1|C5|Mux11~0_combout\;
\C2|C1|C5|ALT_INV_Mux12~1_combout\ <= NOT \C2|C1|C5|Mux12~1_combout\;
\C2|C1|C5|ALT_INV_Mux12~0_combout\ <= NOT \C2|C1|C5|Mux12~0_combout\;
\C2|C1|C5|ALT_INV_Mux13~1_combout\ <= NOT \C2|C1|C5|Mux13~1_combout\;
\C2|C1|C5|ALT_INV_Mux13~0_combout\ <= NOT \C2|C1|C5|Mux13~0_combout\;
\C2|C1|C5|ALT_INV_Mux14~1_combout\ <= NOT \C2|C1|C5|Mux14~1_combout\;
\C2|C1|C5|ALT_INV_Mux14~0_combout\ <= NOT \C2|C1|C5|Mux14~0_combout\;
\C2|C1|C5|ALT_INV_Mux15~1_combout\ <= NOT \C2|C1|C5|Mux15~1_combout\;
\C2|C1|C5|ALT_INV_Mux15~0_combout\ <= NOT \C2|C1|C5|Mux15~0_combout\;
\C2|C1|C5|ALT_INV_Mux7~1_combout\ <= NOT \C2|C1|C5|Mux7~1_combout\;
\C2|C1|C5|ALT_INV_Mux7~0_combout\ <= NOT \C2|C1|C5|Mux7~0_combout\;
\C2|C1|C5|ALT_INV_Mux8~1_combout\ <= NOT \C2|C1|C5|Mux8~1_combout\;
\C2|C1|C5|ALT_INV_Mux8~0_combout\ <= NOT \C2|C1|C5|Mux8~0_combout\;
\C2|C1|C5|ALT_INV_Mux9~1_combout\ <= NOT \C2|C1|C5|Mux9~1_combout\;
\C2|C1|C5|ALT_INV_Mux9~0_combout\ <= NOT \C2|C1|C5|Mux9~0_combout\;
\C2|C1|C5|ALT_INV_Mux4~1_combout\ <= NOT \C2|C1|C5|Mux4~1_combout\;
\C2|C1|C5|ALT_INV_Mux4~0_combout\ <= NOT \C2|C1|C5|Mux4~0_combout\;
\C2|C1|C5|ALT_INV_Mux5~1_combout\ <= NOT \C2|C1|C5|Mux5~1_combout\;
\C2|C1|C5|ALT_INV_Mux5~0_combout\ <= NOT \C2|C1|C5|Mux5~0_combout\;
\C2|C1|C5|ALT_INV_Mux6~1_combout\ <= NOT \C2|C1|C5|Mux6~1_combout\;
\C2|C1|C5|ALT_INV_Mux6~0_combout\ <= NOT \C2|C1|C5|Mux6~0_combout\;
\C2|C1|C5|ALT_INV_Mux1~1_combout\ <= NOT \C2|C1|C5|Mux1~1_combout\;
\C2|C1|C5|ALT_INV_Mux1~0_combout\ <= NOT \C2|C1|C5|Mux1~0_combout\;
\C2|C1|C5|ALT_INV_Mux2~1_combout\ <= NOT \C2|C1|C5|Mux2~1_combout\;
\C2|C1|C5|ALT_INV_Mux2~0_combout\ <= NOT \C2|C1|C5|Mux2~0_combout\;
\C2|C1|C5|ALT_INV_Mux3~1_combout\ <= NOT \C2|C1|C5|Mux3~1_combout\;
\C2|C1|C5|ALT_INV_Mux3~0_combout\ <= NOT \C2|C1|C5|Mux3~0_combout\;
\C2|C1|C5|ALT_INV_Mux0~1_combout\ <= NOT \C2|C1|C5|Mux0~1_combout\;
\C2|C1|C5|ALT_INV_Mux0~0_combout\ <= NOT \C2|C1|C5|Mux0~0_combout\;
\C1|ALT_INV_COUNT\(18) <= NOT \C1|COUNT\(18);
\C2|C1|C6|ALT_INV_Mux0~0_combout\ <= NOT \C2|C1|C6|Mux0~0_combout\;
\C2|C1|C6|ALT_INV_Mux15~2_combout\ <= NOT \C2|C1|C6|Mux15~2_combout\;
\C2|C1|C6|ALT_INV_Mux15~1_combout\ <= NOT \C2|C1|C6|Mux15~1_combout\;
\C2|C1|C6|ALT_INV_Mux15~0_combout\ <= NOT \C2|C1|C6|Mux15~0_combout\;
\C2|C1|C6|ALT_INV_Mux25~2_combout\ <= NOT \C2|C1|C6|Mux25~2_combout\;
\C2|C1|C6|ALT_INV_Mux25~1_combout\ <= NOT \C2|C1|C6|Mux25~1_combout\;
\C2|C1|C6|ALT_INV_Mux25~0_combout\ <= NOT \C2|C1|C6|Mux25~0_combout\;
\C2|C1|C6|ALT_INV_REG_IN\(15) <= NOT \C2|C1|C6|REG_IN\(15);
\C2|C1|C6|ALT_INV_REG_IN\(14) <= NOT \C2|C1|C6|REG_IN\(14);
\C2|C1|C6|ALT_INV_REG_IN\(13) <= NOT \C2|C1|C6|REG_IN\(13);
\C2|C1|C6|ALT_INV_REG_IN\(12) <= NOT \C2|C1|C6|REG_IN\(12);
\C2|C1|C6|ALT_INV_REG_IN\(11) <= NOT \C2|C1|C6|REG_IN\(11);
\C2|C1|C6|ALT_INV_REG_IN\(10) <= NOT \C2|C1|C6|REG_IN\(10);
\C2|C1|C6|ALT_INV_Mux26~6_combout\ <= NOT \C2|C1|C6|Mux26~6_combout\;
\C2|C1|C6|ALT_INV_Mux26~5_combout\ <= NOT \C2|C1|C6|Mux26~5_combout\;
\C2|C1|C5|ALT_INV_REG_OUT\(5) <= NOT \C2|C1|C5|REG_OUT\(5);
\C2|C1|C5|ALT_INV_REG_OUT\(4) <= NOT \C2|C1|C5|REG_OUT\(4);
\C2|C1|C5|ALT_INV_REG_OUT\(3) <= NOT \C2|C1|C5|REG_OUT\(3);
\C2|C1|C6|ALT_INV_Mux26~4_combout\ <= NOT \C2|C1|C6|Mux26~4_combout\;
\C2|C1|C5|ALT_INV_REG_OUT\(2) <= NOT \C2|C1|C5|REG_OUT\(2);
\C2|C1|C5|ALT_INV_REG_OUT\(1) <= NOT \C2|C1|C5|REG_OUT\(1);
\C2|C1|C5|ALT_INV_REG_OUT\(0) <= NOT \C2|C1|C5|REG_OUT\(0);
\C2|C1|C6|ALT_INV_Mux26~3_combout\ <= NOT \C2|C1|C6|Mux26~3_combout\;
\C2|C1|C5|ALT_INV_REG_OUT\(8) <= NOT \C2|C1|C5|REG_OUT\(8);
\C2|C1|C5|ALT_INV_REG_OUT\(7) <= NOT \C2|C1|C5|REG_OUT\(7);
\C2|C1|C5|ALT_INV_REG_OUT\(6) <= NOT \C2|C1|C5|REG_OUT\(6);
\C2|C1|C6|ALT_INV_Mux26~2_combout\ <= NOT \C2|C1|C6|Mux26~2_combout\;
\C2|C1|C5|ALT_INV_REG_OUT\(11) <= NOT \C2|C1|C5|REG_OUT\(11);
\C2|C1|C5|ALT_INV_REG_OUT\(10) <= NOT \C2|C1|C5|REG_OUT\(10);
\C2|C1|C5|ALT_INV_REG_OUT\(9) <= NOT \C2|C1|C5|REG_OUT\(9);
\C2|C1|C6|ALT_INV_Mux26~1_combout\ <= NOT \C2|C1|C6|Mux26~1_combout\;
\C2|C1|C5|ALT_INV_REG_OUT\(14) <= NOT \C2|C1|C5|REG_OUT\(14);
\C2|C1|C5|ALT_INV_REG_OUT\(13) <= NOT \C2|C1|C5|REG_OUT\(13);
\C2|C1|C5|ALT_INV_REG_OUT\(12) <= NOT \C2|C1|C5|REG_OUT\(12);
\C2|C1|C6|ALT_INV_Mux26~0_combout\ <= NOT \C2|C1|C6|Mux26~0_combout\;
\C2|C1|C5|ALT_INV_REG_OUT\(15) <= NOT \C2|C1|C5|REG_OUT\(15);
\C1|ALT_INV_COUNT\(19) <= NOT \C1|COUNT\(19);
\C2|C1|C6|ALT_INV_REG_WEN~q\ <= NOT \C2|C1|C6|REG_WEN~q\;
\C2|C1|C4|ALT_INV_N_REG_OUT\(0) <= NOT \C2|C1|C4|N_REG_OUT\(0);
\C2|C1|C4|ALT_INV_N_REG_OUT\(2) <= NOT \C2|C1|C4|N_REG_OUT\(2);
\C2|C1|C4|ALT_INV_N_REG_OUT\(1) <= NOT \C2|C1|C4|N_REG_OUT\(1);
\C2|C1|C6|ALT_INV_REG_IN\(0) <= NOT \C2|C1|C6|REG_IN\(0);
\C2|C1|C4|ALT_INV_Mux0~1_combout\ <= NOT \C2|C1|C4|Mux0~1_combout\;
\C2|C1|C4|ALT_INV_Mux0~0_combout\ <= NOT \C2|C1|C4|Mux0~0_combout\;
\C2|C1|C4|ALT_INV_Mux1~1_combout\ <= NOT \C2|C1|C4|Mux1~1_combout\;
\C2|C1|C4|ALT_INV_Mux1~0_combout\ <= NOT \C2|C1|C4|Mux1~0_combout\;
\C2|C1|C4|ALT_INV_Mux2~1_combout\ <= NOT \C2|C1|C4|Mux2~1_combout\;
\C2|C1|C4|ALT_INV_Mux2~0_combout\ <= NOT \C2|C1|C4|Mux2~0_combout\;
\C2|C1|C4|ALT_INV_Mux3~1_combout\ <= NOT \C2|C1|C4|Mux3~1_combout\;
\C2|C1|C4|ALT_INV_Mux3~0_combout\ <= NOT \C2|C1|C4|Mux3~0_combout\;
\C2|C1|C4|ALT_INV_Mux4~1_combout\ <= NOT \C2|C1|C4|Mux4~1_combout\;
\C2|C1|C4|ALT_INV_Mux4~0_combout\ <= NOT \C2|C1|C4|Mux4~0_combout\;
\C2|C1|C4|ALT_INV_Mux5~1_combout\ <= NOT \C2|C1|C4|Mux5~1_combout\;
\C2|C1|C4|ALT_INV_Mux5~0_combout\ <= NOT \C2|C1|C4|Mux5~0_combout\;
\C2|C1|C4|ALT_INV_Mux6~1_combout\ <= NOT \C2|C1|C4|Mux6~1_combout\;
\C2|C1|C4|ALT_INV_Mux6~0_combout\ <= NOT \C2|C1|C4|Mux6~0_combout\;
\C2|C1|C4|ALT_INV_Mux7~1_combout\ <= NOT \C2|C1|C4|Mux7~1_combout\;
\C2|C1|C4|ALT_INV_Mux7~0_combout\ <= NOT \C2|C1|C4|Mux7~0_combout\;
\C2|C1|C4|ALT_INV_Mux8~1_combout\ <= NOT \C2|C1|C4|Mux8~1_combout\;
\C2|C1|C4|ALT_INV_Mux8~0_combout\ <= NOT \C2|C1|C4|Mux8~0_combout\;
\C2|C1|C4|ALT_INV_Mux9~1_combout\ <= NOT \C2|C1|C4|Mux9~1_combout\;
\C2|C1|C4|ALT_INV_Mux9~0_combout\ <= NOT \C2|C1|C4|Mux9~0_combout\;
\C2|C1|C4|ALT_INV_Mux10~1_combout\ <= NOT \C2|C1|C4|Mux10~1_combout\;
\C2|C1|C4|ALT_INV_Mux10~0_combout\ <= NOT \C2|C1|C4|Mux10~0_combout\;
\C2|C1|C4|ALT_INV_Mux11~1_combout\ <= NOT \C2|C1|C4|Mux11~1_combout\;
\C2|C1|C4|ALT_INV_Mux11~0_combout\ <= NOT \C2|C1|C4|Mux11~0_combout\;
\C2|C1|C4|ALT_INV_Mux12~1_combout\ <= NOT \C2|C1|C4|Mux12~1_combout\;
\C2|C1|C4|ALT_INV_Mux12~0_combout\ <= NOT \C2|C1|C4|Mux12~0_combout\;
\C2|C1|C4|ALT_INV_Mux13~1_combout\ <= NOT \C2|C1|C4|Mux13~1_combout\;
\C2|C1|C4|ALT_INV_Mux13~0_combout\ <= NOT \C2|C1|C4|Mux13~0_combout\;
\C2|C1|C4|ALT_INV_Mux14~1_combout\ <= NOT \C2|C1|C4|Mux14~1_combout\;
\C2|C1|C4|ALT_INV_Mux14~0_combout\ <= NOT \C2|C1|C4|Mux14~0_combout\;
\C2|C1|C1|ALT_INV_COUNT[1]~0_combout\ <= NOT \C2|C1|C1|COUNT[1]~0_combout\;
\C2|C1|C3|ALT_INV_OP_DATA\(7) <= NOT \C2|C1|C3|OP_DATA\(7);
\C2|C1|C3|ALT_INV_OP_DATA\(6) <= NOT \C2|C1|C3|OP_DATA\(6);
\C2|C1|C3|ALT_INV_OP_DATA\(5) <= NOT \C2|C1|C3|OP_DATA\(5);
\C2|C1|C3|ALT_INV_OP_DATA\(4) <= NOT \C2|C1|C3|OP_DATA\(4);
\C2|C1|C3|ALT_INV_OP_DATA\(3) <= NOT \C2|C1|C3|OP_DATA\(3);
\C2|C1|C3|ALT_INV_OP_DATA\(2) <= NOT \C2|C1|C3|OP_DATA\(2);
\C2|C1|C3|ALT_INV_OP_DATA\(1) <= NOT \C2|C1|C3|OP_DATA\(1);
\C2|C1|C3|ALT_INV_OP_DATA\(0) <= NOT \C2|C1|C3|OP_DATA\(0);
\C2|C1|C4|ALT_INV_Mux15~1_combout\ <= NOT \C2|C1|C4|Mux15~1_combout\;
\C2|C1|C4|ALT_INV_Mux15~0_combout\ <= NOT \C2|C1|C4|Mux15~0_combout\;
\C2|C1|C4|ALT_INV_REG_OUT\(15) <= NOT \C2|C1|C4|REG_OUT\(15);
\C2|C1|C4|ALT_INV_REG_OUT\(14) <= NOT \C2|C1|C4|REG_OUT\(14);
\C2|C1|C4|ALT_INV_REG_OUT\(13) <= NOT \C2|C1|C4|REG_OUT\(13);
\C2|C1|C4|ALT_INV_REG_OUT\(12) <= NOT \C2|C1|C4|REG_OUT\(12);
\C2|C1|C4|ALT_INV_REG_OUT\(11) <= NOT \C2|C1|C4|REG_OUT\(11);
\C2|C1|C4|ALT_INV_REG_OUT\(10) <= NOT \C2|C1|C4|REG_OUT\(10);
\C2|C1|C4|ALT_INV_REG_OUT\(9) <= NOT \C2|C1|C4|REG_OUT\(9);
\C2|C1|C4|ALT_INV_REG_OUT\(8) <= NOT \C2|C1|C4|REG_OUT\(8);
\C2|C1|C4|ALT_INV_REG_OUT\(7) <= NOT \C2|C1|C4|REG_OUT\(7);
\C2|C1|C4|ALT_INV_REG_OUT\(6) <= NOT \C2|C1|C4|REG_OUT\(6);
\C2|C1|C4|ALT_INV_REG_OUT\(5) <= NOT \C2|C1|C4|REG_OUT\(5);
\C2|C1|C4|ALT_INV_REG_OUT\(4) <= NOT \C2|C1|C4|REG_OUT\(4);
\C2|C1|C4|ALT_INV_REG_OUT\(3) <= NOT \C2|C1|C4|REG_OUT\(3);
\C2|C1|C4|ALT_INV_REG_OUT\(2) <= NOT \C2|C1|C4|REG_OUT\(2);
\C2|C1|C4|ALT_INV_REG_OUT\(1) <= NOT \C2|C1|C4|REG_OUT\(1);
\C2|C1|C1|ALT_INV_COUNT\(1) <= NOT \C2|C1|C1|COUNT\(1);
\C2|C1|C1|ALT_INV_COUNT\(0) <= NOT \C2|C1|C1|COUNT\(0);
\C2|C1|C3|ALT_INV_OP_CODE\(2) <= NOT \C2|C1|C3|OP_CODE\(2);
\C2|C1|C3|ALT_INV_OP_CODE\(1) <= NOT \C2|C1|C3|OP_CODE\(1);
\C2|C1|C3|ALT_INV_OP_CODE\(3) <= NOT \C2|C1|C3|OP_CODE\(3);
\C2|C1|C3|ALT_INV_OP_CODE\(0) <= NOT \C2|C1|C3|OP_CODE\(0);
\C2|C1|C4|ALT_INV_REG_OUT\(0) <= NOT \C2|C1|C4|REG_OUT\(0);
\C2|C2|ALT_INV_REM_INT~6_combout\ <= NOT \C2|C2|REM_INT~6_combout\;
\C2|C2|ALT_INV_REM_INT~5_combout\ <= NOT \C2|C2|REM_INT~5_combout\;
\C2|C2|ALT_INV_LessThan0~3_combout\ <= NOT \C2|C2|LessThan0~3_combout\;
\C2|C1|C6|ALT_INV_RAM_IN\(8) <= NOT \C2|C1|C6|RAM_IN\(8);
\C2|C1|C6|ALT_INV_RAM_IN\(4) <= NOT \C2|C1|C6|RAM_IN\(4);
\C2|C1|C8|ALT_INV_Equal0~0_combout\ <= NOT \C2|C1|C8|Equal0~0_combout\;
\C2|C1|C6|ALT_INV_RAM_WEN~q\ <= NOT \C2|C1|C6|RAM_WEN~q\;
\C2|C1|C1|ALT_INV_CLK_EX~q\ <= NOT \C2|C1|C1|CLK_EX~q\;
\C1|ALT_INV_COUNT\(20) <= NOT \C1|COUNT\(20);
\C2|C10|ALT_INV_Mux0~0_combout\ <= NOT \C2|C10|Mux0~0_combout\;
\C2|C5|ALT_INV_REMINDER1[3]~2_combout\ <= NOT \C2|C5|REMINDER1[3]~2_combout\;
\C2|C5|ALT_INV_REMINDER1[2]~1_combout\ <= NOT \C2|C5|REMINDER1[2]~1_combout\;
\C2|C5|ALT_INV_REMINDER1[1]~0_combout\ <= NOT \C2|C5|REMINDER1[1]~0_combout\;
\C2|C9|ALT_INV_Mux2~0_combout\ <= NOT \C2|C9|Mux2~0_combout\;
\C2|C9|ALT_INV_Mux3~0_combout\ <= NOT \C2|C9|Mux3~0_combout\;
\C2|C9|ALT_INV_Mux6~0_combout\ <= NOT \C2|C9|Mux6~0_combout\;
\C2|C5|ALT_INV_DEC_OUT1[0]~2_combout\ <= NOT \C2|C5|DEC_OUT1[0]~2_combout\;
\C2|C5|ALT_INV_DEC_OUT1[1]~1_combout\ <= NOT \C2|C5|DEC_OUT1[1]~1_combout\;
\C2|C4|ALT_INV_REMINDER2[2]~15_combout\ <= NOT \C2|C4|REMINDER2[2]~15_combout\;
\C2|C4|ALT_INV_REMINDER2[2]~14_combout\ <= NOT \C2|C4|REMINDER2[2]~14_combout\;
\C2|C4|ALT_INV_REMINDER2[2]~13_combout\ <= NOT \C2|C4|REMINDER2[2]~13_combout\;
\C2|C5|ALT_INV_DEC_OUT1[3]~0_combout\ <= NOT \C2|C5|DEC_OUT1[3]~0_combout\;
\C2|C5|ALT_INV_LessThan5~0_combout\ <= NOT \C2|C5|LessThan5~0_combout\;
\C2|C4|ALT_INV_REMINDER2[3]~12_combout\ <= NOT \C2|C4|REMINDER2[3]~12_combout\;
\C2|C4|ALT_INV_REMINDER2[3]~11_combout\ <= NOT \C2|C4|REMINDER2[3]~11_combout\;
\C2|C4|ALT_INV_REM_INT~4_combout\ <= NOT \C2|C4|REM_INT~4_combout\;
\C2|C4|ALT_INV_REM_INT~3_combout\ <= NOT \C2|C4|REM_INT~3_combout\;
\C2|C4|ALT_INV_REMINDER2[4]~10_combout\ <= NOT \C2|C4|REMINDER2[4]~10_combout\;
\C2|C4|ALT_INV_REMINDER2[4]~9_combout\ <= NOT \C2|C4|REMINDER2[4]~9_combout\;
\C2|C4|ALT_INV_REM_INT~2_combout\ <= NOT \C2|C4|REM_INT~2_combout\;
\C2|C4|ALT_INV_REMINDER2[2]~8_combout\ <= NOT \C2|C4|REMINDER2[2]~8_combout\;
\C2|C4|ALT_INV_LessThan2~2_combout\ <= NOT \C2|C4|LessThan2~2_combout\;
\C2|C4|ALT_INV_LessThan0~1_combout\ <= NOT \C2|C4|LessThan0~1_combout\;
\C2|C4|ALT_INV_REM_INT~1_combout\ <= NOT \C2|C4|REM_INT~1_combout\;
\C2|C4|ALT_INV_LessThan8~1_combout\ <= NOT \C2|C4|LessThan8~1_combout\;
\C2|C4|ALT_INV_REMINDER2[5]~7_combout\ <= NOT \C2|C4|REMINDER2[5]~7_combout\;
\C2|C4|ALT_INV_REM_INT~0_combout\ <= NOT \C2|C4|REM_INT~0_combout\;
\C2|C4|ALT_INV_LessThan3~2_combout\ <= NOT \C2|C4|LessThan3~2_combout\;
\C2|C4|ALT_INV_REMINDER2[5]~6_combout\ <= NOT \C2|C4|REMINDER2[5]~6_combout\;
\C2|C4|ALT_INV_REMINDER2[5]~5_combout\ <= NOT \C2|C4|REMINDER2[5]~5_combout\;
\C2|C4|ALT_INV_REMINDER2[5]~4_combout\ <= NOT \C2|C4|REMINDER2[5]~4_combout\;
\C2|C4|ALT_INV_REMINDER2[5]~3_combout\ <= NOT \C2|C4|REMINDER2[5]~3_combout\;
\C2|C4|ALT_INV_REMINDER2[5]~2_combout\ <= NOT \C2|C4|REMINDER2[5]~2_combout\;
\C2|C4|ALT_INV_REMINDER2[6]~1_combout\ <= NOT \C2|C4|REMINDER2[6]~1_combout\;
\C2|C4|ALT_INV_REMINDER2[5]~0_combout\ <= NOT \C2|C4|REMINDER2[5]~0_combout\;
\C2|C8|ALT_INV_Mux0~0_combout\ <= NOT \C2|C8|Mux0~0_combout\;
\C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\ <= NOT \C2|C4|DEC_OUT2[3]~8_combout\;
\C2|C4|ALT_INV_DEC_OUT2[2]~7_combout\ <= NOT \C2|C4|DEC_OUT2[2]~7_combout\;
\C2|C4|ALT_INV_DEC_OUT2[1]~6_combout\ <= NOT \C2|C4|DEC_OUT2[1]~6_combout\;
\C2|C4|ALT_INV_DEC_OUT2[1]~5_combout\ <= NOT \C2|C4|DEC_OUT2[1]~5_combout\;
\C2|C4|ALT_INV_LessThan5~1_combout\ <= NOT \C2|C4|LessThan5~1_combout\;
\C2|C4|ALT_INV_DEC_OUT2~4_combout\ <= NOT \C2|C4|DEC_OUT2~4_combout\;
\C2|C4|ALT_INV_DEC_OUT2[0]~3_combout\ <= NOT \C2|C4|DEC_OUT2[0]~3_combout\;
\C2|C4|ALT_INV_DEC_OUT2[0]~2_combout\ <= NOT \C2|C4|DEC_OUT2[0]~2_combout\;
\C2|C4|ALT_INV_LessThan6~0_combout\ <= NOT \C2|C4|LessThan6~0_combout\;
\C2|C4|ALT_INV_LessThan5~0_combout\ <= NOT \C2|C4|LessThan5~0_combout\;
\C2|C4|ALT_INV_LessThan4~0_combout\ <= NOT \C2|C4|LessThan4~0_combout\;
\C2|C4|ALT_INV_DEC_OUT2[0]~1_combout\ <= NOT \C2|C4|DEC_OUT2[0]~1_combout\;
\C2|C4|ALT_INV_LessThan8~0_combout\ <= NOT \C2|C4|LessThan8~0_combout\;
\C2|C4|ALT_INV_Add7~0_combout\ <= NOT \C2|C4|Add7~0_combout\;
\C2|C4|ALT_INV_DEC_OUT2[0]~0_combout\ <= NOT \C2|C4|DEC_OUT2[0]~0_combout\;
\C2|C4|ALT_INV_LessThan3~1_combout\ <= NOT \C2|C4|LessThan3~1_combout\;
\C2|C4|ALT_INV_LessThan3~0_combout\ <= NOT \C2|C4|LessThan3~0_combout\;
\C2|C4|ALT_INV_LessThan2~1_combout\ <= NOT \C2|C4|LessThan2~1_combout\;
\C2|C4|ALT_INV_LessThan2~0_combout\ <= NOT \C2|C4|LessThan2~0_combout\;
\C2|C4|ALT_INV_LessThan1~0_combout\ <= NOT \C2|C4|LessThan1~0_combout\;
\C2|C3|ALT_INV_REMINDER3[5]~36_combout\ <= NOT \C2|C3|REMINDER3[5]~36_combout\;
\C2|C3|ALT_INV_REMINDER3[5]~35_combout\ <= NOT \C2|C3|REMINDER3[5]~35_combout\;
\C2|C3|ALT_INV_REMINDER3[5]~34_combout\ <= NOT \C2|C3|REMINDER3[5]~34_combout\;
\C2|C3|ALT_INV_REMINDER3[5]~33_combout\ <= NOT \C2|C3|REMINDER3[5]~33_combout\;
\C2|C3|ALT_INV_REMINDER3[5]~32_combout\ <= NOT \C2|C3|REMINDER3[5]~32_combout\;
\C2|C3|ALT_INV_REMINDER3[5]~31_combout\ <= NOT \C2|C3|REMINDER3[5]~31_combout\;
\C2|C3|ALT_INV_REMINDER3[5]~30_combout\ <= NOT \C2|C3|REMINDER3[5]~30_combout\;
\C2|C3|ALT_INV_REMINDER3[4]~29_combout\ <= NOT \C2|C3|REMINDER3[4]~29_combout\;
\C2|C3|ALT_INV_REMINDER3[6]~28_combout\ <= NOT \C2|C3|REMINDER3[6]~28_combout\;
\C2|C3|ALT_INV_REMINDER3[6]~27_combout\ <= NOT \C2|C3|REMINDER3[6]~27_combout\;
\C2|C3|ALT_INV_REMINDER3[7]~26_combout\ <= NOT \C2|C3|REMINDER3[7]~26_combout\;
\C2|C3|ALT_INV_Add3~2_combout\ <= NOT \C2|C3|Add3~2_combout\;
\C2|C3|ALT_INV_REMINDER3[7]~25_combout\ <= NOT \C2|C3|REMINDER3[7]~25_combout\;
\C2|C3|ALT_INV_Add5~2_combout\ <= NOT \C2|C3|Add5~2_combout\;
\C2|C3|ALT_INV_REMINDER3[8]~24_combout\ <= NOT \C2|C3|REMINDER3[8]~24_combout\;
\C2|C3|ALT_INV_Add1~1_combout\ <= NOT \C2|C3|Add1~1_combout\;
\C2|C3|ALT_INV_REMINDER3[8]~23_combout\ <= NOT \C2|C3|REMINDER3[8]~23_combout\;
\C2|C3|ALT_INV_Add3~1_combout\ <= NOT \C2|C3|Add3~1_combout\;
\C2|C3|ALT_INV_REMINDER3[8]~22_combout\ <= NOT \C2|C3|REMINDER3[8]~22_combout\;
\C2|C3|ALT_INV_Add7~1_combout\ <= NOT \C2|C3|Add7~1_combout\;
\C2|C3|ALT_INV_Add5~1_combout\ <= NOT \C2|C3|Add5~1_combout\;
\C2|C4|ALT_INV_LessThan0~0_combout\ <= NOT \C2|C4|LessThan0~0_combout\;
\C2|C3|ALT_INV_REMINDER3[4]~21_combout\ <= NOT \C2|C3|REMINDER3[4]~21_combout\;
\C2|C3|ALT_INV_REMINDER3[4]~20_combout\ <= NOT \C2|C3|REMINDER3[4]~20_combout\;
\C2|C3|ALT_INV_REMINDER3[4]~19_combout\ <= NOT \C2|C3|REMINDER3[4]~19_combout\;
\C2|C3|ALT_INV_REMINDER3[4]~18_combout\ <= NOT \C2|C3|REMINDER3[4]~18_combout\;
\C2|C3|ALT_INV_LessThan7~3_combout\ <= NOT \C2|C3|LessThan7~3_combout\;
\C2|C3|ALT_INV_REMINDER3[4]~17_combout\ <= NOT \C2|C3|REMINDER3[4]~17_combout\;
\C2|C3|ALT_INV_REMINDER3[4]~16_combout\ <= NOT \C2|C3|REMINDER3[4]~16_combout\;
\C2|C3|ALT_INV_REMINDER3[3]~15_combout\ <= NOT \C2|C3|REMINDER3[3]~15_combout\;
\C2|C3|ALT_INV_REMINDER3[3]~14_combout\ <= NOT \C2|C3|REMINDER3[3]~14_combout\;
\C2|C3|ALT_INV_REMINDER3[3]~13_combout\ <= NOT \C2|C3|REMINDER3[3]~13_combout\;
\C2|C3|ALT_INV_LessThan4~1_combout\ <= NOT \C2|C3|LessThan4~1_combout\;
\C2|C3|ALT_INV_REMINDER3[3]~12_combout\ <= NOT \C2|C3|REMINDER3[3]~12_combout\;
\C2|C3|ALT_INV_REMINDER3[3]~11_combout\ <= NOT \C2|C3|REMINDER3[3]~11_combout\;
\C2|C3|ALT_INV_LessThan5~1_combout\ <= NOT \C2|C3|LessThan5~1_combout\;
\C2|C3|ALT_INV_REMINDER3[3]~10_combout\ <= NOT \C2|C3|REMINDER3[3]~10_combout\;
\C2|C3|ALT_INV_REMINDER3[9]~9_combout\ <= NOT \C2|C3|REMINDER3[9]~9_combout\;
\C2|C3|ALT_INV_REMINDER3[3]~8_combout\ <= NOT \C2|C3|REMINDER3[3]~8_combout\;
\C2|C3|ALT_INV_REMINDER3[3]~7_combout\ <= NOT \C2|C3|REMINDER3[3]~7_combout\;
\C2|C3|ALT_INV_LessThan2~3_combout\ <= NOT \C2|C3|LessThan2~3_combout\;
\C2|C3|ALT_INV_LessThan3~2_combout\ <= NOT \C2|C3|LessThan3~2_combout\;
\C2|C3|ALT_INV_REMINDER3[9]~6_combout\ <= NOT \C2|C3|REMINDER3[9]~6_combout\;
\C2|C3|ALT_INV_REMINDER3[9]~5_combout\ <= NOT \C2|C3|REMINDER3[9]~5_combout\;
\C2|C3|ALT_INV_Add1~0_combout\ <= NOT \C2|C3|Add1~0_combout\;
\C2|C3|ALT_INV_REMINDER3[9]~4_combout\ <= NOT \C2|C3|REMINDER3[9]~4_combout\;
\C2|C3|ALT_INV_REMINDER3[9]~3_combout\ <= NOT \C2|C3|REMINDER3[9]~3_combout\;
\C2|C3|ALT_INV_REMINDER3[9]~2_combout\ <= NOT \C2|C3|REMINDER3[9]~2_combout\;
\C2|C3|ALT_INV_Add3~0_combout\ <= NOT \C2|C3|Add3~0_combout\;
\C2|C3|ALT_INV_REMINDER3[9]~1_combout\ <= NOT \C2|C3|REMINDER3[9]~1_combout\;
\C2|C3|ALT_INV_REMINDER3[9]~0_combout\ <= NOT \C2|C3|REMINDER3[9]~0_combout\;
\C2|C3|ALT_INV_Add7~0_combout\ <= NOT \C2|C3|Add7~0_combout\;
\C2|C3|ALT_INV_Add5~0_combout\ <= NOT \C2|C3|Add5~0_combout\;
\C2|C7|ALT_INV_Mux0~0_combout\ <= NOT \C2|C7|Mux0~0_combout\;
\C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\ <= NOT \C2|C3|DEC_OUT3[3]~10_combout\;
\C2|C7|ALT_INV_Mux2~0_combout\ <= NOT \C2|C7|Mux2~0_combout\;
\C2|C3|ALT_INV_DEC_OUT3[1]~9_combout\ <= NOT \C2|C3|DEC_OUT3[1]~9_combout\;
\C2|C3|ALT_INV_DEC_OUT3[1]~8_combout\ <= NOT \C2|C3|DEC_OUT3[1]~8_combout\;
\C2|C3|ALT_INV_DEC_OUT3~7_combout\ <= NOT \C2|C3|DEC_OUT3~7_combout\;
\C2|C3|ALT_INV_LessThan5~0_combout\ <= NOT \C2|C3|LessThan5~0_combout\;
\C2|C3|ALT_INV_LessThan7~2_combout\ <= NOT \C2|C3|LessThan7~2_combout\;
\C2|C3|ALT_INV_DEC_OUT3[0]~6_combout\ <= NOT \C2|C3|DEC_OUT3[0]~6_combout\;
\C2|C3|ALT_INV_DEC_OUT3[0]~5_combout\ <= NOT \C2|C3|DEC_OUT3[0]~5_combout\;
\C2|C3|ALT_INV_DEC_OUT3~4_combout\ <= NOT \C2|C3|DEC_OUT3~4_combout\;
\C2|C3|ALT_INV_DEC_OUT3~3_combout\ <= NOT \C2|C3|DEC_OUT3~3_combout\;
\C2|C3|ALT_INV_LessThan6~1_combout\ <= NOT \C2|C3|LessThan6~1_combout\;
\C2|C3|ALT_INV_LessThan6~0_combout\ <= NOT \C2|C3|LessThan6~0_combout\;
\C2|C3|ALT_INV_DEC_OUT3~2_combout\ <= NOT \C2|C3|DEC_OUT3~2_combout\;
\C2|C3|ALT_INV_LessThan8~1_combout\ <= NOT \C2|C3|LessThan8~1_combout\;
\C2|C3|ALT_INV_LessThan7~1_combout\ <= NOT \C2|C3|LessThan7~1_combout\;
\C2|C3|ALT_INV_LessThan8~0_combout\ <= NOT \C2|C3|LessThan8~0_combout\;
\C2|C3|ALT_INV_DEC_OUT3[1]~1_combout\ <= NOT \C2|C3|DEC_OUT3[1]~1_combout\;
\C2|C3|ALT_INV_LessThan2~2_combout\ <= NOT \C2|C3|LessThan2~2_combout\;
\C2|C3|ALT_INV_DEC_OUT3[0]~0_combout\ <= NOT \C2|C3|DEC_OUT3[0]~0_combout\;
\C2|C3|ALT_INV_LessThan4~0_combout\ <= NOT \C2|C3|LessThan4~0_combout\;
\C2|C3|ALT_INV_LessThan7~0_combout\ <= NOT \C2|C3|LessThan7~0_combout\;
\C2|C3|ALT_INV_LessThan3~1_combout\ <= NOT \C2|C3|LessThan3~1_combout\;
\C2|C3|ALT_INV_LessThan3~0_combout\ <= NOT \C2|C3|LessThan3~0_combout\;
\C2|C3|ALT_INV_LessThan2~1_combout\ <= NOT \C2|C3|LessThan2~1_combout\;
\C2|C3|ALT_INV_LessThan2~0_combout\ <= NOT \C2|C3|LessThan2~0_combout\;
\C2|C3|ALT_INV_LessThan0~3_combout\ <= NOT \C2|C3|LessThan0~3_combout\;
\C2|C3|ALT_INV_LessThan0~2_combout\ <= NOT \C2|C3|LessThan0~2_combout\;
\C2|C2|ALT_INV_REMINDER4[11]~20_combout\ <= NOT \C2|C2|REMINDER4[11]~20_combout\;
\C2|C2|ALT_INV_REMINDER4[11]~19_combout\ <= NOT \C2|C2|REMINDER4[11]~19_combout\;
\C2|C2|ALT_INV_REMINDER4[10]~18_combout\ <= NOT \C2|C2|REMINDER4[10]~18_combout\;
\C2|C2|ALT_INV_REMINDER4[10]~17_combout\ <= NOT \C2|C2|REMINDER4[10]~17_combout\;
\C2|C3|ALT_INV_LessThan0~1_combout\ <= NOT \C2|C3|LessThan0~1_combout\;
\C2|C2|ALT_INV_REMINDER4[9]~16_combout\ <= NOT \C2|C2|REMINDER4[9]~16_combout\;
\C2|C2|ALT_INV_REMINDER4[9]~15_combout\ <= NOT \C2|C2|REMINDER4[9]~15_combout\;
\C2|C2|ALT_INV_REMINDER4[8]~14_combout\ <= NOT \C2|C2|REMINDER4[8]~14_combout\;
\C2|C2|ALT_INV_REMINDER4[8]~13_combout\ <= NOT \C2|C2|REMINDER4[8]~13_combout\;
\C2|C2|ALT_INV_REMINDER4[6]~12_combout\ <= NOT \C2|C2|REMINDER4[6]~12_combout\;
\C2|C2|ALT_INV_REMINDER4[6]~11_combout\ <= NOT \C2|C2|REMINDER4[6]~11_combout\;
\C2|C2|ALT_INV_REMINDER4[7]~10_combout\ <= NOT \C2|C2|REMINDER4[7]~10_combout\;
\C2|C2|ALT_INV_REMINDER4[7]~9_combout\ <= NOT \C2|C2|REMINDER4[7]~9_combout\;
\C2|C3|ALT_INV_LessThan0~0_combout\ <= NOT \C2|C3|LessThan0~0_combout\;
\C2|C2|ALT_INV_REMINDER4[4]~8_combout\ <= NOT \C2|C2|REMINDER4[4]~8_combout\;
\C2|C2|ALT_INV_REM_INT~4_combout\ <= NOT \C2|C2|REM_INT~4_combout\;
\C2|C2|ALT_INV_REM_INT~3_combout\ <= NOT \C2|C2|REM_INT~3_combout\;
\C2|C2|ALT_INV_REMINDER4[5]~7_combout\ <= NOT \C2|C2|REMINDER4[5]~7_combout\;
\C2|C2|ALT_INV_REM_INT~2_combout\ <= NOT \C2|C2|REM_INT~2_combout\;
\C2|C2|ALT_INV_REM_INT~1_combout\ <= NOT \C2|C2|REM_INT~1_combout\;
\C2|C2|ALT_INV_REMINDER4[4]~6_combout\ <= NOT \C2|C2|REMINDER4[4]~6_combout\;
\C2|C2|ALT_INV_REMINDER4[12]~5_combout\ <= NOT \C2|C2|REMINDER4[12]~5_combout\;
\C2|C2|ALT_INV_REMINDER4[12]~4_combout\ <= NOT \C2|C2|REMINDER4[12]~4_combout\;
\C2|C2|ALT_INV_REMINDER4[13]~3_combout\ <= NOT \C2|C2|REMINDER4[13]~3_combout\;
\C2|C2|ALT_INV_LessThan1~2_combout\ <= NOT \C2|C2|LessThan1~2_combout\;
\C2|C2|ALT_INV_REMINDER4[12]~2_combout\ <= NOT \C2|C2|REMINDER4[12]~2_combout\;
\C2|C2|ALT_INV_REMINDER4[13]~1_combout\ <= NOT \C2|C2|REMINDER4[13]~1_combout\;
\C2|C2|ALT_INV_REMINDER4[12]~0_combout\ <= NOT \C2|C2|REMINDER4[12]~0_combout\;
\C2|C2|ALT_INV_LessThan5~3_combout\ <= NOT \C2|C2|LessThan5~3_combout\;
\C2|C2|ALT_INV_DEC_OUT4[1]~6_combout\ <= NOT \C2|C2|DEC_OUT4[1]~6_combout\;
\C2|C2|ALT_INV_DEC_OUT4~5_combout\ <= NOT \C2|C2|DEC_OUT4~5_combout\;
\C2|C2|ALT_INV_REM_INT~0_combout\ <= NOT \C2|C2|REM_INT~0_combout\;
\C2|C2|ALT_INV_DEC_OUT4[0]~4_combout\ <= NOT \C2|C2|DEC_OUT4[0]~4_combout\;
\C2|C2|ALT_INV_DEC_OUT4[0]~3_combout\ <= NOT \C2|C2|DEC_OUT4[0]~3_combout\;
\C2|C2|ALT_INV_LessThan1~1_combout\ <= NOT \C2|C2|LessThan1~1_combout\;
\C2|C2|ALT_INV_LessThan1~0_combout\ <= NOT \C2|C2|LessThan1~0_combout\;
\C2|C2|ALT_INV_LessThan0~2_combout\ <= NOT \C2|C2|LessThan0~2_combout\;
\C2|C2|ALT_INV_LessThan0~1_combout\ <= NOT \C2|C2|LessThan0~1_combout\;
\C2|C2|ALT_INV_LessThan0~0_combout\ <= NOT \C2|C2|LessThan0~0_combout\;
\C2|C2|ALT_INV_DEC_OUT4[1]~2_combout\ <= NOT \C2|C2|DEC_OUT4[1]~2_combout\;
\C2|C2|ALT_INV_LessThan4~3_combout\ <= NOT \C2|C2|LessThan4~3_combout\;
\C2|C2|ALT_INV_LessThan4~2_combout\ <= NOT \C2|C2|LessThan4~2_combout\;
\C2|C2|ALT_INV_LessThan4~1_combout\ <= NOT \C2|C2|LessThan4~1_combout\;
\C2|C2|ALT_INV_LessThan5~2_combout\ <= NOT \C2|C2|LessThan5~2_combout\;
\C2|C2|ALT_INV_LessThan5~1_combout\ <= NOT \C2|C2|LessThan5~1_combout\;
\C2|C2|ALT_INV_LessThan5~0_combout\ <= NOT \C2|C2|LessThan5~0_combout\;
\C2|C2|ALT_INV_LessThan3~2_combout\ <= NOT \C2|C2|LessThan3~2_combout\;
\C2|C2|ALT_INV_LessThan3~1_combout\ <= NOT \C2|C2|LessThan3~1_combout\;
\C2|C2|ALT_INV_LessThan3~0_combout\ <= NOT \C2|C2|LessThan3~0_combout\;
\C2|C2|ALT_INV_LessThan4~0_combout\ <= NOT \C2|C2|LessThan4~0_combout\;
\C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\ <= NOT \C2|C2|DEC_OUT4[2]~1_combout\;
\C2|C2|ALT_INV_DEC_OUT4[1]~0_combout\ <= NOT \C2|C2|DEC_OUT4[1]~0_combout\;
\C2|C2|ALT_INV_LessThan2~0_combout\ <= NOT \C2|C2|LessThan2~0_combout\;
\C2|C1|C8|ALT_INV_IO64_OUT\(15) <= NOT \C2|C1|C8|IO64_OUT\(15);
\C2|C1|C8|ALT_INV_IO64_OUT\(14) <= NOT \C2|C1|C8|IO64_OUT\(14);
\C2|C1|C8|ALT_INV_IO64_OUT\(13) <= NOT \C2|C1|C8|IO64_OUT\(13);
\C2|C1|C8|ALT_INV_IO64_OUT\(12) <= NOT \C2|C1|C8|IO64_OUT\(12);
\C2|C1|C8|ALT_INV_IO64_OUT\(11) <= NOT \C2|C1|C8|IO64_OUT\(11);
\C2|C1|C8|ALT_INV_IO64_OUT\(10) <= NOT \C2|C1|C8|IO64_OUT\(10);
\C2|C1|C8|ALT_INV_IO64_OUT\(9) <= NOT \C2|C1|C8|IO64_OUT\(9);
\C2|C1|C8|ALT_INV_IO64_OUT\(8) <= NOT \C2|C1|C8|IO64_OUT\(8);
\C2|C1|C8|ALT_INV_IO64_OUT\(7) <= NOT \C2|C1|C8|IO64_OUT\(7);
\C2|C1|C8|ALT_INV_IO64_OUT\(6) <= NOT \C2|C1|C8|IO64_OUT\(6);
\C2|C1|C8|ALT_INV_IO64_OUT\(5) <= NOT \C2|C1|C8|IO64_OUT\(5);
\C2|C1|C8|ALT_INV_IO64_OUT\(4) <= NOT \C2|C1|C8|IO64_OUT\(4);
\C2|C1|C8|ALT_INV_IO64_OUT\(3) <= NOT \C2|C1|C8|IO64_OUT\(3);
\C2|C1|C8|ALT_INV_IO64_OUT\(2) <= NOT \C2|C1|C8|IO64_OUT\(2);
\C2|C1|C8|ALT_INV_IO64_OUT\(1) <= NOT \C2|C1|C8|IO64_OUT\(1);
\C2|C1|C8|ALT_INV_IO64_OUT\(0) <= NOT \C2|C1|C8|IO64_OUT\(0);
\C2|C3|ALT_INV_REMINDER3[7]~41_combout\ <= NOT \C2|C3|REMINDER3[7]~41_combout\;
\C2|C3|ALT_INV_REMINDER3[6]~37_combout\ <= NOT \C2|C3|REMINDER3[6]~37_combout\;
\C2|C4|ALT_INV_REMINDER2[6]~24_combout\ <= NOT \C2|C4|REMINDER2[6]~24_combout\;
\C2|C4|ALT_INV_REMINDER2[6]~20_combout\ <= NOT \C2|C4|REMINDER2[6]~20_combout\;
\C2|C4|ALT_INV_REMINDER2[5]~16_combout\ <= NOT \C2|C4|REMINDER2[5]~16_combout\;
\C2|C1|C6|ALT_INV_Mux15~4_combout\ <= NOT \C2|C1|C6|Mux15~4_combout\;
\C2|C1|C6|ALT_INV_Mux0~6_combout\ <= NOT \C2|C1|C6|Mux0~6_combout\;
\C2|C1|C6|ALT_INV_Mux0~2_combout\ <= NOT \C2|C1|C6|Mux0~2_combout\;
\C2|C1|C6|ALT_INV_Add1~61_sumout\ <= NOT \C2|C1|C6|Add1~61_sumout\;
\C2|C1|C6|ALT_INV_Add0~61_sumout\ <= NOT \C2|C1|C6|Add0~61_sumout\;
\C2|C1|C6|ALT_INV_Add0~57_sumout\ <= NOT \C2|C1|C6|Add0~57_sumout\;
\C2|C1|C6|ALT_INV_Add1~57_sumout\ <= NOT \C2|C1|C6|Add1~57_sumout\;
\C2|C1|C6|ALT_INV_Add0~53_sumout\ <= NOT \C2|C1|C6|Add0~53_sumout\;
\C2|C1|C6|ALT_INV_Add1~53_sumout\ <= NOT \C2|C1|C6|Add1~53_sumout\;
\C2|C1|C6|ALT_INV_Add0~49_sumout\ <= NOT \C2|C1|C6|Add0~49_sumout\;
\C2|C1|C6|ALT_INV_Add1~49_sumout\ <= NOT \C2|C1|C6|Add1~49_sumout\;
\C2|C1|C6|ALT_INV_Add0~45_sumout\ <= NOT \C2|C1|C6|Add0~45_sumout\;
\C2|C1|C6|ALT_INV_Add1~45_sumout\ <= NOT \C2|C1|C6|Add1~45_sumout\;
\C2|C1|C6|ALT_INV_Add0~41_sumout\ <= NOT \C2|C1|C6|Add0~41_sumout\;
\C2|C1|C6|ALT_INV_Add1~41_sumout\ <= NOT \C2|C1|C6|Add1~41_sumout\;
\C2|C1|C6|ALT_INV_Add0~37_sumout\ <= NOT \C2|C1|C6|Add0~37_sumout\;
\C2|C1|C6|ALT_INV_Add1~37_sumout\ <= NOT \C2|C1|C6|Add1~37_sumout\;
\C2|C1|C6|ALT_INV_Add0~33_sumout\ <= NOT \C2|C1|C6|Add0~33_sumout\;
\C2|C1|C6|ALT_INV_Add1~33_sumout\ <= NOT \C2|C1|C6|Add1~33_sumout\;
\C2|C1|C6|ALT_INV_Add0~29_sumout\ <= NOT \C2|C1|C6|Add0~29_sumout\;
\C2|C1|C6|ALT_INV_Add1~29_sumout\ <= NOT \C2|C1|C6|Add1~29_sumout\;
\C2|C1|C6|ALT_INV_Add0~25_sumout\ <= NOT \C2|C1|C6|Add0~25_sumout\;
\C2|C1|C6|ALT_INV_Add1~25_sumout\ <= NOT \C2|C1|C6|Add1~25_sumout\;
\C2|C1|C6|ALT_INV_Add0~21_sumout\ <= NOT \C2|C1|C6|Add0~21_sumout\;
\C2|C1|C6|ALT_INV_Add1~21_sumout\ <= NOT \C2|C1|C6|Add1~21_sumout\;
\C2|C1|C6|ALT_INV_Add0~17_sumout\ <= NOT \C2|C1|C6|Add0~17_sumout\;
\C2|C1|C6|ALT_INV_Add1~17_sumout\ <= NOT \C2|C1|C6|Add1~17_sumout\;
\C2|C1|C6|ALT_INV_Add0~13_sumout\ <= NOT \C2|C1|C6|Add0~13_sumout\;
\C2|C1|C6|ALT_INV_Add1~13_sumout\ <= NOT \C2|C1|C6|Add1~13_sumout\;
\C2|C1|C6|ALT_INV_Add0~9_sumout\ <= NOT \C2|C1|C6|Add0~9_sumout\;
\C2|C1|C6|ALT_INV_Add1~9_sumout\ <= NOT \C2|C1|C6|Add1~9_sumout\;
\C2|C1|C6|ALT_INV_Add0~5_sumout\ <= NOT \C2|C1|C6|Add0~5_sumout\;
\C2|C1|C6|ALT_INV_Add1~5_sumout\ <= NOT \C2|C1|C6|Add1~5_sumout\;
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(1);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(2);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(3);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(4);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(5);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(6);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(7);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(8);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(9);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(10);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(11);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(12);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(13);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(14);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(15);
\C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(0);
\C2|C1|C6|ALT_INV_Add1~1_sumout\ <= NOT \C2|C1|C6|Add1~1_sumout\;
\C2|C1|C6|ALT_INV_Add0~1_sumout\ <= NOT \C2|C1|C6|Add0~1_sumout\;
\C2|C1|C6|ALT_INV_REG_IN\(8) <= NOT \C2|C1|C6|REG_IN\(8);
\C2|C1|C6|ALT_INV_REG_IN\(7) <= NOT \C2|C1|C6|REG_IN\(7);
\C2|C1|C6|ALT_INV_REG_IN\(6) <= NOT \C2|C1|C6|REG_IN\(6);
\C2|C1|C6|ALT_INV_REG_IN\(5) <= NOT \C2|C1|C6|REG_IN\(5);
\C2|C1|C6|ALT_INV_REG_IN\(4) <= NOT \C2|C1|C6|REG_IN\(4);
\C2|C1|C6|ALT_INV_REG_IN\(3) <= NOT \C2|C1|C6|REG_IN\(3);
\C2|C1|C6|ALT_INV_REG_IN\(2) <= NOT \C2|C1|C6|REG_IN\(2);
\C2|C1|C6|ALT_INV_REG_IN\(1) <= NOT \C2|C1|C6|REG_IN\(1);
\C2|C1|C7|ALT_INV_REG_1\(15) <= NOT \C2|C1|C7|REG_1\(15);
\C2|C1|C7|ALT_INV_REG_3\(15) <= NOT \C2|C1|C7|REG_3\(15);
\C2|C1|C7|ALT_INV_REG_0\(15) <= NOT \C2|C1|C7|REG_0\(15);
\C2|C1|C7|ALT_INV_REG_2\(15) <= NOT \C2|C1|C7|REG_2\(15);
\C2|C1|C7|ALT_INV_REG_7\(15) <= NOT \C2|C1|C7|REG_7\(15);
\C2|C1|C7|ALT_INV_REG_6\(15) <= NOT \C2|C1|C7|REG_6\(15);
\C2|C1|C7|ALT_INV_REG_5\(15) <= NOT \C2|C1|C7|REG_5\(15);
\C2|C1|C7|ALT_INV_REG_4\(15) <= NOT \C2|C1|C7|REG_4\(15);
\C2|C1|C7|ALT_INV_REG_1\(14) <= NOT \C2|C1|C7|REG_1\(14);
\C2|C1|C7|ALT_INV_REG_3\(14) <= NOT \C2|C1|C7|REG_3\(14);
\C2|C1|C7|ALT_INV_REG_0\(14) <= NOT \C2|C1|C7|REG_0\(14);
\C2|C1|C7|ALT_INV_REG_2\(14) <= NOT \C2|C1|C7|REG_2\(14);
\C2|C1|C7|ALT_INV_REG_7\(14) <= NOT \C2|C1|C7|REG_7\(14);
\C2|C1|C7|ALT_INV_REG_6\(14) <= NOT \C2|C1|C7|REG_6\(14);
\C2|C1|C7|ALT_INV_REG_5\(14) <= NOT \C2|C1|C7|REG_5\(14);
\C2|C1|C7|ALT_INV_REG_4\(14) <= NOT \C2|C1|C7|REG_4\(14);
\C2|C1|C7|ALT_INV_REG_1\(13) <= NOT \C2|C1|C7|REG_1\(13);
\C2|C1|C7|ALT_INV_REG_3\(13) <= NOT \C2|C1|C7|REG_3\(13);
\C2|C1|C7|ALT_INV_REG_0\(13) <= NOT \C2|C1|C7|REG_0\(13);
\C2|C1|C7|ALT_INV_REG_2\(13) <= NOT \C2|C1|C7|REG_2\(13);
\C2|C1|C7|ALT_INV_REG_7\(13) <= NOT \C2|C1|C7|REG_7\(13);
\C2|C1|C7|ALT_INV_REG_6\(13) <= NOT \C2|C1|C7|REG_6\(13);
\C2|C1|C7|ALT_INV_REG_5\(13) <= NOT \C2|C1|C7|REG_5\(13);
\C2|C1|C7|ALT_INV_REG_4\(13) <= NOT \C2|C1|C7|REG_4\(13);
\C2|C1|C7|ALT_INV_REG_1\(12) <= NOT \C2|C1|C7|REG_1\(12);
\C2|C1|C7|ALT_INV_REG_3\(12) <= NOT \C2|C1|C7|REG_3\(12);
\C2|C1|C7|ALT_INV_REG_0\(12) <= NOT \C2|C1|C7|REG_0\(12);
\C2|C1|C7|ALT_INV_REG_2\(12) <= NOT \C2|C1|C7|REG_2\(12);
\C2|C1|C7|ALT_INV_REG_7\(12) <= NOT \C2|C1|C7|REG_7\(12);
\C2|C1|C7|ALT_INV_REG_6\(12) <= NOT \C2|C1|C7|REG_6\(12);
\C2|C1|C7|ALT_INV_REG_5\(12) <= NOT \C2|C1|C7|REG_5\(12);
\C2|C1|C7|ALT_INV_REG_4\(12) <= NOT \C2|C1|C7|REG_4\(12);
\C2|C1|C7|ALT_INV_REG_1\(11) <= NOT \C2|C1|C7|REG_1\(11);
\C2|C1|C7|ALT_INV_REG_3\(11) <= NOT \C2|C1|C7|REG_3\(11);
\C2|C1|C7|ALT_INV_REG_0\(11) <= NOT \C2|C1|C7|REG_0\(11);
\C2|C1|C7|ALT_INV_REG_2\(11) <= NOT \C2|C1|C7|REG_2\(11);
\C2|C1|C7|ALT_INV_REG_7\(11) <= NOT \C2|C1|C7|REG_7\(11);
\C2|C1|C7|ALT_INV_REG_6\(11) <= NOT \C2|C1|C7|REG_6\(11);
\C2|C1|C7|ALT_INV_REG_5\(11) <= NOT \C2|C1|C7|REG_5\(11);
\C2|C1|C7|ALT_INV_REG_4\(11) <= NOT \C2|C1|C7|REG_4\(11);
\C2|C1|C7|ALT_INV_REG_1\(10) <= NOT \C2|C1|C7|REG_1\(10);
\C2|C1|C7|ALT_INV_REG_3\(10) <= NOT \C2|C1|C7|REG_3\(10);
\C2|C1|C7|ALT_INV_REG_0\(10) <= NOT \C2|C1|C7|REG_0\(10);
\C2|C1|C7|ALT_INV_REG_2\(10) <= NOT \C2|C1|C7|REG_2\(10);
\C2|C1|C7|ALT_INV_REG_7\(10) <= NOT \C2|C1|C7|REG_7\(10);
\C2|C1|C7|ALT_INV_REG_6\(10) <= NOT \C2|C1|C7|REG_6\(10);
\C2|C1|C7|ALT_INV_REG_5\(10) <= NOT \C2|C1|C7|REG_5\(10);
\C2|C1|C7|ALT_INV_REG_4\(10) <= NOT \C2|C1|C7|REG_4\(10);
\C2|C1|C7|ALT_INV_REG_1\(9) <= NOT \C2|C1|C7|REG_1\(9);
\C2|C1|C7|ALT_INV_REG_3\(9) <= NOT \C2|C1|C7|REG_3\(9);
\C2|C1|C7|ALT_INV_REG_0\(9) <= NOT \C2|C1|C7|REG_0\(9);
\C2|C1|C7|ALT_INV_REG_2\(9) <= NOT \C2|C1|C7|REG_2\(9);
\C2|C1|C7|ALT_INV_REG_7\(9) <= NOT \C2|C1|C7|REG_7\(9);
\C2|C1|C7|ALT_INV_REG_6\(9) <= NOT \C2|C1|C7|REG_6\(9);
\C2|C1|C7|ALT_INV_REG_5\(9) <= NOT \C2|C1|C7|REG_5\(9);
\C2|C1|C7|ALT_INV_REG_4\(9) <= NOT \C2|C1|C7|REG_4\(9);
\C2|C1|C7|ALT_INV_REG_1\(8) <= NOT \C2|C1|C7|REG_1\(8);
\C2|C1|C7|ALT_INV_REG_3\(8) <= NOT \C2|C1|C7|REG_3\(8);
\C2|C1|C7|ALT_INV_REG_0\(8) <= NOT \C2|C1|C7|REG_0\(8);
\C2|C1|C7|ALT_INV_REG_2\(8) <= NOT \C2|C1|C7|REG_2\(8);
\C2|C1|C7|ALT_INV_REG_7\(8) <= NOT \C2|C1|C7|REG_7\(8);
\C2|C1|C7|ALT_INV_REG_6\(8) <= NOT \C2|C1|C7|REG_6\(8);
\C2|C1|C7|ALT_INV_REG_5\(8) <= NOT \C2|C1|C7|REG_5\(8);
\C2|C1|C7|ALT_INV_REG_4\(8) <= NOT \C2|C1|C7|REG_4\(8);
\C2|C1|C7|ALT_INV_REG_1\(7) <= NOT \C2|C1|C7|REG_1\(7);
\C2|C1|C7|ALT_INV_REG_3\(7) <= NOT \C2|C1|C7|REG_3\(7);
\C2|C1|C7|ALT_INV_REG_0\(7) <= NOT \C2|C1|C7|REG_0\(7);
\C2|C1|C7|ALT_INV_REG_2\(7) <= NOT \C2|C1|C7|REG_2\(7);
\C2|C1|C7|ALT_INV_REG_7\(7) <= NOT \C2|C1|C7|REG_7\(7);
\C2|C1|C7|ALT_INV_REG_6\(7) <= NOT \C2|C1|C7|REG_6\(7);
\C2|C1|C7|ALT_INV_REG_5\(7) <= NOT \C2|C1|C7|REG_5\(7);
\C2|C1|C7|ALT_INV_REG_4\(7) <= NOT \C2|C1|C7|REG_4\(7);
\C2|C1|C7|ALT_INV_REG_1\(6) <= NOT \C2|C1|C7|REG_1\(6);
\C2|C1|C7|ALT_INV_REG_3\(6) <= NOT \C2|C1|C7|REG_3\(6);
\C2|C1|C7|ALT_INV_REG_0\(6) <= NOT \C2|C1|C7|REG_0\(6);
\C2|C1|C7|ALT_INV_REG_2\(6) <= NOT \C2|C1|C7|REG_2\(6);
\C2|C1|C7|ALT_INV_REG_7\(6) <= NOT \C2|C1|C7|REG_7\(6);
\C2|C1|C7|ALT_INV_REG_6\(6) <= NOT \C2|C1|C7|REG_6\(6);
\C2|C1|C7|ALT_INV_REG_5\(6) <= NOT \C2|C1|C7|REG_5\(6);
\C2|C1|C7|ALT_INV_REG_4\(6) <= NOT \C2|C1|C7|REG_4\(6);
\C2|C1|C7|ALT_INV_REG_1\(5) <= NOT \C2|C1|C7|REG_1\(5);
\C2|C1|C7|ALT_INV_REG_3\(5) <= NOT \C2|C1|C7|REG_3\(5);
\C2|C1|C7|ALT_INV_REG_0\(5) <= NOT \C2|C1|C7|REG_0\(5);
\C2|C1|C7|ALT_INV_REG_2\(5) <= NOT \C2|C1|C7|REG_2\(5);
\C2|C1|C7|ALT_INV_REG_7\(5) <= NOT \C2|C1|C7|REG_7\(5);
\C2|C1|C7|ALT_INV_REG_6\(5) <= NOT \C2|C1|C7|REG_6\(5);
\C2|C1|C7|ALT_INV_REG_5\(5) <= NOT \C2|C1|C7|REG_5\(5);
\C2|C1|C7|ALT_INV_REG_4\(5) <= NOT \C2|C1|C7|REG_4\(5);
\C2|C1|C7|ALT_INV_REG_1\(4) <= NOT \C2|C1|C7|REG_1\(4);
\C2|C1|C7|ALT_INV_REG_3\(4) <= NOT \C2|C1|C7|REG_3\(4);
\C2|C1|C7|ALT_INV_REG_0\(4) <= NOT \C2|C1|C7|REG_0\(4);
\C2|C1|C7|ALT_INV_REG_2\(4) <= NOT \C2|C1|C7|REG_2\(4);
\C2|C1|C7|ALT_INV_REG_7\(4) <= NOT \C2|C1|C7|REG_7\(4);
\C2|C1|C7|ALT_INV_REG_6\(4) <= NOT \C2|C1|C7|REG_6\(4);
\C2|C1|C7|ALT_INV_REG_5\(4) <= NOT \C2|C1|C7|REG_5\(4);
\C2|C1|C7|ALT_INV_REG_4\(4) <= NOT \C2|C1|C7|REG_4\(4);
\C2|C1|C7|ALT_INV_REG_1\(3) <= NOT \C2|C1|C7|REG_1\(3);
\C2|C1|C7|ALT_INV_REG_3\(3) <= NOT \C2|C1|C7|REG_3\(3);
\C2|C1|C7|ALT_INV_REG_0\(3) <= NOT \C2|C1|C7|REG_0\(3);
\C2|C1|C7|ALT_INV_REG_2\(3) <= NOT \C2|C1|C7|REG_2\(3);
\C2|C1|C7|ALT_INV_REG_7\(3) <= NOT \C2|C1|C7|REG_7\(3);
\C2|C1|C7|ALT_INV_REG_6\(3) <= NOT \C2|C1|C7|REG_6\(3);
\C2|C1|C7|ALT_INV_REG_5\(3) <= NOT \C2|C1|C7|REG_5\(3);
\C2|C1|C7|ALT_INV_REG_4\(3) <= NOT \C2|C1|C7|REG_4\(3);
\C2|C1|C7|ALT_INV_REG_1\(2) <= NOT \C2|C1|C7|REG_1\(2);
\C2|C1|C7|ALT_INV_REG_3\(2) <= NOT \C2|C1|C7|REG_3\(2);
\C2|C1|C7|ALT_INV_REG_0\(2) <= NOT \C2|C1|C7|REG_0\(2);
\C2|C1|C7|ALT_INV_REG_2\(2) <= NOT \C2|C1|C7|REG_2\(2);
\C2|C1|C7|ALT_INV_REG_7\(2) <= NOT \C2|C1|C7|REG_7\(2);
\C2|C1|C7|ALT_INV_REG_6\(2) <= NOT \C2|C1|C7|REG_6\(2);
\C2|C1|C7|ALT_INV_REG_5\(2) <= NOT \C2|C1|C7|REG_5\(2);
\C2|C1|C7|ALT_INV_REG_4\(2) <= NOT \C2|C1|C7|REG_4\(2);
\C2|C1|C7|ALT_INV_REG_1\(1) <= NOT \C2|C1|C7|REG_1\(1);
\C2|C1|C7|ALT_INV_REG_3\(1) <= NOT \C2|C1|C7|REG_3\(1);
\C2|C1|C7|ALT_INV_REG_0\(1) <= NOT \C2|C1|C7|REG_0\(1);
\C2|C1|C7|ALT_INV_REG_2\(1) <= NOT \C2|C1|C7|REG_2\(1);
\C2|C1|C7|ALT_INV_REG_7\(1) <= NOT \C2|C1|C7|REG_7\(1);
\C2|C1|C7|ALT_INV_REG_6\(1) <= NOT \C2|C1|C7|REG_6\(1);
\C2|C1|C7|ALT_INV_REG_5\(1) <= NOT \C2|C1|C7|REG_5\(1);
\C2|C1|C7|ALT_INV_REG_4\(1) <= NOT \C2|C1|C7|REG_4\(1);
\C2|C1|C6|ALT_INV_Add2~29_sumout\ <= NOT \C2|C1|C6|Add2~29_sumout\;
\C2|C1|C6|ALT_INV_Add2~25_sumout\ <= NOT \C2|C1|C6|Add2~25_sumout\;
\C2|C1|C6|ALT_INV_Add2~21_sumout\ <= NOT \C2|C1|C6|Add2~21_sumout\;
\C2|C1|C6|ALT_INV_Add2~17_sumout\ <= NOT \C2|C1|C6|Add2~17_sumout\;
\C2|C1|C6|ALT_INV_Add2~13_sumout\ <= NOT \C2|C1|C6|Add2~13_sumout\;
\C2|C1|C6|ALT_INV_Add2~9_sumout\ <= NOT \C2|C1|C6|Add2~9_sumout\;
\C2|C1|C6|ALT_INV_Add2~5_sumout\ <= NOT \C2|C1|C6|Add2~5_sumout\;
\C2|C1|C6|ALT_INV_CMP_FLAG~q\ <= NOT \C2|C1|C6|CMP_FLAG~q\;
\C2|C1|C6|ALT_INV_Add2~1_sumout\ <= NOT \C2|C1|C6|Add2~1_sumout\;
\C2|C1|C7|ALT_INV_REG_1\(0) <= NOT \C2|C1|C7|REG_1\(0);
\C2|C1|C7|ALT_INV_REG_3\(0) <= NOT \C2|C1|C7|REG_3\(0);
\C2|C1|C7|ALT_INV_REG_0\(0) <= NOT \C2|C1|C7|REG_0\(0);
\C2|C1|C7|ALT_INV_REG_2\(0) <= NOT \C2|C1|C7|REG_2\(0);
\C2|C1|C7|ALT_INV_REG_7\(0) <= NOT \C2|C1|C7|REG_7\(0);
\C2|C1|C7|ALT_INV_REG_6\(0) <= NOT \C2|C1|C7|REG_6\(0);
\C2|C1|C7|ALT_INV_REG_5\(0) <= NOT \C2|C1|C7|REG_5\(0);
\C2|C1|C7|ALT_INV_REG_4\(0) <= NOT \C2|C1|C7|REG_4\(0);
\C2|C1|C6|ALT_INV_PC\(7) <= NOT \C2|C1|C6|PC\(7);
\C2|C1|C6|ALT_INV_PC\(6) <= NOT \C2|C1|C6|PC\(6);
\C2|C1|C6|ALT_INV_PC\(5) <= NOT \C2|C1|C6|PC\(5);
\C2|C1|C6|ALT_INV_PC\(4) <= NOT \C2|C1|C6|PC\(4);
\C2|C1|C6|ALT_INV_PC\(3) <= NOT \C2|C1|C6|PC\(3);
\C2|C1|C6|ALT_INV_PC\(2) <= NOT \C2|C1|C6|PC\(2);
\C2|C1|C6|ALT_INV_PC\(1) <= NOT \C2|C1|C6|PC\(1);
\C2|C1|C6|ALT_INV_PC\(0) <= NOT \C2|C1|C6|PC\(0);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(1);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(2);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(3);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(4);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10);
\C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \C2|C1|C2|altsyncram_component|auto_generated|q_a\(0);
\C2|C3|ALT_INV_Add2~25_sumout\ <= NOT \C2|C3|Add2~25_sumout\;
\C2|C3|ALT_INV_Add0~25_sumout\ <= NOT \C2|C3|Add0~25_sumout\;
\C2|C3|ALT_INV_Add6~25_sumout\ <= NOT \C2|C3|Add6~25_sumout\;
\C2|C3|ALT_INV_Add8~25_sumout\ <= NOT \C2|C3|Add8~25_sumout\;
\C2|C3|ALT_INV_Add4~25_sumout\ <= NOT \C2|C3|Add4~25_sumout\;
\C2|C3|ALT_INV_Add0~21_sumout\ <= NOT \C2|C3|Add0~21_sumout\;
\C2|C3|ALT_INV_Add4~21_sumout\ <= NOT \C2|C3|Add4~21_sumout\;
\C2|C3|ALT_INV_Add8~21_sumout\ <= NOT \C2|C3|Add8~21_sumout\;
\C2|C3|ALT_INV_Add6~21_sumout\ <= NOT \C2|C3|Add6~21_sumout\;
\C2|C3|ALT_INV_Add2~21_sumout\ <= NOT \C2|C3|Add2~21_sumout\;
\C2|C3|ALT_INV_Add0~17_sumout\ <= NOT \C2|C3|Add0~17_sumout\;
\C2|C3|ALT_INV_Add4~17_sumout\ <= NOT \C2|C3|Add4~17_sumout\;
\C2|C3|ALT_INV_Add8~17_sumout\ <= NOT \C2|C3|Add8~17_sumout\;
\C2|C3|ALT_INV_Add6~17_sumout\ <= NOT \C2|C3|Add6~17_sumout\;
\C2|C3|ALT_INV_Add2~17_sumout\ <= NOT \C2|C3|Add2~17_sumout\;
\C2|C3|ALT_INV_Add0~13_sumout\ <= NOT \C2|C3|Add0~13_sumout\;
\C2|C3|ALT_INV_Add4~13_sumout\ <= NOT \C2|C3|Add4~13_sumout\;
\C2|C3|ALT_INV_Add8~13_sumout\ <= NOT \C2|C3|Add8~13_sumout\;
\C2|C3|ALT_INV_Add6~13_sumout\ <= NOT \C2|C3|Add6~13_sumout\;
\C2|C3|ALT_INV_Add2~13_sumout\ <= NOT \C2|C3|Add2~13_sumout\;
\C2|C3|ALT_INV_Add0~9_sumout\ <= NOT \C2|C3|Add0~9_sumout\;
\C2|C3|ALT_INV_Add8~9_sumout\ <= NOT \C2|C3|Add8~9_sumout\;
\C2|C3|ALT_INV_Add6~9_sumout\ <= NOT \C2|C3|Add6~9_sumout\;
\C2|C3|ALT_INV_Add4~9_sumout\ <= NOT \C2|C3|Add4~9_sumout\;
\C2|C3|ALT_INV_Add2~9_sumout\ <= NOT \C2|C3|Add2~9_sumout\;
\C2|C3|ALT_INV_Add0~5_sumout\ <= NOT \C2|C3|Add0~5_sumout\;
\C2|C3|ALT_INV_Add8~5_sumout\ <= NOT \C2|C3|Add8~5_sumout\;
\C2|C3|ALT_INV_Add6~5_sumout\ <= NOT \C2|C3|Add6~5_sumout\;
\C2|C3|ALT_INV_Add4~5_sumout\ <= NOT \C2|C3|Add4~5_sumout\;
\C2|C3|ALT_INV_Add2~5_sumout\ <= NOT \C2|C3|Add2~5_sumout\;
\C2|C3|ALT_INV_Add0~1_sumout\ <= NOT \C2|C3|Add0~1_sumout\;
\C2|C3|ALT_INV_Add4~1_sumout\ <= NOT \C2|C3|Add4~1_sumout\;
\C2|C3|ALT_INV_Add8~1_sumout\ <= NOT \C2|C3|Add8~1_sumout\;
\C2|C3|ALT_INV_Add6~1_sumout\ <= NOT \C2|C3|Add6~1_sumout\;
\C2|C3|ALT_INV_Add2~1_sumout\ <= NOT \C2|C3|Add2~1_sumout\;
\C2|C2|ALT_INV_Add2~29_sumout\ <= NOT \C2|C2|Add2~29_sumout\;
\C2|C2|ALT_INV_Add4~33_sumout\ <= NOT \C2|C2|Add4~33_sumout\;
\C2|C2|ALT_INV_Add3~37_sumout\ <= NOT \C2|C2|Add3~37_sumout\;
\C2|C2|ALT_INV_Add5~37_sumout\ <= NOT \C2|C2|Add5~37_sumout\;
\C2|C2|ALT_INV_Add1~37_sumout\ <= NOT \C2|C2|Add1~37_sumout\;
\C2|C2|ALT_INV_Add0~33_sumout\ <= NOT \C2|C2|Add0~33_sumout\;
\C2|C2|ALT_INV_Add2~25_sumout\ <= NOT \C2|C2|Add2~25_sumout\;
\C2|C2|ALT_INV_Add4~29_sumout\ <= NOT \C2|C2|Add4~29_sumout\;
\C2|C2|ALT_INV_Add3~33_sumout\ <= NOT \C2|C2|Add3~33_sumout\;
\C2|C2|ALT_INV_Add5~33_sumout\ <= NOT \C2|C2|Add5~33_sumout\;
\C2|C2|ALT_INV_Add1~33_sumout\ <= NOT \C2|C2|Add1~33_sumout\;
\C2|C2|ALT_INV_Add0~29_sumout\ <= NOT \C2|C2|Add0~29_sumout\;
\C2|C2|ALT_INV_Add2~21_sumout\ <= NOT \C2|C2|Add2~21_sumout\;
\C2|C2|ALT_INV_Add4~25_sumout\ <= NOT \C2|C2|Add4~25_sumout\;
\C2|C2|ALT_INV_Add3~29_sumout\ <= NOT \C2|C2|Add3~29_sumout\;
\C2|C2|ALT_INV_Add5~29_sumout\ <= NOT \C2|C2|Add5~29_sumout\;
\C2|C2|ALT_INV_Add1~29_sumout\ <= NOT \C2|C2|Add1~29_sumout\;
\C2|C2|ALT_INV_Add0~25_sumout\ <= NOT \C2|C2|Add0~25_sumout\;
\C2|C2|ALT_INV_Add2~17_sumout\ <= NOT \C2|C2|Add2~17_sumout\;
\C2|C2|ALT_INV_Add4~21_sumout\ <= NOT \C2|C2|Add4~21_sumout\;
\C2|C2|ALT_INV_Add3~25_sumout\ <= NOT \C2|C2|Add3~25_sumout\;
\C2|C2|ALT_INV_Add5~25_sumout\ <= NOT \C2|C2|Add5~25_sumout\;
\C2|C2|ALT_INV_Add1~25_sumout\ <= NOT \C2|C2|Add1~25_sumout\;
\C2|C2|ALT_INV_Add0~21_sumout\ <= NOT \C2|C2|Add0~21_sumout\;
\C2|C2|ALT_INV_Add2~13_sumout\ <= NOT \C2|C2|Add2~13_sumout\;
\C2|C2|ALT_INV_Add4~17_sumout\ <= NOT \C2|C2|Add4~17_sumout\;
\C2|C2|ALT_INV_Add3~21_sumout\ <= NOT \C2|C2|Add3~21_sumout\;
\C2|C2|ALT_INV_Add5~21_sumout\ <= NOT \C2|C2|Add5~21_sumout\;
\C2|C2|ALT_INV_Add1~21_sumout\ <= NOT \C2|C2|Add1~21_sumout\;
\C2|C2|ALT_INV_Add0~17_sumout\ <= NOT \C2|C2|Add0~17_sumout\;
\C2|C2|ALT_INV_Add2~9_sumout\ <= NOT \C2|C2|Add2~9_sumout\;
\C2|C2|ALT_INV_Add4~13_sumout\ <= NOT \C2|C2|Add4~13_sumout\;
\C2|C2|ALT_INV_Add3~17_sumout\ <= NOT \C2|C2|Add3~17_sumout\;
\C2|C2|ALT_INV_Add5~17_sumout\ <= NOT \C2|C2|Add5~17_sumout\;
\C2|C2|ALT_INV_Add1~17_sumout\ <= NOT \C2|C2|Add1~17_sumout\;
\C2|C2|ALT_INV_Add0~13_sumout\ <= NOT \C2|C2|Add0~13_sumout\;
\C2|C2|ALT_INV_Add1~13_sumout\ <= NOT \C2|C2|Add1~13_sumout\;
\C2|C2|ALT_INV_Add3~13_sumout\ <= NOT \C2|C2|Add3~13_sumout\;
\C2|C2|ALT_INV_Add5~13_sumout\ <= NOT \C2|C2|Add5~13_sumout\;
\C2|C2|ALT_INV_Add3~9_sumout\ <= NOT \C2|C2|Add3~9_sumout\;
\C2|C2|ALT_INV_Add1~9_sumout\ <= NOT \C2|C2|Add1~9_sumout\;
\C2|C2|ALT_INV_Add5~9_sumout\ <= NOT \C2|C2|Add5~9_sumout\;
\C2|C2|ALT_INV_Add4~9_sumout\ <= NOT \C2|C2|Add4~9_sumout\;
\C2|C2|ALT_INV_Add0~9_sumout\ <= NOT \C2|C2|Add0~9_sumout\;
\C2|C2|ALT_INV_Add2~5_sumout\ <= NOT \C2|C2|Add2~5_sumout\;
\C2|C2|ALT_INV_Add4~5_sumout\ <= NOT \C2|C2|Add4~5_sumout\;
\C2|C2|ALT_INV_Add3~5_sumout\ <= NOT \C2|C2|Add3~5_sumout\;
\C2|C2|ALT_INV_Add5~5_sumout\ <= NOT \C2|C2|Add5~5_sumout\;
\C2|C2|ALT_INV_Add1~5_sumout\ <= NOT \C2|C2|Add1~5_sumout\;
\C2|C2|ALT_INV_Add0~5_sumout\ <= NOT \C2|C2|Add0~5_sumout\;
\C2|C2|ALT_INV_Add2~1_sumout\ <= NOT \C2|C2|Add2~1_sumout\;
\C2|C2|ALT_INV_Add4~1_sumout\ <= NOT \C2|C2|Add4~1_sumout\;
\C2|C2|ALT_INV_Add3~1_sumout\ <= NOT \C2|C2|Add3~1_sumout\;
\C2|C2|ALT_INV_Add5~1_sumout\ <= NOT \C2|C2|Add5~1_sumout\;
\C2|C2|ALT_INV_Add1~1_sumout\ <= NOT \C2|C2|Add1~1_sumout\;
\C2|C2|ALT_INV_Add0~1_sumout\ <= NOT \C2|C2|Add0~1_sumout\;

-- Location: IOOBUF_X0_Y18_N79
\IO64_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(0),
	devoe => ww_devoe,
	o => ww_IO64_OUT(0));

-- Location: IOOBUF_X0_Y18_N96
\IO64_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(1),
	devoe => ww_devoe,
	o => ww_IO64_OUT(1));

-- Location: IOOBUF_X0_Y18_N62
\IO64_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_IO64_OUT(2));

-- Location: IOOBUF_X0_Y18_N45
\IO64_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(3),
	devoe => ww_devoe,
	o => ww_IO64_OUT(3));

-- Location: IOOBUF_X0_Y19_N39
\IO64_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_IO64_OUT(4));

-- Location: IOOBUF_X0_Y19_N56
\IO64_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(5),
	devoe => ww_devoe,
	o => ww_IO64_OUT(5));

-- Location: IOOBUF_X0_Y19_N5
\IO64_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(6),
	devoe => ww_devoe,
	o => ww_IO64_OUT(6));

-- Location: IOOBUF_X0_Y19_N22
\IO64_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(7),
	devoe => ww_devoe,
	o => ww_IO64_OUT(7));

-- Location: IOOBUF_X0_Y20_N39
\IO64_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_IO64_OUT(8));

-- Location: IOOBUF_X0_Y20_N56
\IO64_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_IO64_OUT(9));

-- Location: IOOBUF_X54_Y21_N39
\IO64_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(10),
	devoe => ww_devoe,
	o => ww_IO64_OUT(10));

-- Location: IOOBUF_X54_Y21_N56
\IO64_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_IO64_OUT(11));

-- Location: IOOBUF_X54_Y20_N39
\IO64_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_IO64_OUT(12));

-- Location: IOOBUF_X54_Y20_N56
\IO64_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(13),
	devoe => ww_devoe,
	o => ww_IO64_OUT(13));

-- Location: IOOBUF_X54_Y18_N96
\IO64_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(14),
	devoe => ww_devoe,
	o => ww_IO64_OUT(14));

-- Location: IOOBUF_X54_Y15_N56
\IO64_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C1|C8|IO64_OUT\(15),
	devoe => ww_devoe,
	o => ww_IO64_OUT(15));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C7|Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C7|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C8|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C8|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C8|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C8|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C8|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C8|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C8|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C9|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C9|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C9|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C9|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C9|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C9|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C9|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C10|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C10|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C10|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C10|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C10|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C10|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C10|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X22_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G6
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X39_Y4_N48
\C1|COUNT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|COUNT[0]~0_combout\ = ( !\C1|COUNT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \C1|ALT_INV_COUNT\(0),
	combout => \C1|COUNT[0]~0_combout\);

-- Location: FF_X39_Y4_N49
\C1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(0));

-- Location: LABCELL_X29_Y6_N0
\C1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~77_sumout\ = SUM(( \C1|COUNT\(1) ) + ( \C1|COUNT\(0) ) + ( !VCC ))
-- \C1|Add0~78\ = CARRY(( \C1|COUNT\(1) ) + ( \C1|COUNT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_COUNT\(0),
	datac => \C1|ALT_INV_COUNT\(1),
	cin => GND,
	sumout => \C1|Add0~77_sumout\,
	cout => \C1|Add0~78\);

-- Location: FF_X29_Y6_N2
\C1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(1));

-- Location: LABCELL_X29_Y6_N3
\C1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~73_sumout\ = SUM(( \C1|COUNT\(2) ) + ( GND ) + ( \C1|Add0~78\ ))
-- \C1|Add0~74\ = CARRY(( \C1|COUNT\(2) ) + ( GND ) + ( \C1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_COUNT\(2),
	cin => \C1|Add0~78\,
	sumout => \C1|Add0~73_sumout\,
	cout => \C1|Add0~74\);

-- Location: FF_X29_Y6_N5
\C1|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(2));

-- Location: LABCELL_X29_Y6_N6
\C1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~69_sumout\ = SUM(( \C1|COUNT\(3) ) + ( GND ) + ( \C1|Add0~74\ ))
-- \C1|Add0~70\ = CARRY(( \C1|COUNT\(3) ) + ( GND ) + ( \C1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(3),
	cin => \C1|Add0~74\,
	sumout => \C1|Add0~69_sumout\,
	cout => \C1|Add0~70\);

-- Location: FF_X29_Y6_N7
\C1|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(3));

-- Location: LABCELL_X29_Y6_N9
\C1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~65_sumout\ = SUM(( \C1|COUNT\(4) ) + ( GND ) + ( \C1|Add0~70\ ))
-- \C1|Add0~66\ = CARRY(( \C1|COUNT\(4) ) + ( GND ) + ( \C1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(4),
	cin => \C1|Add0~70\,
	sumout => \C1|Add0~65_sumout\,
	cout => \C1|Add0~66\);

-- Location: FF_X29_Y6_N11
\C1|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(4));

-- Location: LABCELL_X29_Y6_N12
\C1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~61_sumout\ = SUM(( \C1|COUNT\(5) ) + ( GND ) + ( \C1|Add0~66\ ))
-- \C1|Add0~62\ = CARRY(( \C1|COUNT\(5) ) + ( GND ) + ( \C1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_COUNT\(5),
	cin => \C1|Add0~66\,
	sumout => \C1|Add0~61_sumout\,
	cout => \C1|Add0~62\);

-- Location: FF_X29_Y6_N14
\C1|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(5));

-- Location: LABCELL_X29_Y6_N15
\C1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~57_sumout\ = SUM(( \C1|COUNT\(6) ) + ( GND ) + ( \C1|Add0~62\ ))
-- \C1|Add0~58\ = CARRY(( \C1|COUNT\(6) ) + ( GND ) + ( \C1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(6),
	cin => \C1|Add0~62\,
	sumout => \C1|Add0~57_sumout\,
	cout => \C1|Add0~58\);

-- Location: FF_X29_Y6_N17
\C1|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(6));

-- Location: LABCELL_X29_Y6_N18
\C1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~53_sumout\ = SUM(( \C1|COUNT\(7) ) + ( GND ) + ( \C1|Add0~58\ ))
-- \C1|Add0~54\ = CARRY(( \C1|COUNT\(7) ) + ( GND ) + ( \C1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(7),
	cin => \C1|Add0~58\,
	sumout => \C1|Add0~53_sumout\,
	cout => \C1|Add0~54\);

-- Location: FF_X29_Y6_N20
\C1|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(7));

-- Location: LABCELL_X29_Y6_N21
\C1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~49_sumout\ = SUM(( \C1|COUNT\(8) ) + ( GND ) + ( \C1|Add0~54\ ))
-- \C1|Add0~50\ = CARRY(( \C1|COUNT\(8) ) + ( GND ) + ( \C1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_COUNT\(8),
	cin => \C1|Add0~54\,
	sumout => \C1|Add0~49_sumout\,
	cout => \C1|Add0~50\);

-- Location: FF_X29_Y6_N23
\C1|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(8));

-- Location: LABCELL_X29_Y6_N24
\C1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~45_sumout\ = SUM(( \C1|COUNT\(9) ) + ( GND ) + ( \C1|Add0~50\ ))
-- \C1|Add0~46\ = CARRY(( \C1|COUNT\(9) ) + ( GND ) + ( \C1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(9),
	cin => \C1|Add0~50\,
	sumout => \C1|Add0~45_sumout\,
	cout => \C1|Add0~46\);

-- Location: FF_X29_Y6_N26
\C1|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(9));

-- Location: LABCELL_X29_Y6_N27
\C1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~41_sumout\ = SUM(( \C1|COUNT\(10) ) + ( GND ) + ( \C1|Add0~46\ ))
-- \C1|Add0~42\ = CARRY(( \C1|COUNT\(10) ) + ( GND ) + ( \C1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_COUNT\(10),
	cin => \C1|Add0~46\,
	sumout => \C1|Add0~41_sumout\,
	cout => \C1|Add0~42\);

-- Location: FF_X29_Y6_N29
\C1|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(10));

-- Location: LABCELL_X29_Y6_N30
\C1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~37_sumout\ = SUM(( \C1|COUNT\(11) ) + ( GND ) + ( \C1|Add0~42\ ))
-- \C1|Add0~38\ = CARRY(( \C1|COUNT\(11) ) + ( GND ) + ( \C1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_COUNT\(11),
	cin => \C1|Add0~42\,
	sumout => \C1|Add0~37_sumout\,
	cout => \C1|Add0~38\);

-- Location: FF_X29_Y6_N32
\C1|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(11));

-- Location: LABCELL_X29_Y6_N33
\C1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~33_sumout\ = SUM(( \C1|COUNT\(12) ) + ( GND ) + ( \C1|Add0~38\ ))
-- \C1|Add0~34\ = CARRY(( \C1|COUNT\(12) ) + ( GND ) + ( \C1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_COUNT\(12),
	cin => \C1|Add0~38\,
	sumout => \C1|Add0~33_sumout\,
	cout => \C1|Add0~34\);

-- Location: FF_X29_Y6_N35
\C1|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(12));

-- Location: LABCELL_X29_Y6_N36
\C1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~29_sumout\ = SUM(( \C1|COUNT\(13) ) + ( GND ) + ( \C1|Add0~34\ ))
-- \C1|Add0~30\ = CARRY(( \C1|COUNT\(13) ) + ( GND ) + ( \C1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(13),
	cin => \C1|Add0~34\,
	sumout => \C1|Add0~29_sumout\,
	cout => \C1|Add0~30\);

-- Location: FF_X29_Y6_N38
\C1|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(13));

-- Location: LABCELL_X29_Y6_N39
\C1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~25_sumout\ = SUM(( \C1|COUNT\(14) ) + ( GND ) + ( \C1|Add0~30\ ))
-- \C1|Add0~26\ = CARRY(( \C1|COUNT\(14) ) + ( GND ) + ( \C1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(14),
	cin => \C1|Add0~30\,
	sumout => \C1|Add0~25_sumout\,
	cout => \C1|Add0~26\);

-- Location: FF_X29_Y6_N41
\C1|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(14));

-- Location: LABCELL_X29_Y6_N42
\C1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~21_sumout\ = SUM(( \C1|COUNT\(15) ) + ( GND ) + ( \C1|Add0~26\ ))
-- \C1|Add0~22\ = CARRY(( \C1|COUNT\(15) ) + ( GND ) + ( \C1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_COUNT\(15),
	cin => \C1|Add0~26\,
	sumout => \C1|Add0~21_sumout\,
	cout => \C1|Add0~22\);

-- Location: FF_X29_Y6_N43
\C1|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(15));

-- Location: LABCELL_X29_Y6_N45
\C1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~17_sumout\ = SUM(( \C1|COUNT\(16) ) + ( GND ) + ( \C1|Add0~22\ ))
-- \C1|Add0~18\ = CARRY(( \C1|COUNT\(16) ) + ( GND ) + ( \C1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(16),
	cin => \C1|Add0~22\,
	sumout => \C1|Add0~17_sumout\,
	cout => \C1|Add0~18\);

-- Location: FF_X29_Y6_N47
\C1|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(16));

-- Location: LABCELL_X29_Y6_N48
\C1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~13_sumout\ = SUM(( \C1|COUNT\(17) ) + ( GND ) + ( \C1|Add0~18\ ))
-- \C1|Add0~14\ = CARRY(( \C1|COUNT\(17) ) + ( GND ) + ( \C1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(17),
	cin => \C1|Add0~18\,
	sumout => \C1|Add0~13_sumout\,
	cout => \C1|Add0~14\);

-- Location: FF_X29_Y6_N50
\C1|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(17));

-- Location: LABCELL_X29_Y6_N51
\C1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~9_sumout\ = SUM(( \C1|COUNT\(18) ) + ( GND ) + ( \C1|Add0~14\ ))
-- \C1|Add0~10\ = CARRY(( \C1|COUNT\(18) ) + ( GND ) + ( \C1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(18),
	cin => \C1|Add0~14\,
	sumout => \C1|Add0~9_sumout\,
	cout => \C1|Add0~10\);

-- Location: FF_X29_Y6_N52
\C1|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(18));

-- Location: LABCELL_X29_Y6_N54
\C1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~5_sumout\ = SUM(( \C1|COUNT\(19) ) + ( GND ) + ( \C1|Add0~10\ ))
-- \C1|Add0~6\ = CARRY(( \C1|COUNT\(19) ) + ( GND ) + ( \C1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_COUNT\(19),
	cin => \C1|Add0~10\,
	sumout => \C1|Add0~5_sumout\,
	cout => \C1|Add0~6\);

-- Location: FF_X29_Y6_N56
\C1|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \C1|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(19));

-- Location: LABCELL_X29_Y6_N57
\C1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~1_sumout\ = SUM(( \C1|COUNT\(20) ) + ( GND ) + ( \C1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_COUNT\(20),
	cin => \C1|Add0~6\,
	sumout => \C1|Add0~1_sumout\);

-- Location: FF_X39_Y4_N56
\C1|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \C1|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|COUNT\(20));

-- Location: LABCELL_X36_Y3_N6
\C2|C1|C1|COUNT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C1|COUNT[0]~1_combout\ = !\C2|C1|C1|COUNT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C1|ALT_INV_COUNT\(0),
	combout => \C2|C1|C1|COUNT[0]~1_combout\);

-- Location: LABCELL_X36_Y3_N30
\C2|C1|C1|COUNT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C1|COUNT[0]~feeder_combout\ = ( \C2|C1|C1|COUNT[0]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C1|ALT_INV_COUNT[0]~1_combout\,
	combout => \C2|C1|C1|COUNT[0]~feeder_combout\);

-- Location: FF_X36_Y3_N32
\C2|C1|C1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C1|COUNT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C1|COUNT\(0));

-- Location: LABCELL_X36_Y3_N39
\C2|C1|C1|COUNT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C1|COUNT[1]~0_combout\ = !\C2|C1|C1|COUNT\(1) $ (!\C2|C1|C1|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C1|ALT_INV_COUNT\(1),
	datac => \C2|C1|C1|ALT_INV_COUNT\(0),
	combout => \C2|C1|C1|COUNT[1]~0_combout\);

-- Location: LABCELL_X36_Y3_N33
\C2|C1|C1|COUNT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C1|COUNT[1]~feeder_combout\ = ( \C2|C1|C1|COUNT[1]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C1|ALT_INV_COUNT[1]~0_combout\,
	combout => \C2|C1|C1|COUNT[1]~feeder_combout\);

-- Location: FF_X36_Y3_N35
\C2|C1|C1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C1|COUNT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C1|COUNT\(1));

-- Location: LABCELL_X36_Y3_N24
\C2|C1|C1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C1|Mux2~0_combout\ = ( \C2|C1|C1|COUNT\(1) & ( !\C2|C1|C1|COUNT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C1|ALT_INV_COUNT\(0),
	dataf => \C2|C1|C1|ALT_INV_COUNT\(1),
	combout => \C2|C1|C1|Mux2~0_combout\);

-- Location: FF_X36_Y3_N26
\C2|C1|C1|CLK_EX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C1|CLK_EX~q\);

-- Location: LABCELL_X36_Y3_N0
\C2|C1|C1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C1|Mux2~1_combout\ = (\C2|C1|C1|COUNT\(0) & !\C2|C1|C1|COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C1|ALT_INV_COUNT\(0),
	datac => \C2|C1|C1|ALT_INV_COUNT\(1),
	combout => \C2|C1|C1|Mux2~1_combout\);

-- Location: FF_X36_Y3_N2
\C2|C1|C1|CLK_DC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C1|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C1|CLK_DC~q\);

-- Location: LABCELL_X36_Y3_N9
\C2|C1|C1|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C1|Mux2~2_combout\ = ( \C2|C1|C1|COUNT\(1) & ( \C2|C1|C1|COUNT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C1|ALT_INV_COUNT\(0),
	dataf => \C2|C1|C1|ALT_INV_COUNT\(1),
	combout => \C2|C1|C1|Mux2~2_combout\);

-- Location: FF_X36_Y3_N11
\C2|C1|C1|CLK_WB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C1|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C1|CLK_WB~q\);

-- Location: LABCELL_X36_Y3_N15
\C2|C1|C1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C1|Mux0~0_combout\ = ( !\C2|C1|C1|COUNT\(1) & ( !\C2|C1|C1|COUNT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C1|ALT_INV_COUNT\(0),
	dataf => \C2|C1|C1|ALT_INV_COUNT\(1),
	combout => \C2|C1|C1|Mux0~0_combout\);

-- Location: FF_X36_Y3_N17
\C2|C1|C1|CLK_FT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C1|CLK_FT~q\);

-- Location: LABCELL_X36_Y5_N30
\C2|C1|C6|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add2~1_sumout\ = SUM(( \C2|C1|C6|PC\(0) ) + ( VCC ) + ( !VCC ))
-- \C2|C1|C6|Add2~2\ = CARRY(( \C2|C1|C6|PC\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C6|ALT_INV_PC\(0),
	cin => GND,
	sumout => \C2|C1|C6|Add2~1_sumout\,
	cout => \C2|C1|C6|Add2~2\);

-- Location: LABCELL_X36_Y5_N3
\C2|C1|C6|PC[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[0]~feeder_combout\ = \C2|C1|C6|Add2~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C6|ALT_INV_Add2~1_sumout\,
	combout => \C2|C1|C6|PC[0]~feeder_combout\);

-- Location: LABCELL_X36_Y5_N33
\C2|C1|C6|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add2~5_sumout\ = SUM(( \C2|C1|C6|PC\(1) ) + ( GND ) + ( \C2|C1|C6|Add2~2\ ))
-- \C2|C1|C6|Add2~6\ = CARRY(( \C2|C1|C6|PC\(1) ) + ( GND ) + ( \C2|C1|C6|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C6|ALT_INV_PC\(1),
	cin => \C2|C1|C6|Add2~2\,
	sumout => \C2|C1|C6|Add2~5_sumout\,
	cout => \C2|C1|C6|Add2~6\);

-- Location: LABCELL_X36_Y5_N9
\C2|C1|C6|PC[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[1]~feeder_combout\ = \C2|C1|C6|Add2~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Add2~5_sumout\,
	combout => \C2|C1|C6|PC[1]~feeder_combout\);

-- Location: LABCELL_X36_Y5_N36
\C2|C1|C6|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add2~9_sumout\ = SUM(( \C2|C1|C6|PC\(2) ) + ( GND ) + ( \C2|C1|C6|Add2~6\ ))
-- \C2|C1|C6|Add2~10\ = CARRY(( \C2|C1|C6|PC\(2) ) + ( GND ) + ( \C2|C1|C6|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C6|ALT_INV_PC\(2),
	cin => \C2|C1|C6|Add2~6\,
	sumout => \C2|C1|C6|Add2~9_sumout\,
	cout => \C2|C1|C6|Add2~10\);

-- Location: LABCELL_X36_Y5_N15
\C2|C1|C6|PC[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[2]~feeder_combout\ = \C2|C1|C6|Add2~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Add2~9_sumout\,
	combout => \C2|C1|C6|PC[2]~feeder_combout\);

-- Location: FF_X36_Y4_N34
\C2|C1|C3|OP_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_DATA\(2));

-- Location: IOIBUF_X10_Y0_N92
\RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_N,
	o => \RESET_N~input_o\);

-- Location: LABCELL_X36_Y5_N39
\C2|C1|C6|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add2~13_sumout\ = SUM(( \C2|C1|C6|PC\(3) ) + ( GND ) + ( \C2|C1|C6|Add2~10\ ))
-- \C2|C1|C6|Add2~14\ = CARRY(( \C2|C1|C6|PC\(3) ) + ( GND ) + ( \C2|C1|C6|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_PC\(3),
	cin => \C2|C1|C6|Add2~10\,
	sumout => \C2|C1|C6|Add2~13_sumout\,
	cout => \C2|C1|C6|Add2~14\);

-- Location: LABCELL_X36_Y5_N18
\C2|C1|C6|PC[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[3]~feeder_combout\ = \C2|C1|C6|Add2~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C6|ALT_INV_Add2~13_sumout\,
	combout => \C2|C1|C6|PC[3]~feeder_combout\);

-- Location: LABCELL_X36_Y5_N42
\C2|C1|C6|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add2~17_sumout\ = SUM(( \C2|C1|C6|PC\(4) ) + ( GND ) + ( \C2|C1|C6|Add2~14\ ))
-- \C2|C1|C6|Add2~18\ = CARRY(( \C2|C1|C6|PC\(4) ) + ( GND ) + ( \C2|C1|C6|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C6|ALT_INV_PC\(4),
	cin => \C2|C1|C6|Add2~14\,
	sumout => \C2|C1|C6|Add2~17_sumout\,
	cout => \C2|C1|C6|Add2~18\);

-- Location: LABCELL_X36_Y5_N12
\C2|C1|C6|PC[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[4]~feeder_combout\ = \C2|C1|C6|Add2~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C6|ALT_INV_Add2~17_sumout\,
	combout => \C2|C1|C6|PC[4]~feeder_combout\);

-- Location: LABCELL_X36_Y5_N45
\C2|C1|C6|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add2~21_sumout\ = SUM(( \C2|C1|C6|PC\(5) ) + ( GND ) + ( \C2|C1|C6|Add2~18\ ))
-- \C2|C1|C6|Add2~22\ = CARRY(( \C2|C1|C6|PC\(5) ) + ( GND ) + ( \C2|C1|C6|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_PC\(5),
	cin => \C2|C1|C6|Add2~18\,
	sumout => \C2|C1|C6|Add2~21_sumout\,
	cout => \C2|C1|C6|Add2~22\);

-- Location: LABCELL_X36_Y5_N0
\C2|C1|C6|PC[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[5]~feeder_combout\ = \C2|C1|C6|Add2~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C6|ALT_INV_Add2~21_sumout\,
	combout => \C2|C1|C6|PC[5]~feeder_combout\);

-- Location: LABCELL_X36_Y5_N48
\C2|C1|C6|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add2~25_sumout\ = SUM(( \C2|C1|C6|PC\(6) ) + ( GND ) + ( \C2|C1|C6|Add2~22\ ))
-- \C2|C1|C6|Add2~26\ = CARRY(( \C2|C1|C6|PC\(6) ) + ( GND ) + ( \C2|C1|C6|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C6|ALT_INV_PC\(6),
	cin => \C2|C1|C6|Add2~22\,
	sumout => \C2|C1|C6|Add2~25_sumout\,
	cout => \C2|C1|C6|Add2~26\);

-- Location: LABCELL_X36_Y5_N6
\C2|C1|C6|PC[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[6]~feeder_combout\ = ( \C2|C1|C6|Add2~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_Add2~25_sumout\,
	combout => \C2|C1|C6|PC[6]~feeder_combout\);

-- Location: LABCELL_X36_Y5_N51
\C2|C1|C6|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add2~29_sumout\ = SUM(( \C2|C1|C6|PC\(7) ) + ( GND ) + ( \C2|C1|C6|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_PC\(7),
	cin => \C2|C1|C6|Add2~26\,
	sumout => \C2|C1|C6|Add2~29_sumout\);

-- Location: LABCELL_X36_Y5_N21
\C2|C1|C6|PC[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[7]~feeder_combout\ = \C2|C1|C6|Add2~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Add2~29_sumout\,
	combout => \C2|C1|C6|PC[7]~feeder_combout\);

-- Location: M10K_X38_Y3_N0
\C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007800060070580D05260070400084000A2006B410420004A0004101049000400004800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "cpu15.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cpu_dec:C2|cpu15_mega_ram:C1|fetch_rom:C2|altsyncram:altsyncram_component|altsyncram_ku14:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 15,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C2|C1|C1|CLK_FT~q\,
	portaaddr => \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \C2|C1|C2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X37_Y3_N23
\C2|C1|C3|OP_DATA[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_DATA[7]~DUPLICATE_q\);

-- Location: FF_X37_Y3_N29
\C2|C1|C3|OP_CODE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_CODE\(1));

-- Location: FF_X37_Y3_N26
\C2|C1|C3|OP_CODE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_CODE\(3));

-- Location: FF_X36_Y1_N28
\C2|C1|C3|OP_CODE[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y3_N24
\C2|C1|C6|PC[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[5]~1_combout\ = ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( (!\C2|C1|C3|OP_CODE\(2)) # ((!\RESET_N~input_o\) # ((!\C2|C1|C3|OP_CODE\(1)) # (!\C2|C1|C3|OP_CODE\(3)))) ) ) # ( !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \ALT_INV_RESET_N~input_o\,
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datad => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	dataf => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	combout => \C2|C1|C6|PC[5]~1_combout\);

-- Location: FF_X36_Y5_N23
\C2|C1|C6|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|PC[7]~feeder_combout\,
	asdata => \C2|C1|C3|OP_DATA[7]~DUPLICATE_q\,
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => \C2|C1|C6|PC[5]~0_combout\,
	ena => \C2|C1|C6|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|PC\(7));

-- Location: FF_X37_Y3_N17
\C2|C1|C3|OP_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_DATA\(6));

-- Location: FF_X36_Y5_N8
\C2|C1|C6|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|PC[6]~feeder_combout\,
	asdata => \C2|C1|C3|OP_DATA\(6),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => \C2|C1|C6|PC[5]~0_combout\,
	ena => \C2|C1|C6|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|PC\(6));

-- Location: FF_X35_Y3_N26
\C2|C1|C3|OP_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_DATA\(5));

-- Location: FF_X36_Y5_N2
\C2|C1|C6|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|PC[5]~feeder_combout\,
	asdata => \C2|C1|C3|OP_DATA\(5),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => \C2|C1|C6|PC[5]~0_combout\,
	ena => \C2|C1|C6|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|PC\(5));

-- Location: FF_X35_Y3_N50
\C2|C1|C3|OP_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_DATA\(4));

-- Location: FF_X36_Y5_N14
\C2|C1|C6|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|PC[4]~feeder_combout\,
	asdata => \C2|C1|C3|OP_DATA\(4),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => \C2|C1|C6|PC[5]~0_combout\,
	ena => \C2|C1|C6|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|PC\(4));

-- Location: FF_X37_Y3_N40
\C2|C1|C3|OP_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_DATA\(3));

-- Location: FF_X36_Y5_N20
\C2|C1|C6|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|PC[3]~feeder_combout\,
	asdata => \C2|C1|C3|OP_DATA\(3),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => \C2|C1|C6|PC[5]~0_combout\,
	ena => \C2|C1|C6|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|PC\(3));

-- Location: FF_X37_Y3_N5
\C2|C1|C3|OP_CODE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_CODE\(2));

-- Location: MLABCELL_X37_Y3_N51
\C2|C1|C6|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux26~0_combout\ = ( \C2|C1|C3|OP_CODE\(3) & ( (!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C3|OP_CODE\(1) & !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	combout => \C2|C1|C6|Mux26~0_combout\);

-- Location: FF_X37_Y3_N22
\C2|C1|C3|OP_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_DATA\(7));

-- Location: MLABCELL_X37_Y3_N48
\C2|C1|C6|Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux42~0_combout\ = (\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C3|OP_CODE\(3) & !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	combout => \C2|C1|C6|Mux42~0_combout\);

-- Location: FF_X37_Y3_N50
\C2|C1|C6|RAM_WEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux42~0_combout\,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_WEN~q\);

-- Location: LABCELL_X35_Y4_N54
\C2|C1|C8|RAM_WREN\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C8|RAM_WREN~combout\ = ( \C2|C1|C6|RAM_WEN~q\ & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & (\C2|C1|C1|CLK_EX~q\ & !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \C2|C1|C1|ALT_INV_CLK_EX~q\,
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \C2|C1|C6|ALT_INV_RAM_WEN~q\,
	combout => \C2|C1|C8|RAM_WREN~combout\);

-- Location: LABCELL_X31_Y3_N0
\C2|C1|C7|REG_6[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_6[1]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(1),
	combout => \C2|C1|C7|REG_6[1]~feeder_combout\);

-- Location: FF_X36_Y4_N8
\C2|C1|C4|N_REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|N_REG_OUT\(1));

-- Location: FF_X36_Y4_N11
\C2|C1|C4|N_REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|N_REG_OUT\(0));

-- Location: FF_X36_Y4_N14
\C2|C1|C4|N_REG_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|N_REG_OUT\(2));

-- Location: MLABCELL_X37_Y3_N54
\C2|C1|C6|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux16~0_combout\ = ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( (!\C2|C1|C3|OP_CODE\(3)) # (!\C2|C1|C3|OP_CODE\(1)) ) ) # ( !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( (!\C2|C1|C3|OP_CODE\(3)) # ((!\C2|C1|C3|OP_CODE\(2) & !\C2|C1|C3|OP_CODE\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000111110101111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datad => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	dataf => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	combout => \C2|C1|C6|Mux16~0_combout\);

-- Location: FF_X37_Y3_N56
\C2|C1|C6|REG_WEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux16~0_combout\,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_WEN~q\);

-- Location: LABCELL_X36_Y4_N21
\C2|C1|C7|REG_6[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_6[1]~0_combout\ = ( \C2|C1|C6|REG_WEN~q\ & ( (!\RESET_N~input_o\) # ((\C2|C1|C4|N_REG_OUT\(1) & (!\C2|C1|C4|N_REG_OUT\(0) & \C2|C1|C4|N_REG_OUT\(2)))) ) ) # ( !\C2|C1|C6|REG_WEN~q\ & ( !\RESET_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000001001111111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_N_REG_OUT\(1),
	datab => \C2|C1|C4|ALT_INV_N_REG_OUT\(0),
	datac => \C2|C1|C4|ALT_INV_N_REG_OUT\(2),
	datad => \ALT_INV_RESET_N~input_o\,
	dataf => \C2|C1|C6|ALT_INV_REG_WEN~q\,
	combout => \C2|C1|C7|REG_6[1]~0_combout\);

-- Location: FF_X31_Y3_N2
\C2|C1|C7|REG_6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_6[1]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(1));

-- Location: LABCELL_X36_Y4_N15
\C2|C1|C7|REG_4[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_4[1]~0_combout\ = ( \RESET_N~input_o\ & ( (!\C2|C1|C4|N_REG_OUT\(1) & (!\C2|C1|C4|N_REG_OUT\(0) & (\C2|C1|C4|N_REG_OUT\(2) & \C2|C1|C6|REG_WEN~q\))) ) ) # ( !\RESET_N~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000100011111111111111110000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_N_REG_OUT\(1),
	datab => \C2|C1|C4|ALT_INV_N_REG_OUT\(0),
	datac => \C2|C1|C4|ALT_INV_N_REG_OUT\(2),
	datad => \C2|C1|C6|ALT_INV_REG_WEN~q\,
	datae => \ALT_INV_RESET_N~input_o\,
	combout => \C2|C1|C7|REG_4[1]~0_combout\);

-- Location: FF_X34_Y3_N14
\C2|C1|C7|REG_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(1),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(1));

-- Location: LABCELL_X36_Y4_N18
\C2|C1|C7|REG_5[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_5[7]~0_combout\ = ( \C2|C1|C4|N_REG_OUT\(2) & ( (!\RESET_N~input_o\) # ((!\C2|C1|C4|N_REG_OUT\(1) & (\C2|C1|C4|N_REG_OUT\(0) & \C2|C1|C6|REG_WEN~q\))) ) ) # ( !\C2|C1|C4|N_REG_OUT\(2) & ( !\RESET_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000101111111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_N_REG_OUT\(1),
	datab => \C2|C1|C4|ALT_INV_N_REG_OUT\(0),
	datac => \C2|C1|C6|ALT_INV_REG_WEN~q\,
	datad => \ALT_INV_RESET_N~input_o\,
	dataf => \C2|C1|C4|ALT_INV_N_REG_OUT\(2),
	combout => \C2|C1|C7|REG_5[7]~0_combout\);

-- Location: FF_X34_Y3_N20
\C2|C1|C7|REG_5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(1),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(1));

-- Location: MLABCELL_X34_Y3_N15
\C2|C1|C5|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux14~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(1) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(1) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(1) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_7\(1),
	datab => \C2|C1|C7|ALT_INV_REG_6\(1),
	datac => \C2|C1|C7|ALT_INV_REG_4\(1),
	datad => \C2|C1|C7|ALT_INV_REG_5\(1),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux14~0_combout\);

-- Location: LABCELL_X36_Y4_N3
\C2|C1|C7|REG_0[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_0[5]~0_combout\ = ( \C2|C1|C6|REG_WEN~q\ & ( (!\RESET_N~input_o\) # ((!\C2|C1|C4|N_REG_OUT\(0) & (!\C2|C1|C4|N_REG_OUT\(2) & !\C2|C1|C4|N_REG_OUT\(1)))) ) ) # ( !\C2|C1|C6|REG_WEN~q\ & ( !\RESET_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011101010101010101110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET_N~input_o\,
	datab => \C2|C1|C4|ALT_INV_N_REG_OUT\(0),
	datac => \C2|C1|C4|ALT_INV_N_REG_OUT\(2),
	datad => \C2|C1|C4|ALT_INV_N_REG_OUT\(1),
	dataf => \C2|C1|C6|ALT_INV_REG_WEN~q\,
	combout => \C2|C1|C7|REG_0[5]~0_combout\);

-- Location: FF_X35_Y1_N8
\C2|C1|C7|REG_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(1),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(1));

-- Location: LABCELL_X32_Y2_N0
\C2|C1|C7|REG_3[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[1]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(1),
	combout => \C2|C1|C7|REG_3[1]~feeder_combout\);

-- Location: LABCELL_X36_Y4_N45
\C2|C1|C7|REG_3[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[3]~0_combout\ = ( \C2|C1|C6|REG_WEN~q\ & ( (!\RESET_N~input_o\) # ((!\C2|C1|C4|N_REG_OUT\(2) & (\C2|C1|C4|N_REG_OUT\(0) & \C2|C1|C4|N_REG_OUT\(1)))) ) ) # ( !\C2|C1|C6|REG_WEN~q\ & ( !\RESET_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101011101010101010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET_N~input_o\,
	datab => \C2|C1|C4|ALT_INV_N_REG_OUT\(2),
	datac => \C2|C1|C4|ALT_INV_N_REG_OUT\(0),
	datad => \C2|C1|C4|ALT_INV_N_REG_OUT\(1),
	dataf => \C2|C1|C6|ALT_INV_REG_WEN~q\,
	combout => \C2|C1|C7|REG_3[3]~0_combout\);

-- Location: FF_X32_Y2_N2
\C2|C1|C7|REG_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[1]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(1));

-- Location: LABCELL_X32_Y2_N6
\C2|C1|C7|REG_1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[1]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(1),
	combout => \C2|C1|C7|REG_1[1]~feeder_combout\);

-- Location: LABCELL_X36_Y4_N36
\C2|C1|C7|REG_1[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[3]~0_combout\ = ( \C2|C1|C4|N_REG_OUT\(2) & ( !\RESET_N~input_o\ ) ) # ( !\C2|C1|C4|N_REG_OUT\(2) & ( (!\RESET_N~input_o\) # ((\C2|C1|C4|N_REG_OUT\(0) & (\C2|C1|C6|REG_WEN~q\ & !\C2|C1|C4|N_REG_OUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101010101010111010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET_N~input_o\,
	datab => \C2|C1|C4|ALT_INV_N_REG_OUT\(0),
	datac => \C2|C1|C6|ALT_INV_REG_WEN~q\,
	datad => \C2|C1|C4|ALT_INV_N_REG_OUT\(1),
	dataf => \C2|C1|C4|ALT_INV_N_REG_OUT\(2),
	combout => \C2|C1|C7|REG_1[3]~0_combout\);

-- Location: FF_X32_Y2_N8
\C2|C1|C7|REG_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_1[1]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(1));

-- Location: LABCELL_X36_Y4_N57
\C2|C1|C7|REG_2[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_2[10]~0_combout\ = ( \C2|C1|C6|REG_WEN~q\ & ( (!\RESET_N~input_o\) # ((\C2|C1|C4|N_REG_OUT\(1) & (!\C2|C1|C4|N_REG_OUT\(0) & !\C2|C1|C4|N_REG_OUT\(2)))) ) ) # ( !\C2|C1|C6|REG_WEN~q\ & ( !\RESET_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111010000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_N_REG_OUT\(1),
	datab => \C2|C1|C4|ALT_INV_N_REG_OUT\(0),
	datac => \C2|C1|C4|ALT_INV_N_REG_OUT\(2),
	datad => \ALT_INV_RESET_N~input_o\,
	dataf => \C2|C1|C6|ALT_INV_REG_WEN~q\,
	combout => \C2|C1|C7|REG_2[10]~0_combout\);

-- Location: FF_X35_Y1_N2
\C2|C1|C7|REG_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(1),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(1));

-- Location: MLABCELL_X34_Y3_N27
\C2|C1|C5|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux14~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(1) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(1) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(1) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_0\(1),
	datab => \C2|C1|C7|ALT_INV_REG_3\(1),
	datac => \C2|C1|C7|ALT_INV_REG_1\(1),
	datad => \C2|C1|C7|ALT_INV_REG_2\(1),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux14~1_combout\);

-- Location: MLABCELL_X34_Y4_N12
\C2|C1|C5|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux14~2_combout\ = ( \C2|C1|C5|Mux14~1_combout\ & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux14~0_combout\ ) ) ) # ( !\C2|C1|C5|Mux14~1_combout\ & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( 
-- \C2|C1|C5|Mux14~0_combout\ ) ) ) # ( \C2|C1|C5|Mux14~1_combout\ & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C5|ALT_INV_Mux14~0_combout\,
	datae => \C2|C1|C5|ALT_INV_Mux14~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux14~2_combout\);

-- Location: FF_X34_Y4_N13
\C2|C1|C5|REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(1));

-- Location: FF_X34_Y3_N38
\C2|C1|C7|REG_5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(0),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(0));

-- Location: LABCELL_X31_Y3_N3
\C2|C1|C7|REG_6[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_6[0]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(0),
	combout => \C2|C1|C7|REG_6[0]~feeder_combout\);

-- Location: FF_X31_Y3_N5
\C2|C1|C7|REG_6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_6[0]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(0));

-- Location: LABCELL_X31_Y3_N39
\C2|C1|C7|REG_7[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[0]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(0),
	combout => \C2|C1|C7|REG_7[0]~feeder_combout\);

-- Location: LABCELL_X36_Y4_N54
\C2|C1|C7|REG_7[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[13]~0_combout\ = ( \C2|C1|C4|N_REG_OUT\(2) & ( (!\RESET_N~input_o\) # ((\C2|C1|C4|N_REG_OUT\(1) & (\C2|C1|C4|N_REG_OUT\(0) & \C2|C1|C6|REG_WEN~q\))) ) ) # ( !\C2|C1|C4|N_REG_OUT\(2) & ( !\RESET_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_N_REG_OUT\(1),
	datab => \C2|C1|C4|ALT_INV_N_REG_OUT\(0),
	datac => \C2|C1|C6|ALT_INV_REG_WEN~q\,
	datad => \ALT_INV_RESET_N~input_o\,
	dataf => \C2|C1|C4|ALT_INV_N_REG_OUT\(2),
	combout => \C2|C1|C7|REG_7[13]~0_combout\);

-- Location: FF_X31_Y3_N41
\C2|C1|C7|REG_7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[0]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(0));

-- Location: FF_X34_Y3_N2
\C2|C1|C7|REG_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(0),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(0));

-- Location: MLABCELL_X34_Y3_N39
\C2|C1|C5|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux15~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(0) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(0) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(0) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(0),
	datab => \C2|C1|C7|ALT_INV_REG_6\(0),
	datac => \C2|C1|C7|ALT_INV_REG_7\(0),
	datad => \C2|C1|C7|ALT_INV_REG_4\(0),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux15~0_combout\);

-- Location: LABCELL_X32_Y2_N9
\C2|C1|C7|REG_1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[0]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(0),
	combout => \C2|C1|C7|REG_1[0]~feeder_combout\);

-- Location: FF_X32_Y2_N11
\C2|C1|C7|REG_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_1[0]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(0));

-- Location: FF_X35_Y1_N11
\C2|C1|C7|REG_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(0),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(0));

-- Location: FF_X35_Y1_N5
\C2|C1|C7|REG_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(0),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(0));

-- Location: MLABCELL_X34_Y3_N51
\C2|C1|C5|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux15~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(0) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(0) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(0) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_3\(0),
	datab => \C2|C1|C7|ALT_INV_REG_1\(0),
	datac => \C2|C1|C7|ALT_INV_REG_0\(0),
	datad => \C2|C1|C7|ALT_INV_REG_2\(0),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux15~1_combout\);

-- Location: LABCELL_X36_Y2_N33
\C2|C1|C5|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux15~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux15~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux15~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_Mux15~0_combout\,
	datac => \C2|C1|C5|ALT_INV_Mux15~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux15~2_combout\);

-- Location: FF_X36_Y2_N34
\C2|C1|C5|REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(0));

-- Location: MLABCELL_X37_Y1_N0
\C2|C1|C6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~1_sumout\ = SUM(( \C2|C1|C4|REG_OUT\(0) ) + ( \C2|C1|C5|REG_OUT\(0) ) + ( !VCC ))
-- \C2|C1|C6|Add0~2\ = CARRY(( \C2|C1|C4|REG_OUT\(0) ) + ( \C2|C1|C5|REG_OUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(0),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(0),
	cin => GND,
	sumout => \C2|C1|C6|Add0~1_sumout\,
	cout => \C2|C1|C6|Add0~2\);

-- Location: MLABCELL_X37_Y1_N3
\C2|C1|C6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~5_sumout\ = SUM(( \C2|C1|C5|REG_OUT\(1) ) + ( \C2|C1|C4|REG_OUT\(1) ) + ( \C2|C1|C6|Add0~2\ ))
-- \C2|C1|C6|Add0~6\ = CARRY(( \C2|C1|C5|REG_OUT\(1) ) + ( \C2|C1|C4|REG_OUT\(1) ) + ( \C2|C1|C6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_REG_OUT\(1),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(1),
	cin => \C2|C1|C6|Add0~2\,
	sumout => \C2|C1|C6|Add0~5_sumout\,
	cout => \C2|C1|C6|Add0~6\);

-- Location: LABCELL_X39_Y1_N6
\C2|C1|C6|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux14~1_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C4|REG_OUT\(0) & ( (!\C2|C1|C4|REG_OUT\(1) & (!\C2|C1|C5|REG_OUT\(1) & !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\)) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C4|REG_OUT\(0) & ( 
-- (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C5|REG_OUT\(1))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C6|Add0~5_sumout\))) ) ) ) # ( \C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C4|REG_OUT\(0) & ( ((!\C2|C1|C4|REG_OUT\(1) & !\C2|C1|C5|REG_OUT\(1))) # 
-- (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C4|REG_OUT\(0) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C5|REG_OUT\(1))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C6|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111000000100011111000111111001111110000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(1),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(1),
	datac => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datad => \C2|C1|C6|ALT_INV_Add0~5_sumout\,
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(0),
	combout => \C2|C1|C6|Mux14~1_combout\);

-- Location: LABCELL_X35_Y3_N33
\C2|C1|C6|PC[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[5]~2_combout\ = ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( \C2|C1|C3|OP_CODE\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	combout => \C2|C1|C6|PC[5]~2_combout\);

-- Location: MLABCELL_X37_Y3_N33
\C2|C1|C6|RAM_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|RAM_IN[0]~0_combout\ = ( \C2|C1|C3|OP_CODE\(3) & ( (\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C3|OP_CODE\(1) & (\RESET_N~input_o\ & !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datac => \ALT_INV_RESET_N~input_o\,
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	combout => \C2|C1|C6|RAM_IN[0]~0_combout\);

-- Location: FF_X36_Y3_N20
\C2|C1|C6|RAM_IN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(2),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(2));

-- Location: FF_X35_Y3_N38
\C2|C1|C4|REG_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(3));

-- Location: IOIBUF_X34_Y0_N18
\IO65_IN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(3),
	o => \IO65_IN[3]~input_o\);

-- Location: MLABCELL_X34_Y4_N30
\C2|C1|C6|REG_IN[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN[2]~0_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7))) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( 
-- \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100000000000000110011001100110011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	combout => \C2|C1|C6|REG_IN[2]~0_combout\);

-- Location: LABCELL_X35_Y3_N9
\C2|C1|C7|REG_5[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_5[4]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(4),
	combout => \C2|C1|C7|REG_5[4]~feeder_combout\);

-- Location: FF_X35_Y3_N11
\C2|C1|C7|REG_5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_5[4]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(4));

-- Location: FF_X31_Y3_N26
\C2|C1|C7|REG_6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(4),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(4));

-- Location: FF_X36_Y1_N35
\C2|C1|C7|REG_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(4),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(4));

-- Location: FF_X31_Y3_N32
\C2|C1|C7|REG_7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(4),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(4));

-- Location: LABCELL_X35_Y5_N45
\C2|C1|C5|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux11~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(4) & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5)) # (\C2|C1|C7|REG_6\(4)) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(4) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_4\(4)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_5\(4))) ) ) ) # 
-- ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( !\C2|C1|C7|REG_7\(4) & ( (\C2|C1|C7|REG_6\(4) & !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( !\C2|C1|C7|REG_7\(4) & 
-- ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_4\(4)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_5\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(4),
	datab => \C2|C1|C7|ALT_INV_REG_6\(4),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \C2|C1|C7|ALT_INV_REG_4\(4),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \C2|C1|C7|ALT_INV_REG_7\(4),
	combout => \C2|C1|C5|Mux11~0_combout\);

-- Location: LABCELL_X35_Y1_N18
\C2|C1|C7|REG_0[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_0[4]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(4),
	combout => \C2|C1|C7|REG_0[4]~feeder_combout\);

-- Location: FF_X35_Y1_N20
\C2|C1|C7|REG_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_0[4]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(4));

-- Location: LABCELL_X32_Y2_N30
\C2|C1|C7|REG_1[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[4]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(4),
	combout => \C2|C1|C7|REG_1[4]~feeder_combout\);

-- Location: FF_X32_Y2_N32
\C2|C1|C7|REG_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_1[4]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(4));

-- Location: LABCELL_X35_Y1_N42
\C2|C1|C7|REG_2[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_2[4]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(4),
	combout => \C2|C1|C7|REG_2[4]~feeder_combout\);

-- Location: FF_X35_Y1_N44
\C2|C1|C7|REG_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_2[4]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(4));

-- Location: LABCELL_X35_Y5_N21
\C2|C1|C5|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux11~1_combout\ = ( \C2|C1|C7|REG_3\(4) & ( \C2|C1|C7|REG_2\(4) & ( ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_0\(4))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_1\(4))))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( !\C2|C1|C7|REG_3\(4) & ( \C2|C1|C7|REG_2\(4) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_0\(4))) 
-- # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_1\(4)))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5))) ) ) ) # ( \C2|C1|C7|REG_3\(4) & ( 
-- !\C2|C1|C7|REG_2\(4) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_0\(4))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_1\(4)))))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5))) ) ) ) # ( !\C2|C1|C7|REG_3\(4) & ( !\C2|C1|C7|REG_2\(4) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & 
-- ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_0\(4))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_1\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \C2|C1|C7|ALT_INV_REG_0\(4),
	datad => \C2|C1|C7|ALT_INV_REG_1\(4),
	datae => \C2|C1|C7|ALT_INV_REG_3\(4),
	dataf => \C2|C1|C7|ALT_INV_REG_2\(4),
	combout => \C2|C1|C5|Mux11~1_combout\);

-- Location: LABCELL_X35_Y3_N12
\C2|C1|C5|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux11~2_combout\ = (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ((\C2|C1|C5|Mux11~1_combout\))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & (\C2|C1|C5|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C5|ALT_INV_Mux11~0_combout\,
	datac => \C2|C1|C5|ALT_INV_Mux11~1_combout\,
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux11~2_combout\);

-- Location: FF_X35_Y3_N14
\C2|C1|C5|REG_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(4));

-- Location: FF_X35_Y2_N50
\C2|C1|C7|REG_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(3),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(3));

-- Location: LABCELL_X32_Y2_N15
\C2|C1|C7|REG_3[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[3]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(3),
	combout => \C2|C1|C7|REG_3[3]~feeder_combout\);

-- Location: FF_X32_Y2_N17
\C2|C1|C7|REG_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[3]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(3));

-- Location: FF_X35_Y2_N44
\C2|C1|C7|REG_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(3),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(3));

-- Location: LABCELL_X32_Y2_N51
\C2|C1|C7|REG_1[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[3]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(3),
	combout => \C2|C1|C7|REG_1[3]~feeder_combout\);

-- Location: FF_X32_Y2_N53
\C2|C1|C7|REG_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_1[3]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(3));

-- Location: LABCELL_X35_Y2_N51
\C2|C1|C5|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux12~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(3) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(3) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(3) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_0\(3),
	datab => \C2|C1|C7|ALT_INV_REG_3\(3),
	datac => \C2|C1|C7|ALT_INV_REG_2\(3),
	datad => \C2|C1|C7|ALT_INV_REG_1\(3),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux12~1_combout\);

-- Location: FF_X34_Y3_N32
\C2|C1|C7|REG_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(3),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(3));

-- Location: FF_X34_Y3_N8
\C2|C1|C7|REG_5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(3),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(3));

-- Location: FF_X31_Y3_N53
\C2|C1|C7|REG_7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(3),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(3));

-- Location: MLABCELL_X34_Y3_N9
\C2|C1|C5|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux12~0_combout\ = ( \C2|C1|C7|REG_7\(3) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (\C2|C1|C7|REG_6\(3)) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( !\C2|C1|C7|REG_7\(3) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & \C2|C1|C7|REG_6\(3)) ) ) ) # ( \C2|C1|C7|REG_7\(3) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( 
-- (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_4\(3))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_5\(3)))) ) ) ) # ( !\C2|C1|C7|REG_7\(3) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) 
-- & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_4\(3))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_5\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \C2|C1|C7|ALT_INV_REG_4\(3),
	datac => \C2|C1|C7|ALT_INV_REG_5\(3),
	datad => \C2|C1|C7|ALT_INV_REG_6\(3),
	datae => \C2|C1|C7|ALT_INV_REG_7\(3),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux12~0_combout\);

-- Location: LABCELL_X35_Y3_N39
\C2|C1|C5|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux12~2_combout\ = ( \C2|C1|C5|Mux12~0_combout\ & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7)) # (\C2|C1|C5|Mux12~1_combout\) ) ) # ( !\C2|C1|C5|Mux12~0_combout\ & ( (\C2|C1|C5|Mux12~1_combout\ & 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C5|ALT_INV_Mux12~1_combout\,
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \C2|C1|C5|ALT_INV_Mux12~0_combout\,
	combout => \C2|C1|C5|Mux12~2_combout\);

-- Location: FF_X35_Y3_N40
\C2|C1|C5|REG_OUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT[3]~DUPLICATE_q\);

-- Location: FF_X35_Y2_N32
\C2|C1|C7|REG_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(2),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(2));

-- Location: LABCELL_X32_Y2_N12
\C2|C1|C7|REG_3[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[2]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(2),
	combout => \C2|C1|C7|REG_3[2]~feeder_combout\);

-- Location: FF_X32_Y2_N14
\C2|C1|C7|REG_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[2]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(2));

-- Location: LABCELL_X32_Y2_N48
\C2|C1|C7|REG_1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[2]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(2),
	combout => \C2|C1|C7|REG_1[2]~feeder_combout\);

-- Location: FF_X32_Y2_N50
\C2|C1|C7|REG_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_1[2]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(2));

-- Location: LABCELL_X35_Y2_N33
\C2|C1|C5|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux13~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C7|REG_1\(2) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6)) # (\C2|C1|C7|REG_3\(2)) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C7|REG_1\(2) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & (\C2|C1|C7|REG_0\(2))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ((\C2|C1|C7|REG_2\(2)))) ) ) ) # 
-- ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C7|REG_1\(2) & ( (\C2|C1|C7|REG_3\(2) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C7|REG_1\(2) & 
-- ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & (\C2|C1|C7|REG_0\(2))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ((\C2|C1|C7|REG_2\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_0\(2),
	datab => \C2|C1|C7|ALT_INV_REG_2\(2),
	datac => \C2|C1|C7|ALT_INV_REG_3\(2),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C7|ALT_INV_REG_1\(2),
	combout => \C2|C1|C5|Mux13~1_combout\);

-- Location: LABCELL_X31_Y3_N12
\C2|C1|C7|REG_6[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_6[2]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(2),
	combout => \C2|C1|C7|REG_6[2]~feeder_combout\);

-- Location: FF_X31_Y3_N14
\C2|C1|C7|REG_6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_6[2]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(2));

-- Location: LABCELL_X31_Y3_N48
\C2|C1|C7|REG_7[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[2]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(2),
	combout => \C2|C1|C7|REG_7[2]~feeder_combout\);

-- Location: FF_X31_Y3_N50
\C2|C1|C7|REG_7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[2]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(2));

-- Location: FF_X35_Y3_N32
\C2|C1|C7|REG_5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(2),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(2));

-- Location: FF_X34_Y3_N56
\C2|C1|C7|REG_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(2),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(2));

-- Location: MLABCELL_X34_Y3_N45
\C2|C1|C5|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux13~0_combout\ = ( \C2|C1|C7|REG_4\(2) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_6\(2))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & 
-- ((\C2|C1|C7|REG_7\(2)))) ) ) ) # ( !\C2|C1|C7|REG_4\(2) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_6\(2))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) 
-- & ((\C2|C1|C7|REG_7\(2)))) ) ) ) # ( \C2|C1|C7|REG_4\(2) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5)) # (\C2|C1|C7|REG_5\(2)) ) ) ) # ( !\C2|C1|C7|REG_4\(2) & ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & \C2|C1|C7|REG_5\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_6\(2),
	datab => \C2|C1|C7|ALT_INV_REG_7\(2),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \C2|C1|C7|ALT_INV_REG_5\(2),
	datae => \C2|C1|C7|ALT_INV_REG_4\(2),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux13~0_combout\);

-- Location: LABCELL_X36_Y2_N6
\C2|C1|C5|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux13~2_combout\ = ( \C2|C1|C5|Mux13~0_combout\ & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) ) ) # ( \C2|C1|C5|Mux13~0_combout\ & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux13~1_combout\ ) ) ) # ( 
-- !\C2|C1|C5|Mux13~0_combout\ & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux13~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C5|ALT_INV_Mux13~1_combout\,
	datae => \C2|C1|C5|ALT_INV_Mux13~0_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux13~2_combout\);

-- Location: FF_X36_Y2_N7
\C2|C1|C5|REG_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(2));

-- Location: MLABCELL_X34_Y1_N0
\C2|C1|C6|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~1_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(0) $ (!\C2|C1|C5|REG_OUT\(0)) ) + ( !VCC ) + ( !VCC ))
-- \C2|C1|C6|Add1~2\ = CARRY(( !\C2|C1|C4|REG_OUT\(0) $ (!\C2|C1|C5|REG_OUT\(0)) ) + ( !VCC ) + ( !VCC ))
-- \C2|C1|C6|Add1~3\ = SHARE((!\C2|C1|C5|REG_OUT\(0)) # (\C2|C1|C4|REG_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(0),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(0),
	cin => GND,
	sharein => GND,
	sumout => \C2|C1|C6|Add1~1_sumout\,
	cout => \C2|C1|C6|Add1~2\,
	shareout => \C2|C1|C6|Add1~3\);

-- Location: MLABCELL_X34_Y1_N3
\C2|C1|C6|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~5_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(1) $ (\C2|C1|C5|REG_OUT\(1)) ) + ( \C2|C1|C6|Add1~3\ ) + ( \C2|C1|C6|Add1~2\ ))
-- \C2|C1|C6|Add1~6\ = CARRY(( !\C2|C1|C4|REG_OUT\(1) $ (\C2|C1|C5|REG_OUT\(1)) ) + ( \C2|C1|C6|Add1~3\ ) + ( \C2|C1|C6|Add1~2\ ))
-- \C2|C1|C6|Add1~7\ = SHARE((\C2|C1|C4|REG_OUT\(1) & !\C2|C1|C5|REG_OUT\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(1),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(1),
	cin => \C2|C1|C6|Add1~2\,
	sharein => \C2|C1|C6|Add1~3\,
	sumout => \C2|C1|C6|Add1~5_sumout\,
	cout => \C2|C1|C6|Add1~6\,
	shareout => \C2|C1|C6|Add1~7\);

-- Location: MLABCELL_X34_Y1_N6
\C2|C1|C6|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~9_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(2) $ (\C2|C1|C5|REG_OUT\(2)) ) + ( \C2|C1|C6|Add1~7\ ) + ( \C2|C1|C6|Add1~6\ ))
-- \C2|C1|C6|Add1~10\ = CARRY(( !\C2|C1|C4|REG_OUT\(2) $ (\C2|C1|C5|REG_OUT\(2)) ) + ( \C2|C1|C6|Add1~7\ ) + ( \C2|C1|C6|Add1~6\ ))
-- \C2|C1|C6|Add1~11\ = SHARE((\C2|C1|C4|REG_OUT\(2) & !\C2|C1|C5|REG_OUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(2),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(2),
	cin => \C2|C1|C6|Add1~6\,
	sharein => \C2|C1|C6|Add1~7\,
	sumout => \C2|C1|C6|Add1~9_sumout\,
	cout => \C2|C1|C6|Add1~10\,
	shareout => \C2|C1|C6|Add1~11\);

-- Location: MLABCELL_X34_Y1_N9
\C2|C1|C6|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~13_sumout\ = SUM(( !\C2|C1|C4|REG_OUT[3]~DUPLICATE_q\ $ (\C2|C1|C5|REG_OUT[3]~DUPLICATE_q\) ) + ( \C2|C1|C6|Add1~11\ ) + ( \C2|C1|C6|Add1~10\ ))
-- \C2|C1|C6|Add1~14\ = CARRY(( !\C2|C1|C4|REG_OUT[3]~DUPLICATE_q\ $ (\C2|C1|C5|REG_OUT[3]~DUPLICATE_q\) ) + ( \C2|C1|C6|Add1~11\ ) + ( \C2|C1|C6|Add1~10\ ))
-- \C2|C1|C6|Add1~15\ = SHARE((\C2|C1|C4|REG_OUT[3]~DUPLICATE_q\ & !\C2|C1|C5|REG_OUT[3]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT[3]~DUPLICATE_q\,
	datac => \C2|C1|C5|ALT_INV_REG_OUT[3]~DUPLICATE_q\,
	cin => \C2|C1|C6|Add1~10\,
	sharein => \C2|C1|C6|Add1~11\,
	sumout => \C2|C1|C6|Add1~13_sumout\,
	cout => \C2|C1|C6|Add1~14\,
	shareout => \C2|C1|C6|Add1~15\);

-- Location: MLABCELL_X34_Y1_N12
\C2|C1|C6|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~17_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(4) $ (\C2|C1|C5|REG_OUT\(4)) ) + ( \C2|C1|C6|Add1~15\ ) + ( \C2|C1|C6|Add1~14\ ))
-- \C2|C1|C6|Add1~18\ = CARRY(( !\C2|C1|C4|REG_OUT\(4) $ (\C2|C1|C5|REG_OUT\(4)) ) + ( \C2|C1|C6|Add1~15\ ) + ( \C2|C1|C6|Add1~14\ ))
-- \C2|C1|C6|Add1~19\ = SHARE((\C2|C1|C4|REG_OUT\(4) & !\C2|C1|C5|REG_OUT\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(4),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(4),
	cin => \C2|C1|C6|Add1~14\,
	sharein => \C2|C1|C6|Add1~15\,
	sumout => \C2|C1|C6|Add1~17_sumout\,
	cout => \C2|C1|C6|Add1~18\,
	shareout => \C2|C1|C6|Add1~19\);

-- Location: LABCELL_X36_Y2_N30
\C2|C1|C6|REG_IN[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN[2]~1_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C3|OP_CODE\(1) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & \C2|C1|C3|OP_CODE\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	combout => \C2|C1|C6|REG_IN[2]~1_combout\);

-- Location: LABCELL_X36_Y2_N36
\C2|C1|C6|REG_IN[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN[2]~2_combout\ = ( !\C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C3|OP_CODE\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	combout => \C2|C1|C6|REG_IN[2]~2_combout\);

-- Location: LABCELL_X36_Y1_N3
\C2|C1|C6|REG_IN[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN[2]~3_combout\ = (!\C2|C1|C6|REG_IN[2]~1_combout\ & \C2|C1|C6|REG_IN[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_REG_IN[2]~1_combout\,
	datac => \C2|C1|C6|ALT_INV_REG_IN[2]~2_combout\,
	combout => \C2|C1|C6|REG_IN[2]~3_combout\);

-- Location: LABCELL_X35_Y1_N45
\C2|C1|C7|REG_2[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_2[5]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(5),
	combout => \C2|C1|C7|REG_2[5]~feeder_combout\);

-- Location: FF_X35_Y1_N47
\C2|C1|C7|REG_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_2[5]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(5));

-- Location: FF_X32_Y2_N59
\C2|C1|C7|REG_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(5),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(5));

-- Location: LABCELL_X35_Y1_N21
\C2|C1|C7|REG_0[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_0[5]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(5),
	combout => \C2|C1|C7|REG_0[5]~feeder_combout\);

-- Location: FF_X35_Y1_N23
\C2|C1|C7|REG_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_0[5]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(5));

-- Location: FF_X32_Y2_N35
\C2|C1|C7|REG_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(5),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(5));

-- Location: MLABCELL_X34_Y5_N39
\C2|C1|C5|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux10~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(5) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(5) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(5) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_2\(5),
	datab => \C2|C1|C7|ALT_INV_REG_3\(5),
	datac => \C2|C1|C7|ALT_INV_REG_0\(5),
	datad => \C2|C1|C7|ALT_INV_REG_1\(5),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux10~1_combout\);

-- Location: LABCELL_X31_Y3_N27
\C2|C1|C7|REG_6[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_6[5]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(5),
	combout => \C2|C1|C7|REG_6[5]~feeder_combout\);

-- Location: FF_X31_Y3_N29
\C2|C1|C7|REG_6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_6[5]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(5));

-- Location: LABCELL_X31_Y3_N33
\C2|C1|C7|REG_7[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[5]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(5),
	combout => \C2|C1|C7|REG_7[5]~feeder_combout\);

-- Location: FF_X31_Y3_N35
\C2|C1|C7|REG_7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[5]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(5));

-- Location: FF_X36_Y1_N41
\C2|C1|C7|REG_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(5),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(5));

-- Location: LABCELL_X35_Y5_N27
\C2|C1|C5|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux10~0_combout\ = ( \C2|C1|C7|REG_7\(5) & ( \C2|C1|C7|REG_4\(5) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6)) # (\C2|C1|C7|REG_6\(5))))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (((\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6))) # (\C2|C1|C7|REG_5\(5)))) ) ) ) # ( !\C2|C1|C7|REG_7\(5) & ( \C2|C1|C7|REG_4\(5) & ( 
-- (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6)) # (\C2|C1|C7|REG_6\(5))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_5\(5) & 
-- ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6))))) ) ) ) # ( \C2|C1|C7|REG_7\(5) & ( !\C2|C1|C7|REG_4\(5) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (((\C2|C1|C7|REG_6\(5) & 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (((\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6))) # (\C2|C1|C7|REG_5\(5)))) ) ) ) # ( !\C2|C1|C7|REG_7\(5) & ( 
-- !\C2|C1|C7|REG_4\(5) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (((\C2|C1|C7|REG_6\(5) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_5\(5) & 
-- ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(5),
	datab => \C2|C1|C7|ALT_INV_REG_6\(5),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \C2|C1|C7|ALT_INV_REG_7\(5),
	dataf => \C2|C1|C7|ALT_INV_REG_4\(5),
	combout => \C2|C1|C5|Mux10~0_combout\);

-- Location: LABCELL_X32_Y3_N36
\C2|C1|C5|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux10~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux10~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux10~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_Mux10~1_combout\,
	datac => \C2|C1|C5|ALT_INV_Mux10~0_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux10~2_combout\);

-- Location: FF_X32_Y3_N37
\C2|C1|C5|REG_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(5));

-- Location: MLABCELL_X34_Y1_N15
\C2|C1|C6|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~21_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(5) $ (\C2|C1|C5|REG_OUT\(5)) ) + ( \C2|C1|C6|Add1~19\ ) + ( \C2|C1|C6|Add1~18\ ))
-- \C2|C1|C6|Add1~22\ = CARRY(( !\C2|C1|C4|REG_OUT\(5) $ (\C2|C1|C5|REG_OUT\(5)) ) + ( \C2|C1|C6|Add1~19\ ) + ( \C2|C1|C6|Add1~18\ ))
-- \C2|C1|C6|Add1~23\ = SHARE((\C2|C1|C4|REG_OUT\(5) & !\C2|C1|C5|REG_OUT\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(5),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(5),
	cin => \C2|C1|C6|Add1~18\,
	sharein => \C2|C1|C6|Add1~19\,
	sumout => \C2|C1|C6|Add1~21_sumout\,
	cout => \C2|C1|C6|Add1~22\,
	shareout => \C2|C1|C6|Add1~23\);

-- Location: MLABCELL_X37_Y1_N6
\C2|C1|C6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~9_sumout\ = SUM(( \C2|C1|C4|REG_OUT\(2) ) + ( \C2|C1|C5|REG_OUT\(2) ) + ( \C2|C1|C6|Add0~6\ ))
-- \C2|C1|C6|Add0~10\ = CARRY(( \C2|C1|C4|REG_OUT\(2) ) + ( \C2|C1|C5|REG_OUT\(2) ) + ( \C2|C1|C6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(2),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(2),
	cin => \C2|C1|C6|Add0~6\,
	sumout => \C2|C1|C6|Add0~9_sumout\,
	cout => \C2|C1|C6|Add0~10\);

-- Location: MLABCELL_X37_Y1_N9
\C2|C1|C6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~13_sumout\ = SUM(( \C2|C1|C5|REG_OUT[3]~DUPLICATE_q\ ) + ( \C2|C1|C4|REG_OUT[3]~DUPLICATE_q\ ) + ( \C2|C1|C6|Add0~10\ ))
-- \C2|C1|C6|Add0~14\ = CARRY(( \C2|C1|C5|REG_OUT[3]~DUPLICATE_q\ ) + ( \C2|C1|C4|REG_OUT[3]~DUPLICATE_q\ ) + ( \C2|C1|C6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_REG_OUT[3]~DUPLICATE_q\,
	dataf => \C2|C1|C4|ALT_INV_REG_OUT[3]~DUPLICATE_q\,
	cin => \C2|C1|C6|Add0~10\,
	sumout => \C2|C1|C6|Add0~13_sumout\,
	cout => \C2|C1|C6|Add0~14\);

-- Location: MLABCELL_X37_Y1_N12
\C2|C1|C6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~17_sumout\ = SUM(( \C2|C1|C5|REG_OUT\(4) ) + ( \C2|C1|C4|REG_OUT\(4) ) + ( \C2|C1|C6|Add0~14\ ))
-- \C2|C1|C6|Add0~18\ = CARRY(( \C2|C1|C5|REG_OUT\(4) ) + ( \C2|C1|C4|REG_OUT\(4) ) + ( \C2|C1|C6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_REG_OUT\(4),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(4),
	cin => \C2|C1|C6|Add0~14\,
	sumout => \C2|C1|C6|Add0~17_sumout\,
	cout => \C2|C1|C6|Add0~18\);

-- Location: MLABCELL_X37_Y1_N15
\C2|C1|C6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~21_sumout\ = SUM(( \C2|C1|C5|REG_OUT\(5) ) + ( \C2|C1|C4|REG_OUT\(5) ) + ( \C2|C1|C6|Add0~18\ ))
-- \C2|C1|C6|Add0~22\ = CARRY(( \C2|C1|C5|REG_OUT\(5) ) + ( \C2|C1|C4|REG_OUT\(5) ) + ( \C2|C1|C6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(5),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(5),
	cin => \C2|C1|C6|Add0~18\,
	sumout => \C2|C1|C6|Add0~21_sumout\,
	cout => \C2|C1|C6|Add0~22\);

-- Location: MLABCELL_X37_Y3_N36
\C2|C1|C6|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux10~1_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C6|Add0~21_sumout\ & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C4|REG_OUT\(5) & (!\C2|C1|C5|REG_OUT\(5)))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((!\C2|C1|C4|REG_OUT\(4))))) ) ) ) # 
-- ( !\C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C6|Add0~21_sumout\ & ( (!\C2|C1|C5|REG_OUT\(5) & !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) ) ) ) # ( \C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C6|Add0~21_sumout\ & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C4|REG_OUT\(5) & 
-- (!\C2|C1|C5|REG_OUT\(5)))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((!\C2|C1|C4|REG_OUT\(4))))) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C6|Add0~21_sumout\ & ( (!\C2|C1|C5|REG_OUT\(5)) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111100010001111000011001100000000001000100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(5),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(5),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(4),
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C6|ALT_INV_Add0~21_sumout\,
	combout => \C2|C1|C6|Mux10~1_combout\);

-- Location: IOIBUF_X34_Y0_N52
\IO65_IN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(6),
	o => \IO65_IN[6]~input_o\);

-- Location: FF_X39_Y1_N41
\C2|C1|C6|RAM_IN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(5),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(5));

-- Location: LABCELL_X39_Y3_N48
\C2|C1|C6|RAM_IN[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|RAM_IN[6]~feeder_combout\ = ( \C2|C1|C4|REG_OUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(6),
	combout => \C2|C1|C6|RAM_IN[6]~feeder_combout\);

-- Location: FF_X39_Y3_N50
\C2|C1|C6|RAM_IN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|RAM_IN[6]~feeder_combout\,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(6));

-- Location: IOIBUF_X34_Y0_N35
\IO65_IN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(7),
	o => \IO65_IN[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\IO65_IN[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(8),
	o => \IO65_IN[8]~input_o\);

-- Location: FF_X36_Y2_N41
\C2|C1|C7|REG_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(9),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(9));

-- Location: FF_X32_Y2_N23
\C2|C1|C7|REG_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(9),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(9));

-- Location: FF_X37_Y2_N41
\C2|C1|C7|REG_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(9),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(9));

-- Location: FF_X35_Y2_N11
\C2|C1|C7|REG_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(9),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(9));

-- Location: MLABCELL_X37_Y2_N36
\C2|C1|C5|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux6~1_combout\ = ( \C2|C1|C7|REG_0\(9) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_2\(9)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & 
-- (\C2|C1|C7|REG_3\(9))) ) ) ) # ( !\C2|C1|C7|REG_0\(9) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_2\(9)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) 
-- & (\C2|C1|C7|REG_3\(9))) ) ) ) # ( \C2|C1|C7|REG_0\(9) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5)) # (\C2|C1|C7|REG_1\(9)) ) ) ) # ( !\C2|C1|C7|REG_0\(9) & ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & \C2|C1|C7|REG_1\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_3\(9),
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \C2|C1|C7|ALT_INV_REG_1\(9),
	datad => \C2|C1|C7|ALT_INV_REG_2\(9),
	datae => \C2|C1|C7|ALT_INV_REG_0\(9),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux6~1_combout\);

-- Location: FF_X34_Y2_N8
\C2|C1|C7|REG_6[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(9),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(9));

-- Location: FF_X40_Y3_N41
\C2|C1|C7|REG_4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(9),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(9));

-- Location: FF_X35_Y3_N59
\C2|C1|C7|REG_5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(9),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(9));

-- Location: MLABCELL_X37_Y2_N15
\C2|C1|C5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux6~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(9) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(9) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(9) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_7\(9),
	datab => \C2|C1|C7|ALT_INV_REG_6\(9),
	datac => \C2|C1|C7|ALT_INV_REG_4\(9),
	datad => \C2|C1|C7|ALT_INV_REG_5\(9),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux6~0_combout\);

-- Location: MLABCELL_X37_Y2_N21
\C2|C1|C5|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux6~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux6~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux6~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_Mux6~1_combout\,
	datac => \C2|C1|C5|ALT_INV_Mux6~0_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux6~2_combout\);

-- Location: FF_X37_Y2_N22
\C2|C1|C5|REG_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(9));

-- Location: FF_X40_Y3_N35
\C2|C1|C7|REG_4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(8),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(8));

-- Location: LABCELL_X31_Y3_N54
\C2|C1|C7|REG_7[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[8]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(8),
	combout => \C2|C1|C7|REG_7[8]~feeder_combout\);

-- Location: FF_X31_Y3_N56
\C2|C1|C7|REG_7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[8]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(8));

-- Location: LABCELL_X31_Y3_N18
\C2|C1|C7|REG_6[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_6[8]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(8),
	combout => \C2|C1|C7|REG_6[8]~feeder_combout\);

-- Location: FF_X31_Y3_N20
\C2|C1|C7|REG_6[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_6[8]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(8));

-- Location: FF_X35_Y3_N23
\C2|C1|C7|REG_5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(8),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(8));

-- Location: MLABCELL_X37_Y2_N0
\C2|C1|C5|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux7~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(8) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(8) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(8) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_4\(8),
	datab => \C2|C1|C7|ALT_INV_REG_7\(8),
	datac => \C2|C1|C7|ALT_INV_REG_6\(8),
	datad => \C2|C1|C7|ALT_INV_REG_5\(8),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux7~0_combout\);

-- Location: LABCELL_X32_Y2_N18
\C2|C1|C7|REG_1[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[8]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(8),
	combout => \C2|C1|C7|REG_1[8]~feeder_combout\);

-- Location: FF_X32_Y2_N20
\C2|C1|C7|REG_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_1[8]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(8));

-- Location: FF_X35_Y2_N8
\C2|C1|C7|REG_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(8),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(8));

-- Location: FF_X37_Y2_N32
\C2|C1|C7|REG_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(8),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(8));

-- Location: MLABCELL_X37_Y2_N6
\C2|C1|C5|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux7~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(8) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(8) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(8) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_3\(8),
	datab => \C2|C1|C7|ALT_INV_REG_1\(8),
	datac => \C2|C1|C7|ALT_INV_REG_0\(8),
	datad => \C2|C1|C7|ALT_INV_REG_2\(8),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux7~1_combout\);

-- Location: MLABCELL_X37_Y2_N45
\C2|C1|C5|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux7~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux7~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux7~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_Mux7~0_combout\,
	datac => \C2|C1|C5|ALT_INV_Mux7~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux7~2_combout\);

-- Location: FF_X37_Y2_N46
\C2|C1|C5|REG_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(8));

-- Location: FF_X36_Y1_N53
\C2|C1|C7|REG_4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(7),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(7));

-- Location: LABCELL_X31_Y3_N45
\C2|C1|C7|REG_7[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[7]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(7),
	combout => \C2|C1|C7|REG_7[7]~feeder_combout\);

-- Location: FF_X31_Y3_N47
\C2|C1|C7|REG_7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[7]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(7));

-- Location: LABCELL_X31_Y3_N9
\C2|C1|C7|REG_6[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_6[7]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(7),
	combout => \C2|C1|C7|REG_6[7]~feeder_combout\);

-- Location: FF_X31_Y3_N11
\C2|C1|C7|REG_6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_6[7]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(7));

-- Location: FF_X34_Y3_N44
\C2|C1|C7|REG_5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(7),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(7));

-- Location: LABCELL_X35_Y2_N21
\C2|C1|C5|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux8~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(7) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(7) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(7) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_4\(7),
	datab => \C2|C1|C7|ALT_INV_REG_7\(7),
	datac => \C2|C1|C7|ALT_INV_REG_6\(7),
	datad => \C2|C1|C7|ALT_INV_REG_5\(7),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux8~0_combout\);

-- Location: LABCELL_X35_Y2_N57
\C2|C1|C7|REG_2[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_2[7]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(7),
	combout => \C2|C1|C7|REG_2[7]~feeder_combout\);

-- Location: FF_X35_Y2_N59
\C2|C1|C7|REG_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_2[7]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(7));

-- Location: LABCELL_X32_Y2_N45
\C2|C1|C7|REG_1[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[7]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(7),
	combout => \C2|C1|C7|REG_1[7]~feeder_combout\);

-- Location: FF_X32_Y2_N47
\C2|C1|C7|REG_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_1[7]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(7));

-- Location: LABCELL_X35_Y2_N3
\C2|C1|C7|REG_0[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_0[7]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(7),
	combout => \C2|C1|C7|REG_0[7]~feeder_combout\);

-- Location: FF_X35_Y2_N5
\C2|C1|C7|REG_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_0[7]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(7));

-- Location: LABCELL_X35_Y2_N27
\C2|C1|C5|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux8~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(7) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(7) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(7) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_3\(7),
	datab => \C2|C1|C7|ALT_INV_REG_2\(7),
	datac => \C2|C1|C7|ALT_INV_REG_1\(7),
	datad => \C2|C1|C7|ALT_INV_REG_0\(7),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux8~1_combout\);

-- Location: LABCELL_X36_Y2_N54
\C2|C1|C5|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux8~2_combout\ = ( \C2|C1|C5|Mux8~1_combout\ & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux8~0_combout\ ) ) ) # ( !\C2|C1|C5|Mux8~1_combout\ & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( 
-- \C2|C1|C5|Mux8~0_combout\ ) ) ) # ( \C2|C1|C5|Mux8~1_combout\ & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_Mux8~0_combout\,
	datae => \C2|C1|C5|ALT_INV_Mux8~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux8~2_combout\);

-- Location: FF_X36_Y2_N55
\C2|C1|C5|REG_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(7));

-- Location: FF_X31_Y3_N44
\C2|C1|C7|REG_7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(6),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(6));

-- Location: FF_X31_Y3_N8
\C2|C1|C7|REG_6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(6),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(6));

-- Location: FF_X36_Y1_N47
\C2|C1|C7|REG_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(6),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(6));

-- Location: MLABCELL_X34_Y2_N51
\C2|C1|C5|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux9~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(6) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(6) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(6) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(6),
	datab => \C2|C1|C7|ALT_INV_REG_7\(6),
	datac => \C2|C1|C7|ALT_INV_REG_6\(6),
	datad => \C2|C1|C7|ALT_INV_REG_4\(6),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux9~0_combout\);

-- Location: FF_X35_Y2_N2
\C2|C1|C7|REG_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(6),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(6));

-- Location: FF_X32_Y2_N44
\C2|C1|C7|REG_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(6),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(6));

-- Location: FF_X32_Y2_N38
\C2|C1|C7|REG_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(6),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(6));

-- Location: FF_X35_Y2_N56
\C2|C1|C7|REG_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(6),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(6));

-- Location: LABCELL_X35_Y2_N15
\C2|C1|C5|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux9~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(6) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(6) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(6) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_0\(6),
	datab => \C2|C1|C7|ALT_INV_REG_1\(6),
	datac => \C2|C1|C7|ALT_INV_REG_3\(6),
	datad => \C2|C1|C7|ALT_INV_REG_2\(6),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux9~1_combout\);

-- Location: LABCELL_X36_Y2_N51
\C2|C1|C5|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux9~2_combout\ = ( \C2|C1|C5|Mux9~1_combout\ & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux9~0_combout\ ) ) ) # ( !\C2|C1|C5|Mux9~1_combout\ & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( 
-- \C2|C1|C5|Mux9~0_combout\ ) ) ) # ( \C2|C1|C5|Mux9~1_combout\ & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_Mux9~0_combout\,
	datae => \C2|C1|C5|ALT_INV_Mux9~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux9~2_combout\);

-- Location: FF_X36_Y2_N52
\C2|C1|C5|REG_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(6));

-- Location: MLABCELL_X34_Y1_N18
\C2|C1|C6|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~25_sumout\ = SUM(( !\C2|C1|C5|REG_OUT\(6) $ (\C2|C1|C4|REG_OUT\(6)) ) + ( \C2|C1|C6|Add1~23\ ) + ( \C2|C1|C6|Add1~22\ ))
-- \C2|C1|C6|Add1~26\ = CARRY(( !\C2|C1|C5|REG_OUT\(6) $ (\C2|C1|C4|REG_OUT\(6)) ) + ( \C2|C1|C6|Add1~23\ ) + ( \C2|C1|C6|Add1~22\ ))
-- \C2|C1|C6|Add1~27\ = SHARE((!\C2|C1|C5|REG_OUT\(6) & \C2|C1|C4|REG_OUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(6),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(6),
	cin => \C2|C1|C6|Add1~22\,
	sharein => \C2|C1|C6|Add1~23\,
	sumout => \C2|C1|C6|Add1~25_sumout\,
	cout => \C2|C1|C6|Add1~26\,
	shareout => \C2|C1|C6|Add1~27\);

-- Location: MLABCELL_X34_Y1_N21
\C2|C1|C6|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~29_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(7) $ (\C2|C1|C5|REG_OUT\(7)) ) + ( \C2|C1|C6|Add1~27\ ) + ( \C2|C1|C6|Add1~26\ ))
-- \C2|C1|C6|Add1~30\ = CARRY(( !\C2|C1|C4|REG_OUT\(7) $ (\C2|C1|C5|REG_OUT\(7)) ) + ( \C2|C1|C6|Add1~27\ ) + ( \C2|C1|C6|Add1~26\ ))
-- \C2|C1|C6|Add1~31\ = SHARE((\C2|C1|C4|REG_OUT\(7) & !\C2|C1|C5|REG_OUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(7),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(7),
	cin => \C2|C1|C6|Add1~26\,
	sharein => \C2|C1|C6|Add1~27\,
	sumout => \C2|C1|C6|Add1~29_sumout\,
	cout => \C2|C1|C6|Add1~30\,
	shareout => \C2|C1|C6|Add1~31\);

-- Location: MLABCELL_X34_Y1_N24
\C2|C1|C6|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~33_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(8) $ (\C2|C1|C5|REG_OUT\(8)) ) + ( \C2|C1|C6|Add1~31\ ) + ( \C2|C1|C6|Add1~30\ ))
-- \C2|C1|C6|Add1~34\ = CARRY(( !\C2|C1|C4|REG_OUT\(8) $ (\C2|C1|C5|REG_OUT\(8)) ) + ( \C2|C1|C6|Add1~31\ ) + ( \C2|C1|C6|Add1~30\ ))
-- \C2|C1|C6|Add1~35\ = SHARE((\C2|C1|C4|REG_OUT\(8) & !\C2|C1|C5|REG_OUT\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(8),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(8),
	cin => \C2|C1|C6|Add1~30\,
	sharein => \C2|C1|C6|Add1~31\,
	sumout => \C2|C1|C6|Add1~33_sumout\,
	cout => \C2|C1|C6|Add1~34\,
	shareout => \C2|C1|C6|Add1~35\);

-- Location: MLABCELL_X34_Y1_N27
\C2|C1|C6|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~37_sumout\ = SUM(( !\C2|C1|C5|REG_OUT\(9) $ (\C2|C1|C4|REG_OUT\(9)) ) + ( \C2|C1|C6|Add1~35\ ) + ( \C2|C1|C6|Add1~34\ ))
-- \C2|C1|C6|Add1~38\ = CARRY(( !\C2|C1|C5|REG_OUT\(9) $ (\C2|C1|C4|REG_OUT\(9)) ) + ( \C2|C1|C6|Add1~35\ ) + ( \C2|C1|C6|Add1~34\ ))
-- \C2|C1|C6|Add1~39\ = SHARE((!\C2|C1|C5|REG_OUT\(9) & \C2|C1|C4|REG_OUT\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(9),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(9),
	cin => \C2|C1|C6|Add1~34\,
	sharein => \C2|C1|C6|Add1~35\,
	sumout => \C2|C1|C6|Add1~37_sumout\,
	cout => \C2|C1|C6|Add1~38\,
	shareout => \C2|C1|C6|Add1~39\);

-- Location: IOIBUF_X33_Y0_N75
\IO65_IN[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(9),
	o => \IO65_IN[9]~input_o\);

-- Location: LABCELL_X35_Y1_N30
\C2|C1|C7|REG_0[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_0[10]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(10),
	combout => \C2|C1|C7|REG_0[10]~feeder_combout\);

-- Location: FF_X35_Y1_N32
\C2|C1|C7|REG_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_0[10]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(10));

-- Location: MLABCELL_X37_Y6_N6
\C2|C1|C7|REG_3[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[10]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(10),
	combout => \C2|C1|C7|REG_3[10]~feeder_combout\);

-- Location: FF_X37_Y6_N8
\C2|C1|C7|REG_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[10]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(10));

-- Location: FF_X40_Y3_N53
\C2|C1|C7|REG_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(10),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(10));

-- Location: MLABCELL_X37_Y2_N24
\C2|C1|C5|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux5~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(10) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(10) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(10) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_2\(10),
	datab => \C2|C1|C7|ALT_INV_REG_0\(10),
	datac => \C2|C1|C7|ALT_INV_REG_3\(10),
	datad => \C2|C1|C7|ALT_INV_REG_1\(10),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux5~1_combout\);

-- Location: FF_X34_Y2_N44
\C2|C1|C7|REG_6[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(10),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(10));

-- Location: FF_X35_Y3_N5
\C2|C1|C7|REG_5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(10),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(10));

-- Location: MLABCELL_X37_Y6_N30
\C2|C1|C7|REG_7[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[10]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(10),
	combout => \C2|C1|C7|REG_7[10]~feeder_combout\);

-- Location: FF_X37_Y6_N32
\C2|C1|C7|REG_7[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[10]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(10));

-- Location: FF_X40_Y3_N17
\C2|C1|C7|REG_4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(10),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(10));

-- Location: MLABCELL_X37_Y2_N48
\C2|C1|C5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux5~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(10) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(10) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(10) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_6\(10),
	datab => \C2|C1|C7|ALT_INV_REG_5\(10),
	datac => \C2|C1|C7|ALT_INV_REG_7\(10),
	datad => \C2|C1|C7|ALT_INV_REG_4\(10),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux5~0_combout\);

-- Location: MLABCELL_X37_Y2_N54
\C2|C1|C5|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux5~2_combout\ = ( \C2|C1|C5|Mux5~0_combout\ & ( (\C2|C1|C5|Mux5~1_combout\) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7)) ) ) # ( !\C2|C1|C5|Mux5~0_combout\ & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & 
-- \C2|C1|C5|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \C2|C1|C5|ALT_INV_Mux5~1_combout\,
	dataf => \C2|C1|C5|ALT_INV_Mux5~0_combout\,
	combout => \C2|C1|C5|Mux5~2_combout\);

-- Location: FF_X37_Y2_N56
\C2|C1|C5|REG_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(10));

-- Location: LABCELL_X32_Y3_N51
\C2|C1|C6|REG_IN~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN~5_combout\ = ( \C2|C1|C4|REG_OUT\(10) & ( \C2|C1|C5|REG_OUT\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_REG_OUT\(10),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(10),
	combout => \C2|C1|C6|REG_IN~5_combout\);

-- Location: MLABCELL_X34_Y1_N30
\C2|C1|C6|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~41_sumout\ = SUM(( !\C2|C1|C5|REG_OUT\(10) $ (\C2|C1|C4|REG_OUT\(10)) ) + ( \C2|C1|C6|Add1~39\ ) + ( \C2|C1|C6|Add1~38\ ))
-- \C2|C1|C6|Add1~42\ = CARRY(( !\C2|C1|C5|REG_OUT\(10) $ (\C2|C1|C4|REG_OUT\(10)) ) + ( \C2|C1|C6|Add1~39\ ) + ( \C2|C1|C6|Add1~38\ ))
-- \C2|C1|C6|Add1~43\ = SHARE((!\C2|C1|C5|REG_OUT\(10) & \C2|C1|C4|REG_OUT\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(10),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(10),
	cin => \C2|C1|C6|Add1~38\,
	sharein => \C2|C1|C6|Add1~39\,
	sumout => \C2|C1|C6|Add1~41_sumout\,
	cout => \C2|C1|C6|Add1~42\,
	shareout => \C2|C1|C6|Add1~43\);

-- Location: MLABCELL_X37_Y1_N18
\C2|C1|C6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~25_sumout\ = SUM(( \C2|C1|C5|REG_OUT\(6) ) + ( \C2|C1|C4|REG_OUT\(6) ) + ( \C2|C1|C6|Add0~22\ ))
-- \C2|C1|C6|Add0~26\ = CARRY(( \C2|C1|C5|REG_OUT\(6) ) + ( \C2|C1|C4|REG_OUT\(6) ) + ( \C2|C1|C6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(6),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(6),
	cin => \C2|C1|C6|Add0~22\,
	sumout => \C2|C1|C6|Add0~25_sumout\,
	cout => \C2|C1|C6|Add0~26\);

-- Location: MLABCELL_X37_Y1_N21
\C2|C1|C6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~29_sumout\ = SUM(( \C2|C1|C4|REG_OUT\(7) ) + ( \C2|C1|C5|REG_OUT\(7) ) + ( \C2|C1|C6|Add0~26\ ))
-- \C2|C1|C6|Add0~30\ = CARRY(( \C2|C1|C4|REG_OUT\(7) ) + ( \C2|C1|C5|REG_OUT\(7) ) + ( \C2|C1|C6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(7),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(7),
	cin => \C2|C1|C6|Add0~26\,
	sumout => \C2|C1|C6|Add0~29_sumout\,
	cout => \C2|C1|C6|Add0~30\);

-- Location: MLABCELL_X37_Y1_N24
\C2|C1|C6|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~33_sumout\ = SUM(( \C2|C1|C4|REG_OUT\(8) ) + ( \C2|C1|C5|REG_OUT\(8) ) + ( \C2|C1|C6|Add0~30\ ))
-- \C2|C1|C6|Add0~34\ = CARRY(( \C2|C1|C4|REG_OUT\(8) ) + ( \C2|C1|C5|REG_OUT\(8) ) + ( \C2|C1|C6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(8),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(8),
	cin => \C2|C1|C6|Add0~30\,
	sumout => \C2|C1|C6|Add0~33_sumout\,
	cout => \C2|C1|C6|Add0~34\);

-- Location: MLABCELL_X37_Y1_N27
\C2|C1|C6|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~37_sumout\ = SUM(( \C2|C1|C5|REG_OUT\(9) ) + ( \C2|C1|C4|REG_OUT\(9) ) + ( \C2|C1|C6|Add0~34\ ))
-- \C2|C1|C6|Add0~38\ = CARRY(( \C2|C1|C5|REG_OUT\(9) ) + ( \C2|C1|C4|REG_OUT\(9) ) + ( \C2|C1|C6|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(9),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(9),
	cin => \C2|C1|C6|Add0~34\,
	sumout => \C2|C1|C6|Add0~37_sumout\,
	cout => \C2|C1|C6|Add0~38\);

-- Location: MLABCELL_X37_Y1_N30
\C2|C1|C6|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~41_sumout\ = SUM(( \C2|C1|C5|REG_OUT\(10) ) + ( \C2|C1|C4|REG_OUT\(10) ) + ( \C2|C1|C6|Add0~38\ ))
-- \C2|C1|C6|Add0~42\ = CARRY(( \C2|C1|C5|REG_OUT\(10) ) + ( \C2|C1|C4|REG_OUT\(10) ) + ( \C2|C1|C6|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(10),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(10),
	cin => \C2|C1|C6|Add0~38\,
	sumout => \C2|C1|C6|Add0~41_sumout\,
	cout => \C2|C1|C6|Add0~42\);

-- Location: LABCELL_X32_Y3_N30
\C2|C1|C6|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux5~0_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C4|REG_OUT\(10) & ( (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & !\C2|C1|C4|REG_OUT\(9)) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C4|REG_OUT\(10) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & 
-- (!\C2|C1|C5|REG_OUT\(10))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C6|Add0~41_sumout\))) ) ) ) # ( \C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C4|REG_OUT\(10) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C5|REG_OUT\(10))) # 
-- (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C4|REG_OUT\(9)))) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C4|REG_OUT\(10) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C5|REG_OUT\(10))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & 
-- ((!\C2|C1|C6|Add0~41_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010111000101110111000100010111000101110000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_REG_OUT\(10),
	datab => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datac => \C2|C1|C6|ALT_INV_Add0~41_sumout\,
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(9),
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(10),
	combout => \C2|C1|C6|Mux5~0_combout\);

-- Location: LABCELL_X36_Y5_N57
\C2|C1|C6|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux4~2_combout\ = (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((\C2|C1|C4|REG_OUT\(11))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C3|OP_DATA\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datac => \C2|C1|C3|ALT_INV_OP_DATA\(3),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(11),
	combout => \C2|C1|C6|Mux4~2_combout\);

-- Location: LABCELL_X35_Y4_N57
\C2|C1|C6|REG_IN[13]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN[13]~6_combout\ = ( \C2|C1|C6|PC[5]~2_combout\ & ( (!\C2|C1|C3|OP_CODE\(3)) # ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	combout => \C2|C1|C6|REG_IN[13]~6_combout\);

-- Location: FF_X37_Y4_N55
\C2|C1|C6|RAM_IN[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(11),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(11));

-- Location: MLABCELL_X37_Y6_N48
\C2|C1|C7|REG_3[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[12]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(12),
	combout => \C2|C1|C7|REG_3[12]~feeder_combout\);

-- Location: FF_X37_Y6_N50
\C2|C1|C7|REG_3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[12]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(12));

-- Location: LABCELL_X35_Y1_N36
\C2|C1|C7|REG_2[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_2[12]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(12),
	combout => \C2|C1|C7|REG_2[12]~feeder_combout\);

-- Location: FF_X35_Y1_N38
\C2|C1|C7|REG_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_2[12]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(12));

-- Location: FF_X40_Y3_N11
\C2|C1|C7|REG_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(12),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(12));

-- Location: LABCELL_X35_Y1_N12
\C2|C1|C7|REG_0[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_0[12]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(12),
	combout => \C2|C1|C7|REG_0[12]~feeder_combout\);

-- Location: FF_X35_Y1_N14
\C2|C1|C7|REG_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_0[12]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(12));

-- Location: MLABCELL_X34_Y2_N24
\C2|C1|C5|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux3~1_combout\ = ( \C2|C1|C7|REG_0\(12) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_2\(12)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & 
-- (\C2|C1|C7|REG_3\(12))) ) ) ) # ( !\C2|C1|C7|REG_0\(12) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_2\(12)))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_3\(12))) ) ) ) # ( \C2|C1|C7|REG_0\(12) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5)) # 
-- (\C2|C1|C7|REG_1\(12)) ) ) ) # ( !\C2|C1|C7|REG_0\(12) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & \C2|C1|C7|REG_1\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \C2|C1|C7|ALT_INV_REG_3\(12),
	datac => \C2|C1|C7|ALT_INV_REG_2\(12),
	datad => \C2|C1|C7|ALT_INV_REG_1\(12),
	datae => \C2|C1|C7|ALT_INV_REG_0\(12),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux3~1_combout\);

-- Location: MLABCELL_X37_Y6_N42
\C2|C1|C7|REG_7[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[12]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(12),
	combout => \C2|C1|C7|REG_7[12]~feeder_combout\);

-- Location: FF_X37_Y6_N44
\C2|C1|C7|REG_7[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[12]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(12));

-- Location: FF_X34_Y2_N23
\C2|C1|C7|REG_5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(12),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(12));

-- Location: FF_X40_Y3_N5
\C2|C1|C7|REG_4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(12),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(12));

-- Location: MLABCELL_X34_Y2_N15
\C2|C1|C5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux3~0_combout\ = ( \C2|C1|C7|REG_5\(12) & ( \C2|C1|C7|REG_4\(12) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6)) # ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_6\(12))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_7\(12))))) ) ) ) # ( !\C2|C1|C7|REG_5\(12) & ( \C2|C1|C7|REG_4\(12) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & 
-- (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_6\(12))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_7\(12)))))) ) ) ) # ( \C2|C1|C7|REG_5\(12) & ( !\C2|C1|C7|REG_4\(12) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & 
-- (((\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_6\(12))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_7\(12)))))) ) ) ) # ( !\C2|C1|C7|REG_5\(12) & ( !\C2|C1|C7|REG_4\(12) & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & 
-- ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C7|REG_6\(12))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ((\C2|C1|C7|REG_7\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datab => \C2|C1|C7|ALT_INV_REG_6\(12),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \C2|C1|C7|ALT_INV_REG_7\(12),
	datae => \C2|C1|C7|ALT_INV_REG_5\(12),
	dataf => \C2|C1|C7|ALT_INV_REG_4\(12),
	combout => \C2|C1|C5|Mux3~0_combout\);

-- Location: LABCELL_X36_Y2_N42
\C2|C1|C5|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux3~2_combout\ = ( \C2|C1|C5|Mux3~0_combout\ & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7)) # (\C2|C1|C5|Mux3~1_combout\) ) ) # ( !\C2|C1|C5|Mux3~0_combout\ & ( (\C2|C1|C5|Mux3~1_combout\ & 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C5|ALT_INV_Mux3~1_combout\,
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \C2|C1|C5|ALT_INV_Mux3~0_combout\,
	combout => \C2|C1|C5|Mux3~2_combout\);

-- Location: FF_X36_Y2_N43
\C2|C1|C5|REG_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(12));

-- Location: MLABCELL_X34_Y2_N18
\C2|C1|C7|REG_5[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_5[11]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(11),
	combout => \C2|C1|C7|REG_5[11]~feeder_combout\);

-- Location: FF_X34_Y2_N20
\C2|C1|C7|REG_5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_5[11]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(11));

-- Location: MLABCELL_X34_Y2_N54
\C2|C1|C7|REG_6[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_6[11]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(11),
	combout => \C2|C1|C7|REG_6[11]~feeder_combout\);

-- Location: FF_X34_Y2_N56
\C2|C1|C7|REG_6[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_6[11]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(11));

-- Location: FF_X40_Y3_N59
\C2|C1|C7|REG_4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(11),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(11));

-- Location: FF_X37_Y6_N35
\C2|C1|C7|REG_7[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(11),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(11));

-- Location: LABCELL_X32_Y3_N18
\C2|C1|C5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux4~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(11) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(11) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(11) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(11),
	datab => \C2|C1|C7|ALT_INV_REG_6\(11),
	datac => \C2|C1|C7|ALT_INV_REG_4\(11),
	datad => \C2|C1|C7|ALT_INV_REG_7\(11),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux4~0_combout\);

-- Location: LABCELL_X35_Y1_N27
\C2|C1|C7|REG_2[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_2[11]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(11),
	combout => \C2|C1|C7|REG_2[11]~feeder_combout\);

-- Location: FF_X35_Y1_N29
\C2|C1|C7|REG_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_2[11]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(11));

-- Location: FF_X37_Y6_N11
\C2|C1|C7|REG_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(11),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(11));

-- Location: LABCELL_X35_Y1_N33
\C2|C1|C7|REG_0[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_0[11]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(11),
	combout => \C2|C1|C7|REG_0[11]~feeder_combout\);

-- Location: FF_X35_Y1_N35
\C2|C1|C7|REG_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_0[11]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(11));

-- Location: LABCELL_X32_Y3_N54
\C2|C1|C5|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux4~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(11) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(11) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(11) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_1\(11),
	datab => \C2|C1|C7|ALT_INV_REG_2\(11),
	datac => \C2|C1|C7|ALT_INV_REG_3\(11),
	datad => \C2|C1|C7|ALT_INV_REG_0\(11),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux4~1_combout\);

-- Location: LABCELL_X32_Y3_N9
\C2|C1|C5|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux4~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux4~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux4~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_Mux4~0_combout\,
	datad => \C2|C1|C5|ALT_INV_Mux4~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux4~2_combout\);

-- Location: FF_X32_Y3_N10
\C2|C1|C5|REG_OUT[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT[11]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y1_N33
\C2|C1|C6|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~45_sumout\ = SUM(( \C2|C1|C4|REG_OUT\(11) ) + ( \C2|C1|C5|REG_OUT[11]~DUPLICATE_q\ ) + ( \C2|C1|C6|Add0~42\ ))
-- \C2|C1|C6|Add0~46\ = CARRY(( \C2|C1|C4|REG_OUT\(11) ) + ( \C2|C1|C5|REG_OUT[11]~DUPLICATE_q\ ) + ( \C2|C1|C6|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(11),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT[11]~DUPLICATE_q\,
	cin => \C2|C1|C6|Add0~42\,
	sumout => \C2|C1|C6|Add0~45_sumout\,
	cout => \C2|C1|C6|Add0~46\);

-- Location: MLABCELL_X37_Y1_N36
\C2|C1|C6|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~49_sumout\ = SUM(( \C2|C1|C5|REG_OUT\(12) ) + ( \C2|C1|C4|REG_OUT\(12) ) + ( \C2|C1|C6|Add0~46\ ))
-- \C2|C1|C6|Add0~50\ = CARRY(( \C2|C1|C5|REG_OUT\(12) ) + ( \C2|C1|C4|REG_OUT\(12) ) + ( \C2|C1|C6|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(12),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(12),
	cin => \C2|C1|C6|Add0~46\,
	sumout => \C2|C1|C6|Add0~49_sumout\,
	cout => \C2|C1|C6|Add0~50\);

-- Location: FF_X36_Y1_N29
\C2|C1|C3|OP_CODE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_CODE\(0));

-- Location: LABCELL_X36_Y1_N6
\C2|C1|C6|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux3~0_combout\ = ( \C2|C1|C3|OP_CODE\(0) & ( \C2|C1|C4|REG_OUT\(12) & ( (!\C2|C1|C3|OP_CODE\(2) & ((!\C2|C1|C6|Add0~49_sumout\))) # (\C2|C1|C3|OP_CODE\(2) & (!\C2|C1|C4|REG_OUT\(11))) ) ) ) # ( !\C2|C1|C3|OP_CODE\(0) & ( \C2|C1|C4|REG_OUT\(12) 
-- & ( (!\C2|C1|C3|OP_CODE\(2) & !\C2|C1|C5|REG_OUT\(12)) ) ) ) # ( \C2|C1|C3|OP_CODE\(0) & ( !\C2|C1|C4|REG_OUT\(12) & ( (!\C2|C1|C3|OP_CODE\(2) & ((!\C2|C1|C6|Add0~49_sumout\))) # (\C2|C1|C3|OP_CODE\(2) & (!\C2|C1|C4|REG_OUT\(11))) ) ) ) # ( 
-- !\C2|C1|C3|OP_CODE\(0) & ( !\C2|C1|C4|REG_OUT\(12) & ( !\C2|C1|C5|REG_OUT\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111011100100010010100000101000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(11),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(12),
	datad => \C2|C1|C6|ALT_INV_Add0~49_sumout\,
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(0),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(12),
	combout => \C2|C1|C6|Mux3~0_combout\);

-- Location: MLABCELL_X34_Y1_N33
\C2|C1|C6|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~45_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(11) $ (\C2|C1|C5|REG_OUT[11]~DUPLICATE_q\) ) + ( \C2|C1|C6|Add1~43\ ) + ( \C2|C1|C6|Add1~42\ ))
-- \C2|C1|C6|Add1~46\ = CARRY(( !\C2|C1|C4|REG_OUT\(11) $ (\C2|C1|C5|REG_OUT[11]~DUPLICATE_q\) ) + ( \C2|C1|C6|Add1~43\ ) + ( \C2|C1|C6|Add1~42\ ))
-- \C2|C1|C6|Add1~47\ = SHARE((\C2|C1|C4|REG_OUT\(11) & !\C2|C1|C5|REG_OUT[11]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(11),
	datad => \C2|C1|C5|ALT_INV_REG_OUT[11]~DUPLICATE_q\,
	cin => \C2|C1|C6|Add1~42\,
	sharein => \C2|C1|C6|Add1~43\,
	sumout => \C2|C1|C6|Add1~45_sumout\,
	cout => \C2|C1|C6|Add1~46\,
	shareout => \C2|C1|C6|Add1~47\);

-- Location: MLABCELL_X34_Y1_N36
\C2|C1|C6|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~49_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(12) $ (\C2|C1|C5|REG_OUT\(12)) ) + ( \C2|C1|C6|Add1~47\ ) + ( \C2|C1|C6|Add1~46\ ))
-- \C2|C1|C6|Add1~50\ = CARRY(( !\C2|C1|C4|REG_OUT\(12) $ (\C2|C1|C5|REG_OUT\(12)) ) + ( \C2|C1|C6|Add1~47\ ) + ( \C2|C1|C6|Add1~46\ ))
-- \C2|C1|C6|Add1~51\ = SHARE((\C2|C1|C4|REG_OUT\(12) & !\C2|C1|C5|REG_OUT\(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(12),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(12),
	cin => \C2|C1|C6|Add1~46\,
	sharein => \C2|C1|C6|Add1~47\,
	sumout => \C2|C1|C6|Add1~49_sumout\,
	cout => \C2|C1|C6|Add1~50\,
	shareout => \C2|C1|C6|Add1~51\);

-- Location: LABCELL_X36_Y1_N0
\C2|C1|C6|REG_IN~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN~8_combout\ = ( \C2|C1|C4|REG_OUT\(12) & ( \C2|C1|C5|REG_OUT\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(12),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(12),
	combout => \C2|C1|C6|REG_IN~8_combout\);

-- Location: LABCELL_X31_Y3_N21
\C2|C1|C7|REG_6[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_6[13]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(13),
	combout => \C2|C1|C7|REG_6[13]~feeder_combout\);

-- Location: FF_X31_Y3_N23
\C2|C1|C7|REG_6[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_6[13]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(13));

-- Location: FF_X37_Y6_N47
\C2|C1|C7|REG_7[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(13),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(13));

-- Location: FF_X35_Y3_N2
\C2|C1|C7|REG_5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(13),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(13));

-- Location: FF_X40_Y3_N47
\C2|C1|C7|REG_4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(13),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(13));

-- Location: MLABCELL_X37_Y5_N24
\C2|C1|C5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux2~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(13) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(13) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(13) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_6\(13),
	datab => \C2|C1|C7|ALT_INV_REG_7\(13),
	datac => \C2|C1|C7|ALT_INV_REG_5\(13),
	datad => \C2|C1|C7|ALT_INV_REG_4\(13),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux2~0_combout\);

-- Location: FF_X37_Y6_N53
\C2|C1|C7|REG_3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(13),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(13));

-- Location: MLABCELL_X37_Y5_N3
\C2|C1|C7|REG_1[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[13]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(13),
	combout => \C2|C1|C7|REG_1[13]~feeder_combout\);

-- Location: FF_X37_Y5_N5
\C2|C1|C7|REG_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_1[13]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(13));

-- Location: LABCELL_X35_Y1_N15
\C2|C1|C7|REG_0[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_0[13]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(13),
	combout => \C2|C1|C7|REG_0[13]~feeder_combout\);

-- Location: FF_X35_Y1_N17
\C2|C1|C7|REG_0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_0[13]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(13));

-- Location: MLABCELL_X37_Y5_N30
\C2|C1|C5|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux2~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(13) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(13) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(13) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_2\(13),
	datab => \C2|C1|C7|ALT_INV_REG_3\(13),
	datac => \C2|C1|C7|ALT_INV_REG_1\(13),
	datad => \C2|C1|C7|ALT_INV_REG_0\(13),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux2~1_combout\);

-- Location: MLABCELL_X37_Y5_N9
\C2|C1|C5|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux2~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux2~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_Mux2~0_combout\,
	datac => \C2|C1|C5|ALT_INV_Mux2~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux2~2_combout\);

-- Location: FF_X37_Y5_N10
\C2|C1|C5|REG_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(13));

-- Location: MLABCELL_X37_Y1_N39
\C2|C1|C6|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~53_sumout\ = SUM(( \C2|C1|C5|REG_OUT\(13) ) + ( \C2|C1|C4|REG_OUT\(13) ) + ( \C2|C1|C6|Add0~50\ ))
-- \C2|C1|C6|Add0~54\ = CARRY(( \C2|C1|C5|REG_OUT\(13) ) + ( \C2|C1|C4|REG_OUT\(13) ) + ( \C2|C1|C6|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(13),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(13),
	cin => \C2|C1|C6|Add0~50\,
	sumout => \C2|C1|C6|Add0~53_sumout\,
	cout => \C2|C1|C6|Add0~54\);

-- Location: LABCELL_X36_Y1_N18
\C2|C1|C6|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux2~0_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C5|REG_OUT\(13) & ( (!\C2|C1|C4|REG_OUT\(12) & \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C5|REG_OUT\(13) & ( (!\C2|C1|C6|Add0~53_sumout\ & 
-- \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) ) ) ) # ( \C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C5|REG_OUT\(13) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C4|REG_OUT\(13)))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C4|REG_OUT\(12))) ) ) ) # ( 
-- !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C5|REG_OUT\(13) & ( (!\C2|C1|C6|Add0~53_sumout\) # (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001010101000000000111100000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(12),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(13),
	datac => \C2|C1|C6|ALT_INV_Add0~53_sumout\,
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(13),
	combout => \C2|C1|C6|Mux2~0_combout\);

-- Location: MLABCELL_X37_Y3_N57
\C2|C1|C6|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux1~2_combout\ = ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( (!\C2|C1|C3|OP_CODE\(2) & \C2|C1|C3|OP_DATA\(6)) ) ) # ( !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( \C2|C1|C4|REG_OUT\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datac => \C2|C1|C3|ALT_INV_OP_DATA\(6),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(14),
	dataf => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	combout => \C2|C1|C6|Mux1~2_combout\);

-- Location: MLABCELL_X37_Y6_N0
\C2|C1|C7|REG_3[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[14]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(14),
	combout => \C2|C1|C7|REG_3[14]~feeder_combout\);

-- Location: FF_X37_Y6_N2
\C2|C1|C7|REG_3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[14]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(14));

-- Location: LABCELL_X35_Y1_N48
\C2|C1|C7|REG_2[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_2[14]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(14),
	combout => \C2|C1|C7|REG_2[14]~feeder_combout\);

-- Location: FF_X35_Y1_N50
\C2|C1|C7|REG_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_2[14]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(14));

-- Location: LABCELL_X35_Y1_N54
\C2|C1|C7|REG_0[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_0[14]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(14),
	combout => \C2|C1|C7|REG_0[14]~feeder_combout\);

-- Location: FF_X35_Y1_N56
\C2|C1|C7|REG_0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_0[14]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(14));

-- Location: MLABCELL_X37_Y5_N42
\C2|C1|C5|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux1~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(14) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(14) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(14) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_1\(14),
	datab => \C2|C1|C7|ALT_INV_REG_3\(14),
	datac => \C2|C1|C7|ALT_INV_REG_2\(14),
	datad => \C2|C1|C7|ALT_INV_REG_0\(14),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux1~1_combout\);

-- Location: FF_X34_Y2_N35
\C2|C1|C7|REG_5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(14),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(14));

-- Location: FF_X34_Y2_N11
\C2|C1|C7|REG_6[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(14),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(14));

-- Location: FF_X40_Y3_N23
\C2|C1|C7|REG_4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(14),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(14));

-- Location: MLABCELL_X37_Y6_N54
\C2|C1|C7|REG_7[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[14]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(14),
	combout => \C2|C1|C7|REG_7[14]~feeder_combout\);

-- Location: FF_X37_Y6_N56
\C2|C1|C7|REG_7[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[14]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(14));

-- Location: MLABCELL_X37_Y5_N36
\C2|C1|C5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux1~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(14) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(14) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(14) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(14),
	datab => \C2|C1|C7|ALT_INV_REG_6\(14),
	datac => \C2|C1|C7|ALT_INV_REG_4\(14),
	datad => \C2|C1|C7|ALT_INV_REG_7\(14),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux1~0_combout\);

-- Location: MLABCELL_X37_Y5_N12
\C2|C1|C5|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux1~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux1~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C5|ALT_INV_Mux1~1_combout\,
	datac => \C2|C1|C5|ALT_INV_Mux1~0_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux1~2_combout\);

-- Location: FF_X37_Y5_N14
\C2|C1|C5|REG_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(14));

-- Location: LABCELL_X36_Y1_N12
\C2|C1|C6|REG_IN~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN~10_combout\ = ( \C2|C1|C5|REG_OUT\(14) & ( \C2|C1|C4|REG_OUT\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(14),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(14),
	combout => \C2|C1|C6|REG_IN~10_combout\);

-- Location: MLABCELL_X37_Y1_N42
\C2|C1|C6|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~57_sumout\ = SUM(( \C2|C1|C4|REG_OUT\(14) ) + ( \C2|C1|C5|REG_OUT\(14) ) + ( \C2|C1|C6|Add0~54\ ))
-- \C2|C1|C6|Add0~58\ = CARRY(( \C2|C1|C4|REG_OUT\(14) ) + ( \C2|C1|C5|REG_OUT\(14) ) + ( \C2|C1|C6|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(14),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(14),
	cin => \C2|C1|C6|Add0~54\,
	sumout => \C2|C1|C6|Add0~57_sumout\,
	cout => \C2|C1|C6|Add0~58\);

-- Location: LABCELL_X36_Y1_N54
\C2|C1|C6|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux1~0_combout\ = ( \C2|C1|C3|OP_CODE\(0) & ( \C2|C1|C5|REG_OUT\(14) & ( (!\C2|C1|C3|OP_CODE\(2) & (!\C2|C1|C6|Add0~57_sumout\)) # (\C2|C1|C3|OP_CODE\(2) & ((!\C2|C1|C4|REG_OUT\(13)))) ) ) ) # ( \C2|C1|C3|OP_CODE\(0) & ( !\C2|C1|C5|REG_OUT\(14) 
-- & ( (!\C2|C1|C3|OP_CODE\(2) & (!\C2|C1|C6|Add0~57_sumout\)) # (\C2|C1|C3|OP_CODE\(2) & ((!\C2|C1|C4|REG_OUT\(13)))) ) ) ) # ( !\C2|C1|C3|OP_CODE\(0) & ( !\C2|C1|C5|REG_OUT\(14) & ( (!\C2|C1|C4|REG_OUT\(14)) # (!\C2|C1|C3|OP_CODE\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110011111100000000000000000000001100111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(14),
	datab => \C2|C1|C6|ALT_INV_Add0~57_sumout\,
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(13),
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(0),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(14),
	combout => \C2|C1|C6|Mux1~0_combout\);

-- Location: MLABCELL_X34_Y1_N39
\C2|C1|C6|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~53_sumout\ = SUM(( !\C2|C1|C5|REG_OUT\(13) $ (\C2|C1|C4|REG_OUT\(13)) ) + ( \C2|C1|C6|Add1~51\ ) + ( \C2|C1|C6|Add1~50\ ))
-- \C2|C1|C6|Add1~54\ = CARRY(( !\C2|C1|C5|REG_OUT\(13) $ (\C2|C1|C4|REG_OUT\(13)) ) + ( \C2|C1|C6|Add1~51\ ) + ( \C2|C1|C6|Add1~50\ ))
-- \C2|C1|C6|Add1~55\ = SHARE((!\C2|C1|C5|REG_OUT\(13) & \C2|C1|C4|REG_OUT\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_REG_OUT\(13),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(13),
	cin => \C2|C1|C6|Add1~50\,
	sharein => \C2|C1|C6|Add1~51\,
	sumout => \C2|C1|C6|Add1~53_sumout\,
	cout => \C2|C1|C6|Add1~54\,
	shareout => \C2|C1|C6|Add1~55\);

-- Location: MLABCELL_X34_Y1_N42
\C2|C1|C6|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~57_sumout\ = SUM(( !\C2|C1|C5|REG_OUT\(14) $ (\C2|C1|C4|REG_OUT\(14)) ) + ( \C2|C1|C6|Add1~55\ ) + ( \C2|C1|C6|Add1~54\ ))
-- \C2|C1|C6|Add1~58\ = CARRY(( !\C2|C1|C5|REG_OUT\(14) $ (\C2|C1|C4|REG_OUT\(14)) ) + ( \C2|C1|C6|Add1~55\ ) + ( \C2|C1|C6|Add1~54\ ))
-- \C2|C1|C6|Add1~59\ = SHARE((!\C2|C1|C5|REG_OUT\(14) & \C2|C1|C4|REG_OUT\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(14),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(14),
	cin => \C2|C1|C6|Add1~54\,
	sharein => \C2|C1|C6|Add1~55\,
	sumout => \C2|C1|C6|Add1~57_sumout\,
	cout => \C2|C1|C6|Add1~58\,
	shareout => \C2|C1|C6|Add1~59\);

-- Location: LABCELL_X36_Y1_N30
\C2|C1|C6|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux1~1_combout\ = ( \C2|C1|C4|REG_OUT\(15) & ( \C2|C1|C6|Add1~57_sumout\ & ( (!\C2|C1|C6|REG_IN[2]~1_combout\ & (((!\C2|C1|C6|Mux1~0_combout\) # (\C2|C1|C6|REG_IN[2]~2_combout\)))) # (\C2|C1|C6|REG_IN[2]~1_combout\ & 
-- (((!\C2|C1|C6|REG_IN[2]~2_combout\)) # (\C2|C1|C6|REG_IN~10_combout\))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(15) & ( \C2|C1|C6|Add1~57_sumout\ & ( (!\C2|C1|C6|REG_IN[2]~1_combout\ & (((!\C2|C1|C6|Mux1~0_combout\) # (\C2|C1|C6|REG_IN[2]~2_combout\)))) # 
-- (\C2|C1|C6|REG_IN[2]~1_combout\ & (\C2|C1|C6|REG_IN~10_combout\ & ((\C2|C1|C6|REG_IN[2]~2_combout\)))) ) ) ) # ( \C2|C1|C4|REG_OUT\(15) & ( !\C2|C1|C6|Add1~57_sumout\ & ( (!\C2|C1|C6|REG_IN[2]~1_combout\ & (((!\C2|C1|C6|Mux1~0_combout\ & 
-- !\C2|C1|C6|REG_IN[2]~2_combout\)))) # (\C2|C1|C6|REG_IN[2]~1_combout\ & (((!\C2|C1|C6|REG_IN[2]~2_combout\)) # (\C2|C1|C6|REG_IN~10_combout\))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(15) & ( !\C2|C1|C6|Add1~57_sumout\ & ( (!\C2|C1|C6|REG_IN[2]~1_combout\ & 
-- (((!\C2|C1|C6|Mux1~0_combout\ & !\C2|C1|C6|REG_IN[2]~2_combout\)))) # (\C2|C1|C6|REG_IN[2]~1_combout\ & (\C2|C1|C6|REG_IN~10_combout\ & ((\C2|C1|C6|REG_IN[2]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000010001111101010001000110100000101110111111010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_REG_IN[2]~1_combout\,
	datab => \C2|C1|C6|ALT_INV_REG_IN~10_combout\,
	datac => \C2|C1|C6|ALT_INV_Mux1~0_combout\,
	datad => \C2|C1|C6|ALT_INV_REG_IN[2]~2_combout\,
	datae => \C2|C1|C4|ALT_INV_REG_OUT\(15),
	dataf => \C2|C1|C6|ALT_INV_Add1~57_sumout\,
	combout => \C2|C1|C6|Mux1~1_combout\);

-- Location: FF_X37_Y4_N59
\C2|C1|C6|RAM_IN[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(13),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(13));

-- Location: FF_X37_Y4_N53
\C2|C1|C6|RAM_IN[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(14),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(14));

-- Location: FF_X37_Y4_N47
\C2|C1|C6|RAM_IN[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(15),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(15));

-- Location: M10K_X38_Y4_N0
\C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cpu_dec:C2|cpu15_mega_ram:C1|mega_ram:C8|ram_init:C1|altsyncram:altsyncram_component|altsyncram_a504:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 6,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \C2|C1|C8|RAM_WREN~combout\,
	portare => VCC,
	clk0 => \C1|COUNT\(20),
	portadatain => \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \C2|C1|C8|C1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X35_Y5_N36
\C2|C1|C6|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux1~3_combout\ = ( \C2|C1|C6|REG_IN[13]~6_combout\ & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(14) & ( (\C2|C1|C6|Mux1~1_combout\) # (\C2|C1|C3|OP_CODE\(3)) ) ) ) # ( !\C2|C1|C6|REG_IN[13]~6_combout\ & ( 
-- \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(14) & ( (!\C2|C1|C3|OP_CODE\(3) & ((\C2|C1|C6|Mux1~1_combout\))) # (\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|Mux1~2_combout\)) ) ) ) # ( \C2|C1|C6|REG_IN[13]~6_combout\ & ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(14) & ( (!\C2|C1|C3|OP_CODE\(3) & ((\C2|C1|C6|Mux1~1_combout\))) # (\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|Mux1~2_combout\)) ) ) ) # ( !\C2|C1|C6|REG_IN[13]~6_combout\ & ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(14) & ( (!\C2|C1|C3|OP_CODE\(3) & ((\C2|C1|C6|Mux1~1_combout\))) # (\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|Mux1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datab => \C2|C1|C6|ALT_INV_Mux1~2_combout\,
	datac => \C2|C1|C6|ALT_INV_Mux1~1_combout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN[13]~6_combout\,
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \C2|C1|C6|Mux1~3_combout\);

-- Location: MLABCELL_X37_Y3_N27
\C2|C1|C6|REG_IN[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN[1]~4_combout\ = ( \C2|C1|C3|OP_CODE\(3) & ( (\RESET_N~input_o\ & (!\C2|C1|C3|OP_CODE\(1) & ((!\C2|C1|C3|OP_CODE\(2)) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\)))) ) ) # ( !\C2|C1|C3|OP_CODE\(3) & ( \RESET_N~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100011000000000010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \ALT_INV_RESET_N~input_o\,
	datac => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datad => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	combout => \C2|C1|C6|REG_IN[1]~4_combout\);

-- Location: FF_X35_Y5_N38
\C2|C1|C6|REG_IN[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux1~3_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(14));

-- Location: FF_X37_Y5_N2
\C2|C1|C7|REG_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(14),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(14));

-- Location: MLABCELL_X37_Y5_N45
\C2|C1|C4|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux1~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(14) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(14) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(14) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_1\(14),
	datab => \C2|C1|C7|ALT_INV_REG_3\(14),
	datac => \C2|C1|C7|ALT_INV_REG_0\(14),
	datad => \C2|C1|C7|ALT_INV_REG_2\(14),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux1~1_combout\);

-- Location: MLABCELL_X37_Y5_N39
\C2|C1|C4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux1~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(14) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_6\(14) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_5\(14) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_4\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(14),
	datab => \C2|C1|C7|ALT_INV_REG_6\(14),
	datac => \C2|C1|C7|ALT_INV_REG_7\(14),
	datad => \C2|C1|C7|ALT_INV_REG_4\(14),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux1~0_combout\);

-- Location: MLABCELL_X37_Y5_N15
\C2|C1|C4|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux1~2_combout\ = ( \C2|C1|C4|Mux1~0_combout\ & ( (\C2|C1|C4|Mux1~1_combout\) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10)) ) ) # ( !\C2|C1|C4|Mux1~0_combout\ & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & 
-- \C2|C1|C4|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \C2|C1|C4|ALT_INV_Mux1~1_combout\,
	dataf => \C2|C1|C4|ALT_INV_Mux1~0_combout\,
	combout => \C2|C1|C4|Mux1~2_combout\);

-- Location: FF_X37_Y5_N17
\C2|C1|C4|REG_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(14));

-- Location: LABCELL_X36_Y1_N15
\C2|C1|C6|REG_IN~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN~9_combout\ = ( \C2|C1|C5|REG_OUT\(13) & ( \C2|C1|C4|REG_OUT\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(13),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(13),
	combout => \C2|C1|C6|REG_IN~9_combout\);

-- Location: LABCELL_X36_Y1_N36
\C2|C1|C6|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux2~1_combout\ = ( \C2|C1|C6|REG_IN[2]~1_combout\ & ( \C2|C1|C6|Add1~53_sumout\ & ( (!\C2|C1|C6|REG_IN[2]~2_combout\ & (\C2|C1|C4|REG_OUT\(14))) # (\C2|C1|C6|REG_IN[2]~2_combout\ & ((\C2|C1|C6|REG_IN~9_combout\))) ) ) ) # ( 
-- !\C2|C1|C6|REG_IN[2]~1_combout\ & ( \C2|C1|C6|Add1~53_sumout\ & ( (!\C2|C1|C6|Mux2~0_combout\) # (\C2|C1|C6|REG_IN[2]~2_combout\) ) ) ) # ( \C2|C1|C6|REG_IN[2]~1_combout\ & ( !\C2|C1|C6|Add1~53_sumout\ & ( (!\C2|C1|C6|REG_IN[2]~2_combout\ & 
-- (\C2|C1|C4|REG_OUT\(14))) # (\C2|C1|C6|REG_IN[2]~2_combout\ & ((\C2|C1|C6|REG_IN~9_combout\))) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~1_combout\ & ( !\C2|C1|C6|Add1~53_sumout\ & ( (!\C2|C1|C6|Mux2~0_combout\ & !\C2|C1|C6|REG_IN[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000011000011111110111011101110110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Mux2~0_combout\,
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~2_combout\,
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(14),
	datad => \C2|C1|C6|ALT_INV_REG_IN~9_combout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~1_combout\,
	dataf => \C2|C1|C6|ALT_INV_Add1~53_sumout\,
	combout => \C2|C1|C6|Mux2~1_combout\);

-- Location: LABCELL_X36_Y5_N54
\C2|C1|C6|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux2~2_combout\ = ( \C2|C1|C4|REG_OUT\(13) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) # ((!\C2|C1|C3|OP_CODE\(2) & \C2|C1|C3|OP_DATA\(5))) ) ) # ( !\C2|C1|C4|REG_OUT\(13) & ( (!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C3|OP_DATA\(5) & 
-- \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datac => \C2|C1|C3|ALT_INV_OP_DATA\(5),
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(13),
	combout => \C2|C1|C6|Mux2~2_combout\);

-- Location: LABCELL_X35_Y5_N33
\C2|C1|C6|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux2~3_combout\ = ( \C2|C1|C6|Mux2~2_combout\ & ( (\C2|C1|C6|Mux2~1_combout\) # (\C2|C1|C3|OP_CODE\(3)) ) ) # ( !\C2|C1|C6|Mux2~2_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux2~1_combout\)))) # (\C2|C1|C3|OP_CODE\(3) & 
-- (\C2|C1|C6|REG_IN[13]~6_combout\ & ((\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(13))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datab => \C2|C1|C6|ALT_INV_REG_IN[13]~6_combout\,
	datac => \C2|C1|C6|ALT_INV_Mux2~1_combout\,
	datad => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \C2|C1|C6|ALT_INV_Mux2~2_combout\,
	combout => \C2|C1|C6|Mux2~3_combout\);

-- Location: FF_X35_Y5_N35
\C2|C1|C6|REG_IN[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux2~3_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(13));

-- Location: LABCELL_X35_Y1_N39
\C2|C1|C7|REG_2[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_2[13]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(13),
	combout => \C2|C1|C7|REG_2[13]~feeder_combout\);

-- Location: FF_X35_Y1_N41
\C2|C1|C7|REG_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_2[13]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(13));

-- Location: MLABCELL_X37_Y5_N33
\C2|C1|C4|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux2~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(13) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(13) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(13) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_2\(13),
	datab => \C2|C1|C7|ALT_INV_REG_3\(13),
	datac => \C2|C1|C7|ALT_INV_REG_0\(13),
	datad => \C2|C1|C7|ALT_INV_REG_1\(13),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux2~1_combout\);

-- Location: MLABCELL_X37_Y5_N27
\C2|C1|C4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux2~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(13) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_6\(13) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_5\(13) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_4\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_6\(13),
	datab => \C2|C1|C7|ALT_INV_REG_7\(13),
	datac => \C2|C1|C7|ALT_INV_REG_4\(13),
	datad => \C2|C1|C7|ALT_INV_REG_5\(13),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux2~0_combout\);

-- Location: MLABCELL_X37_Y5_N6
\C2|C1|C4|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux2~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux2~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_Mux2~1_combout\,
	datad => \C2|C1|C4|ALT_INV_Mux2~0_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux2~2_combout\);

-- Location: FF_X37_Y5_N8
\C2|C1|C4|REG_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(13));

-- Location: LABCELL_X36_Y1_N42
\C2|C1|C6|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux3~1_combout\ = ( \C2|C1|C6|REG_IN~8_combout\ & ( \C2|C1|C4|REG_OUT\(13) & ( ((!\C2|C1|C6|REG_IN[2]~2_combout\ & (!\C2|C1|C6|Mux3~0_combout\)) # (\C2|C1|C6|REG_IN[2]~2_combout\ & ((\C2|C1|C6|Add1~49_sumout\)))) # 
-- (\C2|C1|C6|REG_IN[2]~1_combout\) ) ) ) # ( !\C2|C1|C6|REG_IN~8_combout\ & ( \C2|C1|C4|REG_OUT\(13) & ( (!\C2|C1|C6|REG_IN[2]~1_combout\ & ((!\C2|C1|C6|REG_IN[2]~2_combout\ & (!\C2|C1|C6|Mux3~0_combout\)) # (\C2|C1|C6|REG_IN[2]~2_combout\ & 
-- ((\C2|C1|C6|Add1~49_sumout\))))) # (\C2|C1|C6|REG_IN[2]~1_combout\ & (((!\C2|C1|C6|REG_IN[2]~2_combout\)))) ) ) ) # ( \C2|C1|C6|REG_IN~8_combout\ & ( !\C2|C1|C4|REG_OUT\(13) & ( (!\C2|C1|C6|REG_IN[2]~1_combout\ & ((!\C2|C1|C6|REG_IN[2]~2_combout\ & 
-- (!\C2|C1|C6|Mux3~0_combout\)) # (\C2|C1|C6|REG_IN[2]~2_combout\ & ((\C2|C1|C6|Add1~49_sumout\))))) # (\C2|C1|C6|REG_IN[2]~1_combout\ & (((\C2|C1|C6|REG_IN[2]~2_combout\)))) ) ) ) # ( !\C2|C1|C6|REG_IN~8_combout\ & ( !\C2|C1|C4|REG_OUT\(13) & ( 
-- (!\C2|C1|C6|REG_IN[2]~1_combout\ & ((!\C2|C1|C6|REG_IN[2]~2_combout\ & (!\C2|C1|C6|Mux3~0_combout\)) # (\C2|C1|C6|REG_IN[2]~2_combout\ & ((\C2|C1|C6|Add1~49_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001010100010000101111111011101000010101101110101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_REG_IN[2]~1_combout\,
	datab => \C2|C1|C6|ALT_INV_Mux3~0_combout\,
	datac => \C2|C1|C6|ALT_INV_Add1~49_sumout\,
	datad => \C2|C1|C6|ALT_INV_REG_IN[2]~2_combout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN~8_combout\,
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(13),
	combout => \C2|C1|C6|Mux3~1_combout\);

-- Location: LABCELL_X36_Y2_N15
\C2|C1|C6|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux3~2_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( (\C2|C1|C4|REG_OUT\(12) & !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (\C2|C1|C4|REG_OUT\(12))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & 
-- ((\C2|C1|C3|OP_DATA\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(12),
	datab => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datac => \C2|C1|C3|ALT_INV_OP_DATA\(4),
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	combout => \C2|C1|C6|Mux3~2_combout\);

-- Location: LABCELL_X35_Y5_N30
\C2|C1|C6|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux3~3_combout\ = ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(12) & ( (!\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux3~1_combout\)))) # (\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux3~2_combout\)) # (\C2|C1|C6|REG_IN[13]~6_combout\))) ) ) # ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(12) & ( (!\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|Mux3~1_combout\)) # (\C2|C1|C3|OP_CODE\(3) & ((\C2|C1|C6|Mux3~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datab => \C2|C1|C6|ALT_INV_REG_IN[13]~6_combout\,
	datac => \C2|C1|C6|ALT_INV_Mux3~1_combout\,
	datad => \C2|C1|C6|ALT_INV_Mux3~2_combout\,
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \C2|C1|C6|Mux3~3_combout\);

-- Location: FF_X35_Y5_N32
\C2|C1|C6|REG_IN[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux3~3_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(12));

-- Location: FF_X34_Y2_N59
\C2|C1|C7|REG_6[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(12),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(12));

-- Location: MLABCELL_X34_Y2_N39
\C2|C1|C4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux3~0_combout\ = ( \C2|C1|C7|REG_5\(12) & ( \C2|C1|C7|REG_4\(12) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) # ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_6\(12))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_7\(12))))) ) ) ) # ( !\C2|C1|C7|REG_5\(12) & ( \C2|C1|C7|REG_4\(12) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & 
-- (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_6\(12))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_7\(12)))))) ) ) ) # ( \C2|C1|C7|REG_5\(12) & ( !\C2|C1|C7|REG_4\(12) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & 
-- (((\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_6\(12))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_7\(12)))))) ) ) ) # ( !\C2|C1|C7|REG_5\(12) & ( !\C2|C1|C7|REG_4\(12) & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & 
-- ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_6\(12))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_7\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datab => \C2|C1|C7|ALT_INV_REG_6\(12),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \C2|C1|C7|ALT_INV_REG_7\(12),
	datae => \C2|C1|C7|ALT_INV_REG_5\(12),
	dataf => \C2|C1|C7|ALT_INV_REG_4\(12),
	combout => \C2|C1|C4|Mux3~0_combout\);

-- Location: MLABCELL_X34_Y2_N45
\C2|C1|C4|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux3~1_combout\ = ( \C2|C1|C7|REG_0\(12) & ( \C2|C1|C7|REG_1\(12) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) # ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_2\(12))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_3\(12))))) ) ) ) # ( !\C2|C1|C7|REG_0\(12) & ( \C2|C1|C7|REG_1\(12) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_2\(12) & 
-- ((\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) # (\C2|C1|C7|REG_3\(12))))) ) ) ) # ( \C2|C1|C7|REG_0\(12) & ( 
-- !\C2|C1|C7|REG_1\(12) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9))) # (\C2|C1|C7|REG_2\(12)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (((\C2|C1|C7|REG_3\(12) & 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9))))) ) ) ) # ( !\C2|C1|C7|REG_0\(12) & ( !\C2|C1|C7|REG_1\(12) & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & 
-- (\C2|C1|C7|REG_2\(12))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_3\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_2\(12),
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \C2|C1|C7|ALT_INV_REG_3\(12),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \C2|C1|C7|ALT_INV_REG_0\(12),
	dataf => \C2|C1|C7|ALT_INV_REG_1\(12),
	combout => \C2|C1|C4|Mux3~1_combout\);

-- Location: LABCELL_X32_Y3_N45
\C2|C1|C4|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux3~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux3~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_Mux3~0_combout\,
	datac => \C2|C1|C4|ALT_INV_Mux3~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux3~2_combout\);

-- Location: FF_X32_Y3_N46
\C2|C1|C4|REG_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(12));

-- Location: FF_X36_Y3_N37
\C2|C1|C6|RAM_IN[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(12),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(12));

-- Location: FF_X32_Y3_N11
\C2|C1|C5|REG_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(11));

-- Location: LABCELL_X32_Y3_N24
\C2|C1|C6|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux4~0_combout\ = ( \C2|C1|C6|Add0~45_sumout\ & ( \C2|C1|C5|REG_OUT\(11) & ( (\C2|C1|C3|OP_CODE\(2) & (!\C2|C1|C4|REG_OUT\(10) & \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\)) ) ) ) # ( !\C2|C1|C6|Add0~45_sumout\ & ( \C2|C1|C5|REG_OUT\(11) & ( 
-- (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C3|OP_CODE\(2)) # (!\C2|C1|C4|REG_OUT\(10)))) ) ) ) # ( \C2|C1|C6|Add0~45_sumout\ & ( !\C2|C1|C5|REG_OUT\(11) & ( (!\C2|C1|C3|OP_CODE\(2) & (((!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\)))) # (\C2|C1|C3|OP_CODE\(2) & 
-- ((!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C4|REG_OUT\(11)))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C4|REG_OUT\(10))))) ) ) ) # ( !\C2|C1|C6|Add0~45_sumout\ & ( !\C2|C1|C5|REG_OUT\(11) & ( (!\C2|C1|C3|OP_CODE\(2)) # 
-- ((!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C4|REG_OUT\(11)))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C4|REG_OUT\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101110111110100100010000000000111011100000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(10),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(11),
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datae => \C2|C1|C6|ALT_INV_Add0~45_sumout\,
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(11),
	combout => \C2|C1|C6|Mux4~0_combout\);

-- Location: LABCELL_X32_Y3_N48
\C2|C1|C6|REG_IN~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN~7_combout\ = ( \C2|C1|C5|REG_OUT\(11) & ( \C2|C1|C4|REG_OUT\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(11),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(11),
	combout => \C2|C1|C6|REG_IN~7_combout\);

-- Location: LABCELL_X36_Y1_N48
\C2|C1|C6|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux4~1_combout\ = ( \C2|C1|C6|REG_IN[2]~1_combout\ & ( \C2|C1|C6|REG_IN~7_combout\ & ( (\C2|C1|C4|REG_OUT\(12)) # (\C2|C1|C6|REG_IN[2]~2_combout\) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~1_combout\ & ( \C2|C1|C6|REG_IN~7_combout\ & ( 
-- (!\C2|C1|C6|REG_IN[2]~2_combout\ & (!\C2|C1|C6|Mux4~0_combout\)) # (\C2|C1|C6|REG_IN[2]~2_combout\ & ((\C2|C1|C6|Add1~45_sumout\))) ) ) ) # ( \C2|C1|C6|REG_IN[2]~1_combout\ & ( !\C2|C1|C6|REG_IN~7_combout\ & ( (!\C2|C1|C6|REG_IN[2]~2_combout\ & 
-- \C2|C1|C4|REG_OUT\(12)) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~1_combout\ & ( !\C2|C1|C6|REG_IN~7_combout\ & ( (!\C2|C1|C6|REG_IN[2]~2_combout\ & (!\C2|C1|C6|Mux4~0_combout\)) # (\C2|C1|C6|REG_IN[2]~2_combout\ & ((\C2|C1|C6|Add1~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010111011000011000000110010001000101110110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Mux4~0_combout\,
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~2_combout\,
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(12),
	datad => \C2|C1|C6|ALT_INV_Add1~45_sumout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~1_combout\,
	dataf => \C2|C1|C6|ALT_INV_REG_IN~7_combout\,
	combout => \C2|C1|C6|Mux4~1_combout\);

-- Location: LABCELL_X35_Y5_N57
\C2|C1|C6|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux4~3_combout\ = ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(11) & ( \C2|C1|C6|Mux4~1_combout\ & ( (!\C2|C1|C3|OP_CODE\(3)) # ((\C2|C1|C6|REG_IN[13]~6_combout\) # (\C2|C1|C6|Mux4~2_combout\)) ) ) ) # ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(11) & ( \C2|C1|C6|Mux4~1_combout\ & ( (!\C2|C1|C3|OP_CODE\(3)) # (\C2|C1|C6|Mux4~2_combout\) ) ) ) # ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(11) & ( !\C2|C1|C6|Mux4~1_combout\ & ( 
-- (\C2|C1|C3|OP_CODE\(3) & ((\C2|C1|C6|REG_IN[13]~6_combout\) # (\C2|C1|C6|Mux4~2_combout\))) ) ) ) # ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(11) & ( !\C2|C1|C6|Mux4~1_combout\ & ( (\C2|C1|C3|OP_CODE\(3) & \C2|C1|C6|Mux4~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101010001010110111011101110111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datab => \C2|C1|C6|ALT_INV_Mux4~2_combout\,
	datac => \C2|C1|C6|ALT_INV_REG_IN[13]~6_combout\,
	datae => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \C2|C1|C6|ALT_INV_Mux4~1_combout\,
	combout => \C2|C1|C6|Mux4~3_combout\);

-- Location: FF_X35_Y5_N59
\C2|C1|C6|REG_IN[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux4~3_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(11));

-- Location: FF_X32_Y3_N35
\C2|C1|C7|REG_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(11),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(11));

-- Location: LABCELL_X32_Y3_N57
\C2|C1|C4|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux4~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(11) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(11) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(11) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_1\(11),
	datab => \C2|C1|C7|ALT_INV_REG_2\(11),
	datac => \C2|C1|C7|ALT_INV_REG_0\(11),
	datad => \C2|C1|C7|ALT_INV_REG_3\(11),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux4~1_combout\);

-- Location: LABCELL_X32_Y3_N21
\C2|C1|C4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux4~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(11) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_6\(11) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_5\(11) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_4\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(11),
	datab => \C2|C1|C7|ALT_INV_REG_6\(11),
	datac => \C2|C1|C7|ALT_INV_REG_7\(11),
	datad => \C2|C1|C7|ALT_INV_REG_4\(11),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux4~0_combout\);

-- Location: LABCELL_X32_Y3_N6
\C2|C1|C4|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux4~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux4~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux4~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_Mux4~1_combout\,
	datac => \C2|C1|C4|ALT_INV_Mux4~0_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux4~2_combout\);

-- Location: FF_X32_Y3_N8
\C2|C1|C4|REG_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(11));

-- Location: LABCELL_X36_Y1_N24
\C2|C1|C6|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux5~1_combout\ = ( \C2|C1|C6|REG_IN[2]~1_combout\ & ( \C2|C1|C4|REG_OUT\(11) & ( (!\C2|C1|C6|REG_IN[2]~2_combout\) # (\C2|C1|C6|REG_IN~5_combout\) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~1_combout\ & ( \C2|C1|C4|REG_OUT\(11) & ( 
-- (!\C2|C1|C6|REG_IN[2]~2_combout\ & ((!\C2|C1|C6|Mux5~0_combout\))) # (\C2|C1|C6|REG_IN[2]~2_combout\ & (\C2|C1|C6|Add1~41_sumout\)) ) ) ) # ( \C2|C1|C6|REG_IN[2]~1_combout\ & ( !\C2|C1|C4|REG_OUT\(11) & ( (\C2|C1|C6|REG_IN~5_combout\ & 
-- \C2|C1|C6|REG_IN[2]~2_combout\) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~1_combout\ & ( !\C2|C1|C4|REG_OUT\(11) & ( (!\C2|C1|C6|REG_IN[2]~2_combout\ & ((!\C2|C1|C6|Mux5~0_combout\))) # (\C2|C1|C6|REG_IN[2]~2_combout\ & (\C2|C1|C6|Add1~41_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011000100010001000111001111000000111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_REG_IN~5_combout\,
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~2_combout\,
	datac => \C2|C1|C6|ALT_INV_Add1~41_sumout\,
	datad => \C2|C1|C6|ALT_INV_Mux5~0_combout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~1_combout\,
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(11),
	combout => \C2|C1|C6|Mux5~1_combout\);

-- Location: LABCELL_X32_Y3_N42
\C2|C1|C6|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux5~2_combout\ = ( \C2|C1|C4|REG_OUT\(10) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) # ((!\C2|C1|C3|OP_CODE\(2) & \C2|C1|C3|OP_DATA\(2))) ) ) # ( !\C2|C1|C4|REG_OUT\(10) & ( (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C3|OP_CODE\(2) & 
-- \C2|C1|C3|OP_DATA\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datad => \C2|C1|C3|ALT_INV_OP_DATA\(2),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(10),
	combout => \C2|C1|C6|Mux5~2_combout\);

-- Location: LABCELL_X35_Y5_N48
\C2|C1|C6|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux5~3_combout\ = ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C6|Mux5~2_combout\ & ( (\C2|C1|C3|OP_CODE\(3)) # (\C2|C1|C6|Mux5~1_combout\) ) ) ) # ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- \C2|C1|C6|Mux5~2_combout\ & ( (\C2|C1|C3|OP_CODE\(3)) # (\C2|C1|C6|Mux5~1_combout\) ) ) ) # ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(10) & ( !\C2|C1|C6|Mux5~2_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|Mux5~1_combout\)) # 
-- (\C2|C1|C3|OP_CODE\(3) & ((\C2|C1|C6|REG_IN[13]~6_combout\))) ) ) ) # ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(10) & ( !\C2|C1|C6|Mux5~2_combout\ & ( (\C2|C1|C6|Mux5~1_combout\ & !\C2|C1|C3|OP_CODE\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C6|ALT_INV_Mux5~1_combout\,
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datad => \C2|C1|C6|ALT_INV_REG_IN[13]~6_combout\,
	datae => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \C2|C1|C6|ALT_INV_Mux5~2_combout\,
	combout => \C2|C1|C6|Mux5~3_combout\);

-- Location: FF_X35_Y5_N50
\C2|C1|C6|REG_IN[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux5~3_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(10));

-- Location: LABCELL_X35_Y1_N24
\C2|C1|C7|REG_2[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_2[10]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(10),
	combout => \C2|C1|C7|REG_2[10]~feeder_combout\);

-- Location: FF_X35_Y1_N26
\C2|C1|C7|REG_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_2[10]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(10));

-- Location: MLABCELL_X37_Y2_N27
\C2|C1|C4|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux5~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(10) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(10) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(10) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_2\(10),
	datab => \C2|C1|C7|ALT_INV_REG_0\(10),
	datac => \C2|C1|C7|ALT_INV_REG_1\(10),
	datad => \C2|C1|C7|ALT_INV_REG_3\(10),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux5~1_combout\);

-- Location: MLABCELL_X37_Y2_N51
\C2|C1|C4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux5~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(10) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_6\(10) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_5\(10) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_4\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_6\(10),
	datab => \C2|C1|C7|ALT_INV_REG_5\(10),
	datac => \C2|C1|C7|ALT_INV_REG_4\(10),
	datad => \C2|C1|C7|ALT_INV_REG_7\(10),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux5~0_combout\);

-- Location: MLABCELL_X37_Y2_N57
\C2|C1|C4|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux5~2_combout\ = ( \C2|C1|C4|Mux5~0_combout\ & ( (\C2|C1|C4|Mux5~1_combout\) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10)) ) ) # ( !\C2|C1|C4|Mux5~0_combout\ & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & 
-- \C2|C1|C4|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datad => \C2|C1|C4|ALT_INV_Mux5~1_combout\,
	dataf => \C2|C1|C4|ALT_INV_Mux5~0_combout\,
	combout => \C2|C1|C4|Mux5~2_combout\);

-- Location: FF_X37_Y2_N58
\C2|C1|C4|REG_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(10));

-- Location: LABCELL_X39_Y2_N0
\C2|C1|C6|RAM_IN[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|RAM_IN[10]~feeder_combout\ = ( \C2|C1|C4|REG_OUT\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(10),
	combout => \C2|C1|C6|RAM_IN[10]~feeder_combout\);

-- Location: FF_X39_Y2_N2
\C2|C1|C6|RAM_IN[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|RAM_IN[10]~feeder_combout\,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(10));

-- Location: MLABCELL_X37_Y6_N18
\C2|C1|C6|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux6~0_combout\ = ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(9) & ( (\C2|C1|C6|PC[5]~2_combout\) # (\C2|C1|C3|OP_DATA\(1)) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( 
-- \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(9) & ( (!\C2|C1|C6|PC[5]~2_combout\ & ((\C2|C1|C4|REG_OUT\(9)))) # (\C2|C1|C6|PC[5]~2_combout\ & (\IO65_IN[9]~input_o\)) ) ) ) # ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(9) & ( (\C2|C1|C3|OP_DATA\(1) & !\C2|C1|C6|PC[5]~2_combout\) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(9) & ( (!\C2|C1|C6|PC[5]~2_combout\ & 
-- ((\C2|C1|C4|REG_OUT\(9)))) # (\C2|C1|C6|PC[5]~2_combout\ & (\IO65_IN[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_DATA\(1),
	datab => \ALT_INV_IO65_IN[9]~input_o\,
	datac => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(9),
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\,
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C6|Mux6~0_combout\);

-- Location: LABCELL_X40_Y3_N18
\C2|C1|C6|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux6~1_combout\ = ( \C2|C1|C6|Add0~37_sumout\ & ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( (!\C2|C1|C4|REG_OUT\(8) & \C2|C1|C3|OP_CODE\(2)) ) ) ) # ( !\C2|C1|C6|Add0~37_sumout\ & ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( (!\C2|C1|C4|REG_OUT\(8)) # 
-- (!\C2|C1|C3|OP_CODE\(2)) ) ) ) # ( \C2|C1|C6|Add0~37_sumout\ & ( !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( (!\C2|C1|C5|REG_OUT\(9) & ((!\C2|C1|C3|OP_CODE\(2)) # (!\C2|C1|C4|REG_OUT\(9)))) ) ) ) # ( !\C2|C1|C6|Add0~37_sumout\ & ( 
-- !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( (!\C2|C1|C5|REG_OUT\(9) & ((!\C2|C1|C3|OP_CODE\(2)) # (!\C2|C1|C4|REG_OUT\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000011111100111111000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_REG_OUT\(9),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(8),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(9),
	datae => \C2|C1|C6|ALT_INV_Add0~37_sumout\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	combout => \C2|C1|C6|Mux6~1_combout\);

-- Location: LABCELL_X40_Y3_N24
\C2|C1|C6|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux6~2_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C6|Mux6~1_combout\ & ( (\C2|C1|C3|OP_CODE\(1) & \C2|C1|C4|REG_OUT\(10)) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C6|Mux6~1_combout\ & ( (\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C4|REG_OUT\(9) & 
-- \C2|C1|C5|REG_OUT\(9))) ) ) ) # ( \C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C6|Mux6~1_combout\ & ( (!\C2|C1|C3|OP_CODE\(1)) # (\C2|C1|C4|REG_OUT\(10)) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C6|Mux6~1_combout\ & ( (!\C2|C1|C3|OP_CODE\(1)) # 
-- ((\C2|C1|C4|REG_OUT\(9) & \C2|C1|C5|REG_OUT\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010101111111100000001000000010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(9),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(9),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(10),
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C6|ALT_INV_Mux6~1_combout\,
	combout => \C2|C1|C6|Mux6~2_combout\);

-- Location: LABCELL_X35_Y4_N36
\C2|C1|C6|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux6~3_combout\ = ( \C2|C1|C6|Mux6~0_combout\ & ( \C2|C1|C6|Mux6~2_combout\ & ( ((!\C2|C1|C6|REG_IN[2]~3_combout\) # (\C2|C1|C6|Add1~37_sumout\)) # (\C2|C1|C3|OP_CODE\(3)) ) ) ) # ( !\C2|C1|C6|Mux6~0_combout\ & ( \C2|C1|C6|Mux6~2_combout\ & ( 
-- (!\C2|C1|C3|OP_CODE\(3) & ((!\C2|C1|C6|REG_IN[2]~3_combout\) # (\C2|C1|C6|Add1~37_sumout\))) ) ) ) # ( \C2|C1|C6|Mux6~0_combout\ & ( !\C2|C1|C6|Mux6~2_combout\ & ( ((\C2|C1|C6|REG_IN[2]~3_combout\ & \C2|C1|C6|Add1~37_sumout\)) # (\C2|C1|C3|OP_CODE\(3)) ) 
-- ) ) # ( !\C2|C1|C6|Mux6~0_combout\ & ( !\C2|C1|C6|Mux6~2_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|REG_IN[2]~3_combout\ & \C2|C1|C6|Add1~37_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010101110101011110001010100010101101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\,
	datac => \C2|C1|C6|ALT_INV_Add1~37_sumout\,
	datae => \C2|C1|C6|ALT_INV_Mux6~0_combout\,
	dataf => \C2|C1|C6|ALT_INV_Mux6~2_combout\,
	combout => \C2|C1|C6|Mux6~3_combout\);

-- Location: LABCELL_X35_Y4_N42
\C2|C1|C6|REG_IN[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|REG_IN[2]~11_combout\ = ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (\C2|C1|C6|PC[5]~2_combout\ & (((\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & (\C2|C1|C3|OP_CODE\(3)))))) ) ) # ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( (\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C3|OP_CODE\(3) & ((!\C2|C1|C8|Equal0~0_combout\) # ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(0)) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000101000000000101010100000000000001010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	datab => \C2|C1|C8|ALT_INV_Equal0~0_combout\,
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datag => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C6|REG_IN[2]~11_combout\);

-- Location: FF_X35_Y4_N38
\C2|C1|C6|REG_IN[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux6~3_combout\,
	sclr => \C2|C1|C6|REG_IN[2]~11_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(9));

-- Location: FF_X31_Y3_N59
\C2|C1|C7|REG_7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(9),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(9));

-- Location: MLABCELL_X37_Y2_N12
\C2|C1|C4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux6~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(9) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_6\(9) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_5\(9) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_4\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_7\(9),
	datab => \C2|C1|C7|ALT_INV_REG_6\(9),
	datac => \C2|C1|C7|ALT_INV_REG_5\(9),
	datad => \C2|C1|C7|ALT_INV_REG_4\(9),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux6~0_combout\);

-- Location: MLABCELL_X37_Y2_N33
\C2|C1|C4|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux6~1_combout\ = ( \C2|C1|C7|REG_1\(9) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_2\(9))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & 
-- ((\C2|C1|C7|REG_3\(9)))) ) ) ) # ( !\C2|C1|C7|REG_1\(9) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_2\(9))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) 
-- & ((\C2|C1|C7|REG_3\(9)))) ) ) ) # ( \C2|C1|C7|REG_1\(9) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8)) # (\C2|C1|C7|REG_0\(9)) ) ) ) # ( !\C2|C1|C7|REG_1\(9) & ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( (\C2|C1|C7|REG_0\(9) & !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_0\(9),
	datab => \C2|C1|C7|ALT_INV_REG_2\(9),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \C2|C1|C7|ALT_INV_REG_3\(9),
	datae => \C2|C1|C7|ALT_INV_REG_1\(9),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux6~1_combout\);

-- Location: MLABCELL_X37_Y2_N18
\C2|C1|C4|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux6~2_combout\ = ( \C2|C1|C4|Mux6~1_combout\ & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10)) # (\C2|C1|C4|Mux6~0_combout\) ) ) # ( !\C2|C1|C4|Mux6~1_combout\ & ( (\C2|C1|C4|Mux6~0_combout\ & 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_Mux6~0_combout\,
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \C2|C1|C4|ALT_INV_Mux6~1_combout\,
	combout => \C2|C1|C4|Mux6~2_combout\);

-- Location: FF_X37_Y2_N19
\C2|C1|C4|REG_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(9));

-- Location: FF_X39_Y5_N17
\C2|C1|C6|RAM_IN[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(9),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(9));

-- Location: MLABCELL_X34_Y4_N42
\C2|C1|C6|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux7~0_combout\ = ( \C2|C1|C3|OP_DATA\(0) & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(8) & ( ((!\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C4|REG_OUT\(8))) # (\C2|C1|C6|PC[5]~2_combout\ & ((\IO65_IN[8]~input_o\)))) # 
-- (\C2|C1|C6|REG_IN[2]~0_combout\) ) ) ) # ( !\C2|C1|C3|OP_DATA\(0) & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(8) & ( (!\C2|C1|C6|REG_IN[2]~0_combout\ & ((!\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C4|REG_OUT\(8))) # (\C2|C1|C6|PC[5]~2_combout\ & 
-- ((\IO65_IN[8]~input_o\))))) # (\C2|C1|C6|REG_IN[2]~0_combout\ & (((\C2|C1|C6|PC[5]~2_combout\)))) ) ) ) # ( \C2|C1|C3|OP_DATA\(0) & ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(8) & ( (!\C2|C1|C6|REG_IN[2]~0_combout\ & 
-- ((!\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C4|REG_OUT\(8))) # (\C2|C1|C6|PC[5]~2_combout\ & ((\IO65_IN[8]~input_o\))))) # (\C2|C1|C6|REG_IN[2]~0_combout\ & (((!\C2|C1|C6|PC[5]~2_combout\)))) ) ) ) # ( !\C2|C1|C3|OP_DATA\(0) & ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(8) & ( (!\C2|C1|C6|REG_IN[2]~0_combout\ & ((!\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C4|REG_OUT\(8))) # (\C2|C1|C6|PC[5]~2_combout\ & ((\IO65_IN[8]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(8),
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\,
	datac => \ALT_INV_IO65_IN[8]~input_o\,
	datad => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	datae => \C2|C1|C3|ALT_INV_OP_DATA\(0),
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \C2|C1|C6|Mux7~0_combout\);

-- Location: LABCELL_X40_Y3_N42
\C2|C1|C6|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux7~1_combout\ = ( \C2|C1|C5|REG_OUT\(8) & ( \C2|C1|C4|REG_OUT\(7) & ( (!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & !\C2|C1|C6|Add0~33_sumout\)) ) ) ) # ( !\C2|C1|C5|REG_OUT\(8) & ( \C2|C1|C4|REG_OUT\(7) & ( 
-- (!\C2|C1|C3|OP_CODE\(2) & ((!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) # ((!\C2|C1|C6|Add0~33_sumout\)))) # (\C2|C1|C3|OP_CODE\(2) & (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C4|REG_OUT\(8))))) ) ) ) # ( \C2|C1|C5|REG_OUT\(8) & ( !\C2|C1|C4|REG_OUT\(7) & ( 
-- (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C6|Add0~33_sumout\) # (\C2|C1|C3|OP_CODE\(2)))) ) ) ) # ( !\C2|C1|C5|REG_OUT\(8) & ( !\C2|C1|C4|REG_OUT\(7) & ( (!\C2|C1|C3|OP_CODE\(2) & ((!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) # 
-- ((!\C2|C1|C6|Add0~33_sumout\)))) # (\C2|C1|C3|OP_CODE\(2) & (((!\C2|C1|C4|REG_OUT\(8))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110111001001100010011000111101100101010000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datac => \C2|C1|C6|ALT_INV_Add0~33_sumout\,
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(8),
	datae => \C2|C1|C5|ALT_INV_REG_OUT\(8),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(7),
	combout => \C2|C1|C6|Mux7~1_combout\);

-- Location: LABCELL_X40_Y3_N30
\C2|C1|C6|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux7~2_combout\ = ( \C2|C1|C5|REG_OUT\(8) & ( \C2|C1|C6|Mux7~1_combout\ & ( (\C2|C1|C3|OP_CODE\(1) & ((!\C2|C1|C3|OP_CODE\(2) & ((\C2|C1|C4|REG_OUT\(8)))) # (\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C4|REG_OUT\(9))))) ) ) ) # ( !\C2|C1|C5|REG_OUT\(8) & ( 
-- \C2|C1|C6|Mux7~1_combout\ & ( (\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C4|REG_OUT\(9) & \C2|C1|C3|OP_CODE\(1))) ) ) ) # ( \C2|C1|C5|REG_OUT\(8) & ( !\C2|C1|C6|Mux7~1_combout\ & ( (!\C2|C1|C3|OP_CODE\(1)) # ((!\C2|C1|C3|OP_CODE\(2) & ((\C2|C1|C4|REG_OUT\(8)))) # 
-- (\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C4|REG_OUT\(9)))) ) ) ) # ( !\C2|C1|C5|REG_OUT\(8) & ( !\C2|C1|C6|Mux7~1_combout\ & ( (!\C2|C1|C3|OP_CODE\(1)) # ((\C2|C1|C3|OP_CODE\(2) & \C2|C1|C4|REG_OUT\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111100011111101100000001000000010000000100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(9),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(8),
	datae => \C2|C1|C5|ALT_INV_REG_OUT\(8),
	dataf => \C2|C1|C6|ALT_INV_Mux7~1_combout\,
	combout => \C2|C1|C6|Mux7~2_combout\);

-- Location: LABCELL_X35_Y4_N33
\C2|C1|C6|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux7~3_combout\ = ( \C2|C1|C6|Mux7~2_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & ((!\C2|C1|C6|REG_IN[2]~3_combout\) # ((\C2|C1|C6|Add1~33_sumout\)))) # (\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux7~0_combout\)))) ) ) # ( !\C2|C1|C6|Mux7~2_combout\ & ( 
-- (!\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|REG_IN[2]~3_combout\ & ((\C2|C1|C6|Add1~33_sumout\)))) # (\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\,
	datac => \C2|C1|C6|ALT_INV_Mux7~0_combout\,
	datad => \C2|C1|C6|ALT_INV_Add1~33_sumout\,
	dataf => \C2|C1|C6|ALT_INV_Mux7~2_combout\,
	combout => \C2|C1|C6|Mux7~3_combout\);

-- Location: FF_X35_Y4_N35
\C2|C1|C6|REG_IN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux7~3_combout\,
	sclr => \C2|C1|C6|REG_IN[2]~11_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(8));

-- Location: FF_X36_Y2_N2
\C2|C1|C7|REG_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(8),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(8));

-- Location: MLABCELL_X37_Y2_N9
\C2|C1|C4|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux7~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(8) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(8) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(8) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_3\(8),
	datab => \C2|C1|C7|ALT_INV_REG_1\(8),
	datac => \C2|C1|C7|ALT_INV_REG_2\(8),
	datad => \C2|C1|C7|ALT_INV_REG_0\(8),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux7~1_combout\);

-- Location: MLABCELL_X37_Y2_N3
\C2|C1|C4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux7~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(8) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_6\(8) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_5\(8) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_4\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_4\(8),
	datab => \C2|C1|C7|ALT_INV_REG_7\(8),
	datac => \C2|C1|C7|ALT_INV_REG_5\(8),
	datad => \C2|C1|C7|ALT_INV_REG_6\(8),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux7~0_combout\);

-- Location: MLABCELL_X37_Y2_N42
\C2|C1|C4|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux7~2_combout\ = (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & (\C2|C1|C4|Mux7~1_combout\)) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ((\C2|C1|C4|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_Mux7~1_combout\,
	datac => \C2|C1|C4|ALT_INV_Mux7~0_combout\,
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux7~2_combout\);

-- Location: FF_X37_Y2_N43
\C2|C1|C4|REG_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(8));

-- Location: FF_X39_Y3_N56
\C2|C1|C6|RAM_IN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(8),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(8));

-- Location: MLABCELL_X34_Y4_N39
\C2|C1|C6|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux8~0_combout\ = ( \C2|C1|C6|PC[5]~2_combout\ & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(7) & ( (\C2|C1|C6|REG_IN[2]~0_combout\) # (\IO65_IN[7]~input_o\) ) ) ) # ( !\C2|C1|C6|PC[5]~2_combout\ & ( 
-- \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(7) & ( (!\C2|C1|C6|REG_IN[2]~0_combout\ & ((\C2|C1|C3|OP_DATA[7]~DUPLICATE_q\))) # (\C2|C1|C6|REG_IN[2]~0_combout\ & (\C2|C1|C4|REG_OUT\(7))) ) ) ) # ( \C2|C1|C6|PC[5]~2_combout\ & ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(7) & ( (\IO65_IN[7]~input_o\ & !\C2|C1|C6|REG_IN[2]~0_combout\) ) ) ) # ( !\C2|C1|C6|PC[5]~2_combout\ & ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(7) & ( (!\C2|C1|C6|REG_IN[2]~0_combout\ 
-- & ((\C2|C1|C3|OP_DATA[7]~DUPLICATE_q\))) # (\C2|C1|C6|REG_IN[2]~0_combout\ & (\C2|C1|C4|REG_OUT\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO65_IN[7]~input_o\,
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(7),
	datac => \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\,
	datad => \C2|C1|C3|ALT_INV_OP_DATA[7]~DUPLICATE_q\,
	datae => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C6|Mux8~0_combout\);

-- Location: LABCELL_X40_Y3_N54
\C2|C1|C6|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux8~1_combout\ = ( \C2|C1|C4|REG_OUT\(6) & ( \C2|C1|C6|Add0~29_sumout\ & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C5|REG_OUT\(7) & ((!\C2|C1|C3|OP_CODE\(2)) # (!\C2|C1|C4|REG_OUT\(7))))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(6) & ( 
-- \C2|C1|C6|Add0~29_sumout\ & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C5|REG_OUT\(7) & ((!\C2|C1|C3|OP_CODE\(2)) # (!\C2|C1|C4|REG_OUT\(7))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (\C2|C1|C3|OP_CODE\(2))) ) ) ) # ( \C2|C1|C4|REG_OUT\(6) & ( 
-- !\C2|C1|C6|Add0~29_sumout\ & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C5|REG_OUT\(7) & ((!\C2|C1|C3|OP_CODE\(2)) # (!\C2|C1|C4|REG_OUT\(7))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C3|OP_CODE\(2))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(6) & ( 
-- !\C2|C1|C6|Add0~29_sumout\ & ( ((!\C2|C1|C5|REG_OUT\(7) & ((!\C2|C1|C3|OP_CODE\(2)) # (!\C2|C1|C4|REG_OUT\(7))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100110011111010100010001011011001000100011100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(7),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(7),
	datae => \C2|C1|C4|ALT_INV_REG_OUT\(6),
	dataf => \C2|C1|C6|ALT_INV_Add0~29_sumout\,
	combout => \C2|C1|C6|Mux8~1_combout\);

-- Location: LABCELL_X40_Y3_N0
\C2|C1|C6|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux8~2_combout\ = ( \C2|C1|C6|Mux8~1_combout\ & ( \C2|C1|C4|REG_OUT\(7) & ( (\C2|C1|C3|OP_CODE\(1) & ((!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C5|REG_OUT\(7))) # (\C2|C1|C3|OP_CODE\(2) & ((\C2|C1|C4|REG_OUT\(8)))))) ) ) ) # ( !\C2|C1|C6|Mux8~1_combout\ 
-- & ( \C2|C1|C4|REG_OUT\(7) & ( (!\C2|C1|C3|OP_CODE\(1)) # ((!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C5|REG_OUT\(7))) # (\C2|C1|C3|OP_CODE\(2) & ((\C2|C1|C4|REG_OUT\(8))))) ) ) ) # ( \C2|C1|C6|Mux8~1_combout\ & ( !\C2|C1|C4|REG_OUT\(7) & ( (\C2|C1|C3|OP_CODE\(2) & 
-- (\C2|C1|C3|OP_CODE\(1) & \C2|C1|C4|REG_OUT\(8))) ) ) ) # ( !\C2|C1|C6|Mux8~1_combout\ & ( !\C2|C1|C4|REG_OUT\(7) & ( (!\C2|C1|C3|OP_CODE\(1)) # ((\C2|C1|C3|OP_CODE\(2) & \C2|C1|C4|REG_OUT\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110101000000000000010111110010111101110000001000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(7),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(8),
	datae => \C2|C1|C6|ALT_INV_Mux8~1_combout\,
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(7),
	combout => \C2|C1|C6|Mux8~2_combout\);

-- Location: LABCELL_X35_Y4_N30
\C2|C1|C6|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux8~3_combout\ = ( \C2|C1|C6|Mux8~2_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & ((!\C2|C1|C6|REG_IN[2]~3_combout\) # ((\C2|C1|C6|Add1~29_sumout\)))) # (\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux8~0_combout\)))) ) ) # ( !\C2|C1|C6|Mux8~2_combout\ & ( 
-- (!\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|REG_IN[2]~3_combout\ & ((\C2|C1|C6|Add1~29_sumout\)))) # (\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\,
	datac => \C2|C1|C6|ALT_INV_Mux8~0_combout\,
	datad => \C2|C1|C6|ALT_INV_Add1~29_sumout\,
	dataf => \C2|C1|C6|ALT_INV_Mux8~2_combout\,
	combout => \C2|C1|C6|Mux8~3_combout\);

-- Location: FF_X35_Y4_N32
\C2|C1|C6|REG_IN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux8~3_combout\,
	sclr => \C2|C1|C6|REG_IN[2]~11_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(7));

-- Location: LABCELL_X32_Y2_N39
\C2|C1|C7|REG_3[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[7]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(7),
	combout => \C2|C1|C7|REG_3[7]~feeder_combout\);

-- Location: FF_X32_Y2_N41
\C2|C1|C7|REG_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[7]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(7));

-- Location: LABCELL_X35_Y2_N24
\C2|C1|C4|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux8~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(7) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(7) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(7) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_3\(7),
	datab => \C2|C1|C7|ALT_INV_REG_2\(7),
	datac => \C2|C1|C7|ALT_INV_REG_0\(7),
	datad => \C2|C1|C7|ALT_INV_REG_1\(7),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux8~1_combout\);

-- Location: LABCELL_X35_Y2_N18
\C2|C1|C4|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux8~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(7) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_6\(7) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_5\(7) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_4\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_4\(7),
	datab => \C2|C1|C7|ALT_INV_REG_7\(7),
	datac => \C2|C1|C7|ALT_INV_REG_5\(7),
	datad => \C2|C1|C7|ALT_INV_REG_6\(7),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux8~0_combout\);

-- Location: LABCELL_X36_Y4_N30
\C2|C1|C4|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux8~2_combout\ = ( \C2|C1|C4|Mux8~0_combout\ & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10)) # (\C2|C1|C4|Mux8~1_combout\) ) ) # ( !\C2|C1|C4|Mux8~0_combout\ & ( (\C2|C1|C4|Mux8~1_combout\ & 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_Mux8~1_combout\,
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \C2|C1|C4|ALT_INV_Mux8~0_combout\,
	combout => \C2|C1|C4|Mux8~2_combout\);

-- Location: FF_X36_Y4_N31
\C2|C1|C4|REG_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(7));

-- Location: FF_X36_Y3_N56
\C2|C1|C6|RAM_IN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(7),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(7));

-- Location: MLABCELL_X37_Y6_N12
\C2|C1|C6|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux9~0_combout\ = ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(6) & ( (\C2|C1|C4|REG_OUT\(6)) # (\C2|C1|C6|PC[5]~2_combout\) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( 
-- \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C3|OP_DATA\(6))) # (\C2|C1|C6|PC[5]~2_combout\ & ((\IO65_IN[6]~input_o\))) ) ) ) # ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C6|PC[5]~2_combout\ & \C2|C1|C4|REG_OUT\(6)) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(6) & ( (!\C2|C1|C6|PC[5]~2_combout\ & 
-- (\C2|C1|C3|OP_DATA\(6))) # (\C2|C1|C6|PC[5]~2_combout\ & ((\IO65_IN[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_DATA\(6),
	datab => \ALT_INV_IO65_IN[6]~input_o\,
	datac => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(6),
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\,
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C6|Mux9~0_combout\);

-- Location: LABCELL_X40_Y3_N36
\C2|C1|C6|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux9~1_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( !\C2|C1|C4|REG_OUT\(5) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( !\C2|C1|C6|Add0~25_sumout\ ) ) ) # ( \C2|C1|C3|OP_CODE\(2) & ( 
-- !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( (!\C2|C1|C5|REG_OUT\(6) & !\C2|C1|C4|REG_OUT\(6)) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( !\C2|C1|C5|REG_OUT\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000001100000011111111000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(5),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(6),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(6),
	datad => \C2|C1|C6|ALT_INV_Add0~25_sumout\,
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	combout => \C2|C1|C6|Mux9~1_combout\);

-- Location: LABCELL_X40_Y3_N12
\C2|C1|C6|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux9~2_combout\ = ( \C2|C1|C6|Mux9~1_combout\ & ( \C2|C1|C4|REG_OUT\(7) & ( (\C2|C1|C3|OP_CODE\(1) & (((\C2|C1|C5|REG_OUT\(6) & \C2|C1|C4|REG_OUT\(6))) # (\C2|C1|C3|OP_CODE\(2)))) ) ) ) # ( !\C2|C1|C6|Mux9~1_combout\ & ( \C2|C1|C4|REG_OUT\(7) & 
-- ( ((!\C2|C1|C3|OP_CODE\(1)) # ((\C2|C1|C5|REG_OUT\(6) & \C2|C1|C4|REG_OUT\(6)))) # (\C2|C1|C3|OP_CODE\(2)) ) ) ) # ( \C2|C1|C6|Mux9~1_combout\ & ( !\C2|C1|C4|REG_OUT\(7) & ( (!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C5|REG_OUT\(6) & (\C2|C1|C3|OP_CODE\(1) & 
-- \C2|C1|C4|REG_OUT\(6)))) ) ) ) # ( !\C2|C1|C6|Mux9~1_combout\ & ( !\C2|C1|C4|REG_OUT\(7) & ( (!\C2|C1|C3|OP_CODE\(1)) # ((!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C5|REG_OUT\(6) & \C2|C1|C4|REG_OUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110010000000000000001011110101111101110000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(6),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(6),
	datae => \C2|C1|C6|ALT_INV_Mux9~1_combout\,
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(7),
	combout => \C2|C1|C6|Mux9~2_combout\);

-- Location: LABCELL_X35_Y4_N27
\C2|C1|C6|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux9~3_combout\ = ( \C2|C1|C6|Mux9~2_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & ((!\C2|C1|C6|REG_IN[2]~3_combout\) # ((\C2|C1|C6|Add1~25_sumout\)))) # (\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux9~0_combout\)))) ) ) # ( !\C2|C1|C6|Mux9~2_combout\ & ( 
-- (!\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|REG_IN[2]~3_combout\ & ((\C2|C1|C6|Add1~25_sumout\)))) # (\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux9~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\,
	datac => \C2|C1|C6|ALT_INV_Mux9~0_combout\,
	datad => \C2|C1|C6|ALT_INV_Add1~25_sumout\,
	dataf => \C2|C1|C6|ALT_INV_Mux9~2_combout\,
	combout => \C2|C1|C6|Mux9~3_combout\);

-- Location: FF_X35_Y4_N29
\C2|C1|C6|REG_IN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux9~3_combout\,
	sclr => \C2|C1|C6|REG_IN[2]~11_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(6));

-- Location: MLABCELL_X34_Y2_N0
\C2|C1|C7|REG_5[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_5[6]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(6),
	combout => \C2|C1|C7|REG_5[6]~feeder_combout\);

-- Location: FF_X34_Y2_N2
\C2|C1|C7|REG_5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_5[6]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(6));

-- Location: MLABCELL_X34_Y2_N48
\C2|C1|C4|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux9~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(6) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_6\(6) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_5\(6) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_4\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(6),
	datab => \C2|C1|C7|ALT_INV_REG_7\(6),
	datac => \C2|C1|C7|ALT_INV_REG_4\(6),
	datad => \C2|C1|C7|ALT_INV_REG_6\(6),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux9~0_combout\);

-- Location: LABCELL_X35_Y2_N12
\C2|C1|C4|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux9~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(6) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(6) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(6) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_0\(6),
	datab => \C2|C1|C7|ALT_INV_REG_1\(6),
	datac => \C2|C1|C7|ALT_INV_REG_2\(6),
	datad => \C2|C1|C7|ALT_INV_REG_3\(6),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux9~1_combout\);

-- Location: LABCELL_X36_Y4_N24
\C2|C1|C4|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux9~2_combout\ = ( \C2|C1|C4|Mux9~1_combout\ & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux9~0_combout\ ) ) ) # ( !\C2|C1|C4|Mux9~1_combout\ & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( 
-- \C2|C1|C4|Mux9~0_combout\ ) ) ) # ( \C2|C1|C4|Mux9~1_combout\ & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_Mux9~0_combout\,
	datae => \C2|C1|C4|ALT_INV_Mux9~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux9~2_combout\);

-- Location: FF_X36_Y4_N25
\C2|C1|C4|REG_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(6));

-- Location: MLABCELL_X37_Y3_N12
\C2|C1|C6|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux10~2_combout\ = ( \C2|C1|C6|Mux10~1_combout\ & ( \C2|C1|C4|REG_OUT\(6) & ( (\C2|C1|C3|OP_CODE\(1) & (((\C2|C1|C4|REG_OUT\(5) & \C2|C1|C5|REG_OUT\(5))) # (\C2|C1|C3|OP_CODE\(2)))) ) ) ) # ( !\C2|C1|C6|Mux10~1_combout\ & ( \C2|C1|C4|REG_OUT\(6) 
-- & ( ((!\C2|C1|C3|OP_CODE\(1)) # ((\C2|C1|C4|REG_OUT\(5) & \C2|C1|C5|REG_OUT\(5)))) # (\C2|C1|C3|OP_CODE\(2)) ) ) ) # ( \C2|C1|C6|Mux10~1_combout\ & ( !\C2|C1|C4|REG_OUT\(6) & ( (!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C4|REG_OUT\(5) & 
-- \C2|C1|C5|REG_OUT\(5)))) ) ) ) # ( !\C2|C1|C6|Mux10~1_combout\ & ( !\C2|C1|C4|REG_OUT\(6) & ( (!\C2|C1|C3|OP_CODE\(1)) # ((!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C4|REG_OUT\(5) & \C2|C1|C5|REG_OUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001110000000000000001011011101110111110001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(5),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(5),
	datae => \C2|C1|C6|ALT_INV_Mux10~1_combout\,
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(6),
	combout => \C2|C1|C6|Mux10~2_combout\);

-- Location: IOIBUF_X36_Y0_N52
\IO65_IN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(5),
	o => \IO65_IN[5]~input_o\);

-- Location: LABCELL_X36_Y5_N24
\C2|C1|C6|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux10~0_combout\ = ( \IO65_IN[5]~input_o\ & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(5) & ( ((!\C2|C1|C6|REG_IN[2]~0_combout\ & (\C2|C1|C3|OP_DATA\(5))) # (\C2|C1|C6|REG_IN[2]~0_combout\ & ((\C2|C1|C4|REG_OUT\(5))))) # 
-- (\C2|C1|C6|PC[5]~2_combout\) ) ) ) # ( !\IO65_IN[5]~input_o\ & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(5) & ( (!\C2|C1|C6|PC[5]~2_combout\ & ((!\C2|C1|C6|REG_IN[2]~0_combout\ & (\C2|C1|C3|OP_DATA\(5))) # (\C2|C1|C6|REG_IN[2]~0_combout\ & 
-- ((\C2|C1|C4|REG_OUT\(5)))))) # (\C2|C1|C6|PC[5]~2_combout\ & (((\C2|C1|C6|REG_IN[2]~0_combout\)))) ) ) ) # ( \IO65_IN[5]~input_o\ & ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(5) & ( (!\C2|C1|C6|PC[5]~2_combout\ & 
-- ((!\C2|C1|C6|REG_IN[2]~0_combout\ & (\C2|C1|C3|OP_DATA\(5))) # (\C2|C1|C6|REG_IN[2]~0_combout\ & ((\C2|C1|C4|REG_OUT\(5)))))) # (\C2|C1|C6|PC[5]~2_combout\ & (((!\C2|C1|C6|REG_IN[2]~0_combout\)))) ) ) ) # ( !\IO65_IN[5]~input_o\ & ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(5) & ( (!\C2|C1|C6|PC[5]~2_combout\ & ((!\C2|C1|C6|REG_IN[2]~0_combout\ & (\C2|C1|C3|OP_DATA\(5))) # (\C2|C1|C6|REG_IN[2]~0_combout\ & ((\C2|C1|C4|REG_OUT\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	datab => \C2|C1|C3|ALT_INV_OP_DATA\(5),
	datac => \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\,
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(5),
	datae => \ALT_INV_IO65_IN[5]~input_o\,
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \C2|C1|C6|Mux10~0_combout\);

-- Location: LABCELL_X35_Y4_N24
\C2|C1|C6|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux10~3_combout\ = ( \C2|C1|C6|Mux10~0_combout\ & ( ((!\C2|C1|C6|REG_IN[2]~3_combout\ & ((\C2|C1|C6|Mux10~2_combout\))) # (\C2|C1|C6|REG_IN[2]~3_combout\ & (\C2|C1|C6|Add1~21_sumout\))) # (\C2|C1|C3|OP_CODE\(3)) ) ) # ( 
-- !\C2|C1|C6|Mux10~0_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & ((!\C2|C1|C6|REG_IN[2]~3_combout\ & ((\C2|C1|C6|Mux10~2_combout\))) # (\C2|C1|C6|REG_IN[2]~3_combout\ & (\C2|C1|C6|Add1~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\,
	datac => \C2|C1|C6|ALT_INV_Add1~21_sumout\,
	datad => \C2|C1|C6|ALT_INV_Mux10~2_combout\,
	dataf => \C2|C1|C6|ALT_INV_Mux10~0_combout\,
	combout => \C2|C1|C6|Mux10~3_combout\);

-- Location: FF_X35_Y4_N26
\C2|C1|C6|REG_IN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux10~3_combout\,
	sclr => \C2|C1|C6|REG_IN[2]~11_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(5));

-- Location: FF_X35_Y3_N47
\C2|C1|C7|REG_5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(5),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(5));

-- Location: LABCELL_X35_Y5_N12
\C2|C1|C4|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux10~0_combout\ = ( \C2|C1|C7|REG_7\(5) & ( \C2|C1|C7|REG_6\(5) & ( ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_4\(5)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_5\(5)))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( !\C2|C1|C7|REG_7\(5) & ( \C2|C1|C7|REG_6\(5) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (((\C2|C1|C7|REG_4\(5)) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_5\(5) & (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)))) ) ) ) # ( \C2|C1|C7|REG_7\(5) & ( !\C2|C1|C7|REG_6\(5) 
-- & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & \C2|C1|C7|REG_4\(5))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & 
-- (((\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9))) # (\C2|C1|C7|REG_5\(5)))) ) ) ) # ( !\C2|C1|C7|REG_7\(5) & ( !\C2|C1|C7|REG_6\(5) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & 
-- ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_4\(5)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_5\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_5\(5),
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \C2|C1|C7|ALT_INV_REG_4\(5),
	datae => \C2|C1|C7|ALT_INV_REG_7\(5),
	dataf => \C2|C1|C7|ALT_INV_REG_6\(5),
	combout => \C2|C1|C4|Mux10~0_combout\);

-- Location: MLABCELL_X34_Y5_N0
\C2|C1|C4|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux10~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_3\(5) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_1\(5) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_2\(5) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_0\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_1\(5),
	datab => \C2|C1|C7|ALT_INV_REG_0\(5),
	datac => \C2|C1|C7|ALT_INV_REG_2\(5),
	datad => \C2|C1|C7|ALT_INV_REG_3\(5),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \C2|C1|C4|Mux10~1_combout\);

-- Location: LABCELL_X36_Y6_N0
\C2|C1|C4|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux10~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux10~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux10~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_Mux10~0_combout\,
	datac => \C2|C1|C4|ALT_INV_Mux10~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux10~2_combout\);

-- Location: FF_X36_Y4_N50
\C2|C1|C4|REG_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C4|Mux10~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(5));

-- Location: LABCELL_X35_Y3_N0
\C2|C1|C6|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux11~1_combout\ = ( \C2|C1|C4|REG_OUT\(3) & ( \C2|C1|C4|REG_OUT\(4) & ( (!\C2|C1|C3|OP_CODE\(2) & ((!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C5|REG_OUT\(4)))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C6|Add0~17_sumout\)))) ) ) ) # 
-- ( !\C2|C1|C4|REG_OUT\(3) & ( \C2|C1|C4|REG_OUT\(4) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((!\C2|C1|C5|REG_OUT\(4) & !\C2|C1|C3|OP_CODE\(2))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C6|Add0~17_sumout\) # ((\C2|C1|C3|OP_CODE\(2))))) ) ) ) # 
-- ( \C2|C1|C4|REG_OUT\(3) & ( !\C2|C1|C4|REG_OUT\(4) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((!\C2|C1|C5|REG_OUT\(4))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C6|Add0~17_sumout\ & ((!\C2|C1|C3|OP_CODE\(2))))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(3) & 
-- ( !\C2|C1|C4|REG_OUT\(4) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((!\C2|C1|C5|REG_OUT\(4))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((!\C2|C1|C6|Add0~17_sumout\) # ((\C2|C1|C3|OP_CODE\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011001111110010101100000011001010000011111100101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Add0~17_sumout\,
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(4),
	datac => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datad => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datae => \C2|C1|C4|ALT_INV_REG_OUT\(3),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(4),
	combout => \C2|C1|C6|Mux11~1_combout\);

-- Location: LABCELL_X35_Y3_N48
\C2|C1|C6|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux11~2_combout\ = ( \C2|C1|C6|Mux11~1_combout\ & ( \C2|C1|C3|OP_CODE\(2) & ( (\C2|C1|C4|REG_OUT\(5) & \C2|C1|C3|OP_CODE\(1)) ) ) ) # ( !\C2|C1|C6|Mux11~1_combout\ & ( \C2|C1|C3|OP_CODE\(2) & ( (!\C2|C1|C3|OP_CODE\(1)) # (\C2|C1|C4|REG_OUT\(5)) 
-- ) ) ) # ( \C2|C1|C6|Mux11~1_combout\ & ( !\C2|C1|C3|OP_CODE\(2) & ( (\C2|C1|C5|REG_OUT\(4) & (\C2|C1|C3|OP_CODE\(1) & \C2|C1|C4|REG_OUT\(4))) ) ) ) # ( !\C2|C1|C6|Mux11~1_combout\ & ( !\C2|C1|C3|OP_CODE\(2) & ( (!\C2|C1|C3|OP_CODE\(1)) # 
-- ((\C2|C1|C5|REG_OUT\(4) & \C2|C1|C4|REG_OUT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110011000000000000001111110101111101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(5),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(4),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(4),
	datae => \C2|C1|C6|ALT_INV_Mux11~1_combout\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	combout => \C2|C1|C6|Mux11~2_combout\);

-- Location: IOIBUF_X36_Y0_N35
\IO65_IN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(4),
	o => \IO65_IN[4]~input_o\);

-- Location: LABCELL_X36_Y2_N0
\C2|C1|C6|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux11~0_combout\ = ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(4) & ( (\C2|C1|C6|PC[5]~2_combout\) # (\C2|C1|C4|REG_OUT\(4)) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( 
-- \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(4) & ( (!\C2|C1|C6|PC[5]~2_combout\ & ((\C2|C1|C3|OP_DATA\(4)))) # (\C2|C1|C6|PC[5]~2_combout\ & (\IO65_IN[4]~input_o\)) ) ) ) # ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(4) & ( (\C2|C1|C4|REG_OUT\(4) & !\C2|C1|C6|PC[5]~2_combout\) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(4) & ( (!\C2|C1|C6|PC[5]~2_combout\ & 
-- ((\C2|C1|C3|OP_DATA\(4)))) # (\C2|C1|C6|PC[5]~2_combout\ & (\IO65_IN[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(4),
	datab => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	datac => \ALT_INV_IO65_IN[4]~input_o\,
	datad => \C2|C1|C3|ALT_INV_OP_DATA\(4),
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\,
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \C2|C1|C6|Mux11~0_combout\);

-- Location: LABCELL_X35_Y4_N51
\C2|C1|C6|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux11~3_combout\ = ( \C2|C1|C6|REG_IN[2]~3_combout\ & ( \C2|C1|C6|Mux11~0_combout\ & ( (\C2|C1|C6|Add1~17_sumout\) # (\C2|C1|C3|OP_CODE\(3)) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~3_combout\ & ( \C2|C1|C6|Mux11~0_combout\ & ( 
-- (\C2|C1|C6|Mux11~2_combout\) # (\C2|C1|C3|OP_CODE\(3)) ) ) ) # ( \C2|C1|C6|REG_IN[2]~3_combout\ & ( !\C2|C1|C6|Mux11~0_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & \C2|C1|C6|Add1~17_sumout\) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~3_combout\ & ( 
-- !\C2|C1|C6|Mux11~0_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & \C2|C1|C6|Mux11~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000011000000110000110011111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datac => \C2|C1|C6|ALT_INV_Add1~17_sumout\,
	datad => \C2|C1|C6|ALT_INV_Mux11~2_combout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\,
	dataf => \C2|C1|C6|ALT_INV_Mux11~0_combout\,
	combout => \C2|C1|C6|Mux11~3_combout\);

-- Location: FF_X35_Y4_N53
\C2|C1|C6|REG_IN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux11~3_combout\,
	sclr => \C2|C1|C6|REG_IN[2]~11_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(4));

-- Location: LABCELL_X32_Y2_N54
\C2|C1|C7|REG_3[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[4]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(4),
	combout => \C2|C1|C7|REG_3[4]~feeder_combout\);

-- Location: FF_X32_Y2_N56
\C2|C1|C7|REG_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[4]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(4));

-- Location: LABCELL_X35_Y5_N0
\C2|C1|C4|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux11~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(4) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8)) # (\C2|C1|C7|REG_3\(4)) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(4) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_0\(4))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_1\(4)))) ) ) ) # 
-- ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( !\C2|C1|C7|REG_2\(4) & ( (\C2|C1|C7|REG_3\(4) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( !\C2|C1|C7|REG_2\(4) & 
-- ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_0\(4))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_1\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_3\(4),
	datab => \C2|C1|C7|ALT_INV_REG_0\(4),
	datac => \C2|C1|C7|ALT_INV_REG_1\(4),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \C2|C1|C7|ALT_INV_REG_2\(4),
	combout => \C2|C1|C4|Mux11~1_combout\);

-- Location: LABCELL_X35_Y5_N6
\C2|C1|C4|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux11~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(4) & ( (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8)) # (\C2|C1|C7|REG_6\(4)) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(4) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_4\(4))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_5\(4)))) ) ) ) # 
-- ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( !\C2|C1|C7|REG_7\(4) & ( (\C2|C1|C7|REG_6\(4) & !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( !\C2|C1|C7|REG_7\(4) & 
-- ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & (\C2|C1|C7|REG_4\(4))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ((\C2|C1|C7|REG_5\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_4\(4),
	datab => \C2|C1|C7|ALT_INV_REG_6\(4),
	datac => \C2|C1|C7|ALT_INV_REG_5\(4),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \C2|C1|C7|ALT_INV_REG_7\(4),
	combout => \C2|C1|C4|Mux11~0_combout\);

-- Location: LABCELL_X35_Y3_N15
\C2|C1|C4|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux11~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux11~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux11~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_Mux11~1_combout\,
	datac => \C2|C1|C4|ALT_INV_Mux11~0_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux11~2_combout\);

-- Location: FF_X35_Y3_N16
\C2|C1|C4|REG_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(4));

-- Location: FF_X37_Y4_N11
\C2|C1|C6|RAM_IN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(4),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(4));

-- Location: LABCELL_X35_Y3_N54
\C2|C1|C6|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux12~0_combout\ = ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(3) & ( (\C2|C1|C6|PC[5]~2_combout\) # (\C2|C1|C4|REG_OUT\(3)) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( 
-- \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(3) & ( (!\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C3|OP_DATA\(3))) # (\C2|C1|C6|PC[5]~2_combout\ & ((\IO65_IN[3]~input_o\))) ) ) ) # ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( 
-- !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(3) & ( (\C2|C1|C4|REG_OUT\(3) & !\C2|C1|C6|PC[5]~2_combout\) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( !\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(3) & ( (!\C2|C1|C6|PC[5]~2_combout\ & 
-- (\C2|C1|C3|OP_DATA\(3))) # (\C2|C1|C6|PC[5]~2_combout\ & ((\IO65_IN[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(3),
	datab => \C2|C1|C3|ALT_INV_OP_DATA\(3),
	datac => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	datad => \ALT_INV_IO65_IN[3]~input_o\,
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\,
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \C2|C1|C6|Mux12~0_combout\);

-- Location: FF_X35_Y3_N41
\C2|C1|C5|REG_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(3));

-- Location: LABCELL_X35_Y3_N42
\C2|C1|C6|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux12~1_combout\ = ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( \C2|C1|C4|REG_OUT\(2) & ( (!\C2|C1|C6|Add0~13_sumout\ & !\C2|C1|C3|OP_CODE\(2)) ) ) ) # ( !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( \C2|C1|C4|REG_OUT\(2) & ( (!\C2|C1|C5|REG_OUT\(3) & 
-- ((!\C2|C1|C3|OP_CODE\(2)) # (!\C2|C1|C4|REG_OUT\(3)))) ) ) ) # ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( !\C2|C1|C4|REG_OUT\(2) & ( (!\C2|C1|C6|Add0~13_sumout\) # (\C2|C1|C3|OP_CODE\(2)) ) ) ) # ( !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( 
-- !\C2|C1|C4|REG_OUT\(2) & ( (!\C2|C1|C5|REG_OUT\(3) & ((!\C2|C1|C3|OP_CODE\(2)) # (!\C2|C1|C4|REG_OUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000101110111011101111111100000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Add0~13_sumout\,
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(3),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(3),
	datae => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(2),
	combout => \C2|C1|C6|Mux12~1_combout\);

-- Location: LABCELL_X35_Y3_N18
\C2|C1|C6|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux12~2_combout\ = ( \C2|C1|C5|REG_OUT[3]~DUPLICATE_q\ & ( \C2|C1|C6|Mux12~1_combout\ & ( (\C2|C1|C3|OP_CODE\(1) & ((!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C4|REG_OUT\(3))) # (\C2|C1|C3|OP_CODE\(2) & ((\C2|C1|C4|REG_OUT\(4)))))) ) ) ) # ( 
-- !\C2|C1|C5|REG_OUT[3]~DUPLICATE_q\ & ( \C2|C1|C6|Mux12~1_combout\ & ( (\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C3|OP_CODE\(2) & \C2|C1|C4|REG_OUT\(4))) ) ) ) # ( \C2|C1|C5|REG_OUT[3]~DUPLICATE_q\ & ( !\C2|C1|C6|Mux12~1_combout\ & ( (!\C2|C1|C3|OP_CODE\(1)) # 
-- ((!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C4|REG_OUT\(3))) # (\C2|C1|C3|OP_CODE\(2) & ((\C2|C1|C4|REG_OUT\(4))))) ) ) ) # ( !\C2|C1|C5|REG_OUT[3]~DUPLICATE_q\ & ( !\C2|C1|C6|Mux12~1_combout\ & ( (!\C2|C1|C3|OP_CODE\(1)) # ((\C2|C1|C3|OP_CODE\(2) & 
-- \C2|C1|C4|REG_OUT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111011101011101011111100000000000100010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(3),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(4),
	datae => \C2|C1|C5|ALT_INV_REG_OUT[3]~DUPLICATE_q\,
	dataf => \C2|C1|C6|ALT_INV_Mux12~1_combout\,
	combout => \C2|C1|C6|Mux12~2_combout\);

-- Location: LABCELL_X35_Y4_N12
\C2|C1|C6|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux12~3_combout\ = ( \C2|C1|C6|REG_IN[2]~3_combout\ & ( \C2|C1|C6|Add1~13_sumout\ & ( (!\C2|C1|C3|OP_CODE\(3)) # (\C2|C1|C6|Mux12~0_combout\) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~3_combout\ & ( \C2|C1|C6|Add1~13_sumout\ & ( (!\C2|C1|C3|OP_CODE\(3) & 
-- ((\C2|C1|C6|Mux12~2_combout\))) # (\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|Mux12~0_combout\)) ) ) ) # ( \C2|C1|C6|REG_IN[2]~3_combout\ & ( !\C2|C1|C6|Add1~13_sumout\ & ( (\C2|C1|C6|Mux12~0_combout\ & \C2|C1|C3|OP_CODE\(3)) ) ) ) # ( 
-- !\C2|C1|C6|REG_IN[2]~3_combout\ & ( !\C2|C1|C6|Add1~13_sumout\ & ( (!\C2|C1|C3|OP_CODE\(3) & ((\C2|C1|C6|Mux12~2_combout\))) # (\C2|C1|C3|OP_CODE\(3) & (\C2|C1|C6|Mux12~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000100010001000100011101000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Mux12~0_combout\,
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datac => \C2|C1|C6|ALT_INV_Mux12~2_combout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\,
	dataf => \C2|C1|C6|ALT_INV_Add1~13_sumout\,
	combout => \C2|C1|C6|Mux12~3_combout\);

-- Location: FF_X35_Y4_N14
\C2|C1|C6|REG_IN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux12~3_combout\,
	sclr => \C2|C1|C6|REG_IN[2]~11_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(3));

-- Location: FF_X31_Y3_N17
\C2|C1|C7|REG_6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(3),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(3));

-- Location: MLABCELL_X34_Y3_N33
\C2|C1|C4|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux12~0_combout\ = ( \C2|C1|C7|REG_7\(3) & ( \C2|C1|C7|REG_4\(3) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8)) # (\C2|C1|C7|REG_5\(3))))) # 
-- (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (((\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8))) # (\C2|C1|C7|REG_6\(3)))) ) ) ) # ( !\C2|C1|C7|REG_7\(3) & ( \C2|C1|C7|REG_4\(3) & ( 
-- (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8)) # (\C2|C1|C7|REG_5\(3))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (\C2|C1|C7|REG_6\(3) & 
-- ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8))))) ) ) ) # ( \C2|C1|C7|REG_7\(3) & ( !\C2|C1|C7|REG_4\(3) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (((\C2|C1|C7|REG_5\(3) & 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (((\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8))) # (\C2|C1|C7|REG_6\(3)))) ) ) ) # ( !\C2|C1|C7|REG_7\(3) & ( 
-- !\C2|C1|C7|REG_4\(3) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (((\C2|C1|C7|REG_5\(3) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8))))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (\C2|C1|C7|REG_6\(3) & 
-- ((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_6\(3),
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \C2|C1|C7|ALT_INV_REG_5\(3),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \C2|C1|C7|ALT_INV_REG_7\(3),
	dataf => \C2|C1|C7|ALT_INV_REG_4\(3),
	combout => \C2|C1|C4|Mux12~0_combout\);

-- Location: LABCELL_X35_Y2_N45
\C2|C1|C4|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux12~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(3) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(3) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(3) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_0\(3),
	datab => \C2|C1|C7|ALT_INV_REG_3\(3),
	datac => \C2|C1|C7|ALT_INV_REG_2\(3),
	datad => \C2|C1|C7|ALT_INV_REG_1\(3),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux12~1_combout\);

-- Location: LABCELL_X35_Y3_N36
\C2|C1|C4|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux12~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux12~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux12~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C4|ALT_INV_Mux12~0_combout\,
	datac => \C2|C1|C4|ALT_INV_Mux12~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux12~2_combout\);

-- Location: FF_X35_Y3_N37
\C2|C1|C4|REG_OUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT[3]~DUPLICATE_q\);

-- Location: FF_X39_Y3_N17
\C2|C1|C6|RAM_IN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(3));

-- Location: IOIBUF_X34_Y0_N1
\IO65_IN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(2),
	o => \IO65_IN[2]~input_o\);

-- Location: MLABCELL_X37_Y6_N36
\C2|C1|C6|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux13~0_combout\ = ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( \IO65_IN[2]~input_o\ & ( (!\C2|C1|C6|PC[5]~2_combout\ & ((\C2|C1|C4|REG_OUT\(2)))) # (\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(2))) ) ) ) # ( 
-- !\C2|C1|C6|REG_IN[2]~0_combout\ & ( \IO65_IN[2]~input_o\ & ( (\C2|C1|C3|OP_DATA\(2)) # (\C2|C1|C6|PC[5]~2_combout\) ) ) ) # ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( !\IO65_IN[2]~input_o\ & ( (!\C2|C1|C6|PC[5]~2_combout\ & ((\C2|C1|C4|REG_OUT\(2)))) # 
-- (\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(2))) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( !\IO65_IN[2]~input_o\ & ( (!\C2|C1|C6|PC[5]~2_combout\ & \C2|C1|C3|OP_DATA\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	datab => \C2|C1|C3|ALT_INV_OP_DATA\(2),
	datac => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(2),
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\,
	dataf => \ALT_INV_IO65_IN[2]~input_o\,
	combout => \C2|C1|C6|Mux13~0_combout\);

-- Location: LABCELL_X39_Y2_N6
\C2|C1|C6|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux13~1_combout\ = ( \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( \C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C4|REG_OUT\(1) ) ) ) # ( !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( \C2|C1|C3|OP_CODE\(2) & ( (!\C2|C1|C5|REG_OUT\(2) & !\C2|C1|C4|REG_OUT\(2)) ) ) ) # ( 
-- \C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C6|Add0~9_sumout\ ) ) ) # ( !\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ( !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C5|REG_OUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111110000000011000000110000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(1),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(2),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(2),
	datad => \C2|C1|C6|ALT_INV_Add0~9_sumout\,
	datae => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	combout => \C2|C1|C6|Mux13~1_combout\);

-- Location: LABCELL_X39_Y1_N12
\C2|C1|C6|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux13~2_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C6|Mux13~1_combout\ & ( (\C2|C1|C3|OP_CODE\(1) & \C2|C1|C4|REG_OUT[3]~DUPLICATE_q\) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C6|Mux13~1_combout\ & ( (\C2|C1|C3|OP_CODE\(1) & 
-- (\C2|C1|C4|REG_OUT\(2) & \C2|C1|C5|REG_OUT\(2))) ) ) ) # ( \C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C6|Mux13~1_combout\ & ( (!\C2|C1|C3|OP_CODE\(1)) # (\C2|C1|C4|REG_OUT[3]~DUPLICATE_q\) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C6|Mux13~1_combout\ & ( 
-- (!\C2|C1|C3|OP_CODE\(1)) # ((\C2|C1|C4|REG_OUT\(2) & \C2|C1|C5|REG_OUT\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101110111011101100000000000001010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datab => \C2|C1|C4|ALT_INV_REG_OUT[3]~DUPLICATE_q\,
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(2),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(2),
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C6|ALT_INV_Mux13~1_combout\,
	combout => \C2|C1|C6|Mux13~2_combout\);

-- Location: LABCELL_X35_Y4_N6
\C2|C1|C6|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux13~3_combout\ = ( \C2|C1|C6|REG_IN[2]~3_combout\ & ( \C2|C1|C3|OP_CODE\(3) & ( \C2|C1|C6|Mux13~0_combout\ ) ) ) # ( !\C2|C1|C6|REG_IN[2]~3_combout\ & ( \C2|C1|C3|OP_CODE\(3) & ( \C2|C1|C6|Mux13~0_combout\ ) ) ) # ( 
-- \C2|C1|C6|REG_IN[2]~3_combout\ & ( !\C2|C1|C3|OP_CODE\(3) & ( \C2|C1|C6|Add1~9_sumout\ ) ) ) # ( !\C2|C1|C6|REG_IN[2]~3_combout\ & ( !\C2|C1|C3|OP_CODE\(3) & ( \C2|C1|C6|Mux13~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Mux13~0_combout\,
	datab => \C2|C1|C6|ALT_INV_Mux13~2_combout\,
	datac => \C2|C1|C6|ALT_INV_Add1~9_sumout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	combout => \C2|C1|C6|Mux13~3_combout\);

-- Location: FF_X35_Y4_N8
\C2|C1|C6|REG_IN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux13~3_combout\,
	sclr => \C2|C1|C6|REG_IN[2]~11_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(2));

-- Location: FF_X35_Y2_N38
\C2|C1|C7|REG_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(2),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(2));

-- Location: LABCELL_X35_Y2_N39
\C2|C1|C4|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux13~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_1\(2) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) # (\C2|C1|C7|REG_3\(2)) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_1\(2) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (\C2|C1|C7|REG_0\(2))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((\C2|C1|C7|REG_2\(2)))) ) ) ) # 
-- ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C7|REG_1\(2) & ( (\C2|C1|C7|REG_3\(2) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C7|REG_1\(2) & 
-- ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (\C2|C1|C7|REG_0\(2))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((\C2|C1|C7|REG_2\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_0\(2),
	datab => \C2|C1|C7|ALT_INV_REG_2\(2),
	datac => \C2|C1|C7|ALT_INV_REG_3\(2),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C7|ALT_INV_REG_1\(2),
	combout => \C2|C1|C4|Mux13~1_combout\);

-- Location: MLABCELL_X34_Y3_N57
\C2|C1|C4|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux13~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_5\(2) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) # (\C2|C1|C7|REG_7\(2)) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_5\(2) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (\C2|C1|C7|REG_4\(2))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((\C2|C1|C7|REG_6\(2)))) ) ) ) # 
-- ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C7|REG_5\(2) & ( (\C2|C1|C7|REG_7\(2) & \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C7|REG_5\(2) & 
-- ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (\C2|C1|C7|REG_4\(2))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((\C2|C1|C7|REG_6\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_4\(2),
	datab => \C2|C1|C7|ALT_INV_REG_7\(2),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \C2|C1|C7|ALT_INV_REG_6\(2),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C7|ALT_INV_REG_5\(2),
	combout => \C2|C1|C4|Mux13~0_combout\);

-- Location: LABCELL_X36_Y4_N42
\C2|C1|C4|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux13~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux13~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux13~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_Mux13~1_combout\,
	datad => \C2|C1|C4|ALT_INV_Mux13~0_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux13~2_combout\);

-- Location: FF_X36_Y4_N43
\C2|C1|C4|REG_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(2));

-- Location: LABCELL_X39_Y1_N36
\C2|C1|C6|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux14~2_combout\ = ( \C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C4|REG_OUT\(2) & ( (!\C2|C1|C6|Mux14~1_combout\) # (\C2|C1|C3|OP_CODE\(1)) ) ) ) # ( !\C2|C1|C3|OP_CODE\(2) & ( \C2|C1|C4|REG_OUT\(2) & ( (!\C2|C1|C3|OP_CODE\(1) & 
-- (((!\C2|C1|C6|Mux14~1_combout\)))) # (\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C4|REG_OUT\(1) & (\C2|C1|C5|REG_OUT\(1)))) ) ) ) # ( \C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C4|REG_OUT\(2) & ( (!\C2|C1|C3|OP_CODE\(1) & !\C2|C1|C6|Mux14~1_combout\) ) ) ) # ( 
-- !\C2|C1|C3|OP_CODE\(2) & ( !\C2|C1|C4|REG_OUT\(2) & ( (!\C2|C1|C3|OP_CODE\(1) & (((!\C2|C1|C6|Mux14~1_combout\)))) # (\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C4|REG_OUT\(1) & (\C2|C1|C5|REG_OUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000100000001111100000000000011110001000000011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(1),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(1),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datad => \C2|C1|C6|ALT_INV_Mux14~1_combout\,
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(2),
	combout => \C2|C1|C6|Mux14~2_combout\);

-- Location: IOIBUF_X33_Y0_N58
\IO65_IN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(1),
	o => \IO65_IN[1]~input_o\);

-- Location: LABCELL_X36_Y4_N48
\C2|C1|C6|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux14~0_combout\ = ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( \IO65_IN[1]~input_o\ & ( (!\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C4|REG_OUT\(1))) # (\C2|C1|C6|PC[5]~2_combout\ & ((\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(1)))) ) ) ) # ( 
-- !\C2|C1|C6|REG_IN[2]~0_combout\ & ( \IO65_IN[1]~input_o\ & ( (\C2|C1|C6|PC[5]~2_combout\) # (\C2|C1|C3|OP_DATA\(1)) ) ) ) # ( \C2|C1|C6|REG_IN[2]~0_combout\ & ( !\IO65_IN[1]~input_o\ & ( (!\C2|C1|C6|PC[5]~2_combout\ & (\C2|C1|C4|REG_OUT\(1))) # 
-- (\C2|C1|C6|PC[5]~2_combout\ & ((\C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(1)))) ) ) ) # ( !\C2|C1|C6|REG_IN[2]~0_combout\ & ( !\IO65_IN[1]~input_o\ & ( (\C2|C1|C3|OP_DATA\(1) & !\C2|C1|C6|PC[5]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_DATA\(1),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(1),
	datac => \C2|C1|C6|ALT_INV_PC[5]~2_combout\,
	datad => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => \C2|C1|C6|ALT_INV_REG_IN[2]~0_combout\,
	dataf => \ALT_INV_IO65_IN[1]~input_o\,
	combout => \C2|C1|C6|Mux14~0_combout\);

-- Location: LABCELL_X35_Y4_N3
\C2|C1|C6|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux14~3_combout\ = ( \C2|C1|C6|Mux14~0_combout\ & ( \C2|C1|C3|OP_CODE\(3) ) ) # ( \C2|C1|C6|Mux14~0_combout\ & ( !\C2|C1|C3|OP_CODE\(3) & ( (!\C2|C1|C6|REG_IN[2]~3_combout\ & (\C2|C1|C6|Mux14~2_combout\)) # (\C2|C1|C6|REG_IN[2]~3_combout\ & 
-- ((\C2|C1|C6|Add1~5_sumout\))) ) ) ) # ( !\C2|C1|C6|Mux14~0_combout\ & ( !\C2|C1|C3|OP_CODE\(3) & ( (!\C2|C1|C6|REG_IN[2]~3_combout\ & (\C2|C1|C6|Mux14~2_combout\)) # (\C2|C1|C6|REG_IN[2]~3_combout\ & ((\C2|C1|C6|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Mux14~2_combout\,
	datab => \C2|C1|C6|ALT_INV_REG_IN[2]~3_combout\,
	datac => \C2|C1|C6|ALT_INV_Add1~5_sumout\,
	datae => \C2|C1|C6|ALT_INV_Mux14~0_combout\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	combout => \C2|C1|C6|Mux14~3_combout\);

-- Location: FF_X35_Y4_N5
\C2|C1|C6|REG_IN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|Mux14~3_combout\,
	sclr => \C2|C1|C6|REG_IN[2]~11_combout\,
	ena => \C2|C1|C6|REG_IN[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(1));

-- Location: LABCELL_X31_Y3_N36
\C2|C1|C7|REG_7[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[1]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(1),
	combout => \C2|C1|C7|REG_7[1]~feeder_combout\);

-- Location: FF_X31_Y3_N38
\C2|C1|C7|REG_7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[1]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(1));

-- Location: MLABCELL_X34_Y3_N21
\C2|C1|C4|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux14~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_6\(1) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((\C2|C1|C7|REG_5\(1)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & 
-- (\C2|C1|C7|REG_7\(1))) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_6\(1) & ( (\C2|C1|C7|REG_4\(1)) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C7|REG_6\(1) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((\C2|C1|C7|REG_5\(1)))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (\C2|C1|C7|REG_7\(1))) ) ) ) # 
-- ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C7|REG_6\(1) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & \C2|C1|C7|REG_4\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_7\(1),
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \C2|C1|C7|ALT_INV_REG_4\(1),
	datad => \C2|C1|C7|ALT_INV_REG_5\(1),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C7|ALT_INV_REG_6\(1),
	combout => \C2|C1|C4|Mux14~0_combout\);

-- Location: MLABCELL_X34_Y3_N24
\C2|C1|C4|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux14~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(1) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(1) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(1) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_0\(1),
	datab => \C2|C1|C7|ALT_INV_REG_3\(1),
	datac => \C2|C1|C7|ALT_INV_REG_2\(1),
	datad => \C2|C1|C7|ALT_INV_REG_1\(1),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux14~1_combout\);

-- Location: LABCELL_X36_Y4_N39
\C2|C1|C4|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux14~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux14~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux14~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_Mux14~0_combout\,
	datad => \C2|C1|C4|ALT_INV_Mux14~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux14~2_combout\);

-- Location: FF_X36_Y4_N40
\C2|C1|C4|REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(1));

-- Location: FF_X36_Y3_N23
\C2|C1|C6|RAM_IN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(1),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(1));

-- Location: MLABCELL_X37_Y3_N6
\C2|C1|C6|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux0~2_combout\ = ( !\C2|C1|C3|OP_CODE\(2) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((\C2|C1|C4|REG_OUT\(15))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (\C2|C1|C3|OP_DATA\(7))) ) ) # ( \C2|C1|C3|OP_CODE\(2) & ( 
-- (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(15)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000000000000000000011011000110110101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datab => \C2|C1|C3|ALT_INV_OP_DATA\(7),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datag => \C2|C1|C4|ALT_INV_REG_OUT\(15),
	combout => \C2|C1|C6|Mux0~2_combout\);

-- Location: FF_X34_Y2_N38
\C2|C1|C7|REG_5[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(15),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_5[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_5\(15));

-- Location: MLABCELL_X37_Y6_N57
\C2|C1|C7|REG_7[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_7[15]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(15),
	combout => \C2|C1|C7|REG_7[15]~feeder_combout\);

-- Location: FF_X37_Y6_N59
\C2|C1|C7|REG_7[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_7[15]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_7[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_7\(15));

-- Location: FF_X40_Y3_N29
\C2|C1|C7|REG_4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(15),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_4\(15));

-- Location: MLABCELL_X37_Y5_N21
\C2|C1|C5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux0~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_7\(15) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_6\(15) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_5\(15) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_4\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_6\(15),
	datab => \C2|C1|C7|ALT_INV_REG_5\(15),
	datac => \C2|C1|C7|ALT_INV_REG_7\(15),
	datad => \C2|C1|C7|ALT_INV_REG_4\(15),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux0~0_combout\);

-- Location: LABCELL_X40_Y3_N48
\C2|C1|C7|REG_1[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_1[15]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(15),
	combout => \C2|C1|C7|REG_1[15]~feeder_combout\);

-- Location: FF_X40_Y3_N50
\C2|C1|C7|REG_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_1[15]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_1\(15));

-- Location: FF_X35_Y1_N53
\C2|C1|C7|REG_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(15),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_2\(15));

-- Location: FF_X35_Y1_N59
\C2|C1|C7|REG_0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(15),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_0\(15));

-- Location: MLABCELL_X37_Y6_N3
\C2|C1|C7|REG_3[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[15]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(15),
	combout => \C2|C1|C7|REG_3[15]~feeder_combout\);

-- Location: FF_X37_Y6_N5
\C2|C1|C7|REG_3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[15]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(15));

-- Location: MLABCELL_X37_Y5_N57
\C2|C1|C5|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux0~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_3\(15) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_2\(15) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_1\(15) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C7|REG_0\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_1\(15),
	datab => \C2|C1|C7|ALT_INV_REG_2\(15),
	datac => \C2|C1|C7|ALT_INV_REG_0\(15),
	datad => \C2|C1|C7|ALT_INV_REG_3\(15),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \C2|C1|C5|Mux0~1_combout\);

-- Location: MLABCELL_X37_Y5_N51
\C2|C1|C5|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C5|Mux0~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux0~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C5|Mux0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_Mux0~0_combout\,
	datac => \C2|C1|C5|ALT_INV_Mux0~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C5|Mux0~2_combout\);

-- Location: FF_X37_Y5_N52
\C2|C1|C5|REG_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C5|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C5|REG_OUT\(15));

-- Location: MLABCELL_X34_Y1_N45
\C2|C1|C6|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add1~61_sumout\ = SUM(( !\C2|C1|C4|REG_OUT\(15) $ (\C2|C1|C5|REG_OUT\(15)) ) + ( \C2|C1|C6|Add1~59\ ) + ( \C2|C1|C6|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(15),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(15),
	cin => \C2|C1|C6|Add1~58\,
	sharein => \C2|C1|C6|Add1~59\,
	sumout => \C2|C1|C6|Add1~61_sumout\);

-- Location: MLABCELL_X37_Y1_N45
\C2|C1|C6|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Add0~61_sumout\ = SUM(( \C2|C1|C5|REG_OUT\(15) ) + ( \C2|C1|C4|REG_OUT\(15) ) + ( \C2|C1|C6|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(15),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(15),
	cin => \C2|C1|C6|Add0~58\,
	sumout => \C2|C1|C6|Add0~61_sumout\);

-- Location: MLABCELL_X37_Y3_N3
\C2|C1|C6|Mux25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux25~3_combout\ = ( \C2|C1|C6|Add0~61_sumout\ & ( (!\C2|C1|C3|OP_CODE\(2)) # (\C2|C1|C4|REG_OUT\(14)) ) ) # ( !\C2|C1|C6|Add0~61_sumout\ & ( (\C2|C1|C4|REG_OUT\(14) & \C2|C1|C3|OP_CODE\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(14),
	datad => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	dataf => \C2|C1|C6|ALT_INV_Add0~61_sumout\,
	combout => \C2|C1|C6|Mux25~3_combout\);

-- Location: MLABCELL_X37_Y3_N42
\C2|C1|C6|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux0~6_combout\ = ( !\C2|C1|C3|OP_CODE\(1) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((((\C2|C1|C3|OP_CODE\(2) & \C2|C1|C4|REG_OUT\(15))) # (\C2|C1|C5|REG_OUT\(15))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((((\C2|C1|C6|Mux25~3_combout\))))) ) 
-- ) # ( \C2|C1|C3|OP_CODE\(1) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (!\C2|C1|C3|OP_CODE\(2) & (((\C2|C1|C6|Add1~61_sumout\))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (\C2|C1|C4|REG_OUT\(15) & (((\C2|C1|C5|REG_OUT\(15))) # (\C2|C1|C3|OP_CODE\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001111000010100001000111111111000011110000101000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(15),
	datac => \C2|C1|C6|ALT_INV_Add1~61_sumout\,
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(15),
	datag => \C2|C1|C6|ALT_INV_Mux25~3_combout\,
	combout => \C2|C1|C6|Mux0~6_combout\);

-- Location: LABCELL_X39_Y1_N3
\C2|C1|C6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux0~0_combout\ = ( !\C2|C1|C3|OP_CODE\(1) & ( (!\C2|C1|C3|OP_CODE\(2)) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	combout => \C2|C1|C6|Mux0~0_combout\);

-- Location: MLABCELL_X37_Y3_N18
\C2|C1|C6|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux0~1_combout\ = ( \C2|C1|C6|REG_IN\(15) & ( \C2|C1|C6|Mux0~0_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux0~6_combout\)))) # (\C2|C1|C3|OP_CODE\(3) & (!\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C6|Mux0~2_combout\))) ) ) ) # ( 
-- !\C2|C1|C6|REG_IN\(15) & ( \C2|C1|C6|Mux0~0_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux0~6_combout\)))) # (\C2|C1|C3|OP_CODE\(3) & (!\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C6|Mux0~2_combout\))) ) ) ) # ( \C2|C1|C6|REG_IN\(15) & ( 
-- !\C2|C1|C6|Mux0~0_combout\ & ( (\C2|C1|C6|Mux0~6_combout\) # (\C2|C1|C3|OP_CODE\(3)) ) ) ) # ( !\C2|C1|C6|REG_IN\(15) & ( !\C2|C1|C6|Mux0~0_combout\ & ( (!\C2|C1|C3|OP_CODE\(3) & (((\C2|C1|C6|Mux0~6_combout\)))) # (\C2|C1|C3|OP_CODE\(3) & 
-- (!\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C6|Mux0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110010000011111111111100000010111100100000001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datab => \C2|C1|C6|ALT_INV_Mux0~2_combout\,
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datad => \C2|C1|C6|ALT_INV_Mux0~6_combout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN\(15),
	dataf => \C2|C1|C6|ALT_INV_Mux0~0_combout\,
	combout => \C2|C1|C6|Mux0~1_combout\);

-- Location: FF_X36_Y3_N53
\C2|C1|C6|REG_IN[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C6|Mux0~1_combout\,
	sload => VCC,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(15));

-- Location: FF_X34_Y2_N14
\C2|C1|C7|REG_6[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	asdata => \C2|C1|C6|REG_IN\(15),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	ena => \C2|C1|C7|REG_6[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_6\(15));

-- Location: MLABCELL_X37_Y5_N18
\C2|C1|C4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux0~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_7\(15) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_6\(15) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_5\(15) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_4\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_6\(15),
	datab => \C2|C1|C7|ALT_INV_REG_5\(15),
	datac => \C2|C1|C7|ALT_INV_REG_4\(15),
	datad => \C2|C1|C7|ALT_INV_REG_7\(15),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux0~0_combout\);

-- Location: MLABCELL_X37_Y5_N54
\C2|C1|C4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux0~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(15) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(15) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(15) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_1\(15),
	datab => \C2|C1|C7|ALT_INV_REG_2\(15),
	datac => \C2|C1|C7|ALT_INV_REG_3\(15),
	datad => \C2|C1|C7|ALT_INV_REG_0\(15),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux0~1_combout\);

-- Location: MLABCELL_X37_Y5_N48
\C2|C1|C4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux0~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux0~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_Mux0~0_combout\,
	datad => \C2|C1|C4|ALT_INV_Mux0~1_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux0~2_combout\);

-- Location: FF_X37_Y5_N49
\C2|C1|C4|REG_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(15));

-- Location: MLABCELL_X34_Y1_N48
\C2|C1|C6|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux26~1_combout\ = ( \C2|C1|C4|REG_OUT\(12) & ( \C2|C1|C5|REG_OUT\(13) & ( (\C2|C1|C5|REG_OUT\(12) & (\C2|C1|C4|REG_OUT\(13) & (!\C2|C1|C4|REG_OUT\(14) $ (\C2|C1|C5|REG_OUT\(14))))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(12) & ( \C2|C1|C5|REG_OUT\(13) & 
-- ( (!\C2|C1|C5|REG_OUT\(12) & (\C2|C1|C4|REG_OUT\(13) & (!\C2|C1|C4|REG_OUT\(14) $ (\C2|C1|C5|REG_OUT\(14))))) ) ) ) # ( \C2|C1|C4|REG_OUT\(12) & ( !\C2|C1|C5|REG_OUT\(13) & ( (\C2|C1|C5|REG_OUT\(12) & (!\C2|C1|C4|REG_OUT\(13) & (!\C2|C1|C4|REG_OUT\(14) $ 
-- (\C2|C1|C5|REG_OUT\(14))))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(12) & ( !\C2|C1|C5|REG_OUT\(13) & ( (!\C2|C1|C5|REG_OUT\(12) & (!\C2|C1|C4|REG_OUT\(13) & (!\C2|C1|C4|REG_OUT\(14) $ (\C2|C1|C5|REG_OUT\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_REG_OUT\(12),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(13),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(14),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(14),
	datae => \C2|C1|C4|ALT_INV_REG_OUT\(12),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(13),
	combout => \C2|C1|C6|Mux26~1_combout\);

-- Location: LABCELL_X39_Y1_N18
\C2|C1|C6|Mux26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux26~4_combout\ = ( \C2|C1|C5|REG_OUT\(1) & ( \C2|C1|C4|REG_OUT\(1) & ( (!\C2|C1|C4|REG_OUT\(0) & (!\C2|C1|C5|REG_OUT\(0) & (!\C2|C1|C5|REG_OUT\(2) $ (\C2|C1|C4|REG_OUT\(2))))) # (\C2|C1|C4|REG_OUT\(0) & (\C2|C1|C5|REG_OUT\(0) & 
-- (!\C2|C1|C5|REG_OUT\(2) $ (\C2|C1|C4|REG_OUT\(2))))) ) ) ) # ( !\C2|C1|C5|REG_OUT\(1) & ( !\C2|C1|C4|REG_OUT\(1) & ( (!\C2|C1|C4|REG_OUT\(0) & (!\C2|C1|C5|REG_OUT\(0) & (!\C2|C1|C5|REG_OUT\(2) $ (\C2|C1|C4|REG_OUT\(2))))) # (\C2|C1|C4|REG_OUT\(0) & 
-- (\C2|C1|C5|REG_OUT\(0) & (!\C2|C1|C5|REG_OUT\(2) $ (\C2|C1|C4|REG_OUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(0),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(2),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(2),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(0),
	datae => \C2|C1|C5|ALT_INV_REG_OUT\(1),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(1),
	combout => \C2|C1|C6|Mux26~4_combout\);

-- Location: LABCELL_X35_Y3_N24
\C2|C1|C6|Mux26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux26~5_combout\ = ( \C2|C1|C5|REG_OUT\(5) & ( \C2|C1|C5|REG_OUT\(3) & ( (\C2|C1|C4|REG_OUT\(3) & (\C2|C1|C4|REG_OUT\(5) & (!\C2|C1|C4|REG_OUT\(4) $ (\C2|C1|C5|REG_OUT\(4))))) ) ) ) # ( !\C2|C1|C5|REG_OUT\(5) & ( \C2|C1|C5|REG_OUT\(3) & ( 
-- (\C2|C1|C4|REG_OUT\(3) & (!\C2|C1|C4|REG_OUT\(5) & (!\C2|C1|C4|REG_OUT\(4) $ (\C2|C1|C5|REG_OUT\(4))))) ) ) ) # ( \C2|C1|C5|REG_OUT\(5) & ( !\C2|C1|C5|REG_OUT\(3) & ( (!\C2|C1|C4|REG_OUT\(3) & (\C2|C1|C4|REG_OUT\(5) & (!\C2|C1|C4|REG_OUT\(4) $ 
-- (\C2|C1|C5|REG_OUT\(4))))) ) ) ) # ( !\C2|C1|C5|REG_OUT\(5) & ( !\C2|C1|C5|REG_OUT\(3) & ( (!\C2|C1|C4|REG_OUT\(3) & (!\C2|C1|C4|REG_OUT\(5) & (!\C2|C1|C4|REG_OUT\(4) $ (\C2|C1|C5|REG_OUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(3),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(4),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(5),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(4),
	datae => \C2|C1|C5|ALT_INV_REG_OUT\(5),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(3),
	combout => \C2|C1|C6|Mux26~5_combout\);

-- Location: LABCELL_X32_Y3_N0
\C2|C1|C6|Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux26~2_combout\ = ( \C2|C1|C4|REG_OUT\(11) & ( \C2|C1|C4|REG_OUT\(10) & ( (\C2|C1|C5|REG_OUT\(11) & (\C2|C1|C5|REG_OUT\(10) & (!\C2|C1|C5|REG_OUT\(9) $ (\C2|C1|C4|REG_OUT\(9))))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(11) & ( \C2|C1|C4|REG_OUT\(10) & ( 
-- (!\C2|C1|C5|REG_OUT\(11) & (\C2|C1|C5|REG_OUT\(10) & (!\C2|C1|C5|REG_OUT\(9) $ (\C2|C1|C4|REG_OUT\(9))))) ) ) ) # ( \C2|C1|C4|REG_OUT\(11) & ( !\C2|C1|C4|REG_OUT\(10) & ( (\C2|C1|C5|REG_OUT\(11) & (!\C2|C1|C5|REG_OUT\(10) & (!\C2|C1|C5|REG_OUT\(9) $ 
-- (\C2|C1|C4|REG_OUT\(9))))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(11) & ( !\C2|C1|C4|REG_OUT\(10) & ( (!\C2|C1|C5|REG_OUT\(11) & (!\C2|C1|C5|REG_OUT\(10) & (!\C2|C1|C5|REG_OUT\(9) $ (\C2|C1|C4|REG_OUT\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C5|ALT_INV_REG_OUT\(9),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(11),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(10),
	datad => \C2|C1|C4|ALT_INV_REG_OUT\(9),
	datae => \C2|C1|C4|ALT_INV_REG_OUT\(11),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(10),
	combout => \C2|C1|C6|Mux26~2_combout\);

-- Location: LABCELL_X40_Y3_N6
\C2|C1|C6|Mux26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux26~3_combout\ = ( \C2|C1|C5|REG_OUT\(8) & ( \C2|C1|C5|REG_OUT\(7) & ( (\C2|C1|C4|REG_OUT\(7) & (\C2|C1|C4|REG_OUT\(8) & (!\C2|C1|C4|REG_OUT\(6) $ (\C2|C1|C5|REG_OUT\(6))))) ) ) ) # ( !\C2|C1|C5|REG_OUT\(8) & ( \C2|C1|C5|REG_OUT\(7) & ( 
-- (\C2|C1|C4|REG_OUT\(7) & (!\C2|C1|C4|REG_OUT\(8) & (!\C2|C1|C4|REG_OUT\(6) $ (\C2|C1|C5|REG_OUT\(6))))) ) ) ) # ( \C2|C1|C5|REG_OUT\(8) & ( !\C2|C1|C5|REG_OUT\(7) & ( (!\C2|C1|C4|REG_OUT\(7) & (\C2|C1|C4|REG_OUT\(8) & (!\C2|C1|C4|REG_OUT\(6) $ 
-- (\C2|C1|C5|REG_OUT\(6))))) ) ) ) # ( !\C2|C1|C5|REG_OUT\(8) & ( !\C2|C1|C5|REG_OUT\(7) & ( (!\C2|C1|C4|REG_OUT\(7) & (!\C2|C1|C4|REG_OUT\(8) & (!\C2|C1|C4|REG_OUT\(6) $ (\C2|C1|C5|REG_OUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C4|ALT_INV_REG_OUT\(7),
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(8),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(6),
	datad => \C2|C1|C5|ALT_INV_REG_OUT\(6),
	datae => \C2|C1|C5|ALT_INV_REG_OUT\(8),
	dataf => \C2|C1|C5|ALT_INV_REG_OUT\(7),
	combout => \C2|C1|C6|Mux26~3_combout\);

-- Location: LABCELL_X32_Y3_N12
\C2|C1|C6|Mux26~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux26~6_combout\ = ( \C2|C1|C6|Mux26~2_combout\ & ( \C2|C1|C6|Mux26~3_combout\ & ( (\C2|C1|C6|Mux26~1_combout\ & (\C2|C1|C6|Mux26~4_combout\ & \C2|C1|C6|Mux26~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Mux26~1_combout\,
	datac => \C2|C1|C6|ALT_INV_Mux26~4_combout\,
	datad => \C2|C1|C6|ALT_INV_Mux26~5_combout\,
	datae => \C2|C1|C6|ALT_INV_Mux26~2_combout\,
	dataf => \C2|C1|C6|ALT_INV_Mux26~3_combout\,
	combout => \C2|C1|C6|Mux26~6_combout\);

-- Location: MLABCELL_X37_Y3_N0
\C2|C1|C6|Mux26~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux26~7_combout\ = ( \C2|C1|C6|CMP_FLAG~q\ & ( (!\C2|C1|C6|Mux26~0_combout\) # ((\C2|C1|C6|Mux26~6_combout\ & (!\C2|C1|C4|REG_OUT\(15) $ (\C2|C1|C5|REG_OUT\(15))))) ) ) # ( !\C2|C1|C6|CMP_FLAG~q\ & ( (\C2|C1|C6|Mux26~0_combout\ & 
-- (\C2|C1|C6|Mux26~6_combout\ & (!\C2|C1|C4|REG_OUT\(15) $ (\C2|C1|C5|REG_OUT\(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000001000000000100000110101010111010111010101011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Mux26~0_combout\,
	datab => \C2|C1|C4|ALT_INV_REG_OUT\(15),
	datac => \C2|C1|C5|ALT_INV_REG_OUT\(15),
	datad => \C2|C1|C6|ALT_INV_Mux26~6_combout\,
	dataf => \C2|C1|C6|ALT_INV_CMP_FLAG~q\,
	combout => \C2|C1|C6|Mux26~7_combout\);

-- Location: FF_X37_Y3_N32
\C2|C1|C6|CMP_FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C6|Mux26~7_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|CMP_FLAG~q\);

-- Location: MLABCELL_X37_Y3_N30
\C2|C1|C6|PC[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|PC[5]~0_combout\ = ( \C2|C1|C3|OP_CODE\(3) & ( (!\C2|C1|C3|OP_CODE\(1) & (\C2|C1|C3|OP_CODE\(2) & (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\))) # (\C2|C1|C3|OP_CODE\(1) & (((\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & \C2|C1|C6|CMP_FLAG~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000110100000001000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datac => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datad => \C2|C1|C6|ALT_INV_CMP_FLAG~q\,
	dataf => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	combout => \C2|C1|C6|PC[5]~0_combout\);

-- Location: FF_X36_Y5_N17
\C2|C1|C6|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|PC[2]~feeder_combout\,
	asdata => \C2|C1|C3|OP_DATA\(2),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => \C2|C1|C6|PC[5]~0_combout\,
	ena => \C2|C1|C6|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|PC\(2));

-- Location: FF_X35_Y5_N2
\C2|C1|C3|OP_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	asdata => \C2|C1|C2|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_DATA\(1));

-- Location: FF_X36_Y5_N11
\C2|C1|C6|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|PC[1]~feeder_combout\,
	asdata => \C2|C1|C3|OP_DATA\(1),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => \C2|C1|C6|PC[5]~0_combout\,
	ena => \C2|C1|C6|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|PC\(1));

-- Location: MLABCELL_X34_Y4_N6
\C2|C1|C3|OP_DATA[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C3|OP_DATA[0]~feeder_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \C2|C1|C3|OP_DATA[0]~feeder_combout\);

-- Location: FF_X34_Y4_N7
\C2|C1|C3|OP_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C3|OP_DATA[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C3|OP_DATA\(0));

-- Location: FF_X36_Y5_N5
\C2|C1|C6|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	d => \C2|C1|C6|PC[0]~feeder_combout\,
	asdata => \C2|C1|C3|OP_DATA\(0),
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => \C2|C1|C6|PC[5]~0_combout\,
	ena => \C2|C1|C6|PC[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|PC\(0));

-- Location: MLABCELL_X34_Y4_N3
\C2|C1|C8|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C8|Equal0~0_combout\ = ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(1) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(2) & 
-- (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(3) & !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datab => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C8|Equal0~0_combout\);

-- Location: IOIBUF_X33_Y0_N41
\IO65_IN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(0),
	o => \IO65_IN[0]~input_o\);

-- Location: MLABCELL_X34_Y4_N27
\C2|C1|C6|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux15~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & ( (\C2|C1|C8|Equal0~0_combout\ & (\IO65_IN[0]~input_o\ & 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_IO65_IN[0]~input_o\,
	datad => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \C2|C1|C6|Mux15~1_combout\);

-- Location: MLABCELL_X34_Y4_N48
\C2|C1|C6|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux15~0_combout\ = ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(7) & ( \C2|C1|C8|C1|altsyncram_component|auto_generated|q_a\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|C1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \C2|C1|C6|Mux15~0_combout\);

-- Location: LABCELL_X36_Y4_N9
\C2|C1|C6|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux15~2_combout\ = ( \C2|C1|C4|REG_OUT\(0) & ( \C2|C1|C3|OP_DATA\(0) & ( (!\C2|C1|C3|OP_CODE\(2)) # ((\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((\C2|C1|C6|Mux15~0_combout\) # (\C2|C1|C6|Mux15~1_combout\)))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(0) & ( 
-- \C2|C1|C3|OP_DATA\(0) & ( (!\C2|C1|C3|OP_CODE\(2) & (((!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\)))) # (\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((\C2|C1|C6|Mux15~0_combout\) # (\C2|C1|C6|Mux15~1_combout\)))) ) ) ) # ( \C2|C1|C4|REG_OUT\(0) & 
-- ( !\C2|C1|C3|OP_DATA\(0) & ( (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((!\C2|C1|C3|OP_CODE\(2)) # (\C2|C1|C6|Mux15~0_combout\)) # (\C2|C1|C6|Mux15~1_combout\))) ) ) ) # ( !\C2|C1|C4|REG_OUT\(0) & ( !\C2|C1|C3|OP_DATA\(0) & ( (\C2|C1|C3|OP_CODE\(2) & 
-- (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((\C2|C1|C6|Mux15~0_combout\) # (\C2|C1|C6|Mux15~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000001111011111110000000001111111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Mux15~1_combout\,
	datab => \C2|C1|C6|ALT_INV_Mux15~0_combout\,
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datad => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datae => \C2|C1|C4|ALT_INV_REG_OUT\(0),
	dataf => \C2|C1|C3|ALT_INV_OP_DATA\(0),
	combout => \C2|C1|C6|Mux15~2_combout\);

-- Location: LABCELL_X39_Y1_N0
\C2|C1|C6|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux25~1_combout\ = ( \C2|C1|C4|REG_OUT\(1) & ( (\C2|C1|C6|Add1~1_sumout\) # (\C2|C1|C3|OP_CODE\(2)) ) ) # ( !\C2|C1|C4|REG_OUT\(1) & ( (!\C2|C1|C3|OP_CODE\(2) & \C2|C1|C6|Add1~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datac => \C2|C1|C6|ALT_INV_Add1~1_sumout\,
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(1),
	combout => \C2|C1|C6|Mux25~1_combout\);

-- Location: LABCELL_X39_Y1_N27
\C2|C1|C6|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux25~0_combout\ = ( \C2|C1|C4|REG_OUT\(0) & ( (\C2|C1|C5|REG_OUT\(0)) # (\C2|C1|C3|OP_CODE\(2)) ) ) # ( !\C2|C1|C4|REG_OUT\(0) & ( \C2|C1|C5|REG_OUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(0),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(0),
	combout => \C2|C1|C6|Mux25~0_combout\);

-- Location: LABCELL_X39_Y1_N24
\C2|C1|C6|Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux25~2_combout\ = ( \C2|C1|C4|REG_OUT\(1) & ( ((\C2|C1|C5|REG_OUT\(0) & \C2|C1|C4|REG_OUT\(0))) # (\C2|C1|C3|OP_CODE\(2)) ) ) # ( !\C2|C1|C4|REG_OUT\(1) & ( (!\C2|C1|C3|OP_CODE\(2) & (\C2|C1|C5|REG_OUT\(0) & \C2|C1|C4|REG_OUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	datab => \C2|C1|C5|ALT_INV_REG_OUT\(0),
	datac => \C2|C1|C4|ALT_INV_REG_OUT\(0),
	dataf => \C2|C1|C4|ALT_INV_REG_OUT\(1),
	combout => \C2|C1|C6|Mux25~2_combout\);

-- Location: LABCELL_X39_Y1_N30
\C2|C1|C6|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux15~4_combout\ = ( !\C2|C1|C3|OP_CODE\(1) & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((((\C2|C1|C6|Mux25~0_combout\))))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (\C2|C1|C6|Add0~1_sumout\ & (!\C2|C1|C3|OP_CODE\(2)))) ) ) # ( \C2|C1|C3|OP_CODE\(1) 
-- & ( (!\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & (((\C2|C1|C6|Mux25~1_combout\)))) # (\C2|C1|C3|OP_CODE[0]~DUPLICATE_q\ & ((((\C2|C1|C6|Mux25~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000010111010000010100000101000010000101110100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C3|ALT_INV_OP_CODE[0]~DUPLICATE_q\,
	datab => \C2|C1|C6|ALT_INV_Add0~1_sumout\,
	datac => \C2|C1|C6|ALT_INV_Mux25~1_combout\,
	datad => \C2|C1|C6|ALT_INV_Mux25~0_combout\,
	datae => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	dataf => \C2|C1|C6|ALT_INV_Mux25~2_combout\,
	datag => \C2|C1|C3|ALT_INV_OP_CODE\(2),
	combout => \C2|C1|C6|Mux15~4_combout\);

-- Location: LABCELL_X39_Y1_N42
\C2|C1|C6|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C6|Mux15~3_combout\ = ( \C2|C1|C6|REG_IN\(0) & ( \C2|C1|C6|Mux15~4_combout\ & ( (!\C2|C1|C3|OP_CODE\(3)) # ((!\C2|C1|C6|Mux0~0_combout\) # ((\C2|C1|C6|Mux15~2_combout\ & !\C2|C1|C3|OP_CODE\(1)))) ) ) ) # ( !\C2|C1|C6|REG_IN\(0) & ( 
-- \C2|C1|C6|Mux15~4_combout\ & ( (!\C2|C1|C3|OP_CODE\(3)) # ((\C2|C1|C6|Mux15~2_combout\ & !\C2|C1|C3|OP_CODE\(1))) ) ) ) # ( \C2|C1|C6|REG_IN\(0) & ( !\C2|C1|C6|Mux15~4_combout\ & ( (\C2|C1|C3|OP_CODE\(3) & ((!\C2|C1|C6|Mux0~0_combout\) # 
-- ((\C2|C1|C6|Mux15~2_combout\ & !\C2|C1|C3|OP_CODE\(1))))) ) ) ) # ( !\C2|C1|C6|REG_IN\(0) & ( !\C2|C1|C6|Mux15~4_combout\ & ( (\C2|C1|C6|Mux15~2_combout\ & (\C2|C1|C3|OP_CODE\(3) & !\C2|C1|C3|OP_CODE\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000001100110001000011011100110111001111111111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C6|ALT_INV_Mux15~2_combout\,
	datab => \C2|C1|C3|ALT_INV_OP_CODE\(3),
	datac => \C2|C1|C3|ALT_INV_OP_CODE\(1),
	datad => \C2|C1|C6|ALT_INV_Mux0~0_combout\,
	datae => \C2|C1|C6|ALT_INV_REG_IN\(0),
	dataf => \C2|C1|C6|ALT_INV_Mux15~4_combout\,
	combout => \C2|C1|C6|Mux15~3_combout\);

-- Location: FF_X39_Y1_N47
\C2|C1|C6|REG_IN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C6|Mux15~3_combout\,
	sload => VCC,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|REG_IN\(0));

-- Location: LABCELL_X32_Y2_N3
\C2|C1|C7|REG_3[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C7|REG_3[0]~feeder_combout\ = ( \C2|C1|C6|REG_IN\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_REG_IN\(0),
	combout => \C2|C1|C7|REG_3[0]~feeder_combout\);

-- Location: FF_X32_Y2_N5
\C2|C1|C7|REG_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_WB~q\,
	d => \C2|C1|C7|REG_3[0]~feeder_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	ena => \C2|C1|C7|REG_3[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C7|REG_3\(0));

-- Location: MLABCELL_X34_Y3_N48
\C2|C1|C4|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux15~1_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_3\(0) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( 
-- \C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_2\(0) ) ) ) # ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_1\(0) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ( \C2|C1|C7|REG_0\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_3\(0),
	datab => \C2|C1|C7|ALT_INV_REG_1\(0),
	datac => \C2|C1|C7|ALT_INV_REG_2\(0),
	datad => \C2|C1|C7|ALT_INV_REG_0\(0),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \C2|C1|C4|Mux15~1_combout\);

-- Location: MLABCELL_X34_Y3_N3
\C2|C1|C4|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux15~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_7\(0) & ( (\C2|C1|C7|REG_5\(0)) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9)) ) ) ) # ( 
-- !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( \C2|C1|C7|REG_7\(0) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (\C2|C1|C7|REG_4\(0))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((\C2|C1|C7|REG_6\(0)))) ) ) ) # 
-- ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C7|REG_7\(0) & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & \C2|C1|C7|REG_5\(0)) ) ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(8) & ( !\C2|C1|C7|REG_7\(0) & 
-- ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & (\C2|C1|C7|REG_4\(0))) # (\C2|C1|C2|altsyncram_component|auto_generated|q_a\(9) & ((\C2|C1|C7|REG_6\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C7|ALT_INV_REG_4\(0),
	datab => \C2|C1|C7|ALT_INV_REG_6\(0),
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \C2|C1|C7|ALT_INV_REG_5\(0),
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \C2|C1|C7|ALT_INV_REG_7\(0),
	combout => \C2|C1|C4|Mux15~0_combout\);

-- Location: LABCELL_X36_Y4_N0
\C2|C1|C4|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C4|Mux15~2_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux15~0_combout\ ) ) # ( !\C2|C1|C2|altsyncram_component|auto_generated|q_a\(10) & ( \C2|C1|C4|Mux15~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C4|ALT_INV_Mux15~1_combout\,
	datad => \C2|C1|C4|ALT_INV_Mux15~0_combout\,
	dataf => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \C2|C1|C4|Mux15~2_combout\);

-- Location: FF_X36_Y4_N2
\C2|C1|C4|REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_DC~q\,
	d => \C2|C1|C4|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C4|REG_OUT\(0));

-- Location: FF_X37_Y1_N38
\C2|C1|C6|RAM_IN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|C1|C1|CLK_EX~q\,
	asdata => \C2|C1|C4|REG_OUT\(0),
	sload => VCC,
	ena => \C2|C1|C6|RAM_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C6|RAM_IN\(0));

-- Location: LABCELL_X35_Y4_N18
\C2|C1|C8|IO64_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C8|IO64_OUT[0]~0_combout\ = ( \C2|C1|C2|altsyncram_component|auto_generated|q_a\(6) & ( \C2|C1|C1|CLK_EX~q\ & ( (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(5) & (\C2|C1|C6|RAM_WEN~q\ & 
-- (!\C2|C1|C2|altsyncram_component|auto_generated|q_a\(0) & \C2|C1|C8|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \C2|C1|C6|ALT_INV_RAM_WEN~q\,
	datac => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \C2|C1|C8|ALT_INV_Equal0~0_combout\,
	datae => \C2|C1|C2|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \C2|C1|C1|ALT_INV_CLK_EX~q\,
	combout => \C2|C1|C8|IO64_OUT[0]~0_combout\);

-- Location: FF_X40_Y4_N34
\C2|C1|C8|IO64_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(0),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(0));

-- Location: FF_X37_Y4_N34
\C2|C1|C8|IO64_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(1),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(1));

-- Location: FF_X42_Y4_N34
\C2|C1|C8|IO64_OUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(2),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N8
\C2|C1|C8|IO64_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(3),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(3));

-- Location: LABCELL_X40_Y4_N39
\C2|C1|C8|IO64_OUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C8|IO64_OUT[4]~feeder_combout\ = ( \C2|C1|C6|RAM_IN\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_RAM_IN\(4),
	combout => \C2|C1|C8|IO64_OUT[4]~feeder_combout\);

-- Location: FF_X40_Y4_N40
\C2|C1|C8|IO64_OUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C8|IO64_OUT[4]~feeder_combout\,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N5
\C2|C1|C8|IO64_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(5),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(5));

-- Location: FF_X39_Y5_N2
\C2|C1|C8|IO64_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(6),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(6));

-- Location: FF_X40_Y4_N47
\C2|C1|C8|IO64_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(7),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(7));

-- Location: LABCELL_X40_Y4_N36
\C2|C1|C8|IO64_OUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C1|C8|IO64_OUT[8]~feeder_combout\ = ( \C2|C1|C6|RAM_IN\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C1|C6|ALT_INV_RAM_IN\(8),
	combout => \C2|C1|C8|IO64_OUT[8]~feeder_combout\);

-- Location: FF_X40_Y4_N37
\C2|C1|C8|IO64_OUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C8|IO64_OUT[8]~feeder_combout\,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N43
\C2|C1|C8|IO64_OUT[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(9),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N49
\C2|C1|C8|IO64_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(10),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(10));

-- Location: FF_X39_Y5_N10
\C2|C1|C8|IO64_OUT[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(11),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N58
\C2|C1|C8|IO64_OUT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(12),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N26
\C2|C1|C8|IO64_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(13),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(13));

-- Location: FF_X37_Y4_N38
\C2|C1|C8|IO64_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(14),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(14));

-- Location: FF_X37_Y4_N14
\C2|C1|C8|IO64_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(15),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(15));

-- Location: LABCELL_X41_Y4_N15
\C2|C2|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan3~1_combout\ = ( !\C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ & ( (!\C2|C1|C8|IO64_OUT\(10)) # (!\C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	datad => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	combout => \C2|C2|LessThan3~1_combout\);

-- Location: MLABCELL_X37_Y4_N24
\C2|C2|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan4~0_combout\ = ( \C2|C1|C8|IO64_OUT\(13) & ( \C2|C1|C8|IO64_OUT\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	combout => \C2|C2|LessThan4~0_combout\);

-- Location: LABCELL_X41_Y4_N6
\C2|C2|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan3~0_combout\ = ( \C2|C1|C8|IO64_OUT\(6) & ( \C2|C1|C8|IO64_OUT\(5) & ( (\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ & \C2|C1|C8|IO64_OUT\(10)) ) ) ) # ( !\C2|C1|C8|IO64_OUT\(6) & ( \C2|C1|C8|IO64_OUT\(5) & ( (\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ & 
-- (\C2|C1|C8|IO64_OUT\(10) & ((\C2|C1|C8|IO64_OUT\(7)) # (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) ) ) # ( \C2|C1|C8|IO64_OUT\(6) & ( !\C2|C1|C8|IO64_OUT\(5) & ( (\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ & \C2|C1|C8|IO64_OUT\(10)) ) ) ) # ( 
-- !\C2|C1|C8|IO64_OUT\(6) & ( !\C2|C1|C8|IO64_OUT\(5) & ( (\C2|C1|C8|IO64_OUT\(7) & (\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ & \C2|C1|C8|IO64_OUT\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000111100000000000001110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	datae => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	combout => \C2|C2|LessThan3~0_combout\);

-- Location: LABCELL_X41_Y4_N0
\C2|C2|REM_INT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REM_INT~0_combout\ = ( \C2|C2|LessThan3~0_combout\ & ( (!\C2|C1|C8|IO64_OUT\(15) & ((!\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\) # (!\C2|C2|LessThan4~0_combout\))) ) ) # ( !\C2|C2|LessThan3~0_combout\ & ( (!\C2|C1|C8|IO64_OUT\(15) & 
-- ((!\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\) # ((!\C2|C2|LessThan4~0_combout\) # (\C2|C2|LessThan3~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100000000111110110000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	datab => \C2|C2|ALT_INV_LessThan3~1_combout\,
	datac => \C2|C2|ALT_INV_LessThan4~0_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	dataf => \C2|C2|ALT_INV_LessThan3~0_combout\,
	combout => \C2|C2|REM_INT~0_combout\);

-- Location: LABCELL_X41_Y4_N45
\C2|C2|LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan4~2_combout\ = ( \C2|C1|C8|IO64_OUT\(10) & ( (\C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ & (\C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ & \C2|C1|C8|IO64_OUT\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	datae => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	combout => \C2|C2|LessThan4~2_combout\);

-- Location: LABCELL_X41_Y4_N54
\C2|C2|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan4~1_combout\ = ( !\C2|C1|C8|IO64_OUT\(5) & ( (!\C2|C1|C8|IO64_OUT\(6) & (!\C2|C1|C8|IO64_OUT\(7) & !\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	combout => \C2|C2|LessThan4~1_combout\);

-- Location: LABCELL_X41_Y4_N12
\C2|C2|LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan4~3_combout\ = ( \C2|C1|C8|IO64_OUT\(13) & ( (!\C2|C1|C8|IO64_OUT\(14) & ((!\C2|C2|LessThan4~2_combout\) # (\C2|C2|LessThan4~1_combout\))) ) ) # ( !\C2|C1|C8|IO64_OUT\(13) & ( (!\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ & 
-- ((!\C2|C2|LessThan4~2_combout\) # ((\C2|C2|LessThan4~1_combout\)))) # (\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ & (!\C2|C1|C8|IO64_OUT\(14) & ((!\C2|C2|LessThan4~2_combout\) # (\C2|C2|LessThan4~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111110001010110011111000101011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	datab => \C2|C2|ALT_INV_LessThan4~2_combout\,
	datac => \C2|C2|ALT_INV_LessThan4~1_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	combout => \C2|C2|LessThan4~3_combout\);

-- Location: LABCELL_X44_Y3_N0
\C2|C2|DEC_OUT4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|DEC_OUT4~5_combout\ = ( \C2|C2|LessThan4~3_combout\ & ( \C2|C2|REM_INT~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REM_INT~0_combout\,
	dataf => \C2|C2|ALT_INV_LessThan4~3_combout\,
	combout => \C2|C2|DEC_OUT4~5_combout\);

-- Location: LABCELL_X39_Y3_N33
\C2|C2|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan2~0_combout\ = ( !\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ & ( !\C2|C1|C8|IO64_OUT\(6) & ( (!\C2|C1|C8|IO64_OUT\(7) & !\C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	datae => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	combout => \C2|C2|LessThan2~0_combout\);

-- Location: LABCELL_X41_Y4_N3
\C2|C2|DEC_OUT4[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|DEC_OUT4[1]~0_combout\ = ( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ & ( (\C2|C1|C8|IO64_OUT\(10) & \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	datad => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	combout => \C2|C2|DEC_OUT4[1]~0_combout\);

-- Location: MLABCELL_X37_Y4_N3
\C2|C2|DEC_OUT4[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|DEC_OUT4[1]~2_combout\ = ( \C2|C2|DEC_OUT4[1]~0_combout\ & ( !\C2|C2|LessThan2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C2|C2|ALT_INV_LessThan2~0_combout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4[1]~0_combout\,
	combout => \C2|C2|DEC_OUT4[1]~2_combout\);

-- Location: LABCELL_X41_Y4_N48
\C2|C2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan0~0_combout\ = ( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ & ( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ & ( (((\C2|C1|C8|IO64_OUT\(6) & \C2|C1|C8|IO64_OUT\(5))) # (\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\)) # (\C2|C1|C8|IO64_OUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	datae => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	combout => \C2|C2|LessThan0~0_combout\);

-- Location: FF_X40_Y4_N59
\C2|C1|C8|IO64_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(12),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(12));

-- Location: LABCELL_X40_Y4_N45
\C2|C2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan0~1_combout\ = ( \C2|C1|C8|IO64_OUT\(10) & ( (!\C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ & !\C2|C1|C8|IO64_OUT\(12)) ) ) # ( !\C2|C1|C8|IO64_OUT\(10) & ( !\C2|C1|C8|IO64_OUT\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101000001010000011110000111100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(12),
	datae => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	combout => \C2|C2|LessThan0~1_combout\);

-- Location: MLABCELL_X37_Y4_N15
\C2|C2|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan0~2_combout\ = (!\C2|C2|LessThan0~0_combout\ & \C2|C2|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan0~0_combout\,
	datab => \C2|C2|ALT_INV_LessThan0~1_combout\,
	combout => \C2|C2|LessThan0~2_combout\);

-- Location: MLABCELL_X37_Y4_N48
\C2|C2|DEC_OUT4[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|DEC_OUT4[1]~6_combout\ = ( \C2|C2|DEC_OUT4[1]~2_combout\ & ( \C2|C2|LessThan0~2_combout\ & ( (!\C2|C1|C8|IO64_OUT\(15) & !\C2|C2|DEC_OUT4~5_combout\) ) ) ) # ( !\C2|C2|DEC_OUT4[1]~2_combout\ & ( \C2|C2|LessThan0~2_combout\ & ( 
-- (!\C2|C1|C8|IO64_OUT\(15) & (((!\C2|C2|DEC_OUT4~5_combout\)))) # (\C2|C1|C8|IO64_OUT\(15) & (!\C2|C1|C8|IO64_OUT\(13) & ((!\C2|C1|C8|IO64_OUT\(14))))) ) ) ) # ( \C2|C2|DEC_OUT4[1]~2_combout\ & ( !\C2|C2|LessThan0~2_combout\ & ( (!\C2|C1|C8|IO64_OUT\(15) & 
-- (((!\C2|C2|DEC_OUT4~5_combout\)))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C1|C8|IO64_OUT\(13) & ((\C2|C1|C8|IO64_OUT\(14))))) ) ) ) # ( !\C2|C2|DEC_OUT4[1]~2_combout\ & ( !\C2|C2|LessThan0~2_combout\ & ( (!\C2|C1|C8|IO64_OUT\(15) & 
-- (((!\C2|C2|DEC_OUT4~5_combout\)))) # (\C2|C1|C8|IO64_OUT\(15) & (!\C2|C1|C8|IO64_OUT\(13) $ (((\C2|C1|C8|IO64_OUT\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001011010001110000001101000111100010110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datac => \C2|C2|ALT_INV_DEC_OUT4~5_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	datae => \C2|C2|ALT_INV_DEC_OUT4[1]~2_combout\,
	dataf => \C2|C2|ALT_INV_LessThan0~2_combout\,
	combout => \C2|C2|DEC_OUT4[1]~6_combout\);

-- Location: MLABCELL_X37_Y4_N18
\C2|C2|DEC_OUT4[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|DEC_OUT4[2]~1_combout\ = ( \C2|C2|DEC_OUT4[1]~0_combout\ & ( (\C2|C1|C8|IO64_OUT\(15) & (((!\C2|C2|LessThan2~0_combout\) # (\C2|C1|C8|IO64_OUT\(14))) # (\C2|C1|C8|IO64_OUT\(13)))) ) ) # ( !\C2|C2|DEC_OUT4[1]~0_combout\ & ( (\C2|C1|C8|IO64_OUT\(15) 
-- & ((\C2|C1|C8|IO64_OUT\(14)) # (\C2|C1|C8|IO64_OUT\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100110001001100110011000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datac => \C2|C2|ALT_INV_LessThan2~0_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	dataf => \C2|C2|ALT_INV_DEC_OUT4[1]~0_combout\,
	combout => \C2|C2|DEC_OUT4[2]~1_combout\);

-- Location: LABCELL_X41_Y4_N57
\C2|C2|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan5~0_combout\ = ( !\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ & ( (!\C2|C1|C8|IO64_OUT\(6) & (!\C2|C1|C8|IO64_OUT\(7) & !\C2|C1|C8|IO64_OUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	combout => \C2|C2|LessThan5~0_combout\);

-- Location: LABCELL_X41_Y4_N33
\C2|C2|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan5~1_combout\ = ( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ & ( (\C2|C1|C8|IO64_OUT\(10) & \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	datad => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	combout => \C2|C2|LessThan5~1_combout\);

-- Location: LABCELL_X41_Y4_N36
\C2|C2|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan5~2_combout\ = ( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ & ( \C2|C2|LessThan5~1_combout\ & ( (!\C2|C1|C8|IO64_OUT\(13) & !\C2|C1|C8|IO64_OUT\(14)) ) ) ) # ( !\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ & ( \C2|C2|LessThan5~1_combout\ & ( 
-- (!\C2|C1|C8|IO64_OUT\(14) & ((!\C2|C1|C8|IO64_OUT\(13)) # ((!\C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ & \C2|C2|LessThan5~0_combout\)))) ) ) ) # ( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ & ( !\C2|C2|LessThan5~1_combout\ & ( (!\C2|C1|C8|IO64_OUT\(13) & 
-- !\C2|C1|C8|IO64_OUT\(14)) ) ) ) # ( !\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ & ( !\C2|C2|LessThan5~1_combout\ & ( (!\C2|C1|C8|IO64_OUT\(14) & ((!\C2|C1|C8|IO64_OUT\(13)) # (!\C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000100010001000100010001000110010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	datad => \C2|C2|ALT_INV_LessThan5~0_combout\,
	datae => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	dataf => \C2|C2|ALT_INV_LessThan5~1_combout\,
	combout => \C2|C2|LessThan5~2_combout\);

-- Location: LABCELL_X41_Y4_N21
\C2|C2|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan3~2_combout\ = ( \C2|C2|LessThan3~0_combout\ & ( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) ) # ( !\C2|C2|LessThan3~0_combout\ & ( (!\C2|C2|LessThan3~1_combout\ & \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_LessThan3~1_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	dataf => \C2|C2|ALT_INV_LessThan3~0_combout\,
	combout => \C2|C2|LessThan3~2_combout\);

-- Location: LABCELL_X41_Y4_N18
\C2|C2|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan1~0_combout\ = ( \C2|C1|C8|IO64_OUT\(5) & ( (\C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ & (\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ & \C2|C1|C8|IO64_OUT\(6))) ) ) # ( !\C2|C1|C8|IO64_OUT\(5) & ( (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ & 
-- (\C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ & (\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ & \C2|C1|C8|IO64_OUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	combout => \C2|C2|LessThan1~0_combout\);

-- Location: LABCELL_X41_Y4_N24
\C2|C2|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan1~1_combout\ = ( \C2|C1|C8|IO64_OUT\(7) & ( !\C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ & ( (!\C2|C1|C8|IO64_OUT\(10) & (!\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ & ((!\C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\) # (!\C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\)))) ) ) ) 
-- # ( !\C2|C1|C8|IO64_OUT\(7) & ( !\C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ & ( (!\C2|C1|C8|IO64_OUT\(10) & !\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	datae => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	combout => \C2|C2|LessThan1~1_combout\);

-- Location: MLABCELL_X37_Y4_N6
\C2|C2|DEC_OUT4[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|DEC_OUT4[0]~3_combout\ = ( \C2|C2|DEC_OUT4[1]~2_combout\ & ( \C2|C2|LessThan1~1_combout\ & ( (\C2|C1|C8|IO64_OUT\(14) & ((!\C2|C1|C8|IO64_OUT\(13) & ((\C2|C2|LessThan1~0_combout\))) # (\C2|C1|C8|IO64_OUT\(13) & (\C2|C2|LessThan0~2_combout\)))) ) ) 
-- ) # ( !\C2|C2|DEC_OUT4[1]~2_combout\ & ( \C2|C2|LessThan1~1_combout\ & ( (!\C2|C1|C8|IO64_OUT\(13) & (((!\C2|C1|C8|IO64_OUT\(14)) # (\C2|C2|LessThan1~0_combout\)))) # (\C2|C1|C8|IO64_OUT\(13) & (\C2|C2|LessThan0~2_combout\ & (\C2|C1|C8|IO64_OUT\(14)))) ) 
-- ) ) # ( \C2|C2|DEC_OUT4[1]~2_combout\ & ( !\C2|C2|LessThan1~1_combout\ & ( (\C2|C1|C8|IO64_OUT\(14) & ((!\C2|C1|C8|IO64_OUT\(13)) # (\C2|C2|LessThan0~2_combout\))) ) ) ) # ( !\C2|C2|DEC_OUT4[1]~2_combout\ & ( !\C2|C2|LessThan1~1_combout\ & ( 
-- (!\C2|C1|C8|IO64_OUT\(13)) # ((\C2|C2|LessThan0~2_combout\ & \C2|C1|C8|IO64_OUT\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011000010110000101110100001101010110000000100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	datab => \C2|C2|ALT_INV_LessThan0~2_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	datad => \C2|C2|ALT_INV_LessThan1~0_combout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4[1]~2_combout\,
	dataf => \C2|C2|ALT_INV_LessThan1~1_combout\,
	combout => \C2|C2|DEC_OUT4[0]~3_combout\);

-- Location: MLABCELL_X37_Y4_N42
\C2|C2|DEC_OUT4[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|DEC_OUT4[0]~4_combout\ = ( \C2|C2|DEC_OUT4[0]~3_combout\ & ( \C2|C1|C8|IO64_OUT\(15) ) ) # ( \C2|C2|DEC_OUT4[0]~3_combout\ & ( !\C2|C1|C8|IO64_OUT\(15) & ( (!\C2|C2|LessThan5~2_combout\ & (((\C2|C2|LessThan3~2_combout\ & 
-- \C2|C2|LessThan4~0_combout\)) # (\C2|C2|LessThan4~3_combout\))) # (\C2|C2|LessThan5~2_combout\ & (\C2|C2|LessThan3~2_combout\ & (\C2|C2|LessThan4~0_combout\))) ) ) ) # ( !\C2|C2|DEC_OUT4[0]~3_combout\ & ( !\C2|C1|C8|IO64_OUT\(15) & ( 
-- (!\C2|C2|LessThan5~2_combout\ & (((\C2|C2|LessThan3~2_combout\ & \C2|C2|LessThan4~0_combout\)) # (\C2|C2|LessThan4~3_combout\))) # (\C2|C2|LessThan5~2_combout\ & (\C2|C2|LessThan3~2_combout\ & (\C2|C2|LessThan4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan5~2_combout\,
	datab => \C2|C2|ALT_INV_LessThan3~2_combout\,
	datac => \C2|C2|ALT_INV_LessThan4~0_combout\,
	datad => \C2|C2|ALT_INV_LessThan4~3_combout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4[0]~3_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	combout => \C2|C2|DEC_OUT4[0]~4_combout\);

-- Location: MLABCELL_X45_Y4_N3
\C2|C6|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C6|Mux6~0_combout\ = ( !\C2|C2|DEC_OUT4[2]~1_combout\ & ( \C2|C2|DEC_OUT4[0]~4_combout\ & ( !\C2|C2|DEC_OUT4[1]~6_combout\ ) ) ) # ( \C2|C2|DEC_OUT4[2]~1_combout\ & ( !\C2|C2|DEC_OUT4[0]~4_combout\ & ( !\C2|C2|DEC_OUT4[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_DEC_OUT4[1]~6_combout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4[0]~4_combout\,
	combout => \C2|C6|Mux6~0_combout\);

-- Location: MLABCELL_X45_Y4_N36
\C2|C6|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C6|Mux5~0_combout\ = ( \C2|C2|DEC_OUT4[2]~1_combout\ & ( \C2|C2|DEC_OUT4[0]~4_combout\ & ( !\C2|C2|DEC_OUT4[1]~6_combout\ ) ) ) # ( \C2|C2|DEC_OUT4[2]~1_combout\ & ( !\C2|C2|DEC_OUT4[0]~4_combout\ & ( \C2|C2|DEC_OUT4[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_DEC_OUT4[1]~6_combout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4[0]~4_combout\,
	combout => \C2|C6|Mux5~0_combout\);

-- Location: MLABCELL_X45_Y4_N45
\C2|C6|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C6|Mux4~0_combout\ = ( !\C2|C2|DEC_OUT4[2]~1_combout\ & ( !\C2|C2|DEC_OUT4[0]~4_combout\ & ( \C2|C2|DEC_OUT4[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_DEC_OUT4[1]~6_combout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4[0]~4_combout\,
	combout => \C2|C6|Mux4~0_combout\);

-- Location: MLABCELL_X45_Y4_N51
\C2|C6|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C6|Mux3~0_combout\ = ( \C2|C2|DEC_OUT4[2]~1_combout\ & ( \C2|C2|DEC_OUT4[0]~4_combout\ & ( \C2|C2|DEC_OUT4[1]~6_combout\ ) ) ) # ( !\C2|C2|DEC_OUT4[2]~1_combout\ & ( \C2|C2|DEC_OUT4[0]~4_combout\ & ( !\C2|C2|DEC_OUT4[1]~6_combout\ ) ) ) # ( 
-- \C2|C2|DEC_OUT4[2]~1_combout\ & ( !\C2|C2|DEC_OUT4[0]~4_combout\ & ( !\C2|C2|DEC_OUT4[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_DEC_OUT4[1]~6_combout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4[0]~4_combout\,
	combout => \C2|C6|Mux3~0_combout\);

-- Location: MLABCELL_X45_Y4_N27
\C2|C6|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C6|Mux2~0_combout\ = ( \C2|C2|DEC_OUT4[0]~4_combout\ ) # ( !\C2|C2|DEC_OUT4[0]~4_combout\ & ( (!\C2|C2|DEC_OUT4[1]~6_combout\ & \C2|C2|DEC_OUT4[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_DEC_OUT4[1]~6_combout\,
	datac => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4[0]~4_combout\,
	combout => \C2|C6|Mux2~0_combout\);

-- Location: MLABCELL_X45_Y4_N33
\C2|C6|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C6|Mux1~0_combout\ = ( \C2|C2|DEC_OUT4[2]~1_combout\ & ( \C2|C2|DEC_OUT4[0]~4_combout\ & ( \C2|C2|DEC_OUT4[1]~6_combout\ ) ) ) # ( !\C2|C2|DEC_OUT4[2]~1_combout\ & ( \C2|C2|DEC_OUT4[0]~4_combout\ ) ) # ( !\C2|C2|DEC_OUT4[2]~1_combout\ & ( 
-- !\C2|C2|DEC_OUT4[0]~4_combout\ & ( \C2|C2|DEC_OUT4[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000011111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_DEC_OUT4[1]~6_combout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4[0]~4_combout\,
	combout => \C2|C6|Mux1~0_combout\);

-- Location: MLABCELL_X45_Y4_N6
\C2|C6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C6|Mux0~0_combout\ = ( \C2|C2|DEC_OUT4[2]~1_combout\ & ( \C2|C2|DEC_OUT4[0]~4_combout\ & ( \C2|C2|DEC_OUT4[1]~6_combout\ ) ) ) # ( !\C2|C2|DEC_OUT4[2]~1_combout\ & ( \C2|C2|DEC_OUT4[0]~4_combout\ & ( !\C2|C2|DEC_OUT4[1]~6_combout\ ) ) ) # ( 
-- !\C2|C2|DEC_OUT4[2]~1_combout\ & ( !\C2|C2|DEC_OUT4[0]~4_combout\ & ( !\C2|C2|DEC_OUT4[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_DEC_OUT4[1]~6_combout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4[0]~4_combout\,
	combout => \C2|C6|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y7_N30
\C2|C2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add0~9_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(5) ) + ( VCC ) + ( !VCC ))
-- \C2|C2|Add0~10\ = CARRY(( \C2|C1|C8|IO64_OUT\(5) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	cin => GND,
	sumout => \C2|C2|Add0~9_sumout\,
	cout => \C2|C2|Add0~10\);

-- Location: MLABCELL_X42_Y7_N33
\C2|C2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add0~17_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(6) ) + ( GND ) + ( \C2|C2|Add0~10\ ))
-- \C2|C2|Add0~18\ = CARRY(( \C2|C1|C8|IO64_OUT\(6) ) + ( GND ) + ( \C2|C2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	cin => \C2|C2|Add0~10\,
	sumout => \C2|C2|Add0~17_sumout\,
	cout => \C2|C2|Add0~18\);

-- Location: MLABCELL_X42_Y7_N36
\C2|C2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add0~13_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add0~18\ ))
-- \C2|C2|Add0~14\ = CARRY(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	cin => \C2|C2|Add0~18\,
	sumout => \C2|C2|Add0~13_sumout\,
	cout => \C2|C2|Add0~14\);

-- Location: MLABCELL_X42_Y7_N39
\C2|C2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add0~21_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add0~14\ ))
-- \C2|C2|Add0~22\ = CARRY(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	cin => \C2|C2|Add0~14\,
	sumout => \C2|C2|Add0~21_sumout\,
	cout => \C2|C2|Add0~22\);

-- Location: MLABCELL_X42_Y7_N42
\C2|C2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add0~25_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add0~22\ ))
-- \C2|C2|Add0~26\ = CARRY(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	cin => \C2|C2|Add0~22\,
	sumout => \C2|C2|Add0~25_sumout\,
	cout => \C2|C2|Add0~26\);

-- Location: MLABCELL_X42_Y7_N45
\C2|C2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add0~29_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(10) ) + ( VCC ) + ( \C2|C2|Add0~26\ ))
-- \C2|C2|Add0~30\ = CARRY(( \C2|C1|C8|IO64_OUT\(10) ) + ( VCC ) + ( \C2|C2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	cin => \C2|C2|Add0~26\,
	sumout => \C2|C2|Add0~29_sumout\,
	cout => \C2|C2|Add0~30\);

-- Location: MLABCELL_X42_Y7_N48
\C2|C2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add0~33_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add0~30\ ))
-- \C2|C2|Add0~34\ = CARRY(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	cin => \C2|C2|Add0~30\,
	sumout => \C2|C2|Add0~33_sumout\,
	cout => \C2|C2|Add0~34\);

-- Location: MLABCELL_X42_Y7_N51
\C2|C2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add0~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add0~34\ ))
-- \C2|C2|Add0~6\ = CARRY(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	cin => \C2|C2|Add0~34\,
	sumout => \C2|C2|Add0~5_sumout\,
	cout => \C2|C2|Add0~6\);

-- Location: MLABCELL_X37_Y4_N27
\C2|C2|REMINDER4[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[12]~2_combout\ = ( \C2|C1|C8|IO64_OUT\(15) & ( (!\C2|C1|C8|IO64_OUT\(13) & (((\C2|C2|DEC_OUT4[1]~2_combout\)) # (\C2|C1|C8|IO64_OUT\(14)))) # (\C2|C1|C8|IO64_OUT\(13) & ((!\C2|C1|C8|IO64_OUT\(14)) # ((\C2|C2|LessThan0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100111111011110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	datac => \C2|C2|ALT_INV_LessThan0~2_combout\,
	datad => \C2|C2|ALT_INV_DEC_OUT4[1]~2_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	combout => \C2|C2|REMINDER4[12]~2_combout\);

-- Location: FF_X39_Y5_N11
\C2|C1|C8|IO64_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(11),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(11));

-- Location: LABCELL_X39_Y5_N30
\C2|C2|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add4~9_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(5) ) + ( VCC ) + ( !VCC ))
-- \C2|C2|Add4~10\ = CARRY(( \C2|C1|C8|IO64_OUT\(5) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	cin => GND,
	sumout => \C2|C2|Add4~9_sumout\,
	cout => \C2|C2|Add4~10\);

-- Location: LABCELL_X39_Y5_N33
\C2|C2|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add4~17_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(6) ) + ( VCC ) + ( \C2|C2|Add4~10\ ))
-- \C2|C2|Add4~18\ = CARRY(( \C2|C1|C8|IO64_OUT\(6) ) + ( VCC ) + ( \C2|C2|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	cin => \C2|C2|Add4~10\,
	sumout => \C2|C2|Add4~17_sumout\,
	cout => \C2|C2|Add4~18\);

-- Location: LABCELL_X39_Y5_N36
\C2|C2|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add4~13_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add4~18\ ))
-- \C2|C2|Add4~14\ = CARRY(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	cin => \C2|C2|Add4~18\,
	sumout => \C2|C2|Add4~13_sumout\,
	cout => \C2|C2|Add4~14\);

-- Location: LABCELL_X39_Y5_N39
\C2|C2|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add4~21_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add4~14\ ))
-- \C2|C2|Add4~22\ = CARRY(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	cin => \C2|C2|Add4~14\,
	sumout => \C2|C2|Add4~21_sumout\,
	cout => \C2|C2|Add4~22\);

-- Location: LABCELL_X39_Y5_N42
\C2|C2|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add4~25_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add4~22\ ))
-- \C2|C2|Add4~26\ = CARRY(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	cin => \C2|C2|Add4~22\,
	sumout => \C2|C2|Add4~25_sumout\,
	cout => \C2|C2|Add4~26\);

-- Location: LABCELL_X39_Y5_N45
\C2|C2|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add4~29_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(10) ) + ( GND ) + ( \C2|C2|Add4~26\ ))
-- \C2|C2|Add4~30\ = CARRY(( \C2|C1|C8|IO64_OUT\(10) ) + ( GND ) + ( \C2|C2|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	cin => \C2|C2|Add4~26\,
	sumout => \C2|C2|Add4~29_sumout\,
	cout => \C2|C2|Add4~30\);

-- Location: LABCELL_X39_Y5_N48
\C2|C2|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add4~33_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(11) ) + ( GND ) + ( \C2|C2|Add4~30\ ))
-- \C2|C2|Add4~34\ = CARRY(( \C2|C1|C8|IO64_OUT\(11) ) + ( GND ) + ( \C2|C2|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(11),
	cin => \C2|C2|Add4~30\,
	sumout => \C2|C2|Add4~33_sumout\,
	cout => \C2|C2|Add4~34\);

-- Location: LABCELL_X39_Y5_N51
\C2|C2|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add4~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add4~34\ ))
-- \C2|C2|Add4~6\ = CARRY(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	cin => \C2|C2|Add4~34\,
	sumout => \C2|C2|Add4~5_sumout\,
	cout => \C2|C2|Add4~6\);

-- Location: LABCELL_X44_Y3_N30
\C2|C2|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~13_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \C2|C2|Add5~14\ = CARRY(( \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	cin => GND,
	sumout => \C2|C2|Add5~13_sumout\,
	cout => \C2|C2|Add5~14\);

-- Location: LABCELL_X44_Y3_N33
\C2|C2|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~9_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(5) ) + ( VCC ) + ( \C2|C2|Add5~14\ ))
-- \C2|C2|Add5~10\ = CARRY(( \C2|C1|C8|IO64_OUT\(5) ) + ( VCC ) + ( \C2|C2|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	cin => \C2|C2|Add5~14\,
	sumout => \C2|C2|Add5~9_sumout\,
	cout => \C2|C2|Add5~10\);

-- Location: LABCELL_X44_Y3_N36
\C2|C2|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~21_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(6) ) + ( VCC ) + ( \C2|C2|Add5~10\ ))
-- \C2|C2|Add5~22\ = CARRY(( \C2|C1|C8|IO64_OUT\(6) ) + ( VCC ) + ( \C2|C2|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	cin => \C2|C2|Add5~10\,
	sumout => \C2|C2|Add5~21_sumout\,
	cout => \C2|C2|Add5~22\);

-- Location: LABCELL_X44_Y3_N39
\C2|C2|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~17_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add5~22\ ))
-- \C2|C2|Add5~18\ = CARRY(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	cin => \C2|C2|Add5~22\,
	sumout => \C2|C2|Add5~17_sumout\,
	cout => \C2|C2|Add5~18\);

-- Location: LABCELL_X44_Y3_N42
\C2|C2|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~25_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add5~18\ ))
-- \C2|C2|Add5~26\ = CARRY(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	cin => \C2|C2|Add5~18\,
	sumout => \C2|C2|Add5~25_sumout\,
	cout => \C2|C2|Add5~26\);

-- Location: LABCELL_X44_Y3_N45
\C2|C2|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~29_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add5~26\ ))
-- \C2|C2|Add5~30\ = CARRY(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	cin => \C2|C2|Add5~26\,
	sumout => \C2|C2|Add5~29_sumout\,
	cout => \C2|C2|Add5~30\);

-- Location: LABCELL_X44_Y3_N48
\C2|C2|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~33_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(10) ) + ( GND ) + ( \C2|C2|Add5~30\ ))
-- \C2|C2|Add5~34\ = CARRY(( \C2|C1|C8|IO64_OUT\(10) ) + ( GND ) + ( \C2|C2|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	cin => \C2|C2|Add5~30\,
	sumout => \C2|C2|Add5~33_sumout\,
	cout => \C2|C2|Add5~34\);

-- Location: LABCELL_X44_Y3_N51
\C2|C2|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~37_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add5~34\ ))
-- \C2|C2|Add5~38\ = CARRY(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	cin => \C2|C2|Add5~34\,
	sumout => \C2|C2|Add5~37_sumout\,
	cout => \C2|C2|Add5~38\);

-- Location: LABCELL_X44_Y3_N54
\C2|C2|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add5~38\ ))
-- \C2|C2|Add5~6\ = CARRY(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	cin => \C2|C2|Add5~38\,
	sumout => \C2|C2|Add5~5_sumout\,
	cout => \C2|C2|Add5~6\);

-- Location: FF_X40_Y4_N44
\C2|C1|C8|IO64_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(9),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(9));

-- Location: FF_X40_Y4_N38
\C2|C1|C8|IO64_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C8|IO64_OUT[8]~feeder_combout\,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(8));

-- Location: FF_X40_Y4_N41
\C2|C1|C8|IO64_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	d => \C2|C1|C8|IO64_OUT[4]~feeder_combout\,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(4));

-- Location: LABCELL_X40_Y4_N0
\C2|C2|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~13_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(4) ) + ( VCC ) + ( !VCC ))
-- \C2|C2|Add3~14\ = CARRY(( \C2|C1|C8|IO64_OUT\(4) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(4),
	cin => GND,
	sumout => \C2|C2|Add3~13_sumout\,
	cout => \C2|C2|Add3~14\);

-- Location: LABCELL_X40_Y4_N3
\C2|C2|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~9_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(5) ) + ( GND ) + ( \C2|C2|Add3~14\ ))
-- \C2|C2|Add3~10\ = CARRY(( \C2|C1|C8|IO64_OUT\(5) ) + ( GND ) + ( \C2|C2|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	cin => \C2|C2|Add3~14\,
	sumout => \C2|C2|Add3~9_sumout\,
	cout => \C2|C2|Add3~10\);

-- Location: LABCELL_X40_Y4_N6
\C2|C2|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~21_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(6) ) + ( VCC ) + ( \C2|C2|Add3~10\ ))
-- \C2|C2|Add3~22\ = CARRY(( \C2|C1|C8|IO64_OUT\(6) ) + ( VCC ) + ( \C2|C2|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	cin => \C2|C2|Add3~10\,
	sumout => \C2|C2|Add3~21_sumout\,
	cout => \C2|C2|Add3~22\);

-- Location: LABCELL_X40_Y4_N9
\C2|C2|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~17_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add3~22\ ))
-- \C2|C2|Add3~18\ = CARRY(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	cin => \C2|C2|Add3~22\,
	sumout => \C2|C2|Add3~17_sumout\,
	cout => \C2|C2|Add3~18\);

-- Location: LABCELL_X40_Y4_N12
\C2|C2|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~25_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(8) ) + ( GND ) + ( \C2|C2|Add3~18\ ))
-- \C2|C2|Add3~26\ = CARRY(( \C2|C1|C8|IO64_OUT\(8) ) + ( GND ) + ( \C2|C2|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(8),
	cin => \C2|C2|Add3~18\,
	sumout => \C2|C2|Add3~25_sumout\,
	cout => \C2|C2|Add3~26\);

-- Location: LABCELL_X40_Y4_N15
\C2|C2|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~29_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(9) ) + ( VCC ) + ( \C2|C2|Add3~26\ ))
-- \C2|C2|Add3~30\ = CARRY(( \C2|C1|C8|IO64_OUT\(9) ) + ( VCC ) + ( \C2|C2|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(9),
	cin => \C2|C2|Add3~26\,
	sumout => \C2|C2|Add3~29_sumout\,
	cout => \C2|C2|Add3~30\);

-- Location: LABCELL_X40_Y4_N18
\C2|C2|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~33_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(10) ) + ( GND ) + ( \C2|C2|Add3~30\ ))
-- \C2|C2|Add3~34\ = CARRY(( \C2|C1|C8|IO64_OUT\(10) ) + ( GND ) + ( \C2|C2|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	cin => \C2|C2|Add3~30\,
	sumout => \C2|C2|Add3~33_sumout\,
	cout => \C2|C2|Add3~34\);

-- Location: LABCELL_X40_Y4_N21
\C2|C2|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~37_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add3~34\ ))
-- \C2|C2|Add3~38\ = CARRY(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	cin => \C2|C2|Add3~34\,
	sumout => \C2|C2|Add3~37_sumout\,
	cout => \C2|C2|Add3~38\);

-- Location: LABCELL_X40_Y4_N24
\C2|C2|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(12) ) + ( GND ) + ( \C2|C2|Add3~38\ ))
-- \C2|C2|Add3~6\ = CARRY(( \C2|C1|C8|IO64_OUT\(12) ) + ( GND ) + ( \C2|C2|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(12),
	cin => \C2|C2|Add3~38\,
	sumout => \C2|C2|Add3~5_sumout\,
	cout => \C2|C2|Add3~6\);

-- Location: LABCELL_X41_Y4_N30
\C2|C2|LessThan5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan5~3_combout\ = ( \C2|C2|LessThan5~1_combout\ & ( (!\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ & (!\C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ & \C2|C2|LessThan5~0_combout\)) ) ) # ( !\C2|C2|LessThan5~1_combout\ & ( (!\C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ & 
-- !\C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	datad => \C2|C2|ALT_INV_LessThan5~0_combout\,
	dataf => \C2|C2|ALT_INV_LessThan5~1_combout\,
	combout => \C2|C2|LessThan5~3_combout\);

-- Location: MLABCELL_X37_Y4_N21
\C2|C2|REMINDER4[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[12]~0_combout\ = ( \C2|C2|LessThan3~2_combout\ & ( (!\C2|C1|C8|IO64_OUT\(15) & ((!\C2|C1|C8|IO64_OUT\(13) & (\C2|C1|C8|IO64_OUT\(14))) # (\C2|C1|C8|IO64_OUT\(13) & (!\C2|C1|C8|IO64_OUT\(14) & !\C2|C2|LessThan5~3_combout\)))) ) ) # ( 
-- !\C2|C2|LessThan3~2_combout\ & ( (!\C2|C1|C8|IO64_OUT\(15) & (((\C2|C1|C8|IO64_OUT\(13) & !\C2|C2|LessThan5~3_combout\)) # (\C2|C1|C8|IO64_OUT\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000001100010011000000110001001000000010000100100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	datad => \C2|C2|ALT_INV_LessThan5~3_combout\,
	dataf => \C2|C2|ALT_INV_LessThan3~2_combout\,
	combout => \C2|C2|REMINDER4[12]~0_combout\);

-- Location: LABCELL_X39_Y5_N3
\C2|C2|REMINDER4[12]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[12]~4_combout\ = ( \C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C2|Add5~5_sumout\ ) ) ) # ( !\C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C2|Add4~5_sumout\ ) ) ) # ( 
-- \C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) ) ) # ( !\C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C2|Add3~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add4~5_sumout\,
	datab => \C2|C2|ALT_INV_Add5~5_sumout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	datad => \C2|C2|ALT_INV_Add3~5_sumout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4~5_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~0_combout\,
	combout => \C2|C2|REMINDER4[12]~4_combout\);

-- Location: LABCELL_X40_Y6_N30
\C2|C2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~13_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \C2|C2|Add1~14\ = CARRY(( \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	cin => GND,
	sumout => \C2|C2|Add1~13_sumout\,
	cout => \C2|C2|Add1~14\);

-- Location: LABCELL_X40_Y6_N33
\C2|C2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~9_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(5) ) + ( VCC ) + ( \C2|C2|Add1~14\ ))
-- \C2|C2|Add1~10\ = CARRY(( \C2|C1|C8|IO64_OUT\(5) ) + ( VCC ) + ( \C2|C2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	cin => \C2|C2|Add1~14\,
	sumout => \C2|C2|Add1~9_sumout\,
	cout => \C2|C2|Add1~10\);

-- Location: LABCELL_X40_Y6_N36
\C2|C2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~21_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(6) ) + ( GND ) + ( \C2|C2|Add1~10\ ))
-- \C2|C2|Add1~22\ = CARRY(( \C2|C1|C8|IO64_OUT\(6) ) + ( GND ) + ( \C2|C2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	cin => \C2|C2|Add1~10\,
	sumout => \C2|C2|Add1~21_sumout\,
	cout => \C2|C2|Add1~22\);

-- Location: LABCELL_X40_Y6_N39
\C2|C2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~17_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add1~22\ ))
-- \C2|C2|Add1~18\ = CARRY(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	cin => \C2|C2|Add1~22\,
	sumout => \C2|C2|Add1~17_sumout\,
	cout => \C2|C2|Add1~18\);

-- Location: LABCELL_X40_Y6_N42
\C2|C2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~25_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add1~18\ ))
-- \C2|C2|Add1~26\ = CARRY(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	cin => \C2|C2|Add1~18\,
	sumout => \C2|C2|Add1~25_sumout\,
	cout => \C2|C2|Add1~26\);

-- Location: LABCELL_X40_Y6_N45
\C2|C2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~29_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add1~26\ ))
-- \C2|C2|Add1~30\ = CARRY(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	cin => \C2|C2|Add1~26\,
	sumout => \C2|C2|Add1~29_sumout\,
	cout => \C2|C2|Add1~30\);

-- Location: LABCELL_X40_Y6_N48
\C2|C2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~33_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(10) ) + ( VCC ) + ( \C2|C2|Add1~30\ ))
-- \C2|C2|Add1~34\ = CARRY(( \C2|C1|C8|IO64_OUT\(10) ) + ( VCC ) + ( \C2|C2|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	cin => \C2|C2|Add1~30\,
	sumout => \C2|C2|Add1~33_sumout\,
	cout => \C2|C2|Add1~34\);

-- Location: LABCELL_X40_Y6_N51
\C2|C2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~37_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add1~34\ ))
-- \C2|C2|Add1~38\ = CARRY(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	cin => \C2|C2|Add1~34\,
	sumout => \C2|C2|Add1~37_sumout\,
	cout => \C2|C2|Add1~38\);

-- Location: LABCELL_X40_Y6_N54
\C2|C2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add1~38\ ))
-- \C2|C2|Add1~6\ = CARRY(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	cin => \C2|C2|Add1~38\,
	sumout => \C2|C2|Add1~5_sumout\,
	cout => \C2|C2|Add1~6\);

-- Location: MLABCELL_X37_Y4_N36
\C2|C2|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan1~2_combout\ = ( \C2|C1|C8|IO64_OUT\(15) & ( (\C2|C1|C8|IO64_OUT\(14) & (((!\C2|C2|LessThan1~1_combout\) # (\C2|C2|LessThan1~0_combout\)) # (\C2|C1|C8|IO64_OUT\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	datab => \C2|C2|ALT_INV_LessThan1~0_combout\,
	datac => \C2|C2|ALT_INV_LessThan1~1_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(14),
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	combout => \C2|C2|LessThan1~2_combout\);

-- Location: LABCELL_X43_Y7_N0
\C2|C2|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add2~13_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(6) ) + ( VCC ) + ( !VCC ))
-- \C2|C2|Add2~14\ = CARRY(( \C2|C1|C8|IO64_OUT\(6) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	cin => GND,
	sumout => \C2|C2|Add2~13_sumout\,
	cout => \C2|C2|Add2~14\);

-- Location: LABCELL_X43_Y7_N3
\C2|C2|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add2~9_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add2~14\ ))
-- \C2|C2|Add2~10\ = CARRY(( \C2|C1|C8|IO64_OUT\(7) ) + ( VCC ) + ( \C2|C2|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	cin => \C2|C2|Add2~14\,
	sumout => \C2|C2|Add2~9_sumout\,
	cout => \C2|C2|Add2~10\);

-- Location: LABCELL_X43_Y7_N6
\C2|C2|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add2~17_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add2~10\ ))
-- \C2|C2|Add2~18\ = CARRY(( \C2|C1|C8|IO64_OUT[8]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[8]~DUPLICATE_q\,
	cin => \C2|C2|Add2~10\,
	sumout => \C2|C2|Add2~17_sumout\,
	cout => \C2|C2|Add2~18\);

-- Location: LABCELL_X43_Y7_N9
\C2|C2|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add2~21_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add2~18\ ))
-- \C2|C2|Add2~22\ = CARRY(( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) + ( VCC ) + ( \C2|C2|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	cin => \C2|C2|Add2~18\,
	sumout => \C2|C2|Add2~21_sumout\,
	cout => \C2|C2|Add2~22\);

-- Location: LABCELL_X43_Y7_N12
\C2|C2|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add2~25_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(10) ) + ( GND ) + ( \C2|C2|Add2~22\ ))
-- \C2|C2|Add2~26\ = CARRY(( \C2|C1|C8|IO64_OUT\(10) ) + ( GND ) + ( \C2|C2|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	cin => \C2|C2|Add2~22\,
	sumout => \C2|C2|Add2~25_sumout\,
	cout => \C2|C2|Add2~26\);

-- Location: LABCELL_X43_Y7_N15
\C2|C2|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add2~29_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add2~26\ ))
-- \C2|C2|Add2~30\ = CARRY(( \C2|C1|C8|IO64_OUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[11]~DUPLICATE_q\,
	cin => \C2|C2|Add2~26\,
	sumout => \C2|C2|Add2~29_sumout\,
	cout => \C2|C2|Add2~30\);

-- Location: LABCELL_X43_Y7_N18
\C2|C2|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add2~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add2~30\ ))
-- \C2|C2|Add2~6\ = CARRY(( \C2|C1|C8|IO64_OUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \C2|C2|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[12]~DUPLICATE_q\,
	cin => \C2|C2|Add2~30\,
	sumout => \C2|C2|Add2~5_sumout\,
	cout => \C2|C2|Add2~6\);

-- Location: LABCELL_X43_Y7_N54
\C2|C2|REMINDER4[12]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[12]~5_combout\ = ( \C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add2~5_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\ & (\C2|C2|Add0~5_sumout\)) # (\C2|C2|REMINDER4[12]~2_combout\ & ((\C2|C2|Add1~5_sumout\))) ) ) ) # ( 
-- !\C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add2~5_sumout\ & ( (\C2|C2|REMINDER4[12]~4_combout\) # (\C2|C2|REMINDER4[12]~2_combout\) ) ) ) # ( \C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add2~5_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\ & 
-- (\C2|C2|Add0~5_sumout\)) # (\C2|C2|REMINDER4[12]~2_combout\ & ((\C2|C2|Add1~5_sumout\))) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add2~5_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\ & \C2|C2|REMINDER4[12]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add0~5_sumout\,
	datab => \C2|C2|ALT_INV_REMINDER4[12]~2_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[12]~4_combout\,
	datad => \C2|C2|ALT_INV_Add1~5_sumout\,
	datae => \C2|C2|ALT_INV_LessThan1~2_combout\,
	dataf => \C2|C2|ALT_INV_Add2~5_sumout\,
	combout => \C2|C2|REMINDER4[12]~5_combout\);

-- Location: LABCELL_X39_Y5_N6
\C2|C2|REMINDER4[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[6]~11_combout\ = ( \C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|Add4~17_sumout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & ((\C2|C1|C8|IO64_OUT\(6)))) # (\C2|C2|REMINDER4[12]~0_combout\ & (\C2|C2|Add5~21_sumout\)) ) ) ) # ( 
-- !\C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|Add4~17_sumout\ & ( (\C2|C2|REMINDER4[12]~0_combout\) # (\C2|C2|Add3~21_sumout\) ) ) ) # ( \C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|Add4~17_sumout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & ((\C2|C1|C8|IO64_OUT\(6)))) # 
-- (\C2|C2|REMINDER4[12]~0_combout\ & (\C2|C2|Add5~21_sumout\)) ) ) ) # ( !\C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|Add4~17_sumout\ & ( (\C2|C2|Add3~21_sumout\ & !\C2|C2|REMINDER4[12]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000011110101010100110011111111110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add5~21_sumout\,
	datab => \C2|C2|ALT_INV_Add3~21_sumout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(6),
	datad => \C2|C2|ALT_INV_REMINDER4[12]~0_combout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4~5_combout\,
	dataf => \C2|C2|ALT_INV_Add4~17_sumout\,
	combout => \C2|C2|REMINDER4[6]~11_combout\);

-- Location: LABCELL_X43_Y7_N36
\C2|C2|REMINDER4[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[6]~12_combout\ = ( \C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add1~21_sumout\ & ( (\C2|C2|REMINDER4[12]~2_combout\) # (\C2|C2|Add0~17_sumout\) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add1~21_sumout\ & ( 
-- (!\C2|C2|REMINDER4[12]~2_combout\ & ((\C2|C2|REMINDER4[6]~11_combout\))) # (\C2|C2|REMINDER4[12]~2_combout\ & (\C2|C2|Add2~13_sumout\)) ) ) ) # ( \C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add1~21_sumout\ & ( (\C2|C2|Add0~17_sumout\ & 
-- !\C2|C2|REMINDER4[12]~2_combout\) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add1~21_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\ & ((\C2|C2|REMINDER4[6]~11_combout\))) # (\C2|C2|REMINDER4[12]~2_combout\ & (\C2|C2|Add2~13_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add2~13_sumout\,
	datab => \C2|C2|ALT_INV_Add0~17_sumout\,
	datac => \C2|C2|ALT_INV_REMINDER4[6]~11_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[12]~2_combout\,
	datae => \C2|C2|ALT_INV_LessThan1~2_combout\,
	dataf => \C2|C2|ALT_INV_Add1~21_sumout\,
	combout => \C2|C2|REMINDER4[6]~12_combout\);

-- Location: LABCELL_X40_Y4_N54
\C2|C2|REMINDER4[8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[8]~13_combout\ = ( \C2|C2|Add4~21_sumout\ & ( \C2|C2|DEC_OUT4~5_combout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & ((\C2|C1|C8|IO64_OUT\(8)))) # (\C2|C2|REMINDER4[12]~0_combout\ & (\C2|C2|Add5~25_sumout\)) ) ) ) # ( !\C2|C2|Add4~21_sumout\ 
-- & ( \C2|C2|DEC_OUT4~5_combout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & ((\C2|C1|C8|IO64_OUT\(8)))) # (\C2|C2|REMINDER4[12]~0_combout\ & (\C2|C2|Add5~25_sumout\)) ) ) ) # ( \C2|C2|Add4~21_sumout\ & ( !\C2|C2|DEC_OUT4~5_combout\ & ( (\C2|C2|Add3~25_sumout\) 
-- # (\C2|C2|REMINDER4[12]~0_combout\) ) ) ) # ( !\C2|C2|Add4~21_sumout\ & ( !\C2|C2|DEC_OUT4~5_combout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & \C2|C2|Add3~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add5~25_sumout\,
	datab => \C2|C2|ALT_INV_REMINDER4[12]~0_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(8),
	datad => \C2|C2|ALT_INV_Add3~25_sumout\,
	datae => \C2|C2|ALT_INV_Add4~21_sumout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4~5_combout\,
	combout => \C2|C2|REMINDER4[8]~13_combout\);

-- Location: LABCELL_X43_Y7_N42
\C2|C2|REMINDER4[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[8]~14_combout\ = ( \C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add1~25_sumout\ & ( (\C2|C2|REMINDER4[12]~2_combout\) # (\C2|C2|Add0~21_sumout\) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add1~25_sumout\ & ( 
-- (!\C2|C2|REMINDER4[12]~2_combout\ & (\C2|C2|REMINDER4[8]~13_combout\)) # (\C2|C2|REMINDER4[12]~2_combout\ & ((\C2|C2|Add2~17_sumout\))) ) ) ) # ( \C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add1~25_sumout\ & ( (\C2|C2|Add0~21_sumout\ & 
-- !\C2|C2|REMINDER4[12]~2_combout\) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add1~25_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\ & (\C2|C2|REMINDER4[8]~13_combout\)) # (\C2|C2|REMINDER4[12]~2_combout\ & ((\C2|C2|Add2~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add0~21_sumout\,
	datab => \C2|C2|ALT_INV_REMINDER4[12]~2_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[8]~13_combout\,
	datad => \C2|C2|ALT_INV_Add2~17_sumout\,
	datae => \C2|C2|ALT_INV_LessThan1~2_combout\,
	dataf => \C2|C2|ALT_INV_Add1~25_sumout\,
	combout => \C2|C2|REMINDER4[8]~14_combout\);

-- Location: LABCELL_X39_Y5_N18
\C2|C2|REMINDER4[9]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[9]~15_combout\ = ( \C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C2|Add5~29_sumout\ ) ) ) # ( !\C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C2|Add4~25_sumout\ ) ) ) # ( 
-- \C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C1|C8|IO64_OUT[9]~DUPLICATE_q\ ) ) ) # ( !\C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C2|Add3~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add5~29_sumout\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT[9]~DUPLICATE_q\,
	datac => \C2|C2|ALT_INV_Add3~29_sumout\,
	datad => \C2|C2|ALT_INV_Add4~25_sumout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4~5_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~0_combout\,
	combout => \C2|C2|REMINDER4[9]~15_combout\);

-- Location: LABCELL_X43_Y7_N48
\C2|C2|REMINDER4[9]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[9]~16_combout\ = ( \C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add2~21_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\ & ((\C2|C2|Add0~25_sumout\))) # (\C2|C2|REMINDER4[12]~2_combout\ & (\C2|C2|Add1~29_sumout\)) ) ) ) # ( 
-- !\C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add2~21_sumout\ & ( (\C2|C2|REMINDER4[9]~15_combout\) # (\C2|C2|REMINDER4[12]~2_combout\) ) ) ) # ( \C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add2~21_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\ & 
-- ((\C2|C2|Add0~25_sumout\))) # (\C2|C2|REMINDER4[12]~2_combout\ & (\C2|C2|Add1~29_sumout\)) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add2~21_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\ & \C2|C2|REMINDER4[9]~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add1~29_sumout\,
	datab => \C2|C2|ALT_INV_REMINDER4[12]~2_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[9]~15_combout\,
	datad => \C2|C2|ALT_INV_Add0~25_sumout\,
	datae => \C2|C2|ALT_INV_LessThan1~2_combout\,
	dataf => \C2|C2|ALT_INV_Add2~21_sumout\,
	combout => \C2|C2|REMINDER4[9]~16_combout\);

-- Location: LABCELL_X39_Y4_N39
\C2|C2|REM_INT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REM_INT~2_combout\ = ( \C2|C1|C8|IO64_OUT\(5) & ( \C2|C2|REM_INT~0_combout\ & ( (!\C2|C2|LessThan1~2_combout\ & (\C2|C2|DEC_OUT4[2]~1_combout\)) # (\C2|C2|LessThan1~2_combout\ & ((\C2|C2|Add1~9_sumout\))) ) ) ) # ( !\C2|C1|C8|IO64_OUT\(5) & ( 
-- \C2|C2|REM_INT~0_combout\ & ( (\C2|C2|LessThan1~2_combout\ & \C2|C2|Add1~9_sumout\) ) ) ) # ( \C2|C1|C8|IO64_OUT\(5) & ( !\C2|C2|REM_INT~0_combout\ & ( (!\C2|C2|LessThan1~2_combout\ & (((\C2|C2|Add3~9_sumout\)) # (\C2|C2|DEC_OUT4[2]~1_combout\))) # 
-- (\C2|C2|LessThan1~2_combout\ & (((\C2|C2|Add1~9_sumout\)))) ) ) ) # ( !\C2|C1|C8|IO64_OUT\(5) & ( !\C2|C2|REM_INT~0_combout\ & ( (!\C2|C2|LessThan1~2_combout\ & (!\C2|C2|DEC_OUT4[2]~1_combout\ & (\C2|C2|Add3~9_sumout\))) # (\C2|C2|LessThan1~2_combout\ & 
-- (((\C2|C2|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111011100000111111100000000000011110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	datab => \C2|C2|ALT_INV_Add3~9_sumout\,
	datac => \C2|C2|ALT_INV_LessThan1~2_combout\,
	datad => \C2|C2|ALT_INV_Add1~9_sumout\,
	datae => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	dataf => \C2|C2|ALT_INV_REM_INT~0_combout\,
	combout => \C2|C2|REM_INT~2_combout\);

-- Location: MLABCELL_X37_Y4_N12
\C2|C2|REMINDER4[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[4]~6_combout\ = (\C2|C2|LessThan4~0_combout\ & (\C2|C1|C8|IO64_OUT\(15) & ((!\C2|C2|LessThan0~1_combout\) # (\C2|C2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110100000000000011010000000000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan0~0_combout\,
	datab => \C2|C2|ALT_INV_LessThan0~1_combout\,
	datac => \C2|C2|ALT_INV_LessThan4~0_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	combout => \C2|C2|REMINDER4[4]~6_combout\);

-- Location: LABCELL_X44_Y3_N9
\C2|C2|REM_INT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REM_INT~1_combout\ = ( \C2|C2|LessThan5~2_combout\ & ( \C2|C2|Add5~9_sumout\ & ( (!\C2|C2|LessThan4~3_combout\ & (\C2|C2|Add4~9_sumout\)) # (\C2|C2|LessThan4~3_combout\ & ((\C2|C1|C8|IO64_OUT\(5)))) ) ) ) # ( !\C2|C2|LessThan5~2_combout\ & ( 
-- \C2|C2|Add5~9_sumout\ & ( (\C2|C2|LessThan4~3_combout\) # (\C2|C2|Add4~9_sumout\) ) ) ) # ( \C2|C2|LessThan5~2_combout\ & ( !\C2|C2|Add5~9_sumout\ & ( (!\C2|C2|LessThan4~3_combout\ & (\C2|C2|Add4~9_sumout\)) # (\C2|C2|LessThan4~3_combout\ & 
-- ((\C2|C1|C8|IO64_OUT\(5)))) ) ) ) # ( !\C2|C2|LessThan5~2_combout\ & ( !\C2|C2|Add5~9_sumout\ & ( (\C2|C2|Add4~9_sumout\ & !\C2|C2|LessThan4~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101111101011111010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add4~9_sumout\,
	datac => \C2|C2|ALT_INV_LessThan4~3_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(5),
	datae => \C2|C2|ALT_INV_LessThan5~2_combout\,
	dataf => \C2|C2|ALT_INV_Add5~9_sumout\,
	combout => \C2|C2|REM_INT~1_combout\);

-- Location: LABCELL_X39_Y3_N39
\C2|C2|REMINDER4[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[5]~7_combout\ = ( \C2|C2|REMINDER4[4]~6_combout\ & ( \C2|C2|REM_INT~1_combout\ & ( \C2|C2|Add0~9_sumout\ ) ) ) # ( !\C2|C2|REMINDER4[4]~6_combout\ & ( \C2|C2|REM_INT~1_combout\ & ( (\C2|C2|REM_INT~2_combout\) # (\C2|C2|REM_INT~0_combout\) 
-- ) ) ) # ( \C2|C2|REMINDER4[4]~6_combout\ & ( !\C2|C2|REM_INT~1_combout\ & ( \C2|C2|Add0~9_sumout\ ) ) ) # ( !\C2|C2|REMINDER4[4]~6_combout\ & ( !\C2|C2|REM_INT~1_combout\ & ( \C2|C2|REM_INT~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101011111010111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REM_INT~0_combout\,
	datac => \C2|C2|ALT_INV_REM_INT~2_combout\,
	datad => \C2|C2|ALT_INV_Add0~9_sumout\,
	datae => \C2|C2|ALT_INV_REMINDER4[4]~6_combout\,
	dataf => \C2|C2|ALT_INV_REM_INT~1_combout\,
	combout => \C2|C2|REMINDER4[5]~7_combout\);

-- Location: LABCELL_X40_Y4_N51
\C2|C2|REMINDER4[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[7]~9_combout\ = ( \C2|C2|Add4~13_sumout\ & ( \C2|C2|REMINDER4[12]~0_combout\ & ( (!\C2|C2|DEC_OUT4~5_combout\) # (\C2|C2|Add5~17_sumout\) ) ) ) # ( !\C2|C2|Add4~13_sumout\ & ( \C2|C2|REMINDER4[12]~0_combout\ & ( (\C2|C2|Add5~17_sumout\ & 
-- \C2|C2|DEC_OUT4~5_combout\) ) ) ) # ( \C2|C2|Add4~13_sumout\ & ( !\C2|C2|REMINDER4[12]~0_combout\ & ( (!\C2|C2|DEC_OUT4~5_combout\ & (\C2|C2|Add3~17_sumout\)) # (\C2|C2|DEC_OUT4~5_combout\ & ((\C2|C1|C8|IO64_OUT\(7)))) ) ) ) # ( !\C2|C2|Add4~13_sumout\ & 
-- ( !\C2|C2|REMINDER4[12]~0_combout\ & ( (!\C2|C2|DEC_OUT4~5_combout\ & (\C2|C2|Add3~17_sumout\)) # (\C2|C2|DEC_OUT4~5_combout\ & ((\C2|C1|C8|IO64_OUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add5~17_sumout\,
	datab => \C2|C2|ALT_INV_Add3~17_sumout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(7),
	datad => \C2|C2|ALT_INV_DEC_OUT4~5_combout\,
	datae => \C2|C2|ALT_INV_Add4~13_sumout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~0_combout\,
	combout => \C2|C2|REMINDER4[7]~9_combout\);

-- Location: LABCELL_X43_Y7_N33
\C2|C2|REMINDER4[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[7]~10_combout\ = ( \C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add0~13_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\) # (\C2|C2|Add1~17_sumout\) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( \C2|C2|Add0~13_sumout\ & ( 
-- (!\C2|C2|REMINDER4[12]~2_combout\ & (\C2|C2|REMINDER4[7]~9_combout\)) # (\C2|C2|REMINDER4[12]~2_combout\ & ((\C2|C2|Add2~9_sumout\))) ) ) ) # ( \C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add0~13_sumout\ & ( (\C2|C2|Add1~17_sumout\ & 
-- \C2|C2|REMINDER4[12]~2_combout\) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( !\C2|C2|Add0~13_sumout\ & ( (!\C2|C2|REMINDER4[12]~2_combout\ & (\C2|C2|REMINDER4[7]~9_combout\)) # (\C2|C2|REMINDER4[12]~2_combout\ & ((\C2|C2|Add2~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add1~17_sumout\,
	datab => \C2|C2|ALT_INV_REMINDER4[12]~2_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[7]~9_combout\,
	datad => \C2|C2|ALT_INV_Add2~9_sumout\,
	datae => \C2|C2|ALT_INV_LessThan1~2_combout\,
	dataf => \C2|C2|ALT_INV_Add0~13_sumout\,
	combout => \C2|C2|REMINDER4[7]~10_combout\);

-- Location: LABCELL_X41_Y5_N30
\C2|C3|DEC_OUT3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3~3_combout\ = ( \C2|C2|REMINDER4[7]~10_combout\ & ( (\C2|C2|REMINDER4[8]~14_combout\ & (\C2|C2|REMINDER4[9]~16_combout\ & ((\C2|C2|REMINDER4[5]~7_combout\) # (\C2|C2|REMINDER4[6]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	combout => \C2|C3|DEC_OUT3~3_combout\);

-- Location: LABCELL_X40_Y4_N30
\C2|C2|REMINDER4[10]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[10]~17_combout\ = ( \C2|C1|C8|IO64_OUT\(10) & ( \C2|C2|DEC_OUT4~5_combout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\) # (\C2|C2|Add5~33_sumout\) ) ) ) # ( !\C2|C1|C8|IO64_OUT\(10) & ( \C2|C2|DEC_OUT4~5_combout\ & ( 
-- (\C2|C2|REMINDER4[12]~0_combout\ & \C2|C2|Add5~33_sumout\) ) ) ) # ( \C2|C1|C8|IO64_OUT\(10) & ( !\C2|C2|DEC_OUT4~5_combout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & (\C2|C2|Add3~33_sumout\)) # (\C2|C2|REMINDER4[12]~0_combout\ & ((\C2|C2|Add4~29_sumout\))) 
-- ) ) ) # ( !\C2|C1|C8|IO64_OUT\(10) & ( !\C2|C2|DEC_OUT4~5_combout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & (\C2|C2|Add3~33_sumout\)) # (\C2|C2|REMINDER4[12]~0_combout\ & ((\C2|C2|Add4~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add3~33_sumout\,
	datab => \C2|C2|ALT_INV_REMINDER4[12]~0_combout\,
	datac => \C2|C2|ALT_INV_Add4~29_sumout\,
	datad => \C2|C2|ALT_INV_Add5~33_sumout\,
	datae => \C2|C1|C8|ALT_INV_IO64_OUT\(10),
	dataf => \C2|C2|ALT_INV_DEC_OUT4~5_combout\,
	combout => \C2|C2|REMINDER4[10]~17_combout\);

-- Location: LABCELL_X40_Y6_N9
\C2|C2|REMINDER4[10]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[10]~18_combout\ = ( \C2|C2|REMINDER4[12]~2_combout\ & ( \C2|C2|Add2~25_sumout\ & ( (!\C2|C2|LessThan1~2_combout\) # (\C2|C2|Add1~33_sumout\) ) ) ) # ( !\C2|C2|REMINDER4[12]~2_combout\ & ( \C2|C2|Add2~25_sumout\ & ( 
-- (!\C2|C2|LessThan1~2_combout\ & (\C2|C2|REMINDER4[10]~17_combout\)) # (\C2|C2|LessThan1~2_combout\ & ((\C2|C2|Add0~29_sumout\))) ) ) ) # ( \C2|C2|REMINDER4[12]~2_combout\ & ( !\C2|C2|Add2~25_sumout\ & ( (\C2|C2|LessThan1~2_combout\ & 
-- \C2|C2|Add1~33_sumout\) ) ) ) # ( !\C2|C2|REMINDER4[12]~2_combout\ & ( !\C2|C2|Add2~25_sumout\ & ( (!\C2|C2|LessThan1~2_combout\ & (\C2|C2|REMINDER4[10]~17_combout\)) # (\C2|C2|LessThan1~2_combout\ & ((\C2|C2|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[10]~17_combout\,
	datab => \C2|C2|ALT_INV_Add0~29_sumout\,
	datac => \C2|C2|ALT_INV_LessThan1~2_combout\,
	datad => \C2|C2|ALT_INV_Add1~33_sumout\,
	datae => \C2|C2|ALT_INV_REMINDER4[12]~2_combout\,
	dataf => \C2|C2|ALT_INV_Add2~25_sumout\,
	combout => \C2|C2|REMINDER4[10]~18_combout\);

-- Location: LABCELL_X39_Y5_N24
\C2|C2|REMINDER4[11]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[11]~19_combout\ = ( \C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|Add4~33_sumout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & ((\C2|C1|C8|IO64_OUT\(11)))) # (\C2|C2|REMINDER4[12]~0_combout\ & (\C2|C2|Add5~37_sumout\)) ) ) ) # ( 
-- !\C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|Add4~33_sumout\ & ( (\C2|C2|Add3~37_sumout\) # (\C2|C2|REMINDER4[12]~0_combout\) ) ) ) # ( \C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|Add4~33_sumout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & ((\C2|C1|C8|IO64_OUT\(11)))) # 
-- (\C2|C2|REMINDER4[12]~0_combout\ & (\C2|C2|Add5~37_sumout\)) ) ) ) # ( !\C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|Add4~33_sumout\ & ( (!\C2|C2|REMINDER4[12]~0_combout\ & \C2|C2|Add3~37_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add5~37_sumout\,
	datab => \C2|C2|ALT_INV_REMINDER4[12]~0_combout\,
	datac => \C2|C2|ALT_INV_Add3~37_sumout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(11),
	datae => \C2|C2|ALT_INV_DEC_OUT4~5_combout\,
	dataf => \C2|C2|ALT_INV_Add4~33_sumout\,
	combout => \C2|C2|REMINDER4[11]~19_combout\);

-- Location: LABCELL_X40_Y6_N12
\C2|C2|REMINDER4[11]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[11]~20_combout\ = ( \C2|C2|REMINDER4[12]~2_combout\ & ( \C2|C2|Add2~29_sumout\ & ( (!\C2|C2|LessThan1~2_combout\) # (\C2|C2|Add1~37_sumout\) ) ) ) # ( !\C2|C2|REMINDER4[12]~2_combout\ & ( \C2|C2|Add2~29_sumout\ & ( 
-- (!\C2|C2|LessThan1~2_combout\ & (\C2|C2|REMINDER4[11]~19_combout\)) # (\C2|C2|LessThan1~2_combout\ & ((\C2|C2|Add0~33_sumout\))) ) ) ) # ( \C2|C2|REMINDER4[12]~2_combout\ & ( !\C2|C2|Add2~29_sumout\ & ( (\C2|C2|Add1~37_sumout\ & 
-- \C2|C2|LessThan1~2_combout\) ) ) ) # ( !\C2|C2|REMINDER4[12]~2_combout\ & ( !\C2|C2|Add2~29_sumout\ & ( (!\C2|C2|LessThan1~2_combout\ & (\C2|C2|REMINDER4[11]~19_combout\)) # (\C2|C2|LessThan1~2_combout\ & ((\C2|C2|Add0~33_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add1~37_sumout\,
	datab => \C2|C2|ALT_INV_LessThan1~2_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[11]~19_combout\,
	datad => \C2|C2|ALT_INV_Add0~33_sumout\,
	datae => \C2|C2|ALT_INV_REMINDER4[12]~2_combout\,
	dataf => \C2|C2|ALT_INV_Add2~29_sumout\,
	combout => \C2|C2|REMINDER4[11]~20_combout\);

-- Location: MLABCELL_X45_Y5_N42
\C2|C3|DEC_OUT3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3~4_combout\ = ( \C2|C2|REMINDER4[11]~20_combout\ & ( (\C2|C3|DEC_OUT3~3_combout\ & \C2|C2|REMINDER4[10]~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3~3_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	combout => \C2|C3|DEC_OUT3~4_combout\);

-- Location: MLABCELL_X42_Y7_N54
\C2|C2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add0~1_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(13) ) + ( GND ) + ( \C2|C2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	cin => \C2|C2|Add0~6\,
	sumout => \C2|C2|Add0~1_sumout\);

-- Location: LABCELL_X44_Y3_N57
\C2|C2|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add5~1_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(13) ) + ( GND ) + ( \C2|C2|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	cin => \C2|C2|Add5~6\,
	sumout => \C2|C2|Add5~1_sumout\);

-- Location: LABCELL_X39_Y5_N54
\C2|C2|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add4~1_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(13) ) + ( VCC ) + ( \C2|C2|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	cin => \C2|C2|Add4~6\,
	sumout => \C2|C2|Add4~1_sumout\);

-- Location: LABCELL_X40_Y4_N27
\C2|C2|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add3~1_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(13) ) + ( GND ) + ( \C2|C2|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	cin => \C2|C2|Add3~6\,
	sumout => \C2|C2|Add3~1_sumout\);

-- Location: LABCELL_X39_Y5_N12
\C2|C2|REMINDER4[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[13]~1_combout\ = ( \C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C2|Add5~1_sumout\ ) ) ) # ( !\C2|C2|DEC_OUT4~5_combout\ & ( \C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C2|Add4~1_sumout\ ) ) ) # ( 
-- \C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C1|C8|IO64_OUT\(13) ) ) ) # ( !\C2|C2|DEC_OUT4~5_combout\ & ( !\C2|C2|REMINDER4[12]~0_combout\ & ( \C2|C2|Add3~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add5~1_sumout\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	datac => \C2|C2|ALT_INV_Add4~1_sumout\,
	datad => \C2|C2|ALT_INV_Add3~1_sumout\,
	datae => \C2|C2|ALT_INV_DEC_OUT4~5_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~0_combout\,
	combout => \C2|C2|REMINDER4[13]~1_combout\);

-- Location: LABCELL_X40_Y6_N57
\C2|C2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add1~1_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(13) ) + ( VCC ) + ( \C2|C2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	cin => \C2|C2|Add1~6\,
	sumout => \C2|C2|Add1~1_sumout\);

-- Location: LABCELL_X43_Y7_N21
\C2|C2|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|Add2~1_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(13) ) + ( VCC ) + ( \C2|C2|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(13),
	cin => \C2|C2|Add2~6\,
	sumout => \C2|C2|Add2~1_sumout\);

-- Location: LABCELL_X40_Y6_N0
\C2|C2|REMINDER4[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[13]~3_combout\ = ( \C2|C2|REMINDER4[12]~2_combout\ & ( \C2|C2|Add2~1_sumout\ & ( (!\C2|C2|LessThan1~2_combout\) # (\C2|C2|Add1~1_sumout\) ) ) ) # ( !\C2|C2|REMINDER4[12]~2_combout\ & ( \C2|C2|Add2~1_sumout\ & ( 
-- (!\C2|C2|LessThan1~2_combout\ & ((\C2|C2|REMINDER4[13]~1_combout\))) # (\C2|C2|LessThan1~2_combout\ & (\C2|C2|Add0~1_sumout\)) ) ) ) # ( \C2|C2|REMINDER4[12]~2_combout\ & ( !\C2|C2|Add2~1_sumout\ & ( (\C2|C2|LessThan1~2_combout\ & \C2|C2|Add1~1_sumout\) ) 
-- ) ) # ( !\C2|C2|REMINDER4[12]~2_combout\ & ( !\C2|C2|Add2~1_sumout\ & ( (!\C2|C2|LessThan1~2_combout\ & ((\C2|C2|REMINDER4[13]~1_combout\))) # (\C2|C2|LessThan1~2_combout\ & (\C2|C2|Add0~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add0~1_sumout\,
	datab => \C2|C2|ALT_INV_LessThan1~2_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[13]~1_combout\,
	datad => \C2|C2|ALT_INV_Add1~1_sumout\,
	datae => \C2|C2|ALT_INV_REMINDER4[12]~2_combout\,
	dataf => \C2|C2|ALT_INV_Add2~1_sumout\,
	combout => \C2|C2|REMINDER4[13]~3_combout\);

-- Location: MLABCELL_X45_Y5_N0
\C2|C3|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan2~2_combout\ = ( \C2|C2|REMINDER4[8]~14_combout\ & ( (\C2|C2|REMINDER4[11]~20_combout\ & \C2|C2|REMINDER4[9]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	combout => \C2|C3|LessThan2~2_combout\);

-- Location: MLABCELL_X45_Y5_N39
\C2|C3|DEC_OUT3[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3[1]~1_combout\ = ( \C2|C2|REMINDER4[10]~18_combout\ & ( (\C2|C2|REMINDER4[12]~5_combout\ & ((!\C2|C3|LessThan2~2_combout\) # ((!\C2|C2|REMINDER4[7]~10_combout\ & !\C2|C2|REMINDER4[6]~12_combout\)))) ) ) # ( !\C2|C2|REMINDER4[10]~18_combout\ 
-- & ( \C2|C2|REMINDER4[12]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010000000101010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datad => \C2|C3|ALT_INV_LessThan2~2_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	combout => \C2|C3|DEC_OUT3[1]~1_combout\);

-- Location: MLABCELL_X45_Y5_N24
\C2|C7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C7|Mux2~0_combout\ = ( \C2|C3|DEC_OUT3[1]~1_combout\ & ( !\C2|C2|REMINDER4[13]~3_combout\ ) ) # ( !\C2|C3|DEC_OUT3[1]~1_combout\ & ( (!\C2|C2|REMINDER4[12]~5_combout\ & (\C2|C3|DEC_OUT3~4_combout\ & !\C2|C2|REMINDER4[13]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	datab => \C2|C3|ALT_INV_DEC_OUT3~4_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3[1]~1_combout\,
	combout => \C2|C7|Mux2~0_combout\);

-- Location: MLABCELL_X45_Y5_N30
\C2|C3|DEC_OUT3[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3[3]~10_combout\ = ( \C2|C3|LessThan2~2_combout\ & ( \C2|C2|REMINDER4[12]~5_combout\ & ( ((\C2|C2|REMINDER4[10]~18_combout\ & ((\C2|C2|REMINDER4[6]~12_combout\) # (\C2|C2|REMINDER4[7]~10_combout\)))) # (\C2|C2|REMINDER4[13]~3_combout\) ) ) ) 
-- # ( !\C2|C3|LessThan2~2_combout\ & ( \C2|C2|REMINDER4[12]~5_combout\ & ( \C2|C2|REMINDER4[13]~3_combout\ ) ) ) # ( \C2|C3|LessThan2~2_combout\ & ( !\C2|C2|REMINDER4[12]~5_combout\ & ( \C2|C2|REMINDER4[13]~3_combout\ ) ) ) # ( !\C2|C3|LessThan2~2_combout\ 
-- & ( !\C2|C2|REMINDER4[12]~5_combout\ & ( \C2|C2|REMINDER4[13]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	datae => \C2|C3|ALT_INV_LessThan2~2_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	combout => \C2|C3|DEC_OUT3[3]~10_combout\);

-- Location: LABCELL_X44_Y5_N33
\C2|C3|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan6~1_combout\ = ( !\C2|C2|REMINDER4[12]~5_combout\ & ( (!\C2|C2|REMINDER4[10]~18_combout\) # (!\C2|C2|REMINDER4[11]~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	combout => \C2|C3|LessThan6~1_combout\);

-- Location: MLABCELL_X37_Y4_N54
\C2|C2|REM_INT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REM_INT~4_combout\ = ( \C2|C2|LessThan1~2_combout\ & ( \C2|C2|LessThan5~2_combout\ & ( ((\C2|C2|REM_INT~0_combout\ & \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)) # (\C2|C2|Add1~13_sumout\) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( 
-- \C2|C2|LessThan5~2_combout\ & ( (\C2|C2|REM_INT~0_combout\ & \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\) ) ) ) # ( \C2|C2|LessThan1~2_combout\ & ( !\C2|C2|LessThan5~2_combout\ & ( ((\C2|C2|REM_INT~0_combout\ & (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ & 
-- !\C2|C2|LessThan4~3_combout\))) # (\C2|C2|Add1~13_sumout\) ) ) ) # ( !\C2|C2|LessThan1~2_combout\ & ( !\C2|C2|LessThan5~2_combout\ & ( (\C2|C2|REM_INT~0_combout\ & (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ & !\C2|C2|LessThan4~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000010101110101010100000011000000110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_Add1~13_sumout\,
	datab => \C2|C2|ALT_INV_REM_INT~0_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	datad => \C2|C2|ALT_INV_LessThan4~3_combout\,
	datae => \C2|C2|ALT_INV_LessThan1~2_combout\,
	dataf => \C2|C2|ALT_INV_LessThan5~2_combout\,
	combout => \C2|C2|REM_INT~4_combout\);

-- Location: LABCELL_X44_Y3_N12
\C2|C2|REM_INT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REM_INT~3_combout\ = ( \C2|C2|LessThan5~2_combout\ & ( \C2|C2|Add5~13_sumout\ & ( (!\C2|C2|REM_INT~0_combout\ & \C2|C2|Add3~13_sumout\) ) ) ) # ( !\C2|C2|LessThan5~2_combout\ & ( \C2|C2|Add5~13_sumout\ & ( (!\C2|C2|REM_INT~0_combout\ & 
-- ((\C2|C2|Add3~13_sumout\))) # (\C2|C2|REM_INT~0_combout\ & (\C2|C2|LessThan4~3_combout\)) ) ) ) # ( \C2|C2|LessThan5~2_combout\ & ( !\C2|C2|Add5~13_sumout\ & ( (!\C2|C2|REM_INT~0_combout\ & \C2|C2|Add3~13_sumout\) ) ) ) # ( !\C2|C2|LessThan5~2_combout\ & 
-- ( !\C2|C2|Add5~13_sumout\ & ( (!\C2|C2|REM_INT~0_combout\ & \C2|C2|Add3~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000011011000110110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REM_INT~0_combout\,
	datab => \C2|C2|ALT_INV_LessThan4~3_combout\,
	datac => \C2|C2|ALT_INV_Add3~13_sumout\,
	datae => \C2|C2|ALT_INV_LessThan5~2_combout\,
	dataf => \C2|C2|ALT_INV_Add5~13_sumout\,
	combout => \C2|C2|REM_INT~3_combout\);

-- Location: MLABCELL_X37_Y4_N30
\C2|C2|REMINDER4[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REMINDER4[4]~8_combout\ = ( \C2|C2|REM_INT~3_combout\ & ( \C2|C2|DEC_OUT4[2]~1_combout\ & ( (!\C2|C2|REMINDER4[4]~6_combout\ & (((\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ & !\C2|C2|LessThan1~2_combout\)) # (\C2|C2|REM_INT~4_combout\))) # 
-- (\C2|C2|REMINDER4[4]~6_combout\ & (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)) ) ) ) # ( !\C2|C2|REM_INT~3_combout\ & ( \C2|C2|DEC_OUT4[2]~1_combout\ & ( (!\C2|C2|REMINDER4[4]~6_combout\ & (((\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ & !\C2|C2|LessThan1~2_combout\)) # 
-- (\C2|C2|REM_INT~4_combout\))) # (\C2|C2|REMINDER4[4]~6_combout\ & (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)) ) ) ) # ( \C2|C2|REM_INT~3_combout\ & ( !\C2|C2|DEC_OUT4[2]~1_combout\ & ( (!\C2|C2|REMINDER4[4]~6_combout\ & (((!\C2|C2|LessThan1~2_combout\) # 
-- (\C2|C2|REM_INT~4_combout\)))) # (\C2|C2|REMINDER4[4]~6_combout\ & (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)) ) ) ) # ( !\C2|C2|REM_INT~3_combout\ & ( !\C2|C2|DEC_OUT4[2]~1_combout\ & ( (!\C2|C2|REMINDER4[4]~6_combout\ & ((\C2|C2|REM_INT~4_combout\))) # 
-- (\C2|C2|REMINDER4[4]~6_combout\ & (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101110111010001110101011101000111010101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	datab => \C2|C2|ALT_INV_REMINDER4[4]~6_combout\,
	datac => \C2|C2|ALT_INV_REM_INT~4_combout\,
	datad => \C2|C2|ALT_INV_LessThan1~2_combout\,
	datae => \C2|C2|ALT_INV_REM_INT~3_combout\,
	dataf => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	combout => \C2|C2|REMINDER4[4]~8_combout\);

-- Location: LABCELL_X43_Y5_N9
\C2|C3|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan7~0_combout\ = ( !\C2|C2|REMINDER4[5]~7_combout\ & ( !\C2|C2|REMINDER4[4]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[4]~8_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	combout => \C2|C3|LessThan7~0_combout\);

-- Location: LABCELL_X44_Y5_N21
\C2|C3|LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan7~2_combout\ = (\C2|C2|REMINDER4[10]~18_combout\ & (!\C2|C3|LessThan7~0_combout\ & \C2|C2|REMINDER4[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datac => \C2|C3|ALT_INV_LessThan7~0_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	combout => \C2|C3|LessThan7~2_combout\);

-- Location: MLABCELL_X42_Y5_N24
\C2|C3|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan8~0_combout\ = ( \C2|C2|REMINDER4[9]~16_combout\ & ( (\C2|C2|REMINDER4[7]~10_combout\ & \C2|C2|REMINDER4[8]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	combout => \C2|C3|LessThan8~0_combout\);

-- Location: LABCELL_X43_Y5_N6
\C2|C3|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan3~0_combout\ = ( \C2|C2|REMINDER4[5]~7_combout\ & ( \C2|C2|REMINDER4[4]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[4]~8_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	combout => \C2|C3|LessThan3~0_combout\);

-- Location: LABCELL_X44_Y5_N36
\C2|C3|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan6~0_combout\ = ( \C2|C3|LessThan3~0_combout\ & ( (\C2|C2|REMINDER4[11]~20_combout\ & ((\C2|C1|C8|IO64_OUT\(3)) # (\C2|C2|REMINDER4[6]~12_combout\))) ) ) # ( !\C2|C3|LessThan3~0_combout\ & ( (\C2|C2|REMINDER4[11]~20_combout\ & 
-- \C2|C2|REMINDER4[6]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101010001010100010001000100010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	datae => \C2|C3|ALT_INV_LessThan3~0_combout\,
	combout => \C2|C3|LessThan6~0_combout\);

-- Location: LABCELL_X44_Y5_N18
\C2|C3|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan5~0_combout\ = ( !\C2|C2|REMINDER4[12]~5_combout\ & ( !\C2|C2|REMINDER4[13]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	combout => \C2|C3|LessThan5~0_combout\);

-- Location: LABCELL_X44_Y5_N24
\C2|C3|DEC_OUT3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3~7_combout\ = ( \C2|C3|LessThan6~0_combout\ & ( \C2|C3|LessThan5~0_combout\ & ( (\C2|C3|LessThan6~1_combout\ & (!\C2|C2|REMINDER4[11]~20_combout\ & !\C2|C3|LessThan8~0_combout\)) ) ) ) # ( !\C2|C3|LessThan6~0_combout\ & ( 
-- \C2|C3|LessThan5~0_combout\ & ( (\C2|C3|LessThan6~1_combout\ & (!\C2|C2|REMINDER4[11]~20_combout\ & ((!\C2|C3|LessThan7~2_combout\) # (!\C2|C3|LessThan8~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan6~1_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datac => \C2|C3|ALT_INV_LessThan7~2_combout\,
	datad => \C2|C3|ALT_INV_LessThan8~0_combout\,
	datae => \C2|C3|ALT_INV_LessThan6~0_combout\,
	dataf => \C2|C3|ALT_INV_LessThan5~0_combout\,
	combout => \C2|C3|DEC_OUT3~7_combout\);

-- Location: LABCELL_X43_Y5_N12
\C2|C3|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan3~1_combout\ = ( \C2|C2|REMINDER4[10]~18_combout\ & ( \C2|C2|REMINDER4[6]~12_combout\ & ( (\C2|C2|REMINDER4[8]~14_combout\ & (\C2|C2|REMINDER4[9]~16_combout\ & ((\C2|C2|REMINDER4[7]~10_combout\) # (\C2|C3|LessThan3~0_combout\)))) ) ) ) # ( 
-- \C2|C2|REMINDER4[10]~18_combout\ & ( !\C2|C2|REMINDER4[6]~12_combout\ & ( (\C2|C2|REMINDER4[8]~14_combout\ & (\C2|C2|REMINDER4[9]~16_combout\ & \C2|C2|REMINDER4[7]~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	datab => \C2|C3|ALT_INV_LessThan3~0_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	combout => \C2|C3|LessThan3~1_combout\);

-- Location: MLABCELL_X45_Y5_N21
\C2|C3|DEC_OUT3[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3[1]~8_combout\ = ( \C2|C2|REMINDER4[11]~20_combout\ & ( \C2|C3|DEC_OUT3[1]~1_combout\ ) ) # ( !\C2|C2|REMINDER4[11]~20_combout\ & ( (\C2|C3|DEC_OUT3[1]~1_combout\ & \C2|C3|LessThan3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C3|ALT_INV_DEC_OUT3[1]~1_combout\,
	datac => \C2|C3|ALT_INV_LessThan3~1_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	combout => \C2|C3|DEC_OUT3[1]~8_combout\);

-- Location: MLABCELL_X45_Y5_N27
\C2|C3|DEC_OUT3[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3[1]~9_combout\ = ( \C2|C3|DEC_OUT3[1]~8_combout\ & ( !\C2|C2|REMINDER4[13]~3_combout\ ) ) # ( !\C2|C3|DEC_OUT3[1]~8_combout\ & ( (!\C2|C2|REMINDER4[12]~5_combout\ & (!\C2|C3|DEC_OUT3~4_combout\ & (!\C2|C3|DEC_OUT3~7_combout\ & 
-- !\C2|C2|REMINDER4[13]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	datab => \C2|C3|ALT_INV_DEC_OUT3~4_combout\,
	datac => \C2|C3|ALT_INV_DEC_OUT3~7_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3[1]~8_combout\,
	combout => \C2|C3|DEC_OUT3[1]~9_combout\);

-- Location: LABCELL_X41_Y6_N0
\C2|C3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan0~0_combout\ = ( \C2|C2|REMINDER4[4]~8_combout\ & ( \C2|C2|REMINDER4[5]~7_combout\ ) ) # ( !\C2|C2|REMINDER4[4]~8_combout\ & ( (\C2|C2|REMINDER4[5]~7_combout\ & \C2|C1|C8|IO64_OUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	datae => \C2|C2|ALT_INV_REMINDER4[4]~8_combout\,
	combout => \C2|C3|LessThan0~0_combout\);

-- Location: LABCELL_X41_Y5_N24
\C2|C3|LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan8~1_combout\ = ( \C2|C2|REMINDER4[7]~10_combout\ & ( (\C2|C2|REMINDER4[6]~12_combout\ & (\C2|C2|REMINDER4[8]~14_combout\ & (\C2|C2|REMINDER4[9]~16_combout\ & \C2|C3|LessThan0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	datad => \C2|C3|ALT_INV_LessThan0~0_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	combout => \C2|C3|LessThan8~1_combout\);

-- Location: MLABCELL_X42_Y5_N27
\C2|C3|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan7~1_combout\ = ( \C2|C2|REMINDER4[6]~12_combout\ & ( !\C2|C3|LessThan7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan7~0_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	combout => \C2|C3|LessThan7~1_combout\);

-- Location: LABCELL_X44_Y5_N30
\C2|C3|DEC_OUT3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3~2_combout\ = ( \C2|C3|LessThan7~1_combout\ & ( (!\C2|C2|REMINDER4[11]~20_combout\ & ((!\C2|C2|REMINDER4[10]~18_combout\ & (\C2|C3|LessThan8~1_combout\)) # (\C2|C2|REMINDER4[10]~18_combout\ & ((!\C2|C3|LessThan8~0_combout\))))) ) ) # ( 
-- !\C2|C3|LessThan7~1_combout\ & ( (!\C2|C2|REMINDER4[11]~20_combout\ & ((\C2|C3|LessThan8~1_combout\) # (\C2|C2|REMINDER4[10]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110001001100000010000100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datac => \C2|C3|ALT_INV_LessThan8~1_combout\,
	datad => \C2|C3|ALT_INV_LessThan8~0_combout\,
	dataf => \C2|C3|ALT_INV_LessThan7~1_combout\,
	combout => \C2|C3|DEC_OUT3~2_combout\);

-- Location: LABCELL_X44_Y5_N12
\C2|C3|DEC_OUT3[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3[0]~5_combout\ = ( \C2|C3|LessThan6~0_combout\ & ( !\C2|C2|REMINDER4[12]~5_combout\ & ( (!\C2|C3|DEC_OUT3~4_combout\ & ((!\C2|C3|LessThan6~1_combout\) # ((\C2|C3|LessThan8~0_combout\) # (\C2|C3|DEC_OUT3~2_combout\)))) ) ) ) # ( 
-- !\C2|C3|LessThan6~0_combout\ & ( !\C2|C2|REMINDER4[12]~5_combout\ & ( (!\C2|C3|DEC_OUT3~4_combout\ & ((!\C2|C3|LessThan6~1_combout\) # (\C2|C3|DEC_OUT3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000000101111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan6~1_combout\,
	datab => \C2|C3|ALT_INV_DEC_OUT3~2_combout\,
	datac => \C2|C3|ALT_INV_LessThan8~0_combout\,
	datad => \C2|C3|ALT_INV_DEC_OUT3~4_combout\,
	datae => \C2|C3|ALT_INV_LessThan6~0_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	combout => \C2|C3|DEC_OUT3[0]~5_combout\);

-- Location: LABCELL_X40_Y5_N24
\C2|C3|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan4~0_combout\ = ( \C2|C2|REMINDER4[7]~10_combout\ & ( \C2|C2|REMINDER4[6]~12_combout\ & ( (\C2|C2|REMINDER4[9]~16_combout\ & \C2|C2|REMINDER4[8]~14_combout\) ) ) ) # ( \C2|C2|REMINDER4[7]~10_combout\ & ( !\C2|C2|REMINDER4[6]~12_combout\ & ( 
-- (\C2|C2|REMINDER4[9]~16_combout\ & (\C2|C2|REMINDER4[8]~14_combout\ & ((!\C2|C3|LessThan7~0_combout\) # (\C2|C1|C8|IO64_OUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	datab => \C2|C3|ALT_INV_LessThan7~0_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	datad => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	combout => \C2|C3|LessThan4~0_combout\);

-- Location: LABCELL_X41_Y6_N9
\C2|C3|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan2~0_combout\ = ( \C2|C2|REMINDER4[4]~8_combout\ & ( (!\C2|C1|C8|IO64_OUT\(3) & !\C2|C2|REMINDER4[5]~7_combout\) ) ) # ( !\C2|C2|REMINDER4[4]~8_combout\ & ( !\C2|C2|REMINDER4[5]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101000001010000011110000111100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	datac => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[4]~8_combout\,
	combout => \C2|C3|LessThan2~0_combout\);

-- Location: LABCELL_X41_Y5_N42
\C2|C3|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan2~1_combout\ = ( \C2|C2|REMINDER4[9]~16_combout\ & ( \C2|C2|REMINDER4[7]~10_combout\ & ( (\C2|C2|REMINDER4[8]~14_combout\ & \C2|C2|REMINDER4[11]~20_combout\) ) ) ) # ( \C2|C2|REMINDER4[9]~16_combout\ & ( !\C2|C2|REMINDER4[7]~10_combout\ & ( 
-- (!\C2|C3|LessThan2~0_combout\ & (\C2|C2|REMINDER4[8]~14_combout\ & (\C2|C2|REMINDER4[6]~12_combout\ & \C2|C2|REMINDER4[11]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan2~0_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	combout => \C2|C3|LessThan2~1_combout\);

-- Location: LABCELL_X41_Y5_N21
\C2|C3|DEC_OUT3[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3[0]~0_combout\ = ( \C2|C3|LessThan3~1_combout\ & ( (!\C2|C3|LessThan2~1_combout\ & ((!\C2|C2|REMINDER4[10]~18_combout\) # (!\C2|C2|REMINDER4[11]~20_combout\))) ) ) # ( !\C2|C3|LessThan3~1_combout\ & ( (!\C2|C2|REMINDER4[10]~18_combout\ & 
-- (!\C2|C3|LessThan2~1_combout\ & ((!\C2|C3|LessThan4~0_combout\) # (\C2|C2|REMINDER4[11]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100000001010000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datab => \C2|C3|ALT_INV_LessThan4~0_combout\,
	datac => \C2|C3|ALT_INV_LessThan2~1_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	dataf => \C2|C3|ALT_INV_LessThan3~1_combout\,
	combout => \C2|C3|DEC_OUT3[0]~0_combout\);

-- Location: LABCELL_X41_Y5_N33
\C2|C3|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan0~1_combout\ = ( \C2|C2|REMINDER4[7]~10_combout\ & ( (\C2|C2|REMINDER4[8]~14_combout\ & \C2|C2|REMINDER4[9]~16_combout\) ) ) # ( !\C2|C2|REMINDER4[7]~10_combout\ & ( (\C2|C2|REMINDER4[8]~14_combout\ & (\C2|C2|REMINDER4[9]~16_combout\ & 
-- ((\C2|C3|LessThan0~0_combout\) # (\C2|C2|REMINDER4[6]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	datac => \C2|C3|ALT_INV_LessThan0~0_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	combout => \C2|C3|LessThan0~1_combout\);

-- Location: LABCELL_X41_Y5_N36
\C2|C3|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan0~2_combout\ = ( !\C2|C2|REMINDER4[10]~18_combout\ & ( !\C2|C2|REMINDER4[11]~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	combout => \C2|C3|LessThan0~2_combout\);

-- Location: LABCELL_X41_Y5_N39
\C2|C3|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan0~3_combout\ = ( \C2|C2|REMINDER4[12]~5_combout\ & ( \C2|C2|REMINDER4[13]~3_combout\ ) ) # ( !\C2|C2|REMINDER4[12]~5_combout\ & ( (\C2|C2|REMINDER4[13]~3_combout\ & ((!\C2|C3|LessThan0~2_combout\) # (\C2|C3|LessThan0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan0~1_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	datad => \C2|C3|ALT_INV_LessThan0~2_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	combout => \C2|C3|LessThan0~3_combout\);

-- Location: MLABCELL_X45_Y5_N18
\C2|C3|DEC_OUT3[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|DEC_OUT3[0]~6_combout\ = ( !\C2|C3|LessThan0~3_combout\ & ( ((!\C2|C3|DEC_OUT3[0]~5_combout\ & ((!\C2|C3|DEC_OUT3[1]~1_combout\) # (\C2|C3|DEC_OUT3[0]~0_combout\)))) # (\C2|C2|REMINDER4[13]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011111111100010101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3[0]~5_combout\,
	datab => \C2|C3|ALT_INV_DEC_OUT3[1]~1_combout\,
	datac => \C2|C3|ALT_INV_DEC_OUT3[0]~0_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	dataf => \C2|C3|ALT_INV_LessThan0~3_combout\,
	combout => \C2|C3|DEC_OUT3[0]~6_combout\);

-- Location: MLABCELL_X45_Y5_N3
\C2|C7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C7|Mux6~0_combout\ = ( \C2|C3|DEC_OUT3[0]~6_combout\ & ( (\C2|C7|Mux2~0_combout\ & (!\C2|C3|DEC_OUT3[3]~10_combout\ & !\C2|C3|DEC_OUT3[1]~9_combout\)) ) ) # ( !\C2|C3|DEC_OUT3[0]~6_combout\ & ( (!\C2|C7|Mux2~0_combout\ & 
-- (!\C2|C3|DEC_OUT3[3]~10_combout\ & !\C2|C3|DEC_OUT3[1]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C7|ALT_INV_Mux2~0_combout\,
	datac => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datad => \C2|C3|ALT_INV_DEC_OUT3[1]~9_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3[0]~6_combout\,
	combout => \C2|C7|Mux6~0_combout\);

-- Location: MLABCELL_X45_Y5_N6
\C2|C7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C7|Mux5~0_combout\ = ( \C2|C3|DEC_OUT3[0]~6_combout\ & ( (\C2|C3|DEC_OUT3[1]~9_combout\ & \C2|C7|Mux2~0_combout\) ) ) # ( !\C2|C3|DEC_OUT3[0]~6_combout\ & ( (!\C2|C3|DEC_OUT3[1]~9_combout\ & \C2|C7|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3[1]~9_combout\,
	datab => \C2|C7|ALT_INV_Mux2~0_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3[0]~6_combout\,
	combout => \C2|C7|Mux5~0_combout\);

-- Location: MLABCELL_X45_Y5_N9
\C2|C7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C7|Mux4~0_combout\ = ( \C2|C3|DEC_OUT3[0]~6_combout\ & ( (\C2|C3|DEC_OUT3[1]~9_combout\ & !\C2|C7|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3[1]~9_combout\,
	datab => \C2|C7|ALT_INV_Mux2~0_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3[0]~6_combout\,
	combout => \C2|C7|Mux4~0_combout\);

-- Location: MLABCELL_X45_Y5_N15
\C2|C7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C7|Mux3~0_combout\ = ( !\C2|C3|DEC_OUT3[3]~10_combout\ & ( (!\C2|C3|DEC_OUT3[0]~6_combout\ & (!\C2|C7|Mux2~0_combout\ $ (\C2|C3|DEC_OUT3[1]~9_combout\))) # (\C2|C3|DEC_OUT3[0]~6_combout\ & (\C2|C7|Mux2~0_combout\ & !\C2|C3|DEC_OUT3[1]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100100010100110010010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3[0]~6_combout\,
	datab => \C2|C7|ALT_INV_Mux2~0_combout\,
	datad => \C2|C3|ALT_INV_DEC_OUT3[1]~9_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	combout => \C2|C7|Mux3~0_combout\);

-- Location: MLABCELL_X45_Y5_N12
\C2|C7|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C7|Mux2~1_combout\ = (!\C2|C3|DEC_OUT3[0]~6_combout\) # ((\C2|C7|Mux2~0_combout\ & !\C2|C3|DEC_OUT3[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010111010101110101011101010111010101110101011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3[0]~6_combout\,
	datab => \C2|C7|ALT_INV_Mux2~0_combout\,
	datac => \C2|C3|ALT_INV_DEC_OUT3[1]~9_combout\,
	combout => \C2|C7|Mux2~1_combout\);

-- Location: MLABCELL_X45_Y5_N48
\C2|C7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C7|Mux1~0_combout\ = ( \C2|C7|Mux2~0_combout\ & ( (!\C2|C3|DEC_OUT3[0]~6_combout\ & (!\C2|C3|DEC_OUT3[3]~10_combout\ & \C2|C3|DEC_OUT3[1]~9_combout\)) ) ) # ( !\C2|C7|Mux2~0_combout\ & ( (!\C2|C3|DEC_OUT3[3]~10_combout\ & 
-- ((!\C2|C3|DEC_OUT3[0]~6_combout\) # (\C2|C3|DEC_OUT3[1]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3[0]~6_combout\,
	datab => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datac => \C2|C3|ALT_INV_DEC_OUT3[1]~9_combout\,
	dataf => \C2|C7|ALT_INV_Mux2~0_combout\,
	combout => \C2|C7|Mux1~0_combout\);

-- Location: MLABCELL_X45_Y5_N51
\C2|C7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C7|Mux0~0_combout\ = ( \C2|C7|Mux2~0_combout\ & ( ((!\C2|C3|DEC_OUT3[1]~9_combout\) # (\C2|C3|DEC_OUT3[3]~10_combout\)) # (\C2|C3|DEC_OUT3[0]~6_combout\) ) ) # ( !\C2|C7|Mux2~0_combout\ & ( (\C2|C3|DEC_OUT3[1]~9_combout\) # 
-- (\C2|C3|DEC_OUT3[3]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3[0]~6_combout\,
	datab => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datad => \C2|C3|ALT_INV_DEC_OUT3[1]~9_combout\,
	dataf => \C2|C7|ALT_INV_Mux2~0_combout\,
	combout => \C2|C7|Mux0~0_combout\);

-- Location: MLABCELL_X37_Y4_N39
\C2|C2|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|LessThan0~3_combout\ = ( \C2|C2|LessThan0~0_combout\ & ( \C2|C2|LessThan4~0_combout\ ) ) # ( !\C2|C2|LessThan0~0_combout\ & ( (!\C2|C2|LessThan0~1_combout\ & \C2|C2|LessThan4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_LessThan0~1_combout\,
	datad => \C2|C2|ALT_INV_LessThan4~0_combout\,
	dataf => \C2|C2|ALT_INV_LessThan0~0_combout\,
	combout => \C2|C2|LessThan0~3_combout\);

-- Location: LABCELL_X39_Y3_N3
\C2|C2|REM_INT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REM_INT~6_combout\ = ( \C2|C2|REM_INT~2_combout\ & ( \C2|C2|REM_INT~1_combout\ ) ) # ( !\C2|C2|REM_INT~2_combout\ & ( \C2|C2|REM_INT~1_combout\ & ( \C2|C2|REM_INT~0_combout\ ) ) ) # ( \C2|C2|REM_INT~2_combout\ & ( !\C2|C2|REM_INT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REM_INT~0_combout\,
	datae => \C2|C2|ALT_INV_REM_INT~2_combout\,
	dataf => \C2|C2|ALT_INV_REM_INT~1_combout\,
	combout => \C2|C2|REM_INT~6_combout\);

-- Location: MLABCELL_X37_Y4_N0
\C2|C2|REM_INT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C2|REM_INT~5_combout\ = ( \C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ & ( ((!\C2|C2|LessThan1~2_combout\ & ((\C2|C2|REM_INT~3_combout\) # (\C2|C2|DEC_OUT4[2]~1_combout\)))) # (\C2|C2|REM_INT~4_combout\) ) ) # ( !\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\ & ( 
-- ((!\C2|C2|DEC_OUT4[2]~1_combout\ & (!\C2|C2|LessThan1~2_combout\ & \C2|C2|REM_INT~3_combout\))) # (\C2|C2|REM_INT~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000011111000111101001111110011110100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_DEC_OUT4[2]~1_combout\,
	datab => \C2|C2|ALT_INV_LessThan1~2_combout\,
	datac => \C2|C2|ALT_INV_REM_INT~4_combout\,
	datad => \C2|C2|ALT_INV_REM_INT~3_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	combout => \C2|C2|REM_INT~5_combout\);

-- Location: LABCELL_X39_Y6_N30
\C2|C3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add0~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))
-- \C2|C3|Add0~6\ = CARRY(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	cin => GND,
	sumout => \C2|C3|Add0~5_sumout\,
	cout => \C2|C3|Add0~6\);

-- Location: LABCELL_X39_Y6_N33
\C2|C3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add0~9_sumout\ = SUM(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & 
-- (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) + ( VCC ) + ( \C2|C3|Add0~6\ ))
-- \C2|C3|Add0~10\ = CARRY(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) 
-- + ( VCC ) + ( \C2|C3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan0~3_combout\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	datad => \C2|C2|ALT_INV_REM_INT~5_combout\,
	cin => \C2|C3|Add0~6\,
	sumout => \C2|C3|Add0~9_sumout\,
	cout => \C2|C3|Add0~10\);

-- Location: LABCELL_X39_Y6_N36
\C2|C3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add0~25_sumout\ = SUM(( GND ) + ( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) 
-- ) + ( \C2|C3|Add0~10\ ))
-- \C2|C3|Add0~26\ = CARRY(( GND ) + ( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) ) + ( 
-- \C2|C3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111100001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan0~3_combout\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datac => \C2|C2|ALT_INV_Add0~9_sumout\,
	dataf => \C2|C2|ALT_INV_REM_INT~6_combout\,
	cin => \C2|C3|Add0~10\,
	sumout => \C2|C3|Add0~25_sumout\,
	cout => \C2|C3|Add0~26\);

-- Location: LABCELL_X39_Y6_N39
\C2|C3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add0~21_sumout\ = SUM(( \C2|C2|REMINDER4[6]~12_combout\ ) + ( VCC ) + ( \C2|C3|Add0~26\ ))
-- \C2|C3|Add0~22\ = CARRY(( \C2|C2|REMINDER4[6]~12_combout\ ) + ( VCC ) + ( \C2|C3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	cin => \C2|C3|Add0~26\,
	sumout => \C2|C3|Add0~21_sumout\,
	cout => \C2|C3|Add0~22\);

-- Location: LABCELL_X39_Y6_N42
\C2|C3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add0~17_sumout\ = SUM(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( VCC ) + ( \C2|C3|Add0~22\ ))
-- \C2|C3|Add0~18\ = CARRY(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( VCC ) + ( \C2|C3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	cin => \C2|C3|Add0~22\,
	sumout => \C2|C3|Add0~17_sumout\,
	cout => \C2|C3|Add0~18\);

-- Location: LABCELL_X40_Y5_N0
\C2|C3|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add4~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))
-- \C2|C3|Add4~6\ = CARRY(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	cin => GND,
	sumout => \C2|C3|Add4~5_sumout\,
	cout => \C2|C3|Add4~6\);

-- Location: LABCELL_X40_Y5_N3
\C2|C3|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add4~9_sumout\ = SUM(( VCC ) + ( (!\C2|C1|C8|IO64_OUT\(15) & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C1|C8|IO64_OUT\(15) & ((!\C2|C2|LessThan0~3_combout\ & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C2|LessThan0~3_combout\ & 
-- (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) + ( \C2|C3|Add4~6\ ))
-- \C2|C3|Add4~10\ = CARRY(( VCC ) + ( (!\C2|C1|C8|IO64_OUT\(15) & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C1|C8|IO64_OUT\(15) & ((!\C2|C2|LessThan0~3_combout\ & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C2|LessThan0~3_combout\ & 
-- (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) + ( \C2|C3|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	datab => \C2|C2|ALT_INV_REM_INT~5_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	dataf => \C2|C2|ALT_INV_LessThan0~3_combout\,
	cin => \C2|C3|Add4~6\,
	sumout => \C2|C3|Add4~9_sumout\,
	cout => \C2|C3|Add4~10\);

-- Location: LABCELL_X40_Y5_N6
\C2|C3|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add4~25_sumout\ = SUM(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) ) + ( VCC 
-- ) + ( \C2|C3|Add4~10\ ))
-- \C2|C3|Add4~26\ = CARRY(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) ) + ( VCC ) + ( 
-- \C2|C3|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan0~3_combout\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datac => \C2|C2|ALT_INV_Add0~9_sumout\,
	datad => \C2|C2|ALT_INV_REM_INT~6_combout\,
	cin => \C2|C3|Add4~10\,
	sumout => \C2|C3|Add4~25_sumout\,
	cout => \C2|C3|Add4~26\);

-- Location: LABCELL_X40_Y5_N9
\C2|C3|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add4~21_sumout\ = SUM(( VCC ) + ( \C2|C2|REMINDER4[6]~12_combout\ ) + ( \C2|C3|Add4~26\ ))
-- \C2|C3|Add4~22\ = CARRY(( VCC ) + ( \C2|C2|REMINDER4[6]~12_combout\ ) + ( \C2|C3|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	cin => \C2|C3|Add4~26\,
	sumout => \C2|C3|Add4~21_sumout\,
	cout => \C2|C3|Add4~22\);

-- Location: LABCELL_X40_Y5_N12
\C2|C3|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add4~17_sumout\ = SUM(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( GND ) + ( \C2|C3|Add4~22\ ))
-- \C2|C3|Add4~18\ = CARRY(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( GND ) + ( \C2|C3|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	cin => \C2|C3|Add4~22\,
	sumout => \C2|C3|Add4~17_sumout\,
	cout => \C2|C3|Add4~18\);

-- Location: MLABCELL_X42_Y5_N0
\C2|C3|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add8~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))
-- \C2|C3|Add8~6\ = CARRY(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	cin => GND,
	sumout => \C2|C3|Add8~5_sumout\,
	cout => \C2|C3|Add8~6\);

-- Location: MLABCELL_X42_Y5_N3
\C2|C3|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add8~9_sumout\ = SUM(( VCC ) + ( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & 
-- (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) + ( \C2|C3|Add8~6\ ))
-- \C2|C3|Add8~10\ = CARRY(( VCC ) + ( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & 
-- (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) + ( \C2|C3|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111100000001000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	datab => \C2|C2|ALT_INV_LessThan0~3_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	dataf => \C2|C2|ALT_INV_REM_INT~5_combout\,
	cin => \C2|C3|Add8~6\,
	sumout => \C2|C3|Add8~9_sumout\,
	cout => \C2|C3|Add8~10\);

-- Location: MLABCELL_X42_Y5_N6
\C2|C3|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add8~25_sumout\ = SUM(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) ) + ( GND 
-- ) + ( \C2|C3|Add8~10\ ))
-- \C2|C3|Add8~26\ = CARRY(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) ) + ( GND ) + ( 
-- \C2|C3|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan0~3_combout\,
	datab => \C2|C2|ALT_INV_Add0~9_sumout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datad => \C2|C2|ALT_INV_REM_INT~6_combout\,
	cin => \C2|C3|Add8~10\,
	sumout => \C2|C3|Add8~25_sumout\,
	cout => \C2|C3|Add8~26\);

-- Location: MLABCELL_X42_Y5_N9
\C2|C3|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add8~21_sumout\ = SUM(( GND ) + ( \C2|C2|REMINDER4[6]~12_combout\ ) + ( \C2|C3|Add8~26\ ))
-- \C2|C3|Add8~22\ = CARRY(( GND ) + ( \C2|C2|REMINDER4[6]~12_combout\ ) + ( \C2|C3|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	cin => \C2|C3|Add8~26\,
	sumout => \C2|C3|Add8~21_sumout\,
	cout => \C2|C3|Add8~22\);

-- Location: MLABCELL_X42_Y5_N12
\C2|C3|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add8~17_sumout\ = SUM(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( GND ) + ( \C2|C3|Add8~22\ ))
-- \C2|C3|Add8~18\ = CARRY(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( GND ) + ( \C2|C3|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	cin => \C2|C3|Add8~22\,
	sumout => \C2|C3|Add8~17_sumout\,
	cout => \C2|C3|Add8~18\);

-- Location: LABCELL_X40_Y5_N30
\C2|C3|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add6~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))
-- \C2|C3|Add6~6\ = CARRY(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	cin => GND,
	sumout => \C2|C3|Add6~5_sumout\,
	cout => \C2|C3|Add6~6\);

-- Location: LABCELL_X40_Y5_N33
\C2|C3|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add6~9_sumout\ = SUM(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & 
-- (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) + ( GND ) + ( \C2|C3|Add6~6\ ))
-- \C2|C3|Add6~10\ = CARRY(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) 
-- + ( GND ) + ( \C2|C3|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	datab => \C2|C2|ALT_INV_LessThan0~3_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datad => \C2|C2|ALT_INV_REM_INT~5_combout\,
	cin => \C2|C3|Add6~6\,
	sumout => \C2|C3|Add6~9_sumout\,
	cout => \C2|C3|Add6~10\);

-- Location: LABCELL_X40_Y5_N36
\C2|C3|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add6~25_sumout\ = SUM(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) ) + ( GND 
-- ) + ( \C2|C3|Add6~10\ ))
-- \C2|C3|Add6~26\ = CARRY(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) ) + ( GND ) + ( 
-- \C2|C3|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan0~3_combout\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datac => \C2|C2|ALT_INV_Add0~9_sumout\,
	datad => \C2|C2|ALT_INV_REM_INT~6_combout\,
	cin => \C2|C3|Add6~10\,
	sumout => \C2|C3|Add6~25_sumout\,
	cout => \C2|C3|Add6~26\);

-- Location: LABCELL_X40_Y5_N39
\C2|C3|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add6~21_sumout\ = SUM(( VCC ) + ( \C2|C2|REMINDER4[6]~12_combout\ ) + ( \C2|C3|Add6~26\ ))
-- \C2|C3|Add6~22\ = CARRY(( VCC ) + ( \C2|C2|REMINDER4[6]~12_combout\ ) + ( \C2|C3|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	cin => \C2|C3|Add6~26\,
	sumout => \C2|C3|Add6~21_sumout\,
	cout => \C2|C3|Add6~22\);

-- Location: LABCELL_X40_Y5_N42
\C2|C3|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add6~17_sumout\ = SUM(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( GND ) + ( \C2|C3|Add6~22\ ))
-- \C2|C3|Add6~18\ = CARRY(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( GND ) + ( \C2|C3|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	cin => \C2|C3|Add6~22\,
	sumout => \C2|C3|Add6~17_sumout\,
	cout => \C2|C3|Add6~18\);

-- Location: LABCELL_X44_Y5_N0
\C2|C3|REMINDER3[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[9]~0_combout\ = ( \C2|C3|LessThan6~0_combout\ & ( \C2|C3|LessThan6~1_combout\ & ( (!\C2|C3|LessThan8~0_combout\ & (!\C2|C2|REMINDER4[13]~3_combout\ & ((!\C2|C3|LessThan0~2_combout\) # (\C2|C3|LessThan8~1_combout\)))) ) ) ) # ( 
-- !\C2|C3|LessThan6~0_combout\ & ( \C2|C3|LessThan6~1_combout\ & ( (!\C2|C2|REMINDER4[13]~3_combout\ & ((!\C2|C3|LessThan0~2_combout\) # (\C2|C3|LessThan8~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan8~0_combout\,
	datab => \C2|C3|ALT_INV_LessThan0~2_combout\,
	datac => \C2|C3|ALT_INV_LessThan8~1_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	datae => \C2|C3|ALT_INV_LessThan6~0_combout\,
	dataf => \C2|C3|ALT_INV_LessThan6~1_combout\,
	combout => \C2|C3|REMINDER3[9]~0_combout\);

-- Location: MLABCELL_X42_Y5_N48
\C2|C3|REMINDER3[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[7]~25_combout\ = ( \C2|C2|REMINDER4[7]~10_combout\ & ( \C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\) # (\C2|C3|Add8~17_sumout\) ) ) ) # ( !\C2|C2|REMINDER4[7]~10_combout\ & ( \C2|C3|DEC_OUT3~7_combout\ & ( 
-- (\C2|C3|Add8~17_sumout\ & \C2|C3|REMINDER3[9]~0_combout\) ) ) ) # ( \C2|C2|REMINDER4[7]~10_combout\ & ( !\C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add6~17_sumout\))) # (\C2|C3|REMINDER3[9]~0_combout\ & 
-- (!\C2|C3|LessThan7~1_combout\)) ) ) ) # ( !\C2|C2|REMINDER4[7]~10_combout\ & ( !\C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add6~17_sumout\))) # (\C2|C3|REMINDER3[9]~0_combout\ & (\C2|C3|LessThan7~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011111010101000000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan7~1_combout\,
	datab => \C2|C3|ALT_INV_Add8~17_sumout\,
	datac => \C2|C3|ALT_INV_Add6~17_sumout\,
	datad => \C2|C3|ALT_INV_REMINDER3[9]~0_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3~7_combout\,
	combout => \C2|C3|REMINDER3[7]~25_combout\);

-- Location: LABCELL_X41_Y5_N27
\C2|C3|Add3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add3~2_combout\ = ( \C2|C2|REMINDER4[7]~10_combout\ & ( (!\C2|C2|REMINDER4[6]~12_combout\) # (!\C2|C3|LessThan3~0_combout\) ) ) # ( !\C2|C2|REMINDER4[7]~10_combout\ & ( (\C2|C2|REMINDER4[6]~12_combout\ & \C2|C3|LessThan3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datac => \C2|C3|ALT_INV_LessThan3~0_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	combout => \C2|C3|Add3~2_combout\);

-- Location: LABCELL_X41_Y5_N18
\C2|C3|Add5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add5~2_combout\ = ( \C2|C2|REMINDER4[7]~10_combout\ & ( (!\C2|C2|REMINDER4[6]~12_combout\ & !\C2|C2|REMINDER4[5]~7_combout\) ) ) # ( !\C2|C2|REMINDER4[7]~10_combout\ & ( (\C2|C2|REMINDER4[5]~7_combout\) # (\C2|C2|REMINDER4[6]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	combout => \C2|C3|Add5~2_combout\);

-- Location: LABCELL_X41_Y5_N0
\C2|C3|REMINDER3[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[9]~3_combout\ = ( \C2|C2|REMINDER4[11]~20_combout\ & ( \C2|C3|LessThan3~1_combout\ & ( (\C2|C2|REMINDER4[13]~3_combout\) # (\C2|C2|REMINDER4[12]~5_combout\) ) ) ) # ( !\C2|C2|REMINDER4[11]~20_combout\ & ( \C2|C3|LessThan3~1_combout\ & ( 
-- (\C2|C2|REMINDER4[13]~3_combout\) # (\C2|C2|REMINDER4[12]~5_combout\) ) ) ) # ( \C2|C2|REMINDER4[11]~20_combout\ & ( !\C2|C3|LessThan3~1_combout\ & ( (\C2|C2|REMINDER4[13]~3_combout\) # (\C2|C2|REMINDER4[12]~5_combout\) ) ) ) # ( 
-- !\C2|C2|REMINDER4[11]~20_combout\ & ( !\C2|C3|LessThan3~1_combout\ & ( ((\C2|C2|REMINDER4[12]~5_combout\ & ((\C2|C2|REMINDER4[10]~18_combout\) # (\C2|C3|LessThan4~0_combout\)))) # (\C2|C2|REMINDER4[13]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	datab => \C2|C3|ALT_INV_LessThan4~0_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	dataf => \C2|C3|ALT_INV_LessThan3~1_combout\,
	combout => \C2|C3|REMINDER3[9]~3_combout\);

-- Location: MLABCELL_X45_Y5_N54
\C2|C3|REMINDER3[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[9]~2_combout\ = ( \C2|C2|REMINDER4[13]~3_combout\ & ( \C2|C2|REMINDER4[12]~5_combout\ ) ) # ( !\C2|C2|REMINDER4[13]~3_combout\ & ( \C2|C2|REMINDER4[12]~5_combout\ & ( (\C2|C2|REMINDER4[11]~20_combout\) # (\C2|C3|LessThan3~1_combout\) ) ) 
-- ) # ( \C2|C2|REMINDER4[13]~3_combout\ & ( !\C2|C2|REMINDER4[12]~5_combout\ ) ) # ( !\C2|C2|REMINDER4[13]~3_combout\ & ( !\C2|C2|REMINDER4[12]~5_combout\ & ( (!\C2|C2|REMINDER4[10]~18_combout\) # ((!\C2|C3|DEC_OUT3~3_combout\) # 
-- (!\C2|C2|REMINDER4[11]~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111111100110011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datab => \C2|C3|ALT_INV_LessThan3~1_combout\,
	datac => \C2|C3|ALT_INV_DEC_OUT3~3_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	combout => \C2|C3|REMINDER3[9]~2_combout\);

-- Location: LABCELL_X41_Y5_N54
\C2|C3|REMINDER3[7]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[7]~26_combout\ = ( \C2|C3|REMINDER3[9]~3_combout\ & ( \C2|C3|REMINDER3[9]~2_combout\ & ( !\C2|C3|Add3~2_combout\ ) ) ) # ( !\C2|C3|REMINDER3[9]~3_combout\ & ( \C2|C3|REMINDER3[9]~2_combout\ & ( \C2|C3|REMINDER3[7]~25_combout\ ) ) ) # ( 
-- \C2|C3|REMINDER3[9]~3_combout\ & ( !\C2|C3|REMINDER3[9]~2_combout\ & ( \C2|C3|Add4~17_sumout\ ) ) ) # ( !\C2|C3|REMINDER3[9]~3_combout\ & ( !\C2|C3|REMINDER3[9]~2_combout\ & ( \C2|C3|Add5~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_Add4~17_sumout\,
	datab => \C2|C3|ALT_INV_REMINDER3[7]~25_combout\,
	datac => \C2|C3|ALT_INV_Add3~2_combout\,
	datad => \C2|C3|ALT_INV_Add5~2_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[9]~3_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~2_combout\,
	combout => \C2|C3|REMINDER3[7]~26_combout\);

-- Location: LABCELL_X41_Y5_N6
\C2|C3|REMINDER3[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[9]~5_combout\ = ( \C2|C2|REMINDER4[11]~20_combout\ & ( \C2|C2|REMINDER4[12]~5_combout\ & ( ((!\C2|C2|REMINDER4[10]~18_combout\ & !\C2|C3|LessThan2~1_combout\)) # (\C2|C2|REMINDER4[13]~3_combout\) ) ) ) # ( 
-- !\C2|C2|REMINDER4[11]~20_combout\ & ( \C2|C2|REMINDER4[12]~5_combout\ & ( (!\C2|C3|LessThan2~1_combout\) # (\C2|C2|REMINDER4[13]~3_combout\) ) ) ) # ( \C2|C2|REMINDER4[11]~20_combout\ & ( !\C2|C2|REMINDER4[12]~5_combout\ ) ) # ( 
-- !\C2|C2|REMINDER4[11]~20_combout\ & ( !\C2|C2|REMINDER4[12]~5_combout\ & ( ((!\C2|C2|REMINDER4[13]~3_combout\) # (\C2|C2|REMINDER4[10]~18_combout\)) # (\C2|C3|LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111111111111111111111111111001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan0~1_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datad => \C2|C3|ALT_INV_LessThan2~1_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	combout => \C2|C3|REMINDER3[9]~5_combout\);

-- Location: LABCELL_X39_Y6_N0
\C2|C3|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add2~5_sumout\ = SUM(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))
-- \C2|C3|Add2~6\ = CARRY(( \C2|C1|C8|IO64_OUT\(3) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	cin => GND,
	sumout => \C2|C3|Add2~5_sumout\,
	cout => \C2|C3|Add2~6\);

-- Location: LABCELL_X39_Y6_N3
\C2|C3|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add2~9_sumout\ = SUM(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & 
-- (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) + ( GND ) + ( \C2|C3|Add2~6\ ))
-- \C2|C3|Add2~10\ = CARRY(( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~5_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~5_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C1|C8|IO64_OUT[4]~DUPLICATE_q\)))) ) 
-- + ( GND ) + ( \C2|C3|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan0~3_combout\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[4]~DUPLICATE_q\,
	datad => \C2|C2|ALT_INV_REM_INT~5_combout\,
	cin => \C2|C3|Add2~6\,
	sumout => \C2|C3|Add2~9_sumout\,
	cout => \C2|C3|Add2~10\);

-- Location: LABCELL_X39_Y6_N6
\C2|C3|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add2~25_sumout\ = SUM(( VCC ) + ( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) 
-- ) + ( \C2|C3|Add2~10\ ))
-- \C2|C3|Add2~26\ = CARRY(( VCC ) + ( (!\C2|C2|LessThan0~3_combout\ & (((\C2|C2|REM_INT~6_combout\)))) # (\C2|C2|LessThan0~3_combout\ & ((!\C2|C1|C8|IO64_OUT\(15) & ((\C2|C2|REM_INT~6_combout\))) # (\C2|C1|C8|IO64_OUT\(15) & (\C2|C2|Add0~9_sumout\)))) ) + ( 
-- \C2|C3|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111100001000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_LessThan0~3_combout\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(15),
	datac => \C2|C2|ALT_INV_Add0~9_sumout\,
	dataf => \C2|C2|ALT_INV_REM_INT~6_combout\,
	cin => \C2|C3|Add2~10\,
	sumout => \C2|C3|Add2~25_sumout\,
	cout => \C2|C3|Add2~26\);

-- Location: LABCELL_X39_Y6_N9
\C2|C3|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add2~21_sumout\ = SUM(( \C2|C2|REMINDER4[6]~12_combout\ ) + ( GND ) + ( \C2|C3|Add2~26\ ))
-- \C2|C3|Add2~22\ = CARRY(( \C2|C2|REMINDER4[6]~12_combout\ ) + ( GND ) + ( \C2|C3|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	cin => \C2|C3|Add2~26\,
	sumout => \C2|C3|Add2~21_sumout\,
	cout => \C2|C3|Add2~22\);

-- Location: LABCELL_X39_Y6_N12
\C2|C3|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add2~17_sumout\ = SUM(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( VCC ) + ( \C2|C3|Add2~22\ ))
-- \C2|C3|Add2~18\ = CARRY(( \C2|C2|REMINDER4[7]~10_combout\ ) + ( VCC ) + ( \C2|C3|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	cin => \C2|C3|Add2~22\,
	sumout => \C2|C3|Add2~17_sumout\,
	cout => \C2|C3|Add2~18\);

-- Location: LABCELL_X39_Y6_N54
\C2|C3|REMINDER3[7]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[7]~41_combout\ = ( !\C2|C3|DEC_OUT3[3]~10_combout\ & ( (((!\C2|C3|REMINDER3[9]~5_combout\ & (\C2|C3|Add2~17_sumout\)) # (\C2|C3|REMINDER3[9]~5_combout\ & ((\C2|C3|REMINDER3[7]~26_combout\))))) ) ) # ( \C2|C3|DEC_OUT3[3]~10_combout\ & ( 
-- ((!\C2|C3|REMINDER3[9]~5_combout\ & ((!\C2|C2|REMINDER4[6]~12_combout\ $ (\C2|C2|REMINDER4[7]~10_combout\)))) # (\C2|C3|REMINDER3[9]~5_combout\ & (\C2|C3|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111110000111100001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_Add0~17_sumout\,
	datab => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[7]~26_combout\,
	datae => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~5_combout\,
	datag => \C2|C3|ALT_INV_Add2~17_sumout\,
	combout => \C2|C3|REMINDER3[7]~41_combout\);

-- Location: MLABCELL_X42_Y5_N54
\C2|C3|REMINDER3[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[6]~27_combout\ = ( \C2|C3|LessThan7~0_combout\ & ( \C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\ & (\C2|C2|REMINDER4[6]~12_combout\)) # (\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add8~21_sumout\))) ) ) ) # ( 
-- !\C2|C3|LessThan7~0_combout\ & ( \C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\ & (\C2|C2|REMINDER4[6]~12_combout\)) # (\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add8~21_sumout\))) ) ) ) # ( \C2|C3|LessThan7~0_combout\ & ( 
-- !\C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add6~21_sumout\))) # (\C2|C3|REMINDER3[9]~0_combout\ & (\C2|C2|REMINDER4[6]~12_combout\)) ) ) ) # ( !\C2|C3|LessThan7~0_combout\ & ( !\C2|C3|DEC_OUT3~7_combout\ & ( 
-- (!\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add6~21_sumout\))) # (\C2|C3|REMINDER3[9]~0_combout\ & (!\C2|C2|REMINDER4[6]~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011110101010101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C3|ALT_INV_Add8~21_sumout\,
	datac => \C2|C3|ALT_INV_Add6~21_sumout\,
	datad => \C2|C3|ALT_INV_REMINDER3[9]~0_combout\,
	datae => \C2|C3|ALT_INV_LessThan7~0_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3~7_combout\,
	combout => \C2|C3|REMINDER3[6]~27_combout\);

-- Location: LABCELL_X43_Y5_N0
\C2|C3|REMINDER3[6]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[6]~37_combout\ = ( !\C2|C3|REMINDER3[9]~3_combout\ & ( ((!\C2|C3|REMINDER3[9]~2_combout\ & (!\C2|C2|REMINDER4[5]~7_combout\ $ (((\C2|C2|REMINDER4[6]~12_combout\))))) # (\C2|C3|REMINDER3[9]~2_combout\ & 
-- (((\C2|C3|REMINDER3[6]~27_combout\))))) ) ) # ( \C2|C3|REMINDER3[9]~3_combout\ & ( (!\C2|C3|REMINDER3[9]~2_combout\ & (((\C2|C3|Add4~21_sumout\)))) # (\C2|C3|REMINDER3[9]~2_combout\ & ((!\C2|C2|REMINDER4[6]~12_combout\ $ 
-- (((!\C2|C2|REMINDER4[5]~7_combout\) # (!\C2|C2|REMINDER4[4]~8_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010101000001111001100110000010101010101000011110011001111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	datab => \C2|C3|ALT_INV_Add4~21_sumout\,
	datac => \C2|C2|ALT_INV_REMINDER4[4]~8_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[9]~2_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[9]~3_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datag => \C2|C3|ALT_INV_REMINDER3[6]~27_combout\,
	combout => \C2|C3|REMINDER3[6]~37_combout\);

-- Location: LABCELL_X39_Y6_N24
\C2|C3|REMINDER3[6]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[6]~28_combout\ = ( \C2|C2|REMINDER4[6]~12_combout\ & ( \C2|C3|REMINDER3[6]~37_combout\ & ( (!\C2|C3|REMINDER3[9]~5_combout\ & (((!\C2|C3|DEC_OUT3[3]~10_combout\ & \C2|C3|Add2~21_sumout\)))) # (\C2|C3|REMINDER3[9]~5_combout\ & 
-- (((!\C2|C3|DEC_OUT3[3]~10_combout\)) # (\C2|C3|Add0~21_sumout\))) ) ) ) # ( !\C2|C2|REMINDER4[6]~12_combout\ & ( \C2|C3|REMINDER3[6]~37_combout\ & ( (!\C2|C3|REMINDER3[9]~5_combout\ & (((\C2|C3|Add2~21_sumout\) # (\C2|C3|DEC_OUT3[3]~10_combout\)))) # 
-- (\C2|C3|REMINDER3[9]~5_combout\ & (((!\C2|C3|DEC_OUT3[3]~10_combout\)) # (\C2|C3|Add0~21_sumout\))) ) ) ) # ( \C2|C2|REMINDER4[6]~12_combout\ & ( !\C2|C3|REMINDER3[6]~37_combout\ & ( (!\C2|C3|REMINDER3[9]~5_combout\ & (((!\C2|C3|DEC_OUT3[3]~10_combout\ & 
-- \C2|C3|Add2~21_sumout\)))) # (\C2|C3|REMINDER3[9]~5_combout\ & (\C2|C3|Add0~21_sumout\ & (\C2|C3|DEC_OUT3[3]~10_combout\))) ) ) ) # ( !\C2|C2|REMINDER4[6]~12_combout\ & ( !\C2|C3|REMINDER3[6]~37_combout\ & ( (!\C2|C3|REMINDER3[9]~5_combout\ & 
-- (((\C2|C3|Add2~21_sumout\) # (\C2|C3|DEC_OUT3[3]~10_combout\)))) # (\C2|C3|REMINDER3[9]~5_combout\ & (\C2|C3|Add0~21_sumout\ & (\C2|C3|DEC_OUT3[3]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110111001101000000011100000100111101111111010011000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_Add0~21_sumout\,
	datab => \C2|C3|ALT_INV_REMINDER3[9]~5_combout\,
	datac => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datad => \C2|C3|ALT_INV_Add2~21_sumout\,
	datae => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[6]~37_combout\,
	combout => \C2|C3|REMINDER3[6]~28_combout\);

-- Location: MLABCELL_X45_Y5_N45
\C2|C3|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan5~1_combout\ = ( \C2|C2|REMINDER4[10]~18_combout\ & ( (\C2|C3|LessThan5~0_combout\ & ((!\C2|C3|DEC_OUT3~3_combout\) # (!\C2|C2|REMINDER4[11]~20_combout\))) ) ) # ( !\C2|C2|REMINDER4[10]~18_combout\ & ( \C2|C3|LessThan5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3~3_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datac => \C2|C3|ALT_INV_LessThan5~0_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	combout => \C2|C3|LessThan5~1_combout\);

-- Location: LABCELL_X44_Y5_N6
\C2|C3|LessThan7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan7~3_combout\ = ( \C2|C3|LessThan5~0_combout\ & ( (!\C2|C2|REMINDER4[11]~20_combout\ & ((!\C2|C3|LessThan8~0_combout\) # (!\C2|C3|LessThan7~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan8~0_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datad => \C2|C3|ALT_INV_LessThan7~2_combout\,
	dataf => \C2|C3|ALT_INV_LessThan5~0_combout\,
	combout => \C2|C3|LessThan7~3_combout\);

-- Location: LABCELL_X44_Y5_N45
\C2|C3|REMINDER3[5]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[5]~31_combout\ = ( \C2|C2|REMINDER4[5]~7_combout\ & ( ((!\C2|C3|LessThan8~1_combout\ & (\C2|C3|LessThan0~2_combout\ & \C2|C3|LessThan5~0_combout\))) # (\C2|C3|Add8~25_sumout\) ) ) # ( !\C2|C2|REMINDER4[5]~7_combout\ & ( 
-- (\C2|C3|Add8~25_sumout\ & (((!\C2|C3|LessThan0~2_combout\) # (!\C2|C3|LessThan5~0_combout\)) # (\C2|C3|LessThan8~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan8~1_combout\,
	datab => \C2|C3|ALT_INV_LessThan0~2_combout\,
	datac => \C2|C3|ALT_INV_LessThan5~0_combout\,
	datad => \C2|C3|ALT_INV_Add8~25_sumout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	combout => \C2|C3|REMINDER3[5]~31_combout\);

-- Location: LABCELL_X44_Y5_N9
\C2|C3|REMINDER3[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[9]~9_combout\ = ( \C2|C3|LessThan6~1_combout\ & ( (!\C2|C2|REMINDER4[13]~3_combout\ & ((!\C2|C3|LessThan8~0_combout\) # (!\C2|C3|LessThan6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan8~0_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	datad => \C2|C3|ALT_INV_LessThan6~0_combout\,
	dataf => \C2|C3|ALT_INV_LessThan6~1_combout\,
	combout => \C2|C3|REMINDER3[9]~9_combout\);

-- Location: LABCELL_X44_Y5_N54
\C2|C3|REMINDER3[5]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[5]~32_combout\ = ( \C2|C3|REMINDER3[5]~31_combout\ & ( \C2|C3|REMINDER3[9]~9_combout\ & ( (\C2|C3|LessThan5~1_combout\ & (((\C2|C3|LessThan7~3_combout\) # (\C2|C3|LessThan7~0_combout\)) # (\C2|C3|LessThan3~0_combout\))) ) ) ) # ( 
-- !\C2|C3|REMINDER3[5]~31_combout\ & ( \C2|C3|REMINDER3[9]~9_combout\ & ( (\C2|C3|LessThan5~1_combout\ & (!\C2|C3|LessThan7~3_combout\ & ((\C2|C3|LessThan7~0_combout\) # (\C2|C3|LessThan3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000000000000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan3~0_combout\,
	datab => \C2|C3|ALT_INV_LessThan7~0_combout\,
	datac => \C2|C3|ALT_INV_LessThan5~1_combout\,
	datad => \C2|C3|ALT_INV_LessThan7~3_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[5]~31_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~9_combout\,
	combout => \C2|C3|REMINDER3[5]~32_combout\);

-- Location: LABCELL_X41_Y5_N12
\C2|C3|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan2~3_combout\ = ( \C2|C3|LessThan2~1_combout\ & ( (!\C2|C2|REMINDER4[13]~3_combout\ & !\C2|C2|REMINDER4[12]~5_combout\) ) ) # ( !\C2|C3|LessThan2~1_combout\ & ( (!\C2|C2|REMINDER4[13]~3_combout\ & ((!\C2|C2|REMINDER4[10]~18_combout\) # 
-- ((!\C2|C2|REMINDER4[12]~5_combout\) # (!\C2|C2|REMINDER4[11]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000110011001100100011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	dataf => \C2|C3|ALT_INV_LessThan2~1_combout\,
	combout => \C2|C3|LessThan2~3_combout\);

-- Location: MLABCELL_X45_Y5_N36
\C2|C3|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan3~2_combout\ = ( \C2|C3|LessThan3~1_combout\ & ( (!\C2|C2|REMINDER4[12]~5_combout\ & !\C2|C2|REMINDER4[13]~3_combout\) ) ) # ( !\C2|C3|LessThan3~1_combout\ & ( (!\C2|C2|REMINDER4[13]~3_combout\ & ((!\C2|C2|REMINDER4[12]~5_combout\) # 
-- (!\C2|C2|REMINDER4[11]~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	dataf => \C2|C3|ALT_INV_LessThan3~1_combout\,
	combout => \C2|C3|LessThan3~2_combout\);

-- Location: LABCELL_X41_Y6_N12
\C2|C3|REMINDER3[5]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[5]~34_combout\ = ( !\C2|C3|DEC_OUT3[3]~10_combout\ & ( !\C2|C3|LessThan3~2_combout\ & ( (\C2|C3|LessThan2~3_combout\ & (!\C2|C3|LessThan0~3_combout\ & (!\C2|C2|REMINDER4[4]~8_combout\ $ (!\C2|C2|REMINDER4[5]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[4]~8_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	datac => \C2|C3|ALT_INV_LessThan2~3_combout\,
	datad => \C2|C3|ALT_INV_LessThan0~3_combout\,
	datae => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	dataf => \C2|C3|ALT_INV_LessThan3~2_combout\,
	combout => \C2|C3|REMINDER3[5]~34_combout\);

-- Location: LABCELL_X41_Y6_N48
\C2|C3|REMINDER3[5]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[5]~35_combout\ = ( \C2|C2|REMINDER4[5]~7_combout\ & ( \C2|C3|Add0~25_sumout\ & ( (((\C2|C3|Add2~25_sumout\ & !\C2|C3|LessThan2~3_combout\)) # (\C2|C3|DEC_OUT3[3]~10_combout\)) # (\C2|C3|LessThan0~3_combout\) ) ) ) # ( 
-- !\C2|C2|REMINDER4[5]~7_combout\ & ( \C2|C3|Add0~25_sumout\ & ( ((\C2|C3|Add2~25_sumout\ & (!\C2|C3|LessThan2~3_combout\ & !\C2|C3|DEC_OUT3[3]~10_combout\))) # (\C2|C3|LessThan0~3_combout\) ) ) ) # ( \C2|C2|REMINDER4[5]~7_combout\ & ( 
-- !\C2|C3|Add0~25_sumout\ & ( (!\C2|C3|LessThan0~3_combout\ & (((\C2|C3|Add2~25_sumout\ & !\C2|C3|LessThan2~3_combout\)) # (\C2|C3|DEC_OUT3[3]~10_combout\))) ) ) ) # ( !\C2|C2|REMINDER4[5]~7_combout\ & ( !\C2|C3|Add0~25_sumout\ & ( (\C2|C3|Add2~25_sumout\ & 
-- (!\C2|C3|LessThan0~3_combout\ & (!\C2|C3|LessThan2~3_combout\ & !\C2|C3|DEC_OUT3[3]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000001100110001110011001100110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_Add2~25_sumout\,
	datab => \C2|C3|ALT_INV_LessThan0~3_combout\,
	datac => \C2|C3|ALT_INV_LessThan2~3_combout\,
	datad => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	dataf => \C2|C3|ALT_INV_Add0~25_sumout\,
	combout => \C2|C3|REMINDER3[5]~35_combout\);

-- Location: LABCELL_X41_Y5_N15
\C2|C3|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|LessThan4~1_combout\ = ( \C2|C2|REMINDER4[12]~5_combout\ & ( (!\C2|C2|REMINDER4[10]~18_combout\ & (!\C2|C2|REMINDER4[13]~3_combout\ & (!\C2|C3|LessThan4~0_combout\ & !\C2|C2|REMINDER4[11]~20_combout\))) ) ) # ( !\C2|C2|REMINDER4[12]~5_combout\ & ( 
-- !\C2|C2|REMINDER4[13]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	datac => \C2|C3|ALT_INV_LessThan4~0_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	combout => \C2|C3|LessThan4~1_combout\);

-- Location: LABCELL_X41_Y6_N30
\C2|C3|REMINDER3[5]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[5]~30_combout\ = ( !\C2|C3|DEC_OUT3[3]~10_combout\ & ( \C2|C3|LessThan3~2_combout\ & ( (!\C2|C3|LessThan4~1_combout\ & (\C2|C3|Add4~25_sumout\ & (\C2|C3|LessThan2~3_combout\ & !\C2|C3|LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan4~1_combout\,
	datab => \C2|C3|ALT_INV_Add4~25_sumout\,
	datac => \C2|C3|ALT_INV_LessThan2~3_combout\,
	datad => \C2|C3|ALT_INV_LessThan0~3_combout\,
	datae => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	dataf => \C2|C3|ALT_INV_LessThan3~2_combout\,
	combout => \C2|C3|REMINDER3[5]~30_combout\);

-- Location: LABCELL_X41_Y6_N36
\C2|C3|REMINDER3[5]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[5]~33_combout\ = ( \C2|C2|REMINDER4[5]~7_combout\ & ( \C2|C3|LessThan5~1_combout\ & ( (!\C2|C3|REMINDER3[9]~9_combout\ & \C2|C3|Add6~25_sumout\) ) ) ) # ( !\C2|C2|REMINDER4[5]~7_combout\ & ( \C2|C3|LessThan5~1_combout\ & ( 
-- (!\C2|C3|REMINDER3[9]~9_combout\ & \C2|C3|Add6~25_sumout\) ) ) ) # ( !\C2|C2|REMINDER4[5]~7_combout\ & ( !\C2|C3|LessThan5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C3|ALT_INV_REMINDER3[9]~9_combout\,
	datac => \C2|C3|ALT_INV_Add6~25_sumout\,
	datae => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	dataf => \C2|C3|ALT_INV_LessThan5~1_combout\,
	combout => \C2|C3|REMINDER3[5]~33_combout\);

-- Location: LABCELL_X41_Y6_N42
\C2|C3|REMINDER3[4]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[4]~29_combout\ = ( \C2|C3|LessThan3~2_combout\ & ( (\C2|C3|LessThan2~3_combout\ & (!\C2|C3|DEC_OUT3[3]~10_combout\ & (\C2|C3|LessThan4~1_combout\ & !\C2|C3|LessThan0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan2~3_combout\,
	datab => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datac => \C2|C3|ALT_INV_LessThan4~1_combout\,
	datad => \C2|C3|ALT_INV_LessThan0~3_combout\,
	dataf => \C2|C3|ALT_INV_LessThan3~2_combout\,
	combout => \C2|C3|REMINDER3[4]~29_combout\);

-- Location: LABCELL_X41_Y6_N54
\C2|C3|REMINDER3[5]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[5]~36_combout\ = ( \C2|C3|REMINDER3[5]~33_combout\ & ( \C2|C3|REMINDER3[4]~29_combout\ ) ) # ( !\C2|C3|REMINDER3[5]~33_combout\ & ( \C2|C3|REMINDER3[4]~29_combout\ & ( (((\C2|C3|REMINDER3[5]~30_combout\) # 
-- (\C2|C3|REMINDER3[5]~35_combout\)) # (\C2|C3|REMINDER3[5]~34_combout\)) # (\C2|C3|REMINDER3[5]~32_combout\) ) ) ) # ( \C2|C3|REMINDER3[5]~33_combout\ & ( !\C2|C3|REMINDER3[4]~29_combout\ & ( ((\C2|C3|REMINDER3[5]~30_combout\) # 
-- (\C2|C3|REMINDER3[5]~35_combout\)) # (\C2|C3|REMINDER3[5]~34_combout\) ) ) ) # ( !\C2|C3|REMINDER3[5]~33_combout\ & ( !\C2|C3|REMINDER3[4]~29_combout\ & ( ((\C2|C3|REMINDER3[5]~30_combout\) # (\C2|C3|REMINDER3[5]~35_combout\)) # 
-- (\C2|C3|REMINDER3[5]~34_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[5]~32_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[5]~34_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[5]~35_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[5]~30_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[5]~33_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[4]~29_combout\,
	combout => \C2|C3|REMINDER3[5]~36_combout\);

-- Location: LABCELL_X43_Y5_N33
\C2|C3|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add1~1_combout\ = ( \C2|C2|REMINDER4[8]~14_combout\ & ( (!\C2|C2|REMINDER4[6]~12_combout\ & !\C2|C2|REMINDER4[7]~10_combout\) ) ) # ( !\C2|C2|REMINDER4[8]~14_combout\ & ( (\C2|C2|REMINDER4[7]~10_combout\) # (\C2|C2|REMINDER4[6]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	combout => \C2|C3|Add1~1_combout\);

-- Location: LABCELL_X39_Y6_N15
\C2|C3|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add2~13_sumout\ = SUM(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add2~18\ ))
-- \C2|C3|Add2~14\ = CARRY(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	cin => \C2|C3|Add2~18\,
	sumout => \C2|C3|Add2~13_sumout\,
	cout => \C2|C3|Add2~14\);

-- Location: LABCELL_X39_Y6_N45
\C2|C3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add0~13_sumout\ = SUM(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add0~18\ ))
-- \C2|C3|Add0~14\ = CARRY(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	cin => \C2|C3|Add0~18\,
	sumout => \C2|C3|Add0~13_sumout\,
	cout => \C2|C3|Add0~14\);

-- Location: LABCELL_X40_Y5_N15
\C2|C3|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add4~13_sumout\ = SUM(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add4~18\ ))
-- \C2|C3|Add4~14\ = CARRY(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	cin => \C2|C3|Add4~18\,
	sumout => \C2|C3|Add4~13_sumout\,
	cout => \C2|C3|Add4~14\);

-- Location: MLABCELL_X42_Y5_N33
\C2|C3|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add7~1_combout\ = (\C2|C2|REMINDER4[6]~12_combout\ & (\C2|C2|REMINDER4[7]~10_combout\ & !\C2|C3|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datad => \C2|C3|ALT_INV_LessThan7~0_combout\,
	combout => \C2|C3|Add7~1_combout\);

-- Location: MLABCELL_X42_Y5_N15
\C2|C3|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add8~13_sumout\ = SUM(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add8~18\ ))
-- \C2|C3|Add8~14\ = CARRY(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	cin => \C2|C3|Add8~18\,
	sumout => \C2|C3|Add8~13_sumout\,
	cout => \C2|C3|Add8~14\);

-- Location: LABCELL_X40_Y5_N45
\C2|C3|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add6~13_sumout\ = SUM(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add6~18\ ))
-- \C2|C3|Add6~14\ = CARRY(( \C2|C2|REMINDER4[8]~14_combout\ ) + ( GND ) + ( \C2|C3|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	cin => \C2|C3|Add6~18\,
	sumout => \C2|C3|Add6~13_sumout\,
	cout => \C2|C3|Add6~14\);

-- Location: MLABCELL_X42_Y5_N42
\C2|C3|REMINDER3[8]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[8]~22_combout\ = ( \C2|C2|REMINDER4[8]~14_combout\ & ( \C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\) # (\C2|C3|Add8~13_sumout\) ) ) ) # ( !\C2|C2|REMINDER4[8]~14_combout\ & ( \C2|C3|DEC_OUT3~7_combout\ & ( 
-- (\C2|C3|Add8~13_sumout\ & \C2|C3|REMINDER3[9]~0_combout\) ) ) ) # ( \C2|C2|REMINDER4[8]~14_combout\ & ( !\C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add6~13_sumout\))) # (\C2|C3|REMINDER3[9]~0_combout\ & 
-- (!\C2|C3|Add7~1_combout\)) ) ) ) # ( !\C2|C2|REMINDER4[8]~14_combout\ & ( !\C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add6~13_sumout\))) # (\C2|C3|REMINDER3[9]~0_combout\ & (\C2|C3|Add7~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011111010101000000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_Add7~1_combout\,
	datab => \C2|C3|ALT_INV_Add8~13_sumout\,
	datac => \C2|C3|ALT_INV_Add6~13_sumout\,
	datad => \C2|C3|ALT_INV_REMINDER3[9]~0_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3~7_combout\,
	combout => \C2|C3|REMINDER3[8]~22_combout\);

-- Location: LABCELL_X43_Y5_N42
\C2|C3|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add3~1_combout\ = ( \C2|C3|LessThan3~0_combout\ & ( !\C2|C2|REMINDER4[8]~14_combout\ $ (((!\C2|C2|REMINDER4[6]~12_combout\ & !\C2|C2|REMINDER4[7]~10_combout\))) ) ) # ( !\C2|C3|LessThan3~0_combout\ & ( !\C2|C2|REMINDER4[7]~10_combout\ $ 
-- (!\C2|C2|REMINDER4[8]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	dataf => \C2|C3|ALT_INV_LessThan3~0_combout\,
	combout => \C2|C3|Add3~1_combout\);

-- Location: LABCELL_X43_Y5_N45
\C2|C3|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add5~1_combout\ = ( \C2|C2|REMINDER4[5]~7_combout\ & ( !\C2|C2|REMINDER4[7]~10_combout\ $ (!\C2|C2|REMINDER4[8]~14_combout\) ) ) # ( !\C2|C2|REMINDER4[5]~7_combout\ & ( !\C2|C2|REMINDER4[8]~14_combout\ $ (((!\C2|C2|REMINDER4[6]~12_combout\) # 
-- (!\C2|C2|REMINDER4[7]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	combout => \C2|C3|Add5~1_combout\);

-- Location: LABCELL_X43_Y5_N18
\C2|C3|REMINDER3[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[8]~23_combout\ = ( \C2|C3|Add5~1_combout\ & ( \C2|C3|REMINDER3[9]~2_combout\ & ( (!\C2|C3|REMINDER3[9]~3_combout\ & (\C2|C3|REMINDER3[8]~22_combout\)) # (\C2|C3|REMINDER3[9]~3_combout\ & ((\C2|C3|Add3~1_combout\))) ) ) ) # ( 
-- !\C2|C3|Add5~1_combout\ & ( \C2|C3|REMINDER3[9]~2_combout\ & ( (!\C2|C3|REMINDER3[9]~3_combout\ & (\C2|C3|REMINDER3[8]~22_combout\)) # (\C2|C3|REMINDER3[9]~3_combout\ & ((\C2|C3|Add3~1_combout\))) ) ) ) # ( \C2|C3|Add5~1_combout\ & ( 
-- !\C2|C3|REMINDER3[9]~2_combout\ & ( (!\C2|C3|REMINDER3[9]~3_combout\) # (\C2|C3|Add4~13_sumout\) ) ) ) # ( !\C2|C3|Add5~1_combout\ & ( !\C2|C3|REMINDER3[9]~2_combout\ & ( (\C2|C3|REMINDER3[9]~3_combout\ & \C2|C3|Add4~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[9]~3_combout\,
	datab => \C2|C3|ALT_INV_Add4~13_sumout\,
	datac => \C2|C3|ALT_INV_REMINDER3[8]~22_combout\,
	datad => \C2|C3|ALT_INV_Add3~1_combout\,
	datae => \C2|C3|ALT_INV_Add5~1_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~2_combout\,
	combout => \C2|C3|REMINDER3[8]~23_combout\);

-- Location: LABCELL_X43_Y5_N54
\C2|C3|REMINDER3[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[8]~24_combout\ = ( \C2|C3|Add0~13_sumout\ & ( \C2|C3|REMINDER3[8]~23_combout\ & ( ((!\C2|C3|DEC_OUT3[3]~10_combout\ & ((\C2|C3|Add2~13_sumout\))) # (\C2|C3|DEC_OUT3[3]~10_combout\ & (\C2|C3|Add1~1_combout\))) # 
-- (\C2|C3|REMINDER3[9]~5_combout\) ) ) ) # ( !\C2|C3|Add0~13_sumout\ & ( \C2|C3|REMINDER3[8]~23_combout\ & ( (!\C2|C3|REMINDER3[9]~5_combout\ & ((!\C2|C3|DEC_OUT3[3]~10_combout\ & ((\C2|C3|Add2~13_sumout\))) # (\C2|C3|DEC_OUT3[3]~10_combout\ & 
-- (\C2|C3|Add1~1_combout\)))) # (\C2|C3|REMINDER3[9]~5_combout\ & (((!\C2|C3|DEC_OUT3[3]~10_combout\)))) ) ) ) # ( \C2|C3|Add0~13_sumout\ & ( !\C2|C3|REMINDER3[8]~23_combout\ & ( (!\C2|C3|REMINDER3[9]~5_combout\ & ((!\C2|C3|DEC_OUT3[3]~10_combout\ & 
-- ((\C2|C3|Add2~13_sumout\))) # (\C2|C3|DEC_OUT3[3]~10_combout\ & (\C2|C3|Add1~1_combout\)))) # (\C2|C3|REMINDER3[9]~5_combout\ & (((\C2|C3|DEC_OUT3[3]~10_combout\)))) ) ) ) # ( !\C2|C3|Add0~13_sumout\ & ( !\C2|C3|REMINDER3[8]~23_combout\ & ( 
-- (!\C2|C3|REMINDER3[9]~5_combout\ & ((!\C2|C3|DEC_OUT3[3]~10_combout\ & ((\C2|C3|Add2~13_sumout\))) # (\C2|C3|DEC_OUT3[3]~10_combout\ & (\C2|C3|Add1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_Add1~1_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[9]~5_combout\,
	datac => \C2|C3|ALT_INV_Add2~13_sumout\,
	datad => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datae => \C2|C3|ALT_INV_Add0~13_sumout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[8]~23_combout\,
	combout => \C2|C3|REMINDER3[8]~24_combout\);

-- Location: LABCELL_X36_Y3_N21
\C2|C3|REMINDER3[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[3]~11_combout\ = ( \C2|C3|DEC_OUT3~2_combout\ & ( (!\C2|C3|LessThan5~1_combout\ & \C2|C1|C8|IO64_OUT\(3)) ) ) # ( !\C2|C3|DEC_OUT3~2_combout\ & ( (\C2|C1|C8|IO64_OUT\(3) & ((!\C2|C3|LessThan5~1_combout\) # 
-- (\C2|C3|REMINDER3[9]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan5~1_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[9]~9_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	dataf => \C2|C3|ALT_INV_DEC_OUT3~2_combout\,
	combout => \C2|C3|REMINDER3[3]~11_combout\);

-- Location: LABCELL_X36_Y3_N57
\C2|C3|REMINDER3[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[3]~14_combout\ = ( \C2|C3|Add0~5_sumout\ & ( \C2|C3|LessThan3~2_combout\ & ( ((\C2|C1|C8|IO64_OUT\(3) & \C2|C3|DEC_OUT3[3]~10_combout\)) # (\C2|C3|LessThan0~3_combout\) ) ) ) # ( !\C2|C3|Add0~5_sumout\ & ( \C2|C3|LessThan3~2_combout\ & ( 
-- (!\C2|C3|LessThan0~3_combout\ & (\C2|C1|C8|IO64_OUT\(3) & \C2|C3|DEC_OUT3[3]~10_combout\)) ) ) ) # ( \C2|C3|Add0~5_sumout\ & ( !\C2|C3|LessThan3~2_combout\ & ( ((\C2|C1|C8|IO64_OUT\(3) & ((\C2|C3|DEC_OUT3[3]~10_combout\) # (\C2|C3|LessThan2~3_combout\)))) 
-- # (\C2|C3|LessThan0~3_combout\) ) ) ) # ( !\C2|C3|Add0~5_sumout\ & ( !\C2|C3|LessThan3~2_combout\ & ( (!\C2|C3|LessThan0~3_combout\ & (\C2|C1|C8|IO64_OUT\(3) & ((\C2|C3|DEC_OUT3[3]~10_combout\) # (\C2|C3|LessThan2~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010010101110101111100000000000010100101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan0~3_combout\,
	datab => \C2|C3|ALT_INV_LessThan2~3_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(3),
	datad => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datae => \C2|C3|ALT_INV_Add0~5_sumout\,
	dataf => \C2|C3|ALT_INV_LessThan3~2_combout\,
	combout => \C2|C3|REMINDER3[3]~14_combout\);

-- Location: LABCELL_X36_Y3_N18
\C2|C3|REMINDER3[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[3]~12_combout\ = ( !\C2|C3|DEC_OUT3[3]~10_combout\ & ( (\C2|C3|LessThan5~1_combout\ & \C2|C3|LessThan3~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan5~1_combout\,
	datac => \C2|C3|ALT_INV_LessThan3~2_combout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	combout => \C2|C3|REMINDER3[3]~12_combout\);

-- Location: LABCELL_X41_Y5_N48
\C2|C3|REMINDER3[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[3]~7_combout\ = ( \C2|C2|REMINDER4[13]~3_combout\ & ( \C2|C3|LessThan4~0_combout\ & ( \C2|C3|Add4~5_sumout\ ) ) ) # ( !\C2|C2|REMINDER4[13]~3_combout\ & ( \C2|C3|LessThan4~0_combout\ & ( (\C2|C2|REMINDER4[12]~5_combout\ & 
-- \C2|C3|Add4~5_sumout\) ) ) ) # ( \C2|C2|REMINDER4[13]~3_combout\ & ( !\C2|C3|LessThan4~0_combout\ & ( \C2|C3|Add4~5_sumout\ ) ) ) # ( !\C2|C2|REMINDER4[13]~3_combout\ & ( !\C2|C3|LessThan4~0_combout\ & ( (\C2|C2|REMINDER4[12]~5_combout\ & 
-- (\C2|C3|Add4~5_sumout\ & ((\C2|C2|REMINDER4[10]~18_combout\) # (\C2|C2|REMINDER4[11]~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000001111111100000000010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[12]~5_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[11]~20_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[10]~18_combout\,
	datad => \C2|C3|ALT_INV_Add4~5_sumout\,
	datae => \C2|C2|ALT_INV_REMINDER4[13]~3_combout\,
	dataf => \C2|C3|ALT_INV_LessThan4~0_combout\,
	combout => \C2|C3|REMINDER3[3]~7_combout\);

-- Location: LABCELL_X36_Y3_N42
\C2|C3|REMINDER3[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[3]~8_combout\ = ( \C2|C3|Add2~5_sumout\ & ( \C2|C3|LessThan3~2_combout\ & ( (!\C2|C3|DEC_OUT3[3]~10_combout\ & (!\C2|C3|LessThan0~3_combout\ & ((!\C2|C3|LessThan2~3_combout\) # (\C2|C3|REMINDER3[3]~7_combout\)))) ) ) ) # ( 
-- !\C2|C3|Add2~5_sumout\ & ( \C2|C3|LessThan3~2_combout\ & ( (!\C2|C3|DEC_OUT3[3]~10_combout\ & (\C2|C3|REMINDER3[3]~7_combout\ & (!\C2|C3|LessThan0~3_combout\ & \C2|C3|LessThan2~3_combout\))) ) ) ) # ( \C2|C3|Add2~5_sumout\ & ( !\C2|C3|LessThan3~2_combout\ 
-- & ( (!\C2|C3|DEC_OUT3[3]~10_combout\ & (!\C2|C3|LessThan0~3_combout\ & !\C2|C3|LessThan2~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000001000001010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[3]~7_combout\,
	datac => \C2|C3|ALT_INV_LessThan0~3_combout\,
	datad => \C2|C3|ALT_INV_LessThan2~3_combout\,
	datae => \C2|C3|ALT_INV_Add2~5_sumout\,
	dataf => \C2|C3|ALT_INV_LessThan3~2_combout\,
	combout => \C2|C3|REMINDER3[3]~8_combout\);

-- Location: LABCELL_X36_Y3_N3
\C2|C3|REMINDER3[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[3]~13_combout\ = ( !\C2|C3|LessThan0~3_combout\ & ( (\C2|C3|LessThan4~1_combout\ & \C2|C3|LessThan2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan4~1_combout\,
	datac => \C2|C3|ALT_INV_LessThan2~3_combout\,
	dataf => \C2|C3|ALT_INV_LessThan0~3_combout\,
	combout => \C2|C3|REMINDER3[3]~13_combout\);

-- Location: LABCELL_X36_Y3_N12
\C2|C3|REMINDER3[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[3]~10_combout\ = ( \C2|C3|DEC_OUT3~2_combout\ & ( (!\C2|C3|REMINDER3[9]~9_combout\ & (\C2|C3|Add6~5_sumout\)) # (\C2|C3|REMINDER3[9]~9_combout\ & ((\C2|C3|Add8~5_sumout\))) ) ) # ( !\C2|C3|DEC_OUT3~2_combout\ & ( (\C2|C3|Add6~5_sumout\ & 
-- !\C2|C3|REMINDER3[9]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_Add6~5_sumout\,
	datac => \C2|C3|ALT_INV_REMINDER3[9]~9_combout\,
	datad => \C2|C3|ALT_INV_Add8~5_sumout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3~2_combout\,
	combout => \C2|C3|REMINDER3[3]~10_combout\);

-- Location: LABCELL_X36_Y3_N48
\C2|C3|REMINDER3[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[3]~15_combout\ = ( \C2|C3|REMINDER3[3]~13_combout\ & ( \C2|C3|REMINDER3[3]~10_combout\ & ( (((\C2|C3|REMINDER3[3]~8_combout\) # (\C2|C3|REMINDER3[3]~12_combout\)) # (\C2|C3|REMINDER3[3]~14_combout\)) # (\C2|C3|REMINDER3[3]~11_combout\) ) 
-- ) ) # ( !\C2|C3|REMINDER3[3]~13_combout\ & ( \C2|C3|REMINDER3[3]~10_combout\ & ( (\C2|C3|REMINDER3[3]~8_combout\) # (\C2|C3|REMINDER3[3]~14_combout\) ) ) ) # ( \C2|C3|REMINDER3[3]~13_combout\ & ( !\C2|C3|REMINDER3[3]~10_combout\ & ( 
-- ((\C2|C3|REMINDER3[3]~8_combout\) # (\C2|C3|REMINDER3[3]~14_combout\)) # (\C2|C3|REMINDER3[3]~11_combout\) ) ) ) # ( !\C2|C3|REMINDER3[3]~13_combout\ & ( !\C2|C3|REMINDER3[3]~10_combout\ & ( (\C2|C3|REMINDER3[3]~8_combout\) # 
-- (\C2|C3|REMINDER3[3]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111011101111111111100110011111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[3]~11_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[3]~14_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[3]~12_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[3]~8_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[3]~13_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[3]~10_combout\,
	combout => \C2|C3|REMINDER3[3]~15_combout\);

-- Location: LABCELL_X41_Y6_N18
\C2|C3|REMINDER3[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[4]~20_combout\ = ( \C2|C3|DEC_OUT3[3]~10_combout\ & ( \C2|C3|LessThan3~2_combout\ & ( (!\C2|C3|LessThan0~3_combout\ & (\C2|C2|REMINDER4[4]~8_combout\)) # (\C2|C3|LessThan0~3_combout\ & ((\C2|C3|Add0~9_sumout\))) ) ) ) # ( 
-- !\C2|C3|DEC_OUT3[3]~10_combout\ & ( \C2|C3|LessThan3~2_combout\ & ( (\C2|C3|Add0~9_sumout\ & \C2|C3|LessThan0~3_combout\) ) ) ) # ( \C2|C3|DEC_OUT3[3]~10_combout\ & ( !\C2|C3|LessThan3~2_combout\ & ( (!\C2|C3|LessThan0~3_combout\ & 
-- (\C2|C2|REMINDER4[4]~8_combout\)) # (\C2|C3|LessThan0~3_combout\ & ((\C2|C3|Add0~9_sumout\))) ) ) ) # ( !\C2|C3|DEC_OUT3[3]~10_combout\ & ( !\C2|C3|LessThan3~2_combout\ & ( (!\C2|C3|LessThan0~3_combout\ & (!\C2|C2|REMINDER4[4]~8_combout\ & 
-- ((\C2|C3|LessThan2~3_combout\)))) # (\C2|C3|LessThan0~3_combout\ & (((\C2|C3|Add0~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000110011010101010011001100000000001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[4]~8_combout\,
	datab => \C2|C3|ALT_INV_Add0~9_sumout\,
	datac => \C2|C3|ALT_INV_LessThan2~3_combout\,
	datad => \C2|C3|ALT_INV_LessThan0~3_combout\,
	datae => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	dataf => \C2|C3|ALT_INV_LessThan3~2_combout\,
	combout => \C2|C3|REMINDER3[4]~20_combout\);

-- Location: LABCELL_X41_Y6_N45
\C2|C3|REMINDER3[4]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[4]~16_combout\ = (!\C2|C3|LessThan2~3_combout\ & (!\C2|C3|DEC_OUT3[3]~10_combout\ & (!\C2|C3|LessThan0~3_combout\ & \C2|C3|Add2~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan2~3_combout\,
	datab => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datac => \C2|C3|ALT_INV_LessThan0~3_combout\,
	datad => \C2|C3|ALT_INV_Add2~9_sumout\,
	combout => \C2|C3|REMINDER3[4]~16_combout\);

-- Location: LABCELL_X36_Y3_N27
\C2|C3|REMINDER3[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[4]~17_combout\ = ( \C2|C3|LessThan3~2_combout\ & ( (!\C2|C3|DEC_OUT3[3]~10_combout\ & (\C2|C3|LessThan2~3_combout\ & !\C2|C3|LessThan0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	datac => \C2|C3|ALT_INV_LessThan2~3_combout\,
	datad => \C2|C3|ALT_INV_LessThan0~3_combout\,
	dataf => \C2|C3|ALT_INV_LessThan3~2_combout\,
	combout => \C2|C3|REMINDER3[4]~17_combout\);

-- Location: LABCELL_X44_Y5_N42
\C2|C3|REMINDER3[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[4]~18_combout\ = ( \C2|C3|LessThan5~0_combout\ & ( (!\C2|C3|LessThan8~1_combout\ & ((!\C2|C3|LessThan0~2_combout\ & (\C2|C3|Add8~9_sumout\)) # (\C2|C3|LessThan0~2_combout\ & ((\C2|C2|REMINDER4[4]~8_combout\))))) # 
-- (\C2|C3|LessThan8~1_combout\ & (((\C2|C3|Add8~9_sumout\)))) ) ) # ( !\C2|C3|LessThan5~0_combout\ & ( \C2|C3|Add8~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan8~1_combout\,
	datab => \C2|C3|ALT_INV_LessThan0~2_combout\,
	datac => \C2|C3|ALT_INV_Add8~9_sumout\,
	datad => \C2|C2|ALT_INV_REMINDER4[4]~8_combout\,
	dataf => \C2|C3|ALT_INV_LessThan5~0_combout\,
	combout => \C2|C3|REMINDER3[4]~18_combout\);

-- Location: LABCELL_X44_Y5_N48
\C2|C3|REMINDER3[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[4]~19_combout\ = ( \C2|C2|REMINDER4[4]~8_combout\ & ( \C2|C3|REMINDER3[9]~9_combout\ & ( (!\C2|C3|LessThan5~1_combout\) # ((\C2|C3|REMINDER3[4]~18_combout\ & \C2|C3|LessThan7~3_combout\)) ) ) ) # ( !\C2|C2|REMINDER4[4]~8_combout\ & ( 
-- \C2|C3|REMINDER3[9]~9_combout\ & ( (\C2|C3|LessThan5~1_combout\ & ((!\C2|C3|LessThan7~3_combout\) # (\C2|C3|REMINDER3[4]~18_combout\))) ) ) ) # ( \C2|C2|REMINDER4[4]~8_combout\ & ( !\C2|C3|REMINDER3[9]~9_combout\ & ( (!\C2|C3|LessThan5~1_combout\) # 
-- (\C2|C3|Add6~9_sumout\) ) ) ) # ( !\C2|C2|REMINDER4[4]~8_combout\ & ( !\C2|C3|REMINDER3[9]~9_combout\ & ( (\C2|C3|LessThan5~1_combout\ & \C2|C3|Add6~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111101010101000100011010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_LessThan5~1_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[4]~18_combout\,
	datac => \C2|C3|ALT_INV_Add6~9_sumout\,
	datad => \C2|C3|ALT_INV_LessThan7~3_combout\,
	datae => \C2|C2|ALT_INV_REMINDER4[4]~8_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~9_combout\,
	combout => \C2|C3|REMINDER3[4]~19_combout\);

-- Location: LABCELL_X41_Y6_N24
\C2|C3|REMINDER3[4]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[4]~21_combout\ = ( \C2|C3|REMINDER3[4]~17_combout\ & ( \C2|C3|REMINDER3[4]~19_combout\ & ( (((\C2|C3|REMINDER3[4]~16_combout\) # (\C2|C3|LessThan4~1_combout\)) # (\C2|C3|Add4~9_sumout\)) # (\C2|C3|REMINDER3[4]~20_combout\) ) ) ) # ( 
-- !\C2|C3|REMINDER3[4]~17_combout\ & ( \C2|C3|REMINDER3[4]~19_combout\ & ( (\C2|C3|REMINDER3[4]~16_combout\) # (\C2|C3|REMINDER3[4]~20_combout\) ) ) ) # ( \C2|C3|REMINDER3[4]~17_combout\ & ( !\C2|C3|REMINDER3[4]~19_combout\ & ( (((\C2|C3|Add4~9_sumout\ & 
-- !\C2|C3|LessThan4~1_combout\)) # (\C2|C3|REMINDER3[4]~16_combout\)) # (\C2|C3|REMINDER3[4]~20_combout\) ) ) ) # ( !\C2|C3|REMINDER3[4]~17_combout\ & ( !\C2|C3|REMINDER3[4]~19_combout\ & ( (\C2|C3|REMINDER3[4]~16_combout\) # 
-- (\C2|C3|REMINDER3[4]~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111011101011111111101010101111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[4]~20_combout\,
	datab => \C2|C3|ALT_INV_Add4~9_sumout\,
	datac => \C2|C3|ALT_INV_LessThan4~1_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[4]~16_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[4]~17_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[4]~19_combout\,
	combout => \C2|C3|REMINDER3[4]~21_combout\);

-- Location: LABCELL_X41_Y3_N21
\C2|C4|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan3~0_combout\ = ( \C2|C3|REMINDER3[5]~36_combout\ ) # ( !\C2|C3|REMINDER3[5]~36_combout\ & ( (\C2|C3|REMINDER3[3]~15_combout\ & \C2|C3|REMINDER3[4]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	combout => \C2|C4|LessThan3~0_combout\);

-- Location: MLABCELL_X42_Y3_N21
\C2|C4|DEC_OUT2[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|DEC_OUT2[1]~5_combout\ = ( \C2|C4|LessThan3~0_combout\ & ( (!\C2|C3|REMINDER3[7]~41_combout\ & ((!\C2|C3|REMINDER3[6]~28_combout\ & (!\C2|C3|REMINDER3[5]~36_combout\ & \C2|C3|REMINDER3[8]~24_combout\)) # (\C2|C3|REMINDER3[6]~28_combout\ & 
-- ((!\C2|C3|REMINDER3[8]~24_combout\))))) # (\C2|C3|REMINDER3[7]~41_combout\ & (((!\C2|C3|REMINDER3[8]~24_combout\)))) ) ) # ( !\C2|C4|LessThan3~0_combout\ & ( (!\C2|C3|REMINDER3[7]~41_combout\ & (!\C2|C3|REMINDER3[6]~28_combout\ & 
-- (!\C2|C3|REMINDER3[5]~36_combout\ & \C2|C3|REMINDER3[8]~24_combout\))) # (\C2|C3|REMINDER3[7]~41_combout\ & (((!\C2|C3|REMINDER3[8]~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110000000010101011000000001110111100000000111011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C4|ALT_INV_LessThan3~0_combout\,
	combout => \C2|C4|DEC_OUT2[1]~5_combout\);

-- Location: LABCELL_X41_Y3_N36
\C2|C4|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan5~0_combout\ = ( !\C2|C3|REMINDER3[5]~36_combout\ & ( !\C2|C3|REMINDER3[4]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	combout => \C2|C4|LessThan5~0_combout\);

-- Location: MLABCELL_X42_Y5_N18
\C2|C3|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add8~1_sumout\ = SUM(( \C2|C2|REMINDER4[9]~16_combout\ ) + ( GND ) + ( \C2|C3|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	cin => \C2|C3|Add8~14\,
	sumout => \C2|C3|Add8~1_sumout\);

-- Location: MLABCELL_X42_Y5_N30
\C2|C3|Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add7~0_combout\ = (\C2|C2|REMINDER4[6]~12_combout\ & (\C2|C2|REMINDER4[7]~10_combout\ & (!\C2|C3|LessThan7~0_combout\ & \C2|C2|REMINDER4[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datac => \C2|C3|ALT_INV_LessThan7~0_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	combout => \C2|C3|Add7~0_combout\);

-- Location: LABCELL_X40_Y5_N48
\C2|C3|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add6~1_sumout\ = SUM(( \C2|C2|REMINDER4[9]~16_combout\ ) + ( GND ) + ( \C2|C3|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	cin => \C2|C3|Add6~14\,
	sumout => \C2|C3|Add6~1_sumout\);

-- Location: MLABCELL_X42_Y5_N36
\C2|C3|REMINDER3[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[9]~1_combout\ = ( \C2|C3|Add6~1_sumout\ & ( \C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\ & (\C2|C2|REMINDER4[9]~16_combout\)) # (\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add8~1_sumout\))) ) ) ) # ( 
-- !\C2|C3|Add6~1_sumout\ & ( \C2|C3|DEC_OUT3~7_combout\ & ( (!\C2|C3|REMINDER3[9]~0_combout\ & (\C2|C2|REMINDER4[9]~16_combout\)) # (\C2|C3|REMINDER3[9]~0_combout\ & ((\C2|C3|Add8~1_sumout\))) ) ) ) # ( \C2|C3|Add6~1_sumout\ & ( !\C2|C3|DEC_OUT3~7_combout\ 
-- & ( (!\C2|C3|REMINDER3[9]~0_combout\) # (!\C2|C2|REMINDER4[9]~16_combout\ $ (!\C2|C3|Add7~0_combout\)) ) ) ) # ( !\C2|C3|Add6~1_sumout\ & ( !\C2|C3|DEC_OUT3~7_combout\ & ( (\C2|C3|REMINDER3[9]~0_combout\ & (!\C2|C2|REMINDER4[9]~16_combout\ $ 
-- (!\C2|C3|Add7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010110111011110111001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[9]~0_combout\,
	datac => \C2|C3|ALT_INV_Add8~1_sumout\,
	datad => \C2|C3|ALT_INV_Add7~0_combout\,
	datae => \C2|C3|ALT_INV_Add6~1_sumout\,
	dataf => \C2|C3|ALT_INV_DEC_OUT3~7_combout\,
	combout => \C2|C3|REMINDER3[9]~1_combout\);

-- Location: LABCELL_X43_Y5_N48
\C2|C3|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add3~0_combout\ = ( \C2|C2|REMINDER4[9]~16_combout\ & ( (!\C2|C2|REMINDER4[8]~14_combout\) # ((!\C2|C2|REMINDER4[7]~10_combout\ & ((!\C2|C2|REMINDER4[6]~12_combout\) # (!\C2|C3|LessThan3~0_combout\)))) ) ) # ( !\C2|C2|REMINDER4[9]~16_combout\ & ( 
-- (\C2|C2|REMINDER4[8]~14_combout\ & (((\C2|C2|REMINDER4[6]~12_combout\ & \C2|C3|LessThan3~0_combout\)) # (\C2|C2|REMINDER4[7]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111000000110000011111111100111110001111110011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	datad => \C2|C3|ALT_INV_LessThan3~0_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	combout => \C2|C3|Add3~0_combout\);

-- Location: LABCELL_X40_Y5_N18
\C2|C3|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add4~1_sumout\ = SUM(( \C2|C2|REMINDER4[9]~16_combout\ ) + ( GND ) + ( \C2|C3|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	cin => \C2|C3|Add4~14\,
	sumout => \C2|C3|Add4~1_sumout\);

-- Location: LABCELL_X43_Y5_N51
\C2|C3|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add5~0_combout\ = ( \C2|C2|REMINDER4[5]~7_combout\ & ( !\C2|C2|REMINDER4[9]~16_combout\ $ (((!\C2|C2|REMINDER4[7]~10_combout\) # (!\C2|C2|REMINDER4[8]~14_combout\))) ) ) # ( !\C2|C2|REMINDER4[5]~7_combout\ & ( !\C2|C2|REMINDER4[9]~16_combout\ $ 
-- (((!\C2|C2|REMINDER4[6]~12_combout\) # ((!\C2|C2|REMINDER4[7]~10_combout\) # (!\C2|C2|REMINDER4[8]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110001111000001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	datad => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[5]~7_combout\,
	combout => \C2|C3|Add5~0_combout\);

-- Location: LABCELL_X43_Y5_N24
\C2|C3|REMINDER3[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[9]~4_combout\ = ( \C2|C3|REMINDER3[9]~3_combout\ & ( \C2|C3|Add5~0_combout\ & ( (!\C2|C3|REMINDER3[9]~2_combout\ & ((\C2|C3|Add4~1_sumout\))) # (\C2|C3|REMINDER3[9]~2_combout\ & (\C2|C3|Add3~0_combout\)) ) ) ) # ( 
-- !\C2|C3|REMINDER3[9]~3_combout\ & ( \C2|C3|Add5~0_combout\ & ( (!\C2|C3|REMINDER3[9]~2_combout\) # (\C2|C3|REMINDER3[9]~1_combout\) ) ) ) # ( \C2|C3|REMINDER3[9]~3_combout\ & ( !\C2|C3|Add5~0_combout\ & ( (!\C2|C3|REMINDER3[9]~2_combout\ & 
-- ((\C2|C3|Add4~1_sumout\))) # (\C2|C3|REMINDER3[9]~2_combout\ & (\C2|C3|Add3~0_combout\)) ) ) ) # ( !\C2|C3|REMINDER3[9]~3_combout\ & ( !\C2|C3|Add5~0_combout\ & ( (\C2|C3|REMINDER3[9]~1_combout\ & \C2|C3|REMINDER3[9]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[9]~1_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[9]~2_combout\,
	datac => \C2|C3|ALT_INV_Add3~0_combout\,
	datad => \C2|C3|ALT_INV_Add4~1_sumout\,
	datae => \C2|C3|ALT_INV_REMINDER3[9]~3_combout\,
	dataf => \C2|C3|ALT_INV_Add5~0_combout\,
	combout => \C2|C3|REMINDER3[9]~4_combout\);

-- Location: LABCELL_X39_Y6_N48
\C2|C3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add0~1_sumout\ = SUM(( \C2|C2|REMINDER4[9]~16_combout\ ) + ( GND ) + ( \C2|C3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	cin => \C2|C3|Add0~14\,
	sumout => \C2|C3|Add0~1_sumout\);

-- Location: LABCELL_X43_Y5_N30
\C2|C3|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add1~0_combout\ = ( \C2|C2|REMINDER4[8]~14_combout\ & ( !\C2|C2|REMINDER4[9]~16_combout\ $ (((!\C2|C2|REMINDER4[6]~12_combout\ & !\C2|C2|REMINDER4[7]~10_combout\))) ) ) # ( !\C2|C2|REMINDER4[8]~14_combout\ & ( \C2|C2|REMINDER4[9]~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C2|ALT_INV_REMINDER4[6]~12_combout\,
	datab => \C2|C2|ALT_INV_REMINDER4[7]~10_combout\,
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	dataf => \C2|C2|ALT_INV_REMINDER4[8]~14_combout\,
	combout => \C2|C3|Add1~0_combout\);

-- Location: LABCELL_X39_Y6_N18
\C2|C3|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|Add2~1_sumout\ = SUM(( \C2|C2|REMINDER4[9]~16_combout\ ) + ( GND ) + ( \C2|C3|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C2|ALT_INV_REMINDER4[9]~16_combout\,
	cin => \C2|C3|Add2~14\,
	sumout => \C2|C3|Add2~1_sumout\);

-- Location: LABCELL_X43_Y5_N36
\C2|C3|REMINDER3[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C3|REMINDER3[9]~6_combout\ = ( \C2|C3|DEC_OUT3[3]~10_combout\ & ( \C2|C3|Add2~1_sumout\ & ( (!\C2|C3|REMINDER3[9]~5_combout\ & ((\C2|C3|Add1~0_combout\))) # (\C2|C3|REMINDER3[9]~5_combout\ & (\C2|C3|Add0~1_sumout\)) ) ) ) # ( 
-- !\C2|C3|DEC_OUT3[3]~10_combout\ & ( \C2|C3|Add2~1_sumout\ & ( (!\C2|C3|REMINDER3[9]~5_combout\) # (\C2|C3|REMINDER3[9]~4_combout\) ) ) ) # ( \C2|C3|DEC_OUT3[3]~10_combout\ & ( !\C2|C3|Add2~1_sumout\ & ( (!\C2|C3|REMINDER3[9]~5_combout\ & 
-- ((\C2|C3|Add1~0_combout\))) # (\C2|C3|REMINDER3[9]~5_combout\ & (\C2|C3|Add0~1_sumout\)) ) ) ) # ( !\C2|C3|DEC_OUT3[3]~10_combout\ & ( !\C2|C3|Add2~1_sumout\ & ( (\C2|C3|REMINDER3[9]~4_combout\ & \C2|C3|REMINDER3[9]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[9]~4_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[9]~5_combout\,
	datac => \C2|C3|ALT_INV_Add0~1_sumout\,
	datad => \C2|C3|ALT_INV_Add1~0_combout\,
	datae => \C2|C3|ALT_INV_DEC_OUT3[3]~10_combout\,
	dataf => \C2|C3|ALT_INV_Add2~1_sumout\,
	combout => \C2|C3|REMINDER3[9]~6_combout\);

-- Location: MLABCELL_X42_Y3_N42
\C2|C4|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan5~1_combout\ = ( \C2|C3|REMINDER3[8]~24_combout\ & ( !\C2|C3|REMINDER3[9]~6_combout\ & ( (!\C2|C3|REMINDER3[7]~41_combout\) # ((\C2|C4|LessThan5~0_combout\ & !\C2|C3|REMINDER3[6]~28_combout\)) ) ) ) # ( !\C2|C3|REMINDER3[8]~24_combout\ & ( 
-- !\C2|C3|REMINDER3[9]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101001111010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_LessThan5~0_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|LessThan5~1_combout\);

-- Location: LABCELL_X41_Y3_N18
\C2|C4|Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|Add7~0_combout\ = ( !\C2|C3|REMINDER3[5]~36_combout\ & ( (!\C2|C3|REMINDER3[3]~15_combout\ & !\C2|C3|REMINDER3[4]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	combout => \C2|C4|Add7~0_combout\);

-- Location: MLABCELL_X42_Y4_N42
\C2|C4|DEC_OUT2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|DEC_OUT2~4_combout\ = ( !\C2|C3|REMINDER3[9]~6_combout\ & ( (!\C2|C3|REMINDER3[8]~24_combout\ & ((!\C2|C3|REMINDER3[7]~41_combout\) # ((!\C2|C3|REMINDER3[6]~28_combout\) # (\C2|C4|Add7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001010101010101000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datac => \C2|C4|ALT_INV_Add7~0_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|DEC_OUT2~4_combout\);

-- Location: MLABCELL_X42_Y3_N27
\C2|C4|DEC_OUT2[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|DEC_OUT2[1]~6_combout\ = ( \C2|C4|DEC_OUT2~4_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ & ( \C2|C4|DEC_OUT2[1]~5_combout\ ) ) ) # ( !\C2|C4|DEC_OUT2~4_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ & ( (\C2|C4|LessThan5~1_combout\) # 
-- (\C2|C4|DEC_OUT2[1]~5_combout\) ) ) ) # ( !\C2|C4|DEC_OUT2~4_combout\ & ( !\C2|C3|REMINDER3[9]~6_combout\ & ( \C2|C4|LessThan5~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000001011111010111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_DEC_OUT2[1]~5_combout\,
	datac => \C2|C4|ALT_INV_LessThan5~1_combout\,
	datae => \C2|C4|ALT_INV_DEC_OUT2~4_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|DEC_OUT2[1]~6_combout\);

-- Location: LABCELL_X41_Y3_N39
\C2|C4|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan0~0_combout\ = ( \C2|C3|REMINDER3[3]~15_combout\ ) # ( !\C2|C3|REMINDER3[3]~15_combout\ & ( (\C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\) # (\C2|C3|REMINDER3[4]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT[2]~DUPLICATE_q\,
	dataf => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	combout => \C2|C4|LessThan0~0_combout\);

-- Location: LABCELL_X43_Y3_N36
\C2|C4|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan3~1_combout\ = (\C2|C3|REMINDER3[6]~28_combout\ & \C2|C4|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datac => \C2|C4|ALT_INV_LessThan3~0_combout\,
	combout => \C2|C4|LessThan3~1_combout\);

-- Location: LABCELL_X41_Y3_N15
\C2|C4|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan2~0_combout\ = ( \C2|C3|REMINDER3[3]~15_combout\ & ( (\C2|C3|REMINDER3[4]~21_combout\ & \C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT[2]~DUPLICATE_q\,
	dataf => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	combout => \C2|C4|LessThan2~0_combout\);

-- Location: LABCELL_X43_Y3_N15
\C2|C4|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan2~1_combout\ = (!\C2|C3|REMINDER3[6]~28_combout\ & ((!\C2|C3|REMINDER3[5]~36_combout\) # (!\C2|C4|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	datad => \C2|C4|ALT_INV_LessThan2~0_combout\,
	combout => \C2|C4|LessThan2~1_combout\);

-- Location: LABCELL_X43_Y3_N39
\C2|C4|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan1~0_combout\ = ( !\C2|C3|REMINDER3[5]~36_combout\ & ( !\C2|C3|REMINDER3[6]~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	combout => \C2|C4|LessThan1~0_combout\);

-- Location: LABCELL_X43_Y3_N48
\C2|C4|DEC_OUT2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|DEC_OUT2[0]~0_combout\ = ( \C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C4|LessThan1~0_combout\ & ( (!\C2|C4|LessThan0~0_combout\ & \C2|C3|REMINDER3[7]~41_combout\) ) ) ) # ( !\C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C4|LessThan1~0_combout\ & ( 
-- (!\C2|C3|REMINDER3[7]~41_combout\ & (\C2|C4|LessThan3~1_combout\)) # (\C2|C3|REMINDER3[7]~41_combout\ & ((\C2|C4|LessThan2~1_combout\))) ) ) ) # ( \C2|C3|REMINDER3[8]~24_combout\ & ( !\C2|C4|LessThan1~0_combout\ & ( !\C2|C3|REMINDER3[7]~41_combout\ ) ) ) 
-- # ( !\C2|C3|REMINDER3[8]~24_combout\ & ( !\C2|C4|LessThan1~0_combout\ & ( (!\C2|C3|REMINDER3[7]~41_combout\ & (\C2|C4|LessThan3~1_combout\)) # (\C2|C3|REMINDER3[7]~41_combout\ & ((\C2|C4|LessThan2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111111100001111000000110000001111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_LessThan0~0_combout\,
	datab => \C2|C4|ALT_INV_LessThan3~1_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datad => \C2|C4|ALT_INV_LessThan2~1_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C4|ALT_INV_LessThan1~0_combout\,
	combout => \C2|C4|DEC_OUT2[0]~0_combout\);

-- Location: LABCELL_X41_Y3_N27
\C2|C4|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan8~0_combout\ = ( \C2|C3|REMINDER3[3]~15_combout\ & ( \C2|C3|REMINDER3[5]~36_combout\ ) ) # ( !\C2|C3|REMINDER3[3]~15_combout\ & ( (\C2|C3|REMINDER3[5]~36_combout\ & ((\C2|C3|REMINDER3[4]~21_combout\) # (\C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[2]~DUPLICATE_q\,
	datab => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	combout => \C2|C4|LessThan8~0_combout\);

-- Location: LABCELL_X41_Y3_N3
\C2|C4|DEC_OUT2[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|DEC_OUT2[0]~1_combout\ = ( !\C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[6]~28_combout\ & ( (!\C2|C3|REMINDER3[7]~41_combout\ & ((\C2|C4|LessThan8~0_combout\))) # (\C2|C3|REMINDER3[7]~41_combout\ & (\C2|C4|Add7~0_combout\)) ) ) ) # ( 
-- !\C2|C3|REMINDER3[8]~24_combout\ & ( !\C2|C3|REMINDER3[6]~28_combout\ & ( \C2|C3|REMINDER3[7]~41_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000001111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_Add7~0_combout\,
	datac => \C2|C4|ALT_INV_LessThan8~0_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	combout => \C2|C4|DEC_OUT2[0]~1_combout\);

-- Location: LABCELL_X41_Y3_N24
\C2|C4|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan6~0_combout\ = ( \C2|C3|REMINDER3[3]~15_combout\ & ( (\C2|C3|REMINDER3[5]~36_combout\ & ((\C2|C3|REMINDER3[4]~21_combout\) # (\C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\))) ) ) # ( !\C2|C3|REMINDER3[3]~15_combout\ & ( 
-- (\C2|C3|REMINDER3[4]~21_combout\ & \C2|C3|REMINDER3[5]~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[2]~DUPLICATE_q\,
	datab => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	combout => \C2|C4|LessThan6~0_combout\);

-- Location: FF_X42_Y4_N35
\C2|C1|C8|IO64_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C1|COUNT\(20),
	asdata => \C2|C1|C6|RAM_IN\(2),
	sload => VCC,
	ena => \C2|C1|C8|IO64_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C1|C8|IO64_OUT\(2));

-- Location: MLABCELL_X42_Y4_N39
\C2|C4|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan4~0_combout\ = ( \C2|C3|REMINDER3[5]~36_combout\ & ( (\C2|C3|REMINDER3[4]~21_combout\ & ((\C2|C3|REMINDER3[3]~15_combout\) # (\C2|C1|C8|IO64_OUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(2),
	datac => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	combout => \C2|C4|LessThan4~0_combout\);

-- Location: MLABCELL_X42_Y3_N6
\C2|C4|DEC_OUT2[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|DEC_OUT2[0]~2_combout\ = ( \C2|C4|LessThan6~0_combout\ & ( \C2|C4|LessThan4~0_combout\ & ( (\C2|C3|REMINDER3[8]~24_combout\ & (((!\C2|C3|REMINDER3[7]~41_combout\) # (\C2|C4|LessThan5~0_combout\)) # (\C2|C3|REMINDER3[6]~28_combout\))) ) ) ) # ( 
-- !\C2|C4|LessThan6~0_combout\ & ( \C2|C4|LessThan4~0_combout\ & ( (\C2|C3|REMINDER3[8]~24_combout\ & (((\C2|C3|REMINDER3[7]~41_combout\ & \C2|C4|LessThan5~0_combout\)) # (\C2|C3|REMINDER3[6]~28_combout\))) ) ) ) # ( \C2|C4|LessThan6~0_combout\ & ( 
-- !\C2|C4|LessThan4~0_combout\ & ( (\C2|C3|REMINDER3[8]~24_combout\ & ((!\C2|C3|REMINDER3[7]~41_combout\) # ((!\C2|C3|REMINDER3[6]~28_combout\ & \C2|C4|LessThan5~0_combout\)))) ) ) ) # ( !\C2|C4|LessThan6~0_combout\ & ( !\C2|C4|LessThan4~0_combout\ & ( 
-- (\C2|C3|REMINDER3[8]~24_combout\ & ((!\C2|C3|REMINDER3[6]~28_combout\ & (\C2|C3|REMINDER3[7]~41_combout\ & \C2|C4|LessThan5~0_combout\)) # (\C2|C3|REMINDER3[6]~28_combout\ & (!\C2|C3|REMINDER3[7]~41_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010100010100000101010000010001000101010101000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datad => \C2|C4|ALT_INV_LessThan5~0_combout\,
	datae => \C2|C4|ALT_INV_LessThan6~0_combout\,
	dataf => \C2|C4|ALT_INV_LessThan4~0_combout\,
	combout => \C2|C4|DEC_OUT2[0]~2_combout\);

-- Location: LABCELL_X41_Y3_N12
\C2|C4|DEC_OUT2[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|DEC_OUT2[0]~3_combout\ = ( \C2|C3|REMINDER3[9]~6_combout\ & ( \C2|C4|DEC_OUT2[0]~0_combout\ ) ) # ( !\C2|C3|REMINDER3[9]~6_combout\ & ( (!\C2|C4|DEC_OUT2[0]~1_combout\ & !\C2|C4|DEC_OUT2[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C4|ALT_INV_DEC_OUT2[0]~0_combout\,
	datac => \C2|C4|ALT_INV_DEC_OUT2[0]~1_combout\,
	datad => \C2|C4|ALT_INV_DEC_OUT2[0]~2_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|DEC_OUT2[0]~3_combout\);

-- Location: MLABCELL_X42_Y3_N0
\C2|C4|DEC_OUT2[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|DEC_OUT2[2]~7_combout\ = ( \C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ & ( (!\C2|C3|REMINDER3[5]~36_combout\ & (!\C2|C3|REMINDER3[7]~41_combout\ & !\C2|C3|REMINDER3[6]~28_combout\)) ) ) ) # ( !\C2|C3|REMINDER3[8]~24_combout\ 
-- & ( \C2|C3|REMINDER3[9]~6_combout\ ) ) # ( \C2|C3|REMINDER3[8]~24_combout\ & ( !\C2|C3|REMINDER3[9]~6_combout\ & ( (\C2|C3|REMINDER3[7]~41_combout\ & ((!\C2|C4|LessThan5~0_combout\) # (\C2|C3|REMINDER3[6]~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000111111111111111111111100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_LessThan5~0_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|DEC_OUT2[2]~7_combout\);

-- Location: LABCELL_X43_Y3_N12
\C2|C4|DEC_OUT2[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|DEC_OUT2[3]~8_combout\ = ( \C2|C3|REMINDER3[9]~6_combout\ & ( (\C2|C3|REMINDER3[8]~24_combout\ & (((\C2|C3|REMINDER3[7]~41_combout\) # (\C2|C3|REMINDER3[5]~36_combout\)) # (\C2|C3|REMINDER3[6]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|DEC_OUT2[3]~8_combout\);

-- Location: LABCELL_X43_Y3_N54
\C2|C8|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C8|Mux6~0_combout\ = ( \C2|C4|DEC_OUT2[3]~8_combout\ & ( (\C2|C4|DEC_OUT2[2]~7_combout\) # (\C2|C4|DEC_OUT2[1]~6_combout\) ) ) # ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( (!\C2|C4|DEC_OUT2[1]~6_combout\ & (!\C2|C4|DEC_OUT2[0]~3_combout\ $ 
-- (\C2|C4|DEC_OUT2[2]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_DEC_OUT2[1]~6_combout\,
	datab => \C2|C4|ALT_INV_DEC_OUT2[0]~3_combout\,
	datac => \C2|C4|ALT_INV_DEC_OUT2[2]~7_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	combout => \C2|C8|Mux6~0_combout\);

-- Location: LABCELL_X43_Y3_N30
\C2|C8|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C8|Mux5~0_combout\ = ( \C2|C4|DEC_OUT2[3]~8_combout\ & ( (\C2|C4|DEC_OUT2[2]~7_combout\) # (\C2|C4|DEC_OUT2[1]~6_combout\) ) ) # ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( (\C2|C4|DEC_OUT2[2]~7_combout\ & (!\C2|C4|DEC_OUT2[1]~6_combout\ $ 
-- (\C2|C4|DEC_OUT2[0]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_DEC_OUT2[1]~6_combout\,
	datab => \C2|C4|ALT_INV_DEC_OUT2[0]~3_combout\,
	datac => \C2|C4|ALT_INV_DEC_OUT2[2]~7_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	combout => \C2|C8|Mux5~0_combout\);

-- Location: LABCELL_X43_Y3_N9
\C2|C8|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C8|Mux4~0_combout\ = ( \C2|C4|DEC_OUT2[3]~8_combout\ & ( (\C2|C4|DEC_OUT2[2]~7_combout\) # (\C2|C4|DEC_OUT2[1]~6_combout\) ) ) # ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( (\C2|C4|DEC_OUT2[1]~6_combout\ & (\C2|C4|DEC_OUT2[0]~3_combout\ & 
-- !\C2|C4|DEC_OUT2[2]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_DEC_OUT2[1]~6_combout\,
	datac => \C2|C4|ALT_INV_DEC_OUT2[0]~3_combout\,
	datad => \C2|C4|ALT_INV_DEC_OUT2[2]~7_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	combout => \C2|C8|Mux4~0_combout\);

-- Location: LABCELL_X43_Y3_N33
\C2|C8|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C8|Mux3~0_combout\ = ( \C2|C4|DEC_OUT2[3]~8_combout\ & ( (\C2|C4|DEC_OUT2[2]~7_combout\) # (\C2|C4|DEC_OUT2[1]~6_combout\) ) ) # ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( (!\C2|C4|DEC_OUT2[1]~6_combout\ & (!\C2|C4|DEC_OUT2[0]~3_combout\ $ 
-- (\C2|C4|DEC_OUT2[2]~7_combout\))) # (\C2|C4|DEC_OUT2[1]~6_combout\ & (!\C2|C4|DEC_OUT2[0]~3_combout\ & \C2|C4|DEC_OUT2[2]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001011010101000000101101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_DEC_OUT2[1]~6_combout\,
	datac => \C2|C4|ALT_INV_DEC_OUT2[0]~3_combout\,
	datad => \C2|C4|ALT_INV_DEC_OUT2[2]~7_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	combout => \C2|C8|Mux3~0_combout\);

-- Location: LABCELL_X43_Y3_N42
\C2|C8|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C8|Mux2~0_combout\ = ( \C2|C4|DEC_OUT2[1]~6_combout\ & ( \C2|C4|DEC_OUT2[3]~8_combout\ ) ) # ( !\C2|C4|DEC_OUT2[1]~6_combout\ & ( \C2|C4|DEC_OUT2[3]~8_combout\ & ( (!\C2|C4|DEC_OUT2[0]~3_combout\) # (\C2|C4|DEC_OUT2[2]~7_combout\) ) ) ) # ( 
-- \C2|C4|DEC_OUT2[1]~6_combout\ & ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( !\C2|C4|DEC_OUT2[0]~3_combout\ ) ) ) # ( !\C2|C4|DEC_OUT2[1]~6_combout\ & ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( (!\C2|C4|DEC_OUT2[0]~3_combout\) # (\C2|C4|DEC_OUT2[2]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001100110011001100111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C4|ALT_INV_DEC_OUT2[0]~3_combout\,
	datad => \C2|C4|ALT_INV_DEC_OUT2[2]~7_combout\,
	datae => \C2|C4|ALT_INV_DEC_OUT2[1]~6_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	combout => \C2|C8|Mux2~0_combout\);

-- Location: LABCELL_X43_Y3_N57
\C2|C8|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C8|Mux1~0_combout\ = ( \C2|C4|DEC_OUT2[3]~8_combout\ & ( (\C2|C4|DEC_OUT2[2]~7_combout\) # (\C2|C4|DEC_OUT2[1]~6_combout\) ) ) # ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( (!\C2|C4|DEC_OUT2[1]~6_combout\ & (!\C2|C4|DEC_OUT2[0]~3_combout\ & 
-- !\C2|C4|DEC_OUT2[2]~7_combout\)) # (\C2|C4|DEC_OUT2[1]~6_combout\ & ((!\C2|C4|DEC_OUT2[0]~3_combout\) # (!\C2|C4|DEC_OUT2[2]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011010100110101001101010001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_DEC_OUT2[1]~6_combout\,
	datab => \C2|C4|ALT_INV_DEC_OUT2[0]~3_combout\,
	datac => \C2|C4|ALT_INV_DEC_OUT2[2]~7_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	combout => \C2|C8|Mux1~0_combout\);

-- Location: LABCELL_X43_Y3_N6
\C2|C8|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C8|Mux0~0_combout\ = ( \C2|C4|DEC_OUT2[3]~8_combout\ & ( (!\C2|C4|DEC_OUT2[1]~6_combout\ & !\C2|C4|DEC_OUT2[2]~7_combout\) ) ) # ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( (!\C2|C4|DEC_OUT2[1]~6_combout\ & ((\C2|C4|DEC_OUT2[2]~7_combout\))) # 
-- (\C2|C4|DEC_OUT2[1]~6_combout\ & ((!\C2|C4|DEC_OUT2[2]~7_combout\) # (\C2|C4|DEC_OUT2[0]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011010110110101101110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_DEC_OUT2[1]~6_combout\,
	datab => \C2|C4|ALT_INV_DEC_OUT2[0]~3_combout\,
	datac => \C2|C4|ALT_INV_DEC_OUT2[2]~7_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	combout => \C2|C8|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y3_N36
\C2|C4|REMINDER2[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[5]~2_combout\ = ( \C2|C3|REMINDER3[9]~6_combout\ & ( \C2|C3|REMINDER3[7]~41_combout\ ) ) # ( !\C2|C3|REMINDER3[9]~6_combout\ & ( \C2|C3|REMINDER3[7]~41_combout\ & ( (!\C2|C3|REMINDER3[8]~24_combout\) # ((!\C2|C3|REMINDER3[6]~28_combout\ & 
-- \C2|C4|LessThan5~0_combout\)) ) ) ) # ( \C2|C3|REMINDER3[9]~6_combout\ & ( !\C2|C3|REMINDER3[7]~41_combout\ & ( ((\C2|C4|LessThan3~0_combout\ & \C2|C3|REMINDER3[6]~28_combout\)) # (\C2|C3|REMINDER3[8]~24_combout\) ) ) ) # ( !\C2|C3|REMINDER3[9]~6_combout\ 
-- & ( !\C2|C3|REMINDER3[7]~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000111110001111111110000111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_LessThan3~0_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	datad => \C2|C4|ALT_INV_LessThan5~0_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	combout => \C2|C4|REMINDER2[5]~2_combout\);

-- Location: MLABCELL_X42_Y3_N15
\C2|C4|REMINDER2[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[5]~3_combout\ = ( \C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ ) ) # ( !\C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ ) ) # ( \C2|C3|REMINDER3[8]~24_combout\ & ( !\C2|C3|REMINDER3[9]~6_combout\ & 
-- ( (\C2|C3|REMINDER3[7]~41_combout\ & (\C2|C4|LessThan4~0_combout\ & \C2|C3|REMINDER3[6]~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datab => \C2|C4|ALT_INV_LessThan4~0_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|REMINDER2[5]~3_combout\);

-- Location: LABCELL_X41_Y3_N6
\C2|C4|REMINDER2[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[5]~0_combout\ = ( \C2|C3|REMINDER3[8]~24_combout\ & ( !\C2|C3|REMINDER3[9]~6_combout\ & ( (!\C2|C3|REMINDER3[6]~28_combout\ & (!\C2|C4|LessThan6~0_combout\ & !\C2|C3|REMINDER3[7]~41_combout\)) ) ) ) # ( !\C2|C3|REMINDER3[8]~24_combout\ & 
-- ( !\C2|C3|REMINDER3[9]~6_combout\ & ( ((\C2|C3|REMINDER3[6]~28_combout\ & \C2|C4|LessThan8~0_combout\)) # (\C2|C3|REMINDER3[7]~41_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datab => \C2|C4|ALT_INV_LessThan6~0_combout\,
	datac => \C2|C4|ALT_INV_LessThan8~0_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|REMINDER2[5]~0_combout\);

-- Location: LABCELL_X41_Y3_N48
\C2|C4|REMINDER2[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[5]~5_combout\ = ( \C2|C3|REMINDER3[4]~21_combout\ & ( \C2|C4|DEC_OUT2~4_combout\ & ( !\C2|C4|REMINDER2[5]~0_combout\ $ (!\C2|C3|REMINDER3[5]~36_combout\) ) ) ) # ( !\C2|C3|REMINDER3[4]~21_combout\ & ( \C2|C4|DEC_OUT2~4_combout\ & ( 
-- !\C2|C3|REMINDER3[5]~36_combout\ $ (((!\C2|C4|REMINDER2[5]~0_combout\) # ((!\C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\ & !\C2|C3|REMINDER3[3]~15_combout\)))) ) ) ) # ( \C2|C3|REMINDER3[4]~21_combout\ & ( !\C2|C4|DEC_OUT2~4_combout\ & ( 
-- !\C2|C4|REMINDER2[5]~0_combout\ $ (\C2|C3|REMINDER3[5]~36_combout\) ) ) ) # ( !\C2|C3|REMINDER3[4]~21_combout\ & ( !\C2|C4|DEC_OUT2~4_combout\ & ( !\C2|C3|REMINDER3[5]~36_combout\ $ (((!\C2|C4|REMINDER2[5]~0_combout\ & 
-- ((!\C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\) # (!\C2|C3|REMINDER3[3]~15_combout\))) # (\C2|C4|REMINDER2[5]~0_combout\ & ((\C2|C3|REMINDER3[3]~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010011001011110011000011001100010011111011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT[2]~DUPLICATE_q\,
	datab => \C2|C4|ALT_INV_REMINDER2[5]~0_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2~4_combout\,
	combout => \C2|C4|REMINDER2[5]~5_combout\);

-- Location: LABCELL_X41_Y3_N30
\C2|C4|REMINDER2[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[5]~16_combout\ = ( !\C2|C4|REMINDER2[5]~3_combout\ & ( (!\C2|C4|REMINDER2[5]~2_combout\ & (!\C2|C3|REMINDER3[5]~36_combout\ $ ((((\C2|C3|REMINDER3[4]~21_combout\)))))) # (\C2|C4|REMINDER2[5]~2_combout\ & 
-- (((\C2|C4|REMINDER2[5]~5_combout\)))) ) ) # ( \C2|C4|REMINDER2[5]~3_combout\ & ( !\C2|C3|REMINDER3[5]~36_combout\ $ (((!\C2|C4|REMINDER2[5]~2_combout\ & ((!\C2|C3|REMINDER3[4]~21_combout\) # ((!\C2|C1|C8|IO64_OUT[2]~DUPLICATE_q\ & 
-- !\C2|C3|REMINDER3[3]~15_combout\)))) # (\C2|C4|REMINDER2[5]~2_combout\ & (((\C2|C3|REMINDER3[4]~21_combout\ & \C2|C3|REMINDER3[3]~15_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000101101000111011001100110101010001011010001110110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	datab => \C2|C4|ALT_INV_REMINDER2[5]~2_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT[2]~DUPLICATE_q\,
	datad => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	datae => \C2|C4|ALT_INV_REMINDER2[5]~3_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	datag => \C2|C4|ALT_INV_REMINDER2[5]~5_combout\,
	combout => \C2|C4|REMINDER2[5]~16_combout\);

-- Location: LABCELL_X43_Y3_N18
\C2|C4|REMINDER2[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[5]~4_combout\ = ( \C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ & ( (!\C2|C3|REMINDER3[7]~41_combout\) # ((!\C2|C4|LessThan0~0_combout\ & \C2|C4|LessThan1~0_combout\)) ) ) ) # ( !\C2|C3|REMINDER3[8]~24_combout\ & ( 
-- \C2|C3|REMINDER3[9]~6_combout\ & ( (!\C2|C4|LessThan2~1_combout\ & \C2|C3|REMINDER3[7]~41_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011001111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_LessThan0~0_combout\,
	datab => \C2|C4|ALT_INV_LessThan2~1_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datad => \C2|C4|ALT_INV_LessThan1~0_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|REMINDER2[5]~4_combout\);

-- Location: LABCELL_X43_Y3_N24
\C2|C4|REMINDER2[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[5]~6_combout\ = ( \C2|C4|LessThan2~0_combout\ & ( \C2|C4|REMINDER2[5]~4_combout\ & ( !\C2|C3|REMINDER3[5]~36_combout\ ) ) ) # ( !\C2|C4|LessThan2~0_combout\ & ( \C2|C4|REMINDER2[5]~4_combout\ & ( !\C2|C3|REMINDER3[5]~36_combout\ $ 
-- (!\C2|C4|DEC_OUT2[3]~8_combout\) ) ) ) # ( \C2|C4|LessThan2~0_combout\ & ( !\C2|C4|REMINDER2[5]~4_combout\ & ( (!\C2|C4|DEC_OUT2[3]~8_combout\ & (\C2|C4|REMINDER2[5]~16_combout\)) # (\C2|C4|DEC_OUT2[3]~8_combout\ & ((!\C2|C3|REMINDER3[5]~36_combout\ $ 
-- (\C2|C4|LessThan0~0_combout\)))) ) ) ) # ( !\C2|C4|LessThan2~0_combout\ & ( !\C2|C4|REMINDER2[5]~4_combout\ & ( (!\C2|C4|DEC_OUT2[3]~8_combout\ & (\C2|C4|REMINDER2[5]~16_combout\)) # (\C2|C4|DEC_OUT2[3]~8_combout\ & ((!\C2|C3|REMINDER3[5]~36_combout\ $ 
-- (\C2|C4|LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111000011010101011100001100110011110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[5]~16_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	datac => \C2|C4|ALT_INV_LessThan0~0_combout\,
	datad => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	datae => \C2|C4|ALT_INV_LessThan2~0_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[5]~4_combout\,
	combout => \C2|C4|REMINDER2[5]~6_combout\);

-- Location: MLABCELL_X42_Y3_N18
\C2|C4|REMINDER2[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[5]~7_combout\ = ( !\C2|C3|REMINDER3[9]~6_combout\ & ( (!\C2|C3|REMINDER3[8]~24_combout\) # ((!\C2|C3|REMINDER3[7]~41_combout\ & (!\C2|C3|REMINDER3[6]~28_combout\ & !\C2|C4|LessThan6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110000000111111111000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datac => \C2|C4|ALT_INV_LessThan6~0_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|REMINDER2[5]~7_combout\);

-- Location: MLABCELL_X42_Y4_N45
\C2|C4|LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan8~1_combout\ = ( !\C2|C3|REMINDER3[9]~6_combout\ & ( (!\C2|C3|REMINDER3[8]~24_combout\ & (!\C2|C3|REMINDER3[7]~41_combout\ & ((!\C2|C4|LessThan8~0_combout\) # (!\C2|C3|REMINDER3[6]~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datac => \C2|C4|ALT_INV_LessThan8~0_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|LessThan8~1_combout\);

-- Location: MLABCELL_X42_Y4_N30
\C2|C4|REM_INT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REM_INT~1_combout\ = ( \C2|C3|REMINDER3[3]~15_combout\ & ( \C2|C1|C8|IO64_OUT\(2) & ( \C2|C3|REMINDER3[4]~21_combout\ ) ) ) # ( !\C2|C3|REMINDER3[3]~15_combout\ & ( \C2|C1|C8|IO64_OUT\(2) & ( !\C2|C3|REMINDER3[4]~21_combout\ $ 
-- (((\C2|C4|REMINDER2[5]~7_combout\ & \C2|C4|DEC_OUT2~4_combout\))) ) ) ) # ( \C2|C3|REMINDER3[3]~15_combout\ & ( !\C2|C1|C8|IO64_OUT\(2) & ( !\C2|C4|REMINDER2[5]~7_combout\ $ (\C2|C3|REMINDER3[4]~21_combout\) ) ) ) # ( !\C2|C3|REMINDER3[3]~15_combout\ & ( 
-- !\C2|C1|C8|IO64_OUT\(2) & ( !\C2|C3|REMINDER3[4]~21_combout\ $ (((\C2|C4|REMINDER2[5]~7_combout\ & (\C2|C4|LessThan8~1_combout\ & \C2|C4|DEC_OUT2~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100001101001011010010111110000101001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[5]~7_combout\,
	datab => \C2|C4|ALT_INV_LessThan8~1_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	datad => \C2|C4|ALT_INV_DEC_OUT2~4_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(2),
	combout => \C2|C4|REM_INT~1_combout\);

-- Location: MLABCELL_X42_Y3_N48
\C2|C4|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan3~2_combout\ = ( \C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ ) ) # ( !\C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ & ( ((\C2|C4|LessThan3~0_combout\ & \C2|C3|REMINDER3[6]~28_combout\)) # 
-- (\C2|C3|REMINDER3[7]~41_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011111000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_LessThan3~0_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|LessThan3~2_combout\);

-- Location: MLABCELL_X42_Y4_N18
\C2|C4|REM_INT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REM_INT~0_combout\ = ( !\C2|C4|REMINDER2[5]~3_combout\ & ( (!\C2|C4|LessThan3~2_combout\ & \C2|C4|LessThan5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|C4|ALT_INV_LessThan3~2_combout\,
	datad => \C2|C4|ALT_INV_LessThan5~1_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[5]~3_combout\,
	combout => \C2|C4|REM_INT~0_combout\);

-- Location: LABCELL_X41_Y3_N54
\C2|C4|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan2~2_combout\ = ( \C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ ) ) # ( !\C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ & ( (\C2|C3|REMINDER3[7]~41_combout\ & (((\C2|C4|LessThan2~0_combout\ & 
-- \C2|C3|REMINDER3[5]~36_combout\)) # (\C2|C3|REMINDER3[6]~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datab => \C2|C4|ALT_INV_LessThan2~0_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|LessThan2~2_combout\);

-- Location: MLABCELL_X42_Y3_N54
\C2|C4|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|LessThan0~1_combout\ = ( \C2|C3|REMINDER3[8]~24_combout\ & ( \C2|C3|REMINDER3[9]~6_combout\ & ( (\C2|C3|REMINDER3[7]~41_combout\ & (((\C2|C3|REMINDER3[6]~28_combout\) # (\C2|C3|REMINDER3[5]~36_combout\)) # (\C2|C4|LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_LessThan0~0_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[7]~41_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[8]~24_combout\,
	dataf => \C2|C3|ALT_INV_REMINDER3[9]~6_combout\,
	combout => \C2|C4|LessThan0~1_combout\);

-- Location: MLABCELL_X42_Y4_N57
\C2|C4|REMINDER2[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[2]~8_combout\ = ( !\C2|C4|LessThan0~1_combout\ & ( !\C2|C4|LessThan2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C4|ALT_INV_LessThan2~2_combout\,
	dataf => \C2|C4|ALT_INV_LessThan0~1_combout\,
	combout => \C2|C4|REMINDER2[2]~8_combout\);

-- Location: MLABCELL_X42_Y4_N0
\C2|C4|REM_INT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REM_INT~2_combout\ = ( \C2|C3|REMINDER3[3]~15_combout\ & ( \C2|C1|C8|IO64_OUT\(2) & ( (!\C2|C3|REMINDER3[4]~21_combout\ & (((!\C2|C4|LessThan5~1_combout\) # (\C2|C4|LessThan3~2_combout\)) # (\C2|C4|REMINDER2[5]~3_combout\))) ) ) ) # ( 
-- !\C2|C3|REMINDER3[3]~15_combout\ & ( \C2|C1|C8|IO64_OUT\(2) & ( (!\C2|C4|LessThan3~2_combout\ & (!\C2|C3|REMINDER3[4]~21_combout\ & ((!\C2|C4|LessThan5~1_combout\) # (\C2|C4|REMINDER2[5]~3_combout\)))) # (\C2|C4|LessThan3~2_combout\ & 
-- (((\C2|C3|REMINDER3[4]~21_combout\)))) ) ) ) # ( \C2|C3|REMINDER3[3]~15_combout\ & ( !\C2|C1|C8|IO64_OUT\(2) & ( (!\C2|C3|REMINDER3[4]~21_combout\ & (((!\C2|C4|LessThan5~1_combout\) # (\C2|C4|LessThan3~2_combout\)) # (\C2|C4|REMINDER2[5]~3_combout\))) ) ) 
-- ) # ( !\C2|C3|REMINDER3[3]~15_combout\ & ( !\C2|C1|C8|IO64_OUT\(2) & ( (!\C2|C4|REMINDER2[5]~3_combout\ & ((!\C2|C4|LessThan3~2_combout\ & (!\C2|C3|REMINDER3[4]~21_combout\ & !\C2|C4|LessThan5~1_combout\)) # (\C2|C4|LessThan3~2_combout\ & 
-- (\C2|C3|REMINDER3[4]~21_combout\)))) # (\C2|C4|REMINDER2[5]~3_combout\ & (((\C2|C3|REMINDER3[4]~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011100000111111100000111000011000011010000111111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[5]~3_combout\,
	datab => \C2|C4|ALT_INV_LessThan3~2_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	datad => \C2|C4|ALT_INV_LessThan5~1_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(2),
	combout => \C2|C4|REM_INT~2_combout\);

-- Location: MLABCELL_X42_Y4_N6
\C2|C4|REMINDER2[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[4]~9_combout\ = ( \C2|C3|REMINDER3[3]~15_combout\ & ( \C2|C4|DEC_OUT2[3]~8_combout\ & ( \C2|C3|REMINDER3[4]~21_combout\ ) ) ) # ( !\C2|C3|REMINDER3[3]~15_combout\ & ( \C2|C4|DEC_OUT2[3]~8_combout\ & ( !\C2|C3|REMINDER3[4]~21_combout\ $ 
-- (((!\C2|C4|LessThan0~1_combout\) # (\C2|C1|C8|IO64_OUT\(2)))) ) ) ) # ( \C2|C3|REMINDER3[3]~15_combout\ & ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( (!\C2|C4|LessThan0~1_combout\ & (\C2|C4|LessThan2~2_combout\ & (!\C2|C1|C8|IO64_OUT\(2) $ 
-- (!\C2|C3|REMINDER3[4]~21_combout\)))) # (\C2|C4|LessThan0~1_combout\ & (((\C2|C3|REMINDER3[4]~21_combout\)))) ) ) ) # ( !\C2|C3|REMINDER3[3]~15_combout\ & ( !\C2|C4|DEC_OUT2[3]~8_combout\ & ( (!\C2|C4|LessThan0~1_combout\ & (((\C2|C4|LessThan2~2_combout\ 
-- & \C2|C3|REMINDER3[4]~21_combout\)))) # (\C2|C4|LessThan0~1_combout\ & (!\C2|C1|C8|IO64_OUT\(2) $ (((\C2|C3|REMINDER3[4]~21_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110100101000100100000111100001111101001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(2),
	datab => \C2|C4|ALT_INV_LessThan2~2_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[4]~21_combout\,
	datad => \C2|C4|ALT_INV_LessThan0~1_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	combout => \C2|C4|REMINDER2[4]~9_combout\);

-- Location: MLABCELL_X42_Y4_N12
\C2|C4|REMINDER2[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[4]~10_combout\ = ( \C2|C4|REM_INT~2_combout\ & ( !\C2|C4|REMINDER2[4]~9_combout\ & ( (!\C2|C4|REMINDER2[2]~8_combout\) # (\C2|C4|DEC_OUT2[3]~8_combout\) ) ) ) # ( !\C2|C4|REM_INT~2_combout\ & ( !\C2|C4|REMINDER2[4]~9_combout\ & ( 
-- ((!\C2|C4|REM_INT~1_combout\) # ((!\C2|C4|REM_INT~0_combout\) # (!\C2|C4|REMINDER2[2]~8_combout\))) # (\C2|C4|DEC_OUT2[3]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101111111110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	datab => \C2|C4|ALT_INV_REM_INT~1_combout\,
	datac => \C2|C4|ALT_INV_REM_INT~0_combout\,
	datad => \C2|C4|ALT_INV_REMINDER2[2]~8_combout\,
	datae => \C2|C4|ALT_INV_REM_INT~2_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[4]~9_combout\,
	combout => \C2|C4|REMINDER2[4]~10_combout\);

-- Location: LABCELL_X41_Y3_N42
\C2|C4|REMINDER2[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[6]~1_combout\ = ( \C2|C4|LessThan8~0_combout\ & ( \C2|C4|DEC_OUT2~4_combout\ & ( !\C2|C4|REMINDER2[5]~0_combout\ $ (!\C2|C3|REMINDER3[6]~28_combout\) ) ) ) # ( !\C2|C4|LessThan8~0_combout\ & ( \C2|C4|DEC_OUT2~4_combout\ & ( 
-- \C2|C3|REMINDER3[6]~28_combout\ ) ) ) # ( \C2|C4|LessThan8~0_combout\ & ( !\C2|C4|DEC_OUT2~4_combout\ & ( !\C2|C3|REMINDER3[6]~28_combout\ $ (((!\C2|C4|REMINDER2[5]~0_combout\ & ((\C2|C4|LessThan6~0_combout\))) # (\C2|C4|REMINDER2[5]~0_combout\ & 
-- (\C2|C4|Add7~0_combout\)))) ) ) ) # ( !\C2|C4|LessThan8~0_combout\ & ( !\C2|C4|DEC_OUT2~4_combout\ & ( !\C2|C3|REMINDER3[6]~28_combout\ $ (((!\C2|C4|REMINDER2[5]~0_combout\ & ((\C2|C4|LessThan6~0_combout\))) # (\C2|C4|REMINDER2[5]~0_combout\ & 
-- (\C2|C4|Add7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000100101101111000010010110100001111000011110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_Add7~0_combout\,
	datab => \C2|C4|ALT_INV_REMINDER2[5]~0_combout\,
	datac => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datad => \C2|C4|ALT_INV_LessThan6~0_combout\,
	datae => \C2|C4|ALT_INV_LessThan8~0_combout\,
	dataf => \C2|C4|ALT_INV_DEC_OUT2~4_combout\,
	combout => \C2|C4|REMINDER2[6]~1_combout\);

-- Location: MLABCELL_X42_Y3_N30
\C2|C4|REMINDER2[6]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[6]~24_combout\ = ( !\C2|C4|REMINDER2[5]~3_combout\ & ( (!\C2|C4|REMINDER2[5]~2_combout\ & (!\C2|C3|REMINDER3[6]~28_combout\ $ ((!\C2|C4|LessThan5~0_combout\)))) # (\C2|C4|REMINDER2[5]~2_combout\ & ((((\C2|C4|REMINDER2[6]~1_combout\))))) ) 
-- ) # ( \C2|C4|REMINDER2[5]~3_combout\ & ( !\C2|C3|REMINDER3[6]~28_combout\ $ (((!\C2|C4|REMINDER2[5]~2_combout\ & (!\C2|C4|LessThan4~0_combout\)) # (\C2|C4|REMINDER2[5]~2_combout\ & (((!\C2|C4|LessThan3~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010100001111101001110010011100100101000011111010110110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[5]~2_combout\,
	datab => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datac => \C2|C4|ALT_INV_LessThan4~0_combout\,
	datad => \C2|C4|ALT_INV_REMINDER2[6]~1_combout\,
	datae => \C2|C4|ALT_INV_REMINDER2[5]~3_combout\,
	dataf => \C2|C4|ALT_INV_LessThan3~0_combout\,
	datag => \C2|C4|ALT_INV_LessThan5~0_combout\,
	combout => \C2|C4|REMINDER2[6]~24_combout\);

-- Location: LABCELL_X43_Y3_N0
\C2|C4|REMINDER2[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[6]~20_combout\ = ( !\C2|C3|REMINDER3[5]~36_combout\ & ( (!\C2|C4|REMINDER2[5]~4_combout\ & ((!\C2|C4|DEC_OUT2[3]~8_combout\ & (\C2|C4|REMINDER2[6]~24_combout\)) # (\C2|C4|DEC_OUT2[3]~8_combout\ & ((!\C2|C4|LessThan0~0_combout\ $ 
-- (\C2|C3|REMINDER3[6]~28_combout\)))))) # (\C2|C4|REMINDER2[5]~4_combout\ & ((((!\C2|C3|REMINDER3[6]~28_combout\))))) ) ) # ( \C2|C3|REMINDER3[5]~36_combout\ & ( (!\C2|C4|DEC_OUT2[3]~8_combout\ & ((!\C2|C4|REMINDER2[5]~4_combout\ & 
-- (\C2|C4|REMINDER2[6]~24_combout\)) # (\C2|C4|REMINDER2[5]~4_combout\ & ((!\C2|C4|LessThan2~0_combout\ $ (\C2|C3|REMINDER3[6]~28_combout\)))))) # (\C2|C4|DEC_OUT2[3]~8_combout\ & ((((\C2|C3|REMINDER3[6]~28_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111010001000111010001000111011111111111000000001100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[6]~24_combout\,
	datab => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	datac => \C2|C4|ALT_INV_LessThan2~0_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[6]~28_combout\,
	datae => \C2|C3|ALT_INV_REMINDER3[5]~36_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[5]~4_combout\,
	datag => \C2|C4|ALT_INV_LessThan0~0_combout\,
	combout => \C2|C4|REMINDER2[6]~20_combout\);

-- Location: LABCELL_X43_Y4_N39
\C2|C5|DEC_OUT1[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C5|DEC_OUT1[3]~0_combout\ = ( \C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[4]~10_combout\) # (\C2|C4|REMINDER2[5]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[5]~6_combout\,
	datad => \C2|C4|ALT_INV_REMINDER2[4]~10_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[6]~20_combout\,
	combout => \C2|C5|DEC_OUT1[3]~0_combout\);

-- Location: MLABCELL_X42_Y4_N54
\C2|C4|REMINDER2[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[2]~14_combout\ = ( !\C2|C4|LessThan0~1_combout\ & ( ((!\C2|C4|LessThan2~2_combout\ & \C2|C4|LessThan3~2_combout\)) # (\C2|C4|DEC_OUT2[3]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C4|ALT_INV_LessThan2~2_combout\,
	datac => \C2|C4|ALT_INV_LessThan3~2_combout\,
	datad => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	dataf => \C2|C4|ALT_INV_LessThan0~1_combout\,
	combout => \C2|C4|REMINDER2[2]~14_combout\);

-- Location: LABCELL_X43_Y4_N12
\C2|C4|REMINDER2[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[2]~13_combout\ = ( \C2|C4|LessThan5~1_combout\ & ( (!\C2|C4|REMINDER2[5]~7_combout\) # (\C2|C4|DEC_OUT2[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C4|ALT_INV_REMINDER2[5]~7_combout\,
	datac => \C2|C4|ALT_INV_DEC_OUT2[0]~1_combout\,
	dataf => \C2|C4|ALT_INV_LessThan5~1_combout\,
	combout => \C2|C4|REMINDER2[2]~13_combout\);

-- Location: MLABCELL_X42_Y4_N36
\C2|C4|REMINDER2[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[2]~15_combout\ = ( \C2|C4|REMINDER2[2]~13_combout\ & ( !\C2|C1|C8|IO64_OUT\(2) $ (!\C2|C4|REMINDER2[2]~14_combout\) ) ) # ( !\C2|C4|REMINDER2[2]~13_combout\ & ( !\C2|C1|C8|IO64_OUT\(2) $ (((!\C2|C4|REMINDER2[2]~14_combout\ & 
-- ((!\C2|C4|REMINDER2[2]~8_combout\) # (\C2|C4|REMINDER2[5]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010110101010011001011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(2),
	datab => \C2|C4|ALT_INV_REMINDER2[2]~8_combout\,
	datac => \C2|C4|ALT_INV_REMINDER2[5]~3_combout\,
	datad => \C2|C4|ALT_INV_REMINDER2[2]~14_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[2]~13_combout\,
	combout => \C2|C4|REMINDER2[2]~15_combout\);

-- Location: MLABCELL_X42_Y4_N48
\C2|C4|REMINDER2[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[3]~11_combout\ = ( \C2|C4|LessThan0~1_combout\ & ( !\C2|C1|C8|IO64_OUT\(2) $ (\C2|C3|REMINDER3[3]~15_combout\) ) ) # ( !\C2|C4|LessThan0~1_combout\ & ( (!\C2|C4|DEC_OUT2[3]~8_combout\ & (\C2|C4|LessThan2~2_combout\ & 
-- (!\C2|C1|C8|IO64_OUT\(2) $ (!\C2|C3|REMINDER3[3]~15_combout\)))) # (\C2|C4|DEC_OUT2[3]~8_combout\ & (((\C2|C3|REMINDER3[3]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101100011000000110110001110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(2),
	datab => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	datac => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	datad => \C2|C4|ALT_INV_LessThan2~2_combout\,
	dataf => \C2|C4|ALT_INV_LessThan0~1_combout\,
	combout => \C2|C4|REMINDER2[3]~11_combout\);

-- Location: MLABCELL_X42_Y4_N21
\C2|C4|REM_INT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REM_INT~3_combout\ = ( \C2|C1|C8|IO64_OUT\(2) & ( !\C2|C3|REMINDER3[3]~15_combout\ $ (((\C2|C4|REMINDER2[5]~7_combout\ & \C2|C4|DEC_OUT2~4_combout\))) ) ) # ( !\C2|C1|C8|IO64_OUT\(2) & ( !\C2|C3|REMINDER3[3]~15_combout\ $ 
-- (((!\C2|C4|REMINDER2[5]~7_combout\) # ((\C2|C4|DEC_OUT2~4_combout\ & \C2|C4|LessThan8~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010010101011010101001010101111101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[5]~7_combout\,
	datab => \C2|C4|ALT_INV_DEC_OUT2~4_combout\,
	datac => \C2|C4|ALT_INV_LessThan8~1_combout\,
	datad => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(2),
	combout => \C2|C4|REM_INT~3_combout\);

-- Location: MLABCELL_X42_Y4_N51
\C2|C4|REM_INT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REM_INT~4_combout\ = ( \C2|C4|REMINDER2[5]~3_combout\ & ( !\C2|C3|REMINDER3[3]~15_combout\ $ (((\C2|C1|C8|IO64_OUT\(2) & !\C2|C4|LessThan3~2_combout\))) ) ) # ( !\C2|C4|REMINDER2[5]~3_combout\ & ( (!\C2|C3|REMINDER3[3]~15_combout\ & 
-- (\C2|C4|LessThan3~2_combout\)) # (\C2|C3|REMINDER3[3]~15_combout\ & (!\C2|C4|LessThan3~2_combout\ & !\C2|C4|LessThan5~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001100001111000000110010011100100111001001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(2),
	datab => \C2|C3|ALT_INV_REMINDER3[3]~15_combout\,
	datac => \C2|C4|ALT_INV_LessThan3~2_combout\,
	datad => \C2|C4|ALT_INV_LessThan5~1_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[5]~3_combout\,
	combout => \C2|C4|REM_INT~4_combout\);

-- Location: MLABCELL_X42_Y4_N24
\C2|C4|REMINDER2[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C4|REMINDER2[3]~12_combout\ = ( \C2|C4|REM_INT~3_combout\ & ( \C2|C4|REM_INT~4_combout\ & ( (!\C2|C4|REMINDER2[3]~11_combout\ & ((!\C2|C4|REMINDER2[2]~8_combout\) # (\C2|C4|DEC_OUT2[3]~8_combout\))) ) ) ) # ( !\C2|C4|REM_INT~3_combout\ & ( 
-- \C2|C4|REM_INT~4_combout\ & ( (!\C2|C4|REMINDER2[3]~11_combout\ & ((!\C2|C4|REMINDER2[2]~8_combout\) # (\C2|C4|DEC_OUT2[3]~8_combout\))) ) ) ) # ( \C2|C4|REM_INT~3_combout\ & ( !\C2|C4|REM_INT~4_combout\ & ( (!\C2|C4|REMINDER2[3]~11_combout\ & 
-- ((!\C2|C4|REM_INT~0_combout\) # ((!\C2|C4|REMINDER2[2]~8_combout\) # (\C2|C4|DEC_OUT2[3]~8_combout\)))) ) ) ) # ( !\C2|C4|REM_INT~3_combout\ & ( !\C2|C4|REM_INT~4_combout\ & ( !\C2|C4|REMINDER2[3]~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111000001111000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REM_INT~0_combout\,
	datab => \C2|C4|ALT_INV_REMINDER2[2]~8_combout\,
	datac => \C2|C4|ALT_INV_REMINDER2[3]~11_combout\,
	datad => \C2|C4|ALT_INV_DEC_OUT2[3]~8_combout\,
	datae => \C2|C4|ALT_INV_REM_INT~3_combout\,
	dataf => \C2|C4|ALT_INV_REM_INT~4_combout\,
	combout => \C2|C4|REMINDER2[3]~12_combout\);

-- Location: LABCELL_X43_Y4_N18
\C2|C5|DEC_OUT1[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C5|DEC_OUT1[0]~2_combout\ = ( \C2|C4|REMINDER2[4]~10_combout\ & ( \C2|C4|REMINDER2[6]~20_combout\ & ( (\C2|C4|REMINDER2[3]~12_combout\ & (!\C2|C4|REMINDER2[5]~6_combout\ & ((!\C2|C1|C8|IO64_OUT\(1)) # (\C2|C4|REMINDER2[2]~15_combout\)))) ) ) ) # ( 
-- !\C2|C4|REMINDER2[4]~10_combout\ & ( \C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[5]~6_combout\ & (((\C2|C4|REMINDER2[2]~15_combout\ & !\C2|C1|C8|IO64_OUT\(1))) # (\C2|C4|REMINDER2[3]~12_combout\))) ) ) ) # ( \C2|C4|REMINDER2[4]~10_combout\ & ( 
-- !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[3]~12_combout\ & (((\C2|C4|REMINDER2[2]~15_combout\ & !\C2|C1|C8|IO64_OUT\(1))) # (\C2|C4|REMINDER2[5]~6_combout\))) # (\C2|C4|REMINDER2[3]~12_combout\ & (((!\C2|C4|REMINDER2[5]~6_combout\)))) ) ) ) 
-- # ( !\C2|C4|REMINDER2[4]~10_combout\ & ( !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[2]~15_combout\ & ((!\C2|C4|REMINDER2[3]~12_combout\ & ((!\C2|C1|C8|IO64_OUT\(1)) # (\C2|C4|REMINDER2[5]~6_combout\))) # (\C2|C4|REMINDER2[3]~12_combout\ & 
-- (!\C2|C4|REMINDER2[5]~6_combout\)))) # (\C2|C4|REMINDER2[2]~15_combout\ & ((!\C2|C4|REMINDER2[3]~12_combout\ & (!\C2|C4|REMINDER2[5]~6_combout\)) # (\C2|C4|REMINDER2[3]~12_combout\ & (\C2|C4|REMINDER2[5]~6_combout\ & !\C2|C1|C8|IO64_OUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100101101000011111000011110001110000001100000011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[2]~15_combout\,
	datab => \C2|C4|ALT_INV_REMINDER2[3]~12_combout\,
	datac => \C2|C4|ALT_INV_REMINDER2[5]~6_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(1),
	datae => \C2|C4|ALT_INV_REMINDER2[4]~10_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[6]~20_combout\,
	combout => \C2|C5|DEC_OUT1[0]~2_combout\);

-- Location: LABCELL_X43_Y4_N3
\C2|C5|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C5|LessThan5~0_combout\ = ( !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[5]~6_combout\) # ((\C2|C4|REMINDER2[3]~12_combout\ & \C2|C4|REMINDER2[4]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[5]~6_combout\,
	datac => \C2|C4|ALT_INV_REMINDER2[3]~12_combout\,
	datad => \C2|C4|ALT_INV_REMINDER2[4]~10_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[6]~20_combout\,
	combout => \C2|C5|LessThan5~0_combout\);

-- Location: LABCELL_X43_Y4_N36
\C2|C5|DEC_OUT1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C5|DEC_OUT1[1]~1_combout\ = ( \C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[5]~6_combout\ & \C2|C4|REMINDER2[4]~10_combout\) ) ) # ( !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[5]~6_combout\ & (!\C2|C4|REMINDER2[4]~10_combout\ & 
-- ((!\C2|C4|REMINDER2[3]~12_combout\) # (!\C2|C4|REMINDER2[2]~15_combout\)))) # (\C2|C4|REMINDER2[5]~6_combout\ & ((!\C2|C4|REMINDER2[3]~12_combout\ & (!\C2|C4|REMINDER2[2]~15_combout\ & !\C2|C4|REMINDER2[4]~10_combout\)) # (\C2|C4|REMINDER2[3]~12_combout\ 
-- & ((\C2|C4|REMINDER2[4]~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100000010001111010000001000100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[5]~6_combout\,
	datab => \C2|C4|ALT_INV_REMINDER2[3]~12_combout\,
	datac => \C2|C4|ALT_INV_REMINDER2[2]~15_combout\,
	datad => \C2|C4|ALT_INV_REMINDER2[4]~10_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[6]~20_combout\,
	combout => \C2|C5|DEC_OUT1[1]~1_combout\);

-- Location: MLABCELL_X45_Y4_N15
\C2|C9|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C9|Mux6~0_combout\ = ( \C2|C5|DEC_OUT1[1]~1_combout\ & ( !\C2|C5|DEC_OUT1[3]~0_combout\ ) ) # ( !\C2|C5|DEC_OUT1[1]~1_combout\ & ( (!\C2|C5|DEC_OUT1[0]~2_combout\ $ (\C2|C5|LessThan5~0_combout\)) # (\C2|C5|DEC_OUT1[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110101110111110111010111011110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C5|ALT_INV_DEC_OUT1[3]~0_combout\,
	datab => \C2|C5|ALT_INV_DEC_OUT1[0]~2_combout\,
	datad => \C2|C5|ALT_INV_LessThan5~0_combout\,
	dataf => \C2|C5|ALT_INV_DEC_OUT1[1]~1_combout\,
	combout => \C2|C9|Mux6~0_combout\);

-- Location: MLABCELL_X45_Y4_N18
\C2|C9|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C9|Mux5~0_combout\ = ( \C2|C5|DEC_OUT1[1]~1_combout\ & ( ((\C2|C5|DEC_OUT1[0]~2_combout\ & !\C2|C5|LessThan5~0_combout\)) # (\C2|C5|DEC_OUT1[3]~0_combout\) ) ) # ( !\C2|C5|DEC_OUT1[1]~1_combout\ & ( (!\C2|C5|DEC_OUT1[3]~0_combout\ & 
-- (!\C2|C5|DEC_OUT1[0]~2_combout\ & !\C2|C5|LessThan5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000001110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C5|ALT_INV_DEC_OUT1[3]~0_combout\,
	datab => \C2|C5|ALT_INV_DEC_OUT1[0]~2_combout\,
	datac => \C2|C5|ALT_INV_LessThan5~0_combout\,
	dataf => \C2|C5|ALT_INV_DEC_OUT1[1]~1_combout\,
	combout => \C2|C9|Mux5~0_combout\);

-- Location: MLABCELL_X45_Y4_N21
\C2|C9|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C9|Mux4~0_combout\ = ( \C2|C5|DEC_OUT1[1]~1_combout\ & ( ((\C2|C5|DEC_OUT1[0]~2_combout\ & \C2|C5|LessThan5~0_combout\)) # (\C2|C5|DEC_OUT1[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C5|ALT_INV_DEC_OUT1[3]~0_combout\,
	datab => \C2|C5|ALT_INV_DEC_OUT1[0]~2_combout\,
	datad => \C2|C5|ALT_INV_LessThan5~0_combout\,
	dataf => \C2|C5|ALT_INV_DEC_OUT1[1]~1_combout\,
	combout => \C2|C9|Mux4~0_combout\);

-- Location: MLABCELL_X45_Y4_N54
\C2|C9|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C9|Mux3~0_combout\ = ( \C2|C5|DEC_OUT1[1]~1_combout\ & ( (!\C2|C5|DEC_OUT1[3]~0_combout\ & ((\C2|C5|LessThan5~0_combout\) # (\C2|C5|DEC_OUT1[0]~2_combout\))) ) ) # ( !\C2|C5|DEC_OUT1[1]~1_combout\ & ( (!\C2|C5|DEC_OUT1[0]~2_combout\ $ 
-- (\C2|C5|LessThan5~0_combout\)) # (\C2|C5|DEC_OUT1[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100111111110011110011111100110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C5|ALT_INV_DEC_OUT1[0]~2_combout\,
	datac => \C2|C5|ALT_INV_DEC_OUT1[3]~0_combout\,
	datad => \C2|C5|ALT_INV_LessThan5~0_combout\,
	dataf => \C2|C5|ALT_INV_DEC_OUT1[1]~1_combout\,
	combout => \C2|C9|Mux3~0_combout\);

-- Location: MLABCELL_X45_Y4_N57
\C2|C9|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C9|Mux2~0_combout\ = ( \C2|C5|DEC_OUT1[1]~1_combout\ & ( (!\C2|C5|DEC_OUT1[3]~0_combout\ & \C2|C5|DEC_OUT1[0]~2_combout\) ) ) # ( !\C2|C5|DEC_OUT1[1]~1_combout\ & ( (\C2|C5|DEC_OUT1[0]~2_combout\ & ((\C2|C5|LessThan5~0_combout\) # 
-- (\C2|C5|DEC_OUT1[3]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C5|ALT_INV_DEC_OUT1[3]~0_combout\,
	datab => \C2|C5|ALT_INV_DEC_OUT1[0]~2_combout\,
	datad => \C2|C5|ALT_INV_LessThan5~0_combout\,
	dataf => \C2|C5|ALT_INV_DEC_OUT1[1]~1_combout\,
	combout => \C2|C9|Mux2~0_combout\);

-- Location: MLABCELL_X45_Y4_N12
\C2|C9|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C9|Mux1~0_combout\ = ( \C2|C5|DEC_OUT1[1]~1_combout\ & ( ((!\C2|C5|DEC_OUT1[0]~2_combout\) # (\C2|C5|LessThan5~0_combout\)) # (\C2|C5|DEC_OUT1[3]~0_combout\) ) ) # ( !\C2|C5|DEC_OUT1[1]~1_combout\ & ( (!\C2|C5|DEC_OUT1[3]~0_combout\ & 
-- (!\C2|C5|DEC_OUT1[0]~2_combout\ & \C2|C5|LessThan5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C5|ALT_INV_DEC_OUT1[3]~0_combout\,
	datab => \C2|C5|ALT_INV_DEC_OUT1[0]~2_combout\,
	datac => \C2|C5|ALT_INV_LessThan5~0_combout\,
	dataf => \C2|C5|ALT_INV_DEC_OUT1[1]~1_combout\,
	combout => \C2|C9|Mux1~0_combout\);

-- Location: MLABCELL_X45_Y4_N24
\C2|C9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C9|Mux0~0_combout\ = ( \C2|C5|DEC_OUT1[3]~0_combout\ & ( \C2|C5|DEC_OUT1[1]~1_combout\ ) ) # ( !\C2|C5|DEC_OUT1[3]~0_combout\ & ( (!\C2|C5|DEC_OUT1[1]~1_combout\ & ((\C2|C5|LessThan5~0_combout\))) # (\C2|C5|DEC_OUT1[1]~1_combout\ & 
-- (!\C2|C5|DEC_OUT1[0]~2_combout\ & !\C2|C5|LessThan5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110000000011001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C5|ALT_INV_DEC_OUT1[0]~2_combout\,
	datac => \C2|C5|ALT_INV_DEC_OUT1[1]~1_combout\,
	datad => \C2|C5|ALT_INV_LessThan5~0_combout\,
	dataf => \C2|C5|ALT_INV_DEC_OUT1[3]~0_combout\,
	combout => \C2|C9|Mux0~0_combout\);

-- Location: LABCELL_X43_Y4_N9
\C2|C5|REMINDER1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C5|REMINDER1[3]~2_combout\ = ( \C2|C4|REMINDER2[4]~10_combout\ & ( \C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[5]~6_combout\ & (!\C2|C4|REMINDER2[2]~15_combout\ & (!\C2|C1|C8|IO64_OUT\(1) $ (!\C2|C4|REMINDER2[3]~12_combout\)))) # 
-- (\C2|C4|REMINDER2[5]~6_combout\ & (!\C2|C4|REMINDER2[3]~12_combout\ $ (((!\C2|C4|REMINDER2[2]~15_combout\) # (\C2|C1|C8|IO64_OUT\(1)))))) ) ) ) # ( !\C2|C4|REMINDER2[4]~10_combout\ & ( \C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[3]~12_combout\ 
-- & (((!\C2|C1|C8|IO64_OUT\(1) & \C2|C4|REMINDER2[2]~15_combout\)))) # (\C2|C4|REMINDER2[3]~12_combout\ & (\C2|C4|REMINDER2[5]~6_combout\ & ((!\C2|C4|REMINDER2[2]~15_combout\) # (\C2|C1|C8|IO64_OUT\(1))))) ) ) ) # ( \C2|C4|REMINDER2[4]~10_combout\ & ( 
-- !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[5]~6_combout\ & (!\C2|C1|C8|IO64_OUT\(1) & (!\C2|C4|REMINDER2[3]~12_combout\ & \C2|C4|REMINDER2[2]~15_combout\))) # (\C2|C4|REMINDER2[5]~6_combout\ & (\C2|C1|C8|IO64_OUT\(1) & 
-- (\C2|C4|REMINDER2[3]~12_combout\ & !\C2|C4|REMINDER2[2]~15_combout\))) ) ) ) # ( !\C2|C4|REMINDER2[4]~10_combout\ & ( !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[5]~6_combout\ & ((!\C2|C1|C8|IO64_OUT\(1) & (!\C2|C4|REMINDER2[3]~12_combout\ & 
-- !\C2|C4|REMINDER2[2]~15_combout\)) # (\C2|C1|C8|IO64_OUT\(1) & (\C2|C4|REMINDER2[3]~12_combout\ & \C2|C4|REMINDER2[2]~15_combout\)))) # (\C2|C4|REMINDER2[5]~6_combout\ & (\C2|C4|REMINDER2[2]~15_combout\ & (!\C2|C1|C8|IO64_OUT\(1) $ 
-- (!\C2|C4|REMINDER2[3]~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010110000000011000000000000101110000010010110101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[5]~6_combout\,
	datab => \C2|C1|C8|ALT_INV_IO64_OUT\(1),
	datac => \C2|C4|ALT_INV_REMINDER2[3]~12_combout\,
	datad => \C2|C4|ALT_INV_REMINDER2[2]~15_combout\,
	datae => \C2|C4|ALT_INV_REMINDER2[4]~10_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[6]~20_combout\,
	combout => \C2|C5|REMINDER1[3]~2_combout\);

-- Location: LABCELL_X43_Y4_N30
\C2|C5|REMINDER1[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C5|REMINDER1[2]~1_combout\ = ( \C2|C4|REMINDER2[4]~10_combout\ & ( \C2|C4|REMINDER2[6]~20_combout\ & ( !\C2|C4|REMINDER2[2]~15_combout\ $ (((!\C2|C4|REMINDER2[5]~6_combout\ & ((\C2|C1|C8|IO64_OUT\(1)) # (\C2|C4|REMINDER2[3]~12_combout\))) # 
-- (\C2|C4|REMINDER2[5]~6_combout\ & ((!\C2|C1|C8|IO64_OUT\(1)))))) ) ) ) # ( !\C2|C4|REMINDER2[4]~10_combout\ & ( \C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[2]~15_combout\ & (((\C2|C4|REMINDER2[3]~12_combout\ & !\C2|C4|REMINDER2[5]~6_combout\)) 
-- # (\C2|C1|C8|IO64_OUT\(1)))) # (\C2|C4|REMINDER2[2]~15_combout\ & (((\C2|C4|REMINDER2[5]~6_combout\ & !\C2|C1|C8|IO64_OUT\(1))))) ) ) ) # ( \C2|C4|REMINDER2[4]~10_combout\ & ( !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[3]~12_combout\ & 
-- (!\C2|C4|REMINDER2[2]~15_combout\ & ((\C2|C1|C8|IO64_OUT\(1)) # (\C2|C4|REMINDER2[5]~6_combout\)))) # (\C2|C4|REMINDER2[3]~12_combout\ & (!\C2|C4|REMINDER2[2]~15_combout\ $ (((\C2|C4|REMINDER2[5]~6_combout\ & \C2|C1|C8|IO64_OUT\(1)))))) ) ) ) # ( 
-- !\C2|C4|REMINDER2[4]~10_combout\ & ( !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[2]~15_combout\ & (\C2|C4|REMINDER2[3]~12_combout\ & (\C2|C4|REMINDER2[5]~6_combout\ & \C2|C1|C8|IO64_OUT\(1)))) # (\C2|C4|REMINDER2[2]~15_combout\ & 
-- ((!\C2|C4|REMINDER2[3]~12_combout\ & ((!\C2|C4|REMINDER2[5]~6_combout\) # (!\C2|C1|C8|IO64_OUT\(1)))) # (\C2|C4|REMINDER2[3]~12_combout\ & (!\C2|C4|REMINDER2[5]~6_combout\ & !\C2|C1|C8|IO64_OUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000010001010101010100100100101101010101001010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[2]~15_combout\,
	datab => \C2|C4|ALT_INV_REMINDER2[3]~12_combout\,
	datac => \C2|C4|ALT_INV_REMINDER2[5]~6_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(1),
	datae => \C2|C4|ALT_INV_REMINDER2[4]~10_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[6]~20_combout\,
	combout => \C2|C5|REMINDER1[2]~1_combout\);

-- Location: LABCELL_X43_Y4_N54
\C2|C5|REMINDER1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C5|REMINDER1[1]~0_combout\ = ( \C2|C4|REMINDER2[4]~10_combout\ & ( \C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[3]~12_combout\ & (((!\C2|C1|C8|IO64_OUT\(1))))) # (\C2|C4|REMINDER2[3]~12_combout\ & ((!\C2|C4|REMINDER2[5]~6_combout\ & 
-- (\C2|C4|REMINDER2[2]~15_combout\ & \C2|C1|C8|IO64_OUT\(1))) # (\C2|C4|REMINDER2[5]~6_combout\ & ((!\C2|C1|C8|IO64_OUT\(1)))))) ) ) ) # ( !\C2|C4|REMINDER2[4]~10_combout\ & ( \C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[3]~12_combout\ & 
-- (!\C2|C1|C8|IO64_OUT\(1) & ((!\C2|C4|REMINDER2[2]~15_combout\) # (\C2|C4|REMINDER2[5]~6_combout\)))) # (\C2|C4|REMINDER2[3]~12_combout\ & ((!\C2|C4|REMINDER2[5]~6_combout\ $ (!\C2|C1|C8|IO64_OUT\(1))))) ) ) ) # ( \C2|C4|REMINDER2[4]~10_combout\ & ( 
-- !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[3]~12_combout\ & ((!\C2|C4|REMINDER2[5]~6_combout\ & (!\C2|C4|REMINDER2[2]~15_combout\ & !\C2|C1|C8|IO64_OUT\(1))) # (\C2|C4|REMINDER2[5]~6_combout\ & ((\C2|C1|C8|IO64_OUT\(1)))))) # 
-- (\C2|C4|REMINDER2[3]~12_combout\ & ((!\C2|C4|REMINDER2[5]~6_combout\ $ (!\C2|C1|C8|IO64_OUT\(1))))) ) ) ) # ( !\C2|C4|REMINDER2[4]~10_combout\ & ( !\C2|C4|REMINDER2[6]~20_combout\ & ( (!\C2|C4|REMINDER2[2]~15_combout\ & ((!\C2|C4|REMINDER2[3]~12_combout\ 
-- & (\C2|C4|REMINDER2[5]~6_combout\ & \C2|C1|C8|IO64_OUT\(1))) # (\C2|C4|REMINDER2[3]~12_combout\ & (!\C2|C4|REMINDER2[5]~6_combout\ $ (!\C2|C1|C8|IO64_OUT\(1)))))) # (\C2|C4|REMINDER2[2]~15_combout\ & ((!\C2|C4|REMINDER2[3]~12_combout\ & 
-- (!\C2|C4|REMINDER2[5]~6_combout\ $ (!\C2|C1|C8|IO64_OUT\(1)))) # (\C2|C4|REMINDER2[3]~12_combout\ & (!\C2|C4|REMINDER2[5]~6_combout\ & !\C2|C1|C8|IO64_OUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001101000100000110011110010001111001100001100111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C4|ALT_INV_REMINDER2[2]~15_combout\,
	datab => \C2|C4|ALT_INV_REMINDER2[3]~12_combout\,
	datac => \C2|C4|ALT_INV_REMINDER2[5]~6_combout\,
	datad => \C2|C1|C8|ALT_INV_IO64_OUT\(1),
	datae => \C2|C4|ALT_INV_REMINDER2[4]~10_combout\,
	dataf => \C2|C4|ALT_INV_REMINDER2[6]~20_combout\,
	combout => \C2|C5|REMINDER1[1]~0_combout\);

-- Location: LABCELL_X43_Y4_N42
\C2|C10|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C10|Mux6~0_combout\ = ( \C2|C5|REMINDER1[1]~0_combout\ & ( \C2|C5|REMINDER1[3]~2_combout\ ) ) # ( !\C2|C5|REMINDER1[1]~0_combout\ & ( !\C2|C5|REMINDER1[2]~1_combout\ $ (((!\C2|C1|C8|IO64_OUT\(0)) # (\C2|C5|REMINDER1[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011001100110011001100001100111100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C5|ALT_INV_REMINDER1[3]~2_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(0),
	datad => \C2|C5|ALT_INV_REMINDER1[2]~1_combout\,
	datae => \C2|C5|ALT_INV_REMINDER1[1]~0_combout\,
	combout => \C2|C10|Mux6~0_combout\);

-- Location: LABCELL_X43_Y4_N48
\C2|C10|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C10|Mux5~0_combout\ = ( \C2|C1|C8|IO64_OUT\(0) & ( (!\C2|C5|REMINDER1[1]~0_combout\ & (\C2|C5|REMINDER1[2]~1_combout\)) # (\C2|C5|REMINDER1[1]~0_combout\ & ((\C2|C5|REMINDER1[3]~2_combout\))) ) ) # ( !\C2|C1|C8|IO64_OUT\(0) & ( 
-- (!\C2|C5|REMINDER1[1]~0_combout\ & (\C2|C5|REMINDER1[2]~1_combout\ & \C2|C5|REMINDER1[3]~2_combout\)) # (\C2|C5|REMINDER1[1]~0_combout\ & ((\C2|C5|REMINDER1[3]~2_combout\) # (\C2|C5|REMINDER1[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C5|ALT_INV_REMINDER1[1]~0_combout\,
	datab => \C2|C5|ALT_INV_REMINDER1[2]~1_combout\,
	datac => \C2|C5|ALT_INV_REMINDER1[3]~2_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(0),
	combout => \C2|C10|Mux5~0_combout\);

-- Location: LABCELL_X43_Y4_N51
\C2|C10|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C10|Mux4~0_combout\ = ( \C2|C1|C8|IO64_OUT\(0) & ( (\C2|C5|REMINDER1[3]~2_combout\ & ((\C2|C5|REMINDER1[2]~1_combout\) # (\C2|C5|REMINDER1[1]~0_combout\))) ) ) # ( !\C2|C1|C8|IO64_OUT\(0) & ( (!\C2|C5|REMINDER1[2]~1_combout\ & 
-- (\C2|C5|REMINDER1[1]~0_combout\)) # (\C2|C5|REMINDER1[2]~1_combout\ & ((\C2|C5|REMINDER1[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C5|ALT_INV_REMINDER1[1]~0_combout\,
	datac => \C2|C5|ALT_INV_REMINDER1[2]~1_combout\,
	datad => \C2|C5|ALT_INV_REMINDER1[3]~2_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(0),
	combout => \C2|C10|Mux4~0_combout\);

-- Location: LABCELL_X43_Y4_N24
\C2|C10|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C10|Mux3~0_combout\ = ( \C2|C1|C8|IO64_OUT\(0) & ( (!\C2|C5|REMINDER1[2]~1_combout\ & (!\C2|C5|REMINDER1[1]~0_combout\ $ (\C2|C5|REMINDER1[3]~2_combout\))) # (\C2|C5|REMINDER1[2]~1_combout\ & ((\C2|C5|REMINDER1[3]~2_combout\) # 
-- (\C2|C5|REMINDER1[1]~0_combout\))) ) ) # ( !\C2|C1|C8|IO64_OUT\(0) & ( (!\C2|C5|REMINDER1[1]~0_combout\ & (\C2|C5|REMINDER1[2]~1_combout\)) # (\C2|C5|REMINDER1[1]~0_combout\ & ((\C2|C5|REMINDER1[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111111000011001111111100001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C5|ALT_INV_REMINDER1[2]~1_combout\,
	datac => \C2|C5|ALT_INV_REMINDER1[1]~0_combout\,
	datad => \C2|C5|ALT_INV_REMINDER1[3]~2_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(0),
	combout => \C2|C10|Mux3~0_combout\);

-- Location: LABCELL_X43_Y4_N27
\C2|C10|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C10|Mux2~0_combout\ = ( \C2|C1|C8|IO64_OUT\(0) ) # ( !\C2|C1|C8|IO64_OUT\(0) & ( (!\C2|C5|REMINDER1[1]~0_combout\ & (\C2|C5|REMINDER1[2]~1_combout\)) # (\C2|C5|REMINDER1[1]~0_combout\ & ((\C2|C5|REMINDER1[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C5|ALT_INV_REMINDER1[1]~0_combout\,
	datab => \C2|C5|ALT_INV_REMINDER1[2]~1_combout\,
	datac => \C2|C5|ALT_INV_REMINDER1[3]~2_combout\,
	dataf => \C2|C1|C8|ALT_INV_IO64_OUT\(0),
	combout => \C2|C10|Mux2~0_combout\);

-- Location: LABCELL_X43_Y4_N0
\C2|C10|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C10|Mux1~0_combout\ = ( \C2|C5|REMINDER1[2]~1_combout\ & ( ((\C2|C1|C8|IO64_OUT\(0) & \C2|C5|REMINDER1[1]~0_combout\)) # (\C2|C5|REMINDER1[3]~2_combout\) ) ) # ( !\C2|C5|REMINDER1[2]~1_combout\ & ( ((!\C2|C5|REMINDER1[3]~2_combout\ & 
-- \C2|C1|C8|IO64_OUT\(0))) # (\C2|C5|REMINDER1[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|C5|ALT_INV_REMINDER1[3]~2_combout\,
	datac => \C2|C1|C8|ALT_INV_IO64_OUT\(0),
	datad => \C2|C5|ALT_INV_REMINDER1[1]~0_combout\,
	dataf => \C2|C5|ALT_INV_REMINDER1[2]~1_combout\,
	combout => \C2|C10|Mux1~0_combout\);

-- Location: LABCELL_X43_Y4_N15
\C2|C10|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|C10|Mux0~0_combout\ = ( \C2|C5|REMINDER1[2]~1_combout\ & ( (!\C2|C5|REMINDER1[3]~2_combout\ & ((!\C2|C1|C8|IO64_OUT\(0)) # (!\C2|C5|REMINDER1[1]~0_combout\))) ) ) # ( !\C2|C5|REMINDER1[2]~1_combout\ & ( !\C2|C5|REMINDER1[3]~2_combout\ $ 
-- (!\C2|C5|REMINDER1[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|C1|C8|ALT_INV_IO64_OUT\(0),
	datac => \C2|C5|ALT_INV_REMINDER1[3]~2_combout\,
	datad => \C2|C5|ALT_INV_REMINDER1[1]~0_combout\,
	dataf => \C2|C5|ALT_INV_REMINDER1[2]~1_combout\,
	combout => \C2|C10|Mux0~0_combout\);

-- Location: IOIBUF_X54_Y18_N44
\IO65_IN[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(10),
	o => \IO65_IN[10]~input_o\);

-- Location: IOIBUF_X52_Y45_N35
\IO65_IN[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(11),
	o => \IO65_IN[11]~input_o\);

-- Location: IOIBUF_X54_Y18_N61
\IO65_IN[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(12),
	o => \IO65_IN[12]~input_o\);

-- Location: IOIBUF_X52_Y45_N52
\IO65_IN[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(13),
	o => \IO65_IN[13]~input_o\);

-- Location: IOIBUF_X50_Y45_N1
\IO65_IN[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(14),
	o => \IO65_IN[14]~input_o\);

-- Location: IOIBUF_X52_Y45_N1
\IO65_IN[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO65_IN(15),
	o => \IO65_IN[15]~input_o\);

-- Location: MLABCELL_X45_Y35_N3
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


