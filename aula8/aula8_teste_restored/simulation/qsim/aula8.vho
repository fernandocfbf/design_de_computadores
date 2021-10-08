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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "09/29/2021 17:58:39"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	aula8 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	PC_out : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END aula8;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PC_out[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF aula8 IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_PC_out : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~14\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU1|ULA1|saida[7]~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER|PontosDeControle~5_combout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~18\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~22\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~26\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~24_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~2\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~6\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~10\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU1|DECODER|PontosDeControle[6]~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER|Equal9~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \CPU1|DECODER|Equal7~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Equal2~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \CPU1|ULA1|saida[7]~1_combout\ : std_logic;
SIGNAL \CPU1|DECODER|PontosDeControle[5]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~562_combout\ : std_logic;
SIGNAL \RAM1|ram~276_q\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER|PontosDeControle[6]~1_combout\ : std_logic;
SIGNAL \CPU1|DECODER|PontosDeControle[1]~2_combout\ : std_logic;
SIGNAL \CPU1|DECODER|PontosDeControle[1]~3_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \RAM1|dado_out~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \RAM_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~271_q\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~579_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \AND_HEX0|dataOUT~0_combout\ : std_logic;
SIGNAL \RAM_MUX[0]~5_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \RAM_MUX[0]~1_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \DETECTOR_BORDA_KEY0|saidaQ~0_combout\ : std_logic;
SIGNAL \DETECTOR_BORDA_KEY0|saidaQ~q\ : std_logic;
SIGNAL \DETECTOR_BORDA_KEY0|saida~combout\ : std_logic;
SIGNAL \REGISTRADOR|DOUT~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \REGISTRADOR|DOUT~q\ : std_logic;
SIGNAL \RAM_MUX[0]~4_combout\ : std_logic;
SIGNAL \RAM_MUX[0]~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~272_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~273_q\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~565_combout\ : std_logic;
SIGNAL \RAM1|ram~566_combout\ : std_logic;
SIGNAL \RAM1|ram~25feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ram~274_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~575_combout\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ram~275_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~571_combout\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~7_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~11_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~277_q\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~6_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~278_q\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~567_combout\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[7]~9_combout\ : std_logic;
SIGNAL \RAM_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~3_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~4_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~10_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~5_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~8_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~9_combout\ : std_logic;
SIGNAL \CPU1|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU1|logica_de_desvio|dataOUT[0]~1_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \CPU1|logica_de_desvio|dataOUT[1]~0_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~23_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~30\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~33_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU1|DECODER|Equal8~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \REGISTRADOR_LED|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \AND_HEX4|dataOUT~0_combout\ : std_logic;
SIGNAL \AND3|dataOUT~0_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \AND2|dataOUT~0_combout\ : std_logic;
SIGNAL \AND_HEX1|dataOUT~0_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED8|DOUT~0_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED8|DOUT~q\ : std_logic;
SIGNAL \AND_HEX2|dataOUT~0_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED9|DOUT~0_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED9|DOUT~q\ : std_logic;
SIGNAL \AND_HEX0|dataOUT~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX1|dataOUT~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX2|dataOUT~1_combout\ : std_logic;
SIGNAL \REGISTRADOR_HEX2|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \REGISTRADOR_HEX2|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \AND_HEX3|dataOUT~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX4|dataOUT~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGISTRADOR_HEX4|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODIFICADOR_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REGISTRADOR_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTRADOR_LED|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU1|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \AND_HEX2|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \AND2|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \CPU1|DECODER|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \AND_HEX1|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \AND_HEX4|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_saida[7]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGISTRADOR_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGISTRADOR_LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGISTRADOR_LED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~7_combout\ : std_logic;
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~6_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[3]~11_combout\ : std_logic;
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~5_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[2]~10_combout\ : std_logic;
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[7]~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_saida[7]~1_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_MUX[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_MUX[0]~1_combout\ : std_logic;
SIGNAL \REGISTRADOR|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER|ALT_INV_PontosDeControle[1]~3_combout\ : std_logic;
SIGNAL \CPU1|DECODER|ALT_INV_PontosDeControle[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \AND_HEX0|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \CPU1|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \REGISTRADOR_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \REGISTRADOR_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\ : std_logic;
SIGNAL \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_MUX[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_RAM_MUX[0]~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \DETECTOR_BORDA_KEY0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \CPU1|DECODER|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \CPU1|FLAG|ALT_INV_DOUT~8_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_FPGA_RESET_N <= FPGA_RESET_N;
PC_out <= ww_PC_out;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU1|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU1|ULA1|Add0~5_sumout\;
\CPU1|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU1|ULA1|Add0~1_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~33_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~33_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~29_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~29_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~25_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~25_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~21_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~21_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~17_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~17_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~13_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~13_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~9_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~9_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~5_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~5_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~1_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~1_sumout\;
\CPU1|REG1|ALT_INV_DOUT\(7) <= NOT \CPU1|REG1|DOUT\(7);
\CPU1|REG1|ALT_INV_DOUT\(6) <= NOT \CPU1|REG1|DOUT\(6);
\CPU1|REG1|ALT_INV_DOUT\(5) <= NOT \CPU1|REG1|DOUT\(5);
\CPU1|REG1|ALT_INV_DOUT\(4) <= NOT \CPU1|REG1|DOUT\(4);
\CPU1|REG1|ALT_INV_DOUT\(3) <= NOT \CPU1|REG1|DOUT\(3);
\CPU1|REG1|ALT_INV_DOUT\(2) <= NOT \CPU1|REG1|DOUT\(2);
\CPU1|REG1|ALT_INV_DOUT\(1) <= NOT \CPU1|REG1|DOUT\(1);
\CPU1|REG1|ALT_INV_DOUT\(0) <= NOT \CPU1|REG1|DOUT\(0);
\CPU1|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU1|FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\AND_HEX2|ALT_INV_dataOUT~0_combout\ <= NOT \AND_HEX2|dataOUT~0_combout\;
\AND2|ALT_INV_dataOUT~0_combout\ <= NOT \AND2|dataOUT~0_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\CPU1|DECODER|ALT_INV_Equal9~0_combout\ <= NOT \CPU1|DECODER|Equal9~0_combout\;
\AND_HEX1|ALT_INV_dataOUT~0_combout\ <= NOT \AND_HEX1|dataOUT~0_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\AND_HEX4|ALT_INV_dataOUT~0_combout\ <= NOT \AND_HEX4|dataOUT~0_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\CPU1|ULA1|ALT_INV_saida[7]~0_combout\ <= NOT \CPU1|ULA1|saida[7]~0_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\ <= NOT \CPU1|DECODER|PontosDeControle[6]~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGISTRADOR_HEX4|ALT_INV_DOUT\(2) <= NOT \REGISTRADOR_HEX4|DOUT\(2);
\REGISTRADOR_HEX4|ALT_INV_DOUT\(1) <= NOT \REGISTRADOR_HEX4|DOUT\(1);
\REGISTRADOR_HEX4|ALT_INV_DOUT\(3) <= NOT \REGISTRADOR_HEX4|DOUT\(3);
\REGISTRADOR_HEX4|ALT_INV_DOUT\(0) <= NOT \REGISTRADOR_HEX4|DOUT\(0);
\REGISTRADOR_HEX3|ALT_INV_DOUT\(2) <= NOT \REGISTRADOR_HEX3|DOUT\(2);
\REGISTRADOR_HEX3|ALT_INV_DOUT\(1) <= NOT \REGISTRADOR_HEX3|DOUT\(1);
\REGISTRADOR_HEX3|ALT_INV_DOUT\(3) <= NOT \REGISTRADOR_HEX3|DOUT\(3);
\REGISTRADOR_HEX3|ALT_INV_DOUT\(0) <= NOT \REGISTRADOR_HEX3|DOUT\(0);
\REGISTRADOR_HEX2|ALT_INV_DOUT\(2) <= NOT \REGISTRADOR_HEX2|DOUT\(2);
\REGISTRADOR_HEX2|ALT_INV_DOUT\(1) <= NOT \REGISTRADOR_HEX2|DOUT\(1);
\REGISTRADOR_HEX2|ALT_INV_DOUT\(3) <= NOT \REGISTRADOR_HEX2|DOUT\(3);
\REGISTRADOR_HEX2|ALT_INV_DOUT\(0) <= NOT \REGISTRADOR_HEX2|DOUT\(0);
\REGISTRADOR_HEX1|ALT_INV_DOUT\(2) <= NOT \REGISTRADOR_HEX1|DOUT\(2);
\REGISTRADOR_HEX1|ALT_INV_DOUT\(1) <= NOT \REGISTRADOR_HEX1|DOUT\(1);
\REGISTRADOR_HEX1|ALT_INV_DOUT\(3) <= NOT \REGISTRADOR_HEX1|DOUT\(3);
\REGISTRADOR_HEX1|ALT_INV_DOUT\(0) <= NOT \REGISTRADOR_HEX1|DOUT\(0);
\REGISTRADOR_HEX0|ALT_INV_DOUT\(2) <= NOT \REGISTRADOR_HEX0|DOUT\(2);
\REGISTRADOR_HEX0|ALT_INV_DOUT\(1) <= NOT \REGISTRADOR_HEX0|DOUT\(1);
\REGISTRADOR_HEX0|ALT_INV_DOUT\(3) <= NOT \REGISTRADOR_HEX0|DOUT\(3);
\REGISTRADOR_HEX0|ALT_INV_DOUT\(0) <= NOT \REGISTRADOR_HEX0|DOUT\(0);
\CPU1|PC|ALT_INV_DOUT\(8) <= NOT \CPU1|PC|DOUT\(8);
\CPU1|PC|ALT_INV_DOUT\(7) <= NOT \CPU1|PC|DOUT\(7);
\CPU1|PC|ALT_INV_DOUT\(6) <= NOT \CPU1|PC|DOUT\(6);
\CPU1|PC|ALT_INV_DOUT\(5) <= NOT \CPU1|PC|DOUT\(5);
\CPU1|PC|ALT_INV_DOUT\(4) <= NOT \CPU1|PC|DOUT\(4);
\CPU1|PC|ALT_INV_DOUT\(3) <= NOT \CPU1|PC|DOUT\(3);
\CPU1|PC|ALT_INV_DOUT\(2) <= NOT \CPU1|PC|DOUT\(2);
\CPU1|PC|ALT_INV_DOUT\(1) <= NOT \CPU1|PC|DOUT\(1);
\CPU1|PC|ALT_INV_DOUT\(0) <= NOT \CPU1|PC|DOUT\(0);
\REGISTRADOR_LED9|ALT_INV_DOUT~q\ <= NOT \REGISTRADOR_LED9|DOUT~q\;
\REGISTRADOR_LED8|ALT_INV_DOUT~q\ <= NOT \REGISTRADOR_LED8|DOUT~q\;
\RAM1|ALT_INV_ram~579_combout\ <= NOT \RAM1|ram~579_combout\;
\RAM1|ALT_INV_ram~575_combout\ <= NOT \RAM1|ram~575_combout\;
\RAM1|ALT_INV_ram~571_combout\ <= NOT \RAM1|ram~571_combout\;
\RAM1|ALT_INV_ram~567_combout\ <= NOT \RAM1|ram~567_combout\;
\CPU1|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU1|ULA1|Add0~29_sumout\;
\CPU1|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU1|ULA1|Add0~25_sumout\;
\CPU1|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU1|ULA1|Add0~21_sumout\;
\CPU1|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU1|ULA1|Add0~17_sumout\;
\CPU1|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU1|ULA1|Add0~13_sumout\;
\CPU1|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU1|ULA1|Add0~9_sumout\;
\CPU1|FLAG|ALT_INV_DOUT~7_combout\ <= NOT \CPU1|FLAG|DOUT~7_combout\;
\CPU1|FLAG|ALT_INV_DOUT~6_combout\ <= NOT \CPU1|FLAG|DOUT~6_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[6]~12_combout\ <= NOT \CPU1|MUX1|saida_MUX[6]~12_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[3]~11_combout\ <= NOT \CPU1|MUX1|saida_MUX[3]~11_combout\;
\CPU1|FLAG|ALT_INV_DOUT~5_combout\ <= NOT \CPU1|FLAG|DOUT~5_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[2]~10_combout\ <= NOT \CPU1|MUX1|saida_MUX[2]~10_combout\;
\CPU1|FLAG|ALT_INV_DOUT~4_combout\ <= NOT \CPU1|FLAG|DOUT~4_combout\;
\CPU1|FLAG|ALT_INV_DOUT~3_combout\ <= NOT \CPU1|FLAG|DOUT~3_combout\;
\ALT_INV_RAM_MUX[0]~3_combout\ <= NOT \RAM_MUX[0]~3_combout\;
\CPU1|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU1|FLAG|DOUT~2_combout\;
\CPU1|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU1|FLAG|DOUT~1_combout\;
\CPU1|FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU1|FLAG|DOUT~0_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[7]~9_combout\ <= NOT \CPU1|MUX1|saida_MUX[7]~9_combout\;
\RAM1|ALT_INV_ram~554_combout\ <= NOT \RAM1|ram~554_combout\;
\RAM1|ALT_INV_ram~553_combout\ <= NOT \RAM1|ram~553_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~278_q\ <= NOT \RAM1|ram~278_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[6]~8_combout\ <= NOT \CPU1|MUX1|saida_MUX[6]~8_combout\;
\RAM1|ALT_INV_ram~552_combout\ <= NOT \RAM1|ram~552_combout\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~277_q\ <= NOT \RAM1|ram~277_q\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[5]~7_combout\ <= NOT \CPU1|MUX1|saida_MUX[5]~7_combout\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~276_q\ <= NOT \RAM1|ram~276_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[4]~6_combout\ <= NOT \CPU1|MUX1|saida_MUX[4]~6_combout\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~275_q\ <= NOT \RAM1|ram~275_q\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[3]~5_combout\ <= NOT \CPU1|MUX1|saida_MUX[3]~5_combout\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~274_q\ <= NOT \RAM1|ram~274_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[2]~4_combout\ <= NOT \CPU1|MUX1|saida_MUX[2]~4_combout\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~273_q\ <= NOT \RAM1|ram~273_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~3_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~3_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~2_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~272_q\ <= NOT \RAM1|ram~272_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\CPU1|ULA1|ALT_INV_saida[7]~1_combout\ <= NOT \CPU1|ULA1|saida[7]~1_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~0_combout\;
\ALT_INV_RAM_MUX[0]~2_combout\ <= NOT \RAM_MUX[0]~2_combout\;
\ALT_INV_RAM_MUX[0]~1_combout\ <= NOT \RAM_MUX[0]~1_combout\;
\REGISTRADOR|ALT_INV_DOUT~q\ <= NOT \REGISTRADOR|DOUT~q\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_RAM_MUX[0]~0_combout\ <= NOT \RAM_MUX[0]~0_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\RAM1|ALT_INV_dado_out~0_combout\ <= NOT \RAM1|dado_out~0_combout\;
\CPU1|DECODER|ALT_INV_PontosDeControle[1]~3_combout\ <= NOT \CPU1|DECODER|PontosDeControle[1]~3_combout\;
\CPU1|DECODER|ALT_INV_PontosDeControle[1]~2_combout\ <= NOT \CPU1|DECODER|PontosDeControle[1]~2_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~271_q\ <= NOT \RAM1|ram~271_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\ <= NOT \CPU1|DECODER|PontosDeControle[6]~1_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\AND_HEX0|ALT_INV_dataOUT~0_combout\ <= NOT \AND_HEX0|dataOUT~0_combout\;
\CPU1|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU1|END_RETORNO|DOUT\(8);
\ROM1|ALT_INV_memROM~23_combout\ <= NOT \ROM1|memROM~23_combout\;
\CPU1|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU1|END_RETORNO|DOUT\(7);
\CPU1|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU1|END_RETORNO|DOUT\(6);
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\CPU1|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU1|END_RETORNO|DOUT\(5);
\CPU1|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU1|END_RETORNO|DOUT\(4);
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\CPU1|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU1|END_RETORNO|DOUT\(3);
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\CPU1|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU1|END_RETORNO|DOUT\(2);
\CPU1|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU1|END_RETORNO|DOUT\(1);
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\CPU1|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU1|END_RETORNO|DOUT\(0);
\REGISTRADOR_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REGISTRADOR_HEX4|DOUT[1]~DUPLICATE_q\;
\REGISTRADOR_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[8]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[7]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[6]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[5]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[4]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[3]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[2]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[1]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\ <= NOT \CPU1|logica_de_desvio|dataOUT[0]~1_combout\;
\CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\ <= NOT \CPU1|logica_de_desvio|dataOUT[1]~0_combout\;
\RAM1|ALT_INV_ram~566_combout\ <= NOT \RAM1|ram~566_combout\;
\RAM1|ALT_INV_ram~565_combout\ <= NOT \RAM1|ram~565_combout\;
\RAM1|ALT_INV_ram~564_combout\ <= NOT \RAM1|ram~564_combout\;
\RAM1|ALT_INV_ram~563_combout\ <= NOT \RAM1|ram~563_combout\;
\ALT_INV_RAM_MUX[0]~5_combout\ <= NOT \RAM_MUX[0]~5_combout\;
\ALT_INV_RAM_MUX[0]~4_combout\ <= NOT \RAM_MUX[0]~4_combout\;
\ROM1|ALT_INV_memROM~24_combout\ <= NOT \ROM1|memROM~24_combout\;
\DETECTOR_BORDA_KEY0|ALT_INV_saidaQ~q\ <= NOT \DETECTOR_BORDA_KEY0|saidaQ~q\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\RAM1|ALT_INV_ram~561_combout\ <= NOT \RAM1|ram~561_combout\;
\RAM1|ALT_INV_ram~559_combout\ <= NOT \RAM1|ram~559_combout\;
\RAM1|ALT_INV_ram~557_combout\ <= NOT \RAM1|ram~557_combout\;
\RAM1|ALT_INV_ram~555_combout\ <= NOT \RAM1|ram~555_combout\;
\CPU1|ULA1|ALT_INV_Equal2~1_combout\ <= NOT \CPU1|ULA1|Equal2~1_combout\;
\CPU1|DECODER|ALT_INV_Equal7~0_combout\ <= NOT \CPU1|DECODER|Equal7~0_combout\;
\CPU1|ULA1|ALT_INV_Equal2~0_combout\ <= NOT \CPU1|ULA1|Equal2~0_combout\;
\CPU1|DECODER|ALT_INV_Equal8~0_combout\ <= NOT \CPU1|DECODER|Equal8~0_combout\;
\CPU1|FLAG|ALT_INV_DOUT~8_combout\ <= NOT \CPU1|FLAG|DOUT~8_combout\;

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED8|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTRADOR_LED9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X34_Y45_N53
\PC_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_out(0));

-- Location: IOOBUF_X34_Y45_N19
\PC_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_out(1));

-- Location: IOOBUF_X12_Y0_N36
\PC_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_out(2));

-- Location: IOOBUF_X54_Y14_N96
\PC_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_out(3));

-- Location: IOOBUF_X36_Y45_N19
\PC_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_out(4));

-- Location: IOOBUF_X36_Y45_N53
\PC_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_out(5));

-- Location: IOOBUF_X34_Y45_N2
\PC_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_out(6));

-- Location: IOOBUF_X36_Y45_N36
\PC_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_out(7));

-- Location: IOOBUF_X34_Y45_N36
\PC_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_out(8));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODIFICADOR_HEX0|rascSaida7seg[0]~0_combout\,
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
	i => \DECODIFICADOR_HEX0|rascSaida7seg[1]~1_combout\,
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
	i => \DECODIFICADOR_HEX0|rascSaida7seg[2]~2_combout\,
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
	i => \DECODIFICADOR_HEX0|rascSaida7seg[3]~3_combout\,
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
	i => \DECODIFICADOR_HEX0|rascSaida7seg[4]~4_combout\,
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
	i => \DECODIFICADOR_HEX0|rascSaida7seg[5]~5_combout\,
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
	i => \DECODIFICADOR_HEX0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODIFICADOR_HEX1|rascSaida7seg[0]~0_combout\,
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
	i => \DECODIFICADOR_HEX1|rascSaida7seg[1]~1_combout\,
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
	i => \DECODIFICADOR_HEX1|rascSaida7seg[2]~2_combout\,
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
	i => \DECODIFICADOR_HEX1|rascSaida7seg[3]~3_combout\,
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
	i => \DECODIFICADOR_HEX1|rascSaida7seg[4]~4_combout\,
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
	i => \DECODIFICADOR_HEX1|rascSaida7seg[5]~5_combout\,
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
	i => \DECODIFICADOR_HEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODIFICADOR_HEX2|rascSaida7seg[0]~0_combout\,
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
	i => \DECODIFICADOR_HEX2|rascSaida7seg[1]~1_combout\,
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
	i => \DECODIFICADOR_HEX2|rascSaida7seg[2]~2_combout\,
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
	i => \DECODIFICADOR_HEX2|rascSaida7seg[3]~3_combout\,
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
	i => \DECODIFICADOR_HEX2|rascSaida7seg[4]~4_combout\,
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
	i => \DECODIFICADOR_HEX2|rascSaida7seg[5]~5_combout\,
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
	i => \DECODIFICADOR_HEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODIFICADOR_HEX3|rascSaida7seg[0]~0_combout\,
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
	i => \DECODIFICADOR_HEX3|rascSaida7seg[1]~1_combout\,
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
	i => \DECODIFICADOR_HEX3|rascSaida7seg[2]~2_combout\,
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
	i => \DECODIFICADOR_HEX3|rascSaida7seg[3]~3_combout\,
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
	i => \DECODIFICADOR_HEX3|rascSaida7seg[4]~4_combout\,
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
	i => \DECODIFICADOR_HEX3|rascSaida7seg[5]~5_combout\,
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
	i => \DECODIFICADOR_HEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODIFICADOR_HEX4|rascSaida7seg[0]~0_combout\,
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
	i => \DECODIFICADOR_HEX4|rascSaida7seg[1]~1_combout\,
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
	i => \DECODIFICADOR_HEX4|rascSaida7seg[2]~2_combout\,
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
	i => \DECODIFICADOR_HEX4|rascSaida7seg[3]~3_combout\,
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
	i => \DECODIFICADOR_HEX4|rascSaida7seg[4]~4_combout\,
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
	i => \DECODIFICADOR_HEX4|rascSaida7seg[5]~5_combout\,
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
	i => \DECODIFICADOR_HEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X22_Y0_N1
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

-- Location: FF_X36_Y5_N25
\CPU1|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(3));

-- Location: MLABCELL_X34_Y5_N39
\CPU1|SOMACONSTANTE|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~13_sumout\ = SUM(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~10\ ))
-- \CPU1|SOMACONSTANTE|Add0~14\ = CARRY(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT\(3),
	cin => \CPU1|SOMACONSTANTE|Add0~10\,
	sumout => \CPU1|SOMACONSTANTE|Add0~13_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~14\);

-- Location: MLABCELL_X34_Y5_N42
\CPU1|SOMACONSTANTE|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~17_sumout\ = SUM(( \CPU1|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~14\ ))
-- \CPU1|SOMACONSTANTE|Add0~18\ = CARRY(( \CPU1|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU1|SOMACONSTANTE|Add0~14\,
	sumout => \CPU1|SOMACONSTANTE|Add0~17_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~18\);

-- Location: LABCELL_X36_Y5_N6
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( !\CPU1|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	dataf => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X35_Y5_N57
\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~21_combout\);

-- Location: FF_X36_Y4_N29
\CPU1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|MUXJUMP|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(0));

-- Location: LABCELL_X35_Y4_N3
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & \CPU1|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: FF_X36_Y5_N14
\CPU1|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y4_N39
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(5))) # (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT[2]~DUPLICATE_q\)))) ) ) # ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ $ (((!\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT[2]~DUPLICATE_q\))))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[3]~DUPLICATE_q\) # 
-- (!\CPU1|PC|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110010001000011111001000100010000100100000001000010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X35_Y5_N6
\CPU1|ULA1|saida[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|saida[7]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~0_combout\ & !\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU1|ULA1|saida[7]~0_combout\);

-- Location: LABCELL_X35_Y5_N9
\CPU1|DECODER|PontosDeControle~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|PontosDeControle~5_combout\ = ( \CPU1|ULA1|saida[7]~0_combout\ & ( (\ROM1|memROM~15_combout\ & !\ROM1|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \CPU1|DECODER|PontosDeControle~5_combout\);

-- Location: FF_X34_Y5_N43
\CPU1|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|SOMACONSTANTE|Add0~17_sumout\,
	ena => \CPU1|DECODER|PontosDeControle~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|END_RETORNO|DOUT\(4));

-- Location: LABCELL_X35_Y4_N15
\CPU1|MUXJUMP|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[4]~4_combout\ = ( \CPU1|END_RETORNO|DOUT\(4) & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\CPU1|SOMACONSTANTE|Add0~17_sumout\)) # (\CPU1|logica_de_desvio|dataOUT[1]~0_combout\))) # 
-- (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~21_combout\)))) ) ) # ( !\CPU1|END_RETORNO|DOUT\(4) & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (!\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & 
-- (\CPU1|SOMACONSTANTE|Add0~17_sumout\))) # (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\,
	datab => \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\,
	datac => \CPU1|SOMACONSTANTE|ALT_INV_Add0~17_sumout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \CPU1|END_RETORNO|ALT_INV_DOUT\(4),
	combout => \CPU1|MUXJUMP|saida_MUX[4]~4_combout\);

-- Location: FF_X35_Y4_N17
\CPU1|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[4]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y5_N45
\CPU1|SOMACONSTANTE|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~21_sumout\ = SUM(( \CPU1|PC|DOUT\(5) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~18\ ))
-- \CPU1|SOMACONSTANTE|Add0~22\ = CARRY(( \CPU1|PC|DOUT\(5) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	cin => \CPU1|SOMACONSTANTE|Add0~18\,
	sumout => \CPU1|SOMACONSTANTE|Add0~21_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~22\);

-- Location: FF_X34_Y5_N46
\CPU1|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|SOMACONSTANTE|Add0~21_sumout\,
	ena => \CPU1|DECODER|PontosDeControle~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|END_RETORNO|DOUT\(5));

-- Location: LABCELL_X36_Y4_N6
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(0) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\ROM1|memROM~0_combout\ & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(5)))) ) ) ) # ( !\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(0) & 
-- ( (\ROM1|memROM~0_combout\ & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(5))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	datae => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X36_Y5_N27
\CPU1|MUXJUMP|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[5]~5_combout\ = ( \CPU1|SOMACONSTANTE|Add0~21_sumout\ & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ((!\CPU1|logica_de_desvio|dataOUT[1]~0_combout\) # ((\CPU1|END_RETORNO|DOUT\(5))))) # 
-- (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~12_combout\)))) ) ) # ( !\CPU1|SOMACONSTANTE|Add0~21_sumout\ & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & 
-- (\CPU1|END_RETORNO|DOUT\(5)))) # (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\,
	datab => \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\,
	datac => \CPU1|END_RETORNO|ALT_INV_DOUT\(5),
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU1|SOMACONSTANTE|ALT_INV_Add0~21_sumout\,
	combout => \CPU1|MUXJUMP|saida_MUX[5]~5_combout\);

-- Location: FF_X36_Y5_N28
\CPU1|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(5));

-- Location: MLABCELL_X34_Y5_N48
\CPU1|SOMACONSTANTE|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~25_sumout\ = SUM(( \CPU1|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~22\ ))
-- \CPU1|SOMACONSTANTE|Add0~26\ = CARRY(( \CPU1|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU1|SOMACONSTANTE|Add0~22\,
	sumout => \CPU1|SOMACONSTANTE|Add0~25_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~26\);

-- Location: MLABCELL_X34_Y5_N51
\CPU1|SOMACONSTANTE|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~29_sumout\ = SUM(( \CPU1|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~26\ ))
-- \CPU1|SOMACONSTANTE|Add0~30\ = CARRY(( \CPU1|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU1|SOMACONSTANTE|Add0~26\,
	sumout => \CPU1|SOMACONSTANTE|Add0~29_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~30\);

-- Location: FF_X34_Y5_N52
\CPU1|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|SOMACONSTANTE|Add0~29_sumout\,
	ena => \CPU1|DECODER|PontosDeControle~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|END_RETORNO|DOUT\(7));

-- Location: MLABCELL_X34_Y5_N6
\CPU1|MUXJUMP|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[7]~7_combout\ = ( \CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ( \CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( \ROM1|memROM~21_combout\ ) ) ) # ( !\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ( 
-- \CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( \ROM1|memROM~21_combout\ ) ) ) # ( \CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ( !\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( \CPU1|END_RETORNO|DOUT\(7) ) ) ) # ( 
-- !\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ( !\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( \CPU1|SOMACONSTANTE|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|SOMACONSTANTE|ALT_INV_Add0~29_sumout\,
	datab => \CPU1|END_RETORNO|ALT_INV_DOUT\(7),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\,
	dataf => \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\,
	combout => \CPU1|MUXJUMP|saida_MUX[7]~7_combout\);

-- Location: FF_X35_Y4_N8
\CPU1|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|MUXJUMP|saida_MUX[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N15
\ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~24_combout\ = ( \CPU1|PC|DOUT\(3) & ( (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & !\CPU1|PC|DOUT[8]~DUPLICATE_q\))) ) ) # ( !\CPU1|PC|DOUT\(3) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & 
-- (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & !\CPU1|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~24_combout\);

-- Location: FF_X35_Y4_N13
\CPU1|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(6));

-- Location: LABCELL_X36_Y4_N45
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (\ROM1|memROM~24_combout\ & (!\CPU1|PC|DOUT\(6) & \CPU1|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & 
-- ( (!\CPU1|PC|DOUT\(2) & (\ROM1|memROM~24_combout\ & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT\(6),
	datad => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: FF_X36_Y5_N17
\CPU1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(1));

-- Location: MLABCELL_X34_Y5_N30
\CPU1|SOMACONSTANTE|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~1_sumout\ = SUM(( \CPU1|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU1|SOMACONSTANTE|Add0~2\ = CARRY(( \CPU1|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU1|SOMACONSTANTE|Add0~1_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~2\);

-- Location: MLABCELL_X34_Y5_N33
\CPU1|SOMACONSTANTE|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~5_sumout\ = SUM(( \CPU1|PC|DOUT\(1) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~2\ ))
-- \CPU1|SOMACONSTANTE|Add0~6\ = CARRY(( \CPU1|PC|DOUT\(1) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	cin => \CPU1|SOMACONSTANTE|Add0~2\,
	sumout => \CPU1|SOMACONSTANTE|Add0~5_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~6\);

-- Location: MLABCELL_X34_Y5_N36
\CPU1|SOMACONSTANTE|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~9_sumout\ = SUM(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~6\ ))
-- \CPU1|SOMACONSTANTE|Add0~10\ = CARRY(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	cin => \CPU1|SOMACONSTANTE|Add0~6\,
	sumout => \CPU1|SOMACONSTANTE|Add0~9_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~10\);

-- Location: FF_X34_Y5_N37
\CPU1|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|SOMACONSTANTE|Add0~9_sumout\,
	ena => \CPU1|DECODER|PontosDeControle~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|END_RETORNO|DOUT\(2));

-- Location: LABCELL_X36_Y5_N12
\CPU1|MUXJUMP|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[2]~2_combout\ = ( \CPU1|SOMACONSTANTE|Add0~9_sumout\ & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ((!\CPU1|logica_de_desvio|dataOUT[1]~0_combout\) # ((\CPU1|END_RETORNO|DOUT\(2))))) # 
-- (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~1_combout\)))) ) ) # ( !\CPU1|SOMACONSTANTE|Add0~9_sumout\ & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & 
-- ((\CPU1|END_RETORNO|DOUT\(2))))) # (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\,
	datab => \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|END_RETORNO|ALT_INV_DOUT\(2),
	dataf => \CPU1|SOMACONSTANTE|ALT_INV_Add0~9_sumout\,
	combout => \CPU1|MUXJUMP|saida_MUX[2]~2_combout\);

-- Location: FF_X36_Y5_N13
\CPU1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(2));

-- Location: FF_X34_Y5_N41
\CPU1|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|SOMACONSTANTE|Add0~13_sumout\,
	ena => \CPU1|DECODER|PontosDeControle~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|END_RETORNO|DOUT\(3));

-- Location: MLABCELL_X37_Y4_N9
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( !\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[0]~DUPLICATE_q\ & !\CPU1|PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( \CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[0]~DUPLICATE_q\ & 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100010001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~19_combout\);

-- Location: FF_X35_Y4_N49
\CPU1|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|MUXJUMP|saida_MUX[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(8));

-- Location: LABCELL_X36_Y4_N24
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(6) & (\ROM1|memROM~19_combout\ & !\CPU1|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \CPU1|PC|ALT_INV_DOUT\(6),
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(8),
	datae => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~20_combout\);

-- Location: LABCELL_X36_Y5_N24
\CPU1|MUXJUMP|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[3]~3_combout\ = ( \ROM1|memROM~20_combout\ & ( ((!\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ((\CPU1|SOMACONSTANTE|Add0~13_sumout\))) # (\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & (\CPU1|END_RETORNO|DOUT\(3)))) # 
-- (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\) ) ) # ( !\ROM1|memROM~20_combout\ & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ((!\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ((\CPU1|SOMACONSTANTE|Add0~13_sumout\))) # 
-- (\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & (\CPU1|END_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\,
	datab => \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\,
	datac => \CPU1|END_RETORNO|ALT_INV_DOUT\(3),
	datad => \CPU1|SOMACONSTANTE|ALT_INV_Add0~13_sumout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \CPU1|MUXJUMP|saida_MUX[3]~3_combout\);

-- Location: FF_X36_Y5_N26
\CPU1|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X36_Y5_N29
\CPU1|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y5_N9
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \CPU1|PC|DOUT\(1) & ( (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & !\CPU1|PC|DOUT[5]~DUPLICATE_q\)) ) ) # ( !\CPU1|PC|DOUT\(1) & ( (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & 
-- \CPU1|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU1|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & !\CPU1|PC|DOUT[5]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X36_Y5_N57
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU1|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[5]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(1)))) # (\CPU1|PC|DOUT[3]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(1) & 
-- !\CPU1|PC|DOUT[5]~DUPLICATE_q\)))) ) ) # ( !\CPU1|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(1)) # ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & !\CPU1|PC|DOUT[5]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & !\CPU1|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100010110000001000001011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: FF_X35_Y4_N16
\CPU1|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(4));

-- Location: LABCELL_X35_Y4_N57
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(4),
	dataf => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X35_Y5_N51
\CPU1|DECODER|PontosDeControle[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|PontosDeControle[6]~0_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\CPU1|PC|DOUT\(8) & (\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\) # (!\CPU1|PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU1|DECODER|PontosDeControle[6]~0_combout\);

-- Location: LABCELL_X35_Y5_N27
\CPU1|DECODER|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|Equal9~0_combout\ = ( \CPU1|ULA1|saida[7]~0_combout\ & ( !\CPU1|DECODER|PontosDeControle[6]~0_combout\ ) ) # ( !\CPU1|ULA1|saida[7]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \CPU1|DECODER|Equal9~0_combout\);

-- Location: LABCELL_X35_Y4_N42
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: LABCELL_X35_Y4_N21
\CPU1|DECODER|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|Equal7~0_combout\ = ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \CPU1|DECODER|Equal7~0_combout\);

-- Location: LABCELL_X36_Y4_N0
\CPU1|ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Equal2~0_combout\ = ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~16_combout\ $ (\ROM1|memROM~17_combout\))) ) ) # ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~15_combout\ & 
-- !\ROM1|memROM~17_combout\)) # (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~15_combout\ & \ROM1|memROM~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \CPU1|ULA1|Equal2~0_combout\);

-- Location: LABCELL_X35_Y3_N27
\CPU1|ULA1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Equal2~1_combout\ = ( \CPU1|ULA1|Equal2~0_combout\ & ( !\CPU1|DECODER|Equal7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|DECODER|ALT_INV_Equal7~0_combout\,
	dataf => \CPU1|ULA1|ALT_INV_Equal2~0_combout\,
	combout => \CPU1|ULA1|Equal2~1_combout\);

-- Location: LABCELL_X36_Y4_N3
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[0]~DUPLICATE_q\ & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(5))) ) ) # ( !\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & \CPU1|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	dataf => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X36_Y4_N39
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~9_combout\ & ( (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & (\ROM1|memROM~0_combout\ & ((\ROM1|memROM~8_combout\) # (\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100000001000000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: LABCELL_X35_Y4_N9
\CPU1|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~1_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\RAM1|process_0~0_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~15_combout\ & ((\ROM1|memROM~5_combout\) # (\ROM1|memROM~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X35_Y4_N24
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\))))) ) ) # ( !\CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT\(0) & 
-- (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000011011000000000001101100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~11_combout\);

-- Location: MLABCELL_X34_Y4_N27
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \ROM1|memROM~11_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~18_combout\);

-- Location: LABCELL_X36_Y5_N21
\CPU1|ULA1|saida[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|saida[7]~1_combout\ = ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( (!\CPU1|PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\ $ (!\ROM1|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU1|ULA1|saida[7]~1_combout\);

-- Location: LABCELL_X35_Y5_N15
\CPU1|DECODER|PontosDeControle[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|PontosDeControle[5]~4_combout\ = ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~15_combout\ & !\ROM1|memROM~14_combout\) ) ) # ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~15_combout\ & (!\ROM1|memROM~16_combout\ $ 
-- (!\ROM1|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \CPU1|DECODER|PontosDeControle[5]~4_combout\);

-- Location: FF_X35_Y3_N50
\CPU1|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~21_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[5]~7_combout\,
	sload => \CPU1|ULA1|saida[7]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(5));

-- Location: MLABCELL_X37_Y4_N30
\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( \CPU1|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT[3]~DUPLICATE_q\)) ) ) ) # ( !\CPU1|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( 
-- (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & \CPU1|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000100000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~559_combout\);

-- Location: MLABCELL_X34_Y4_N12
\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( \RAM1|ram~559_combout\ & ( (\CPU1|DECODER|PontosDeControle[6]~0_combout\ & (!\RAM1|process_0~0_combout\ & \CPU1|ULA1|saida[7]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~559_combout\,
	combout => \RAM1|ram~560_combout\);

-- Location: FF_X35_Y5_N2
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: LABCELL_X35_Y5_N0
\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~20_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~12_combout\ & \RAM1|ram~36_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~36_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~546_combout\);

-- Location: MLABCELL_X37_Y4_N36
\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = ( !\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & (\ROM1|memROM~0_combout\ & \CPU1|PC|DOUT[1]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT\(5) & ( (\ROM1|memROM~0_combout\ & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000010000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~557_combout\);

-- Location: MLABCELL_X37_Y4_N12
\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( \RAM1|ram~557_combout\ & ( \CPU1|ULA1|saida[7]~0_combout\ & ( (!\RAM1|process_0~0_combout\ & \CPU1|DECODER|PontosDeControle[6]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	datae => \RAM1|ALT_INV_ram~557_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \RAM1|ram~558_combout\);

-- Location: FF_X35_Y5_N7
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X36_Y5_N3
\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = ( !\CPU1|PC|DOUT\(2) & ( \CPU1|PC|DOUT\(3) & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\ROM1|memROM~0_combout\ & \CPU1|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT\(2) & ( !\CPU1|PC|DOUT\(3) & ( 
-- (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\ROM1|memROM~0_combout\ & !\CPU1|PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(2),
	dataf => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~561_combout\);

-- Location: LABCELL_X35_Y5_N54
\RAM1|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~562_combout\ = ( \CPU1|ULA1|saida[7]~0_combout\ & ( (!\RAM1|process_0~0_combout\ & (\CPU1|DECODER|PontosDeControle[6]~0_combout\ & \RAM1|ram~561_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datac => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	datad => \RAM1|ALT_INV_ram~561_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \RAM1|ram~562_combout\);

-- Location: FF_X35_Y5_N47
\RAM1|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~276_q\);

-- Location: MLABCELL_X37_Y4_N57
\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( \CPU1|PC|DOUT\(5) & ( \ROM1|memROM~0_combout\ & ( (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\) # ((!\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(5) & ( 
-- \ROM1|memROM~0_combout\ & ( (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU1|PC|DOUT[3]~DUPLICATE_q\))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[3]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(0)))))) # 
-- (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001110101000101110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datac => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~555_combout\);

-- Location: MLABCELL_X37_Y4_N42
\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( !\RAM1|ram~555_combout\ & ( \CPU1|ULA1|saida[7]~0_combout\ & ( (!\RAM1|process_0~0_combout\ & \CPU1|DECODER|PontosDeControle[6]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	datae => \RAM1|ALT_INV_ram~555_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \RAM1|ram~556_combout\);

-- Location: FF_X36_Y5_N19
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X35_Y5_N24
\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \ROM1|memROM~12_combout\ & ( (\RAM1|ram~276_q\ & !\ROM1|memROM~21_combout\) ) ) # ( !\ROM1|memROM~12_combout\ & ( (\RAM1|ram~20_q\ & !\ROM1|memROM~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~276_q\,
	datac => \RAM1|ALT_INV_ram~20_q\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~544_combout\);

-- Location: LABCELL_X35_Y5_N42
\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \ROM1|memROM~13_combout\ & ( \RAM1|ram~544_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~28_q\ & (!\ROM1|memROM~20_combout\ & !\ROM1|memROM~21_combout\))) ) ) ) # ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~544_combout\ & ( 
-- !\ROM1|memROM~20_combout\ ) ) ) # ( \ROM1|memROM~13_combout\ & ( !\RAM1|ram~544_combout\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~28_q\ & (!\ROM1|memROM~20_combout\ & !\ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000011110000111100000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \RAM1|ALT_INV_ram~28_q\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	combout => \RAM1|ram~545_combout\);

-- Location: LABCELL_X35_Y5_N18
\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \RAM1|ram~546_combout\ & ( \RAM1|ram~545_combout\ & ( !\ROM1|memROM~1_combout\ ) ) ) # ( !\RAM1|ram~546_combout\ & ( \RAM1|ram~545_combout\ & ( (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~18_combout\) ) ) ) # ( 
-- \RAM1|ram~546_combout\ & ( !\RAM1|ram~545_combout\ & ( (!\ROM1|memROM~1_combout\ & \ROM1|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110011001100000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	datae => \RAM1|ALT_INV_ram~546_combout\,
	dataf => \RAM1|ALT_INV_ram~545_combout\,
	combout => \RAM1|ram~547_combout\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: MLABCELL_X37_Y4_N54
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \CPU1|PC|DOUT\(5) & ( \ROM1|memROM~0_combout\ & ( (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\) # ((!\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(5) & ( \ROM1|memROM~0_combout\ 
-- & ( (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((\CPU1|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(0)))))) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001010111000101110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datac => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X36_Y3_N21
\CPU1|DECODER|PontosDeControle[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|PontosDeControle[6]~1_combout\ = ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\ & !\ROM1|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \CPU1|DECODER|PontosDeControle[6]~1_combout\);

-- Location: LABCELL_X36_Y5_N54
\CPU1|DECODER|PontosDeControle[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|PontosDeControle[1]~2_combout\ = ( \CPU1|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(1) & ((!\CPU1|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(2)))) # (\CPU1|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[3]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(1) 
-- & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT[5]~DUPLICATE_q\)))) ) ) # ( !\CPU1|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ $ (((!\CPU1|PC|DOUT[5]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(2)))))) # 
-- (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[5]~DUPLICATE_q\) # (!\CPU1|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010101000011010101010100011011010000010001101101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	dataf => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU1|DECODER|PontosDeControle[1]~2_combout\);

-- Location: LABCELL_X36_Y5_N51
\CPU1|DECODER|PontosDeControle[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|PontosDeControle[1]~3_combout\ = ( \CPU1|DECODER|PontosDeControle[1]~2_combout\ & ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\CPU1|PC|DOUT\(8) & ((!\CPU1|PC|DOUT[0]~DUPLICATE_q\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(8),
	datae => \CPU1|DECODER|ALT_INV_PontosDeControle[1]~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU1|DECODER|PontosDeControle[1]~3_combout\);

-- Location: LABCELL_X36_Y5_N30
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~9_combout\ & (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & \ROM1|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X36_Y5_N45
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \comb~2_combout\ & ( \CPU1|DECODER|PontosDeControle[1]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|DECODER|ALT_INV_PontosDeControle[1]~3_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X36_Y3_N18
\CPU1|MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~2_combout\ = ( \comb~3_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\comb~0_combout\ & !\CPU1|DECODER|PontosDeControle[6]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~2_combout\);

-- Location: LABCELL_X36_Y3_N45
\CPU1|MUX1|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[5]~7_combout\ = ( \CPU1|MUX1|saida_MUX[1]~2_combout\ & ( ((\CPU1|MUX1|saida_MUX[1]~1_combout\ & \RAM1|ram~547_combout\)) # (\SW[5]~input_o\) ) ) # ( !\CPU1|MUX1|saida_MUX[1]~2_combout\ & ( (\CPU1|MUX1|saida_MUX[1]~1_combout\ & 
-- \RAM1|ram~547_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \RAM1|ALT_INV_ram~547_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \CPU1|MUX1|saida_MUX[5]~7_combout\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X35_Y4_N33
\RAM1|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~0_combout\ = ( \CPU1|DECODER|PontosDeControle[1]~3_combout\ & ( !\RAM1|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \CPU1|DECODER|ALT_INV_PontosDeControle[1]~3_combout\,
	combout => \RAM1|dado_out~0_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X35_Y4_N54
\RAM_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_MUX[0]~0_combout\ = ( \CPU1|DECODER|PontosDeControle[1]~3_combout\ & ( (\SW[0]~input_o\ & (!\comb~0_combout\ & (!\ROM1|memROM~1_combout\ & \comb~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ALT_INV_comb~2_combout\,
	dataf => \CPU1|DECODER|ALT_INV_PontosDeControle[1]~3_combout\,
	combout => \RAM_MUX[0]~0_combout\);

-- Location: FF_X37_Y4_N23
\RAM1|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~271_q\);

-- Location: LABCELL_X36_Y4_N30
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \CPU1|PC|DOUT\(3) & ( (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(5)))) ) ) # ( !\CPU1|PC|DOUT\(3) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & 
-- (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT\(5))))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010011000000001001001100000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	dataf => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~10_combout\);

-- Location: MLABCELL_X37_Y4_N18
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM1|ram~271_q\ ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~10_combout\ & ( (\RAM1|ram~271_q\ & ((!\ROM1|memROM~19_combout\) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\))) 
-- ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~271_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000010101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~271_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: FF_X34_Y4_N59
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: MLABCELL_X34_Y4_N51
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~0_combout\ & \RAM1|ram~31_q\) ) ) # ( !\ROM1|memROM~10_combout\ & ( (\RAM1|ram~31_q\ & (((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~19_combout\)) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101000011110000110100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \RAM1|ALT_INV_ram~31_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~528_combout\);

-- Location: FF_X37_Y4_N26
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: FF_X34_Y4_N19
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: MLABCELL_X34_Y4_N39
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \ROM1|memROM~19_combout\ & ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~15_q\)))) # (\ROM1|memROM~0_combout\ & (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\RAM1|ram~23_q\))) ) ) ) # ( !\ROM1|memROM~19_combout\ & 
-- ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~0_combout\ & ((\RAM1|ram~15_q\))) # (\ROM1|memROM~0_combout\ & (\RAM1|ram~23_q\)) ) ) ) # ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~10_combout\ & ( (\RAM1|ram~15_q\ & ((!\ROM1|memROM~0_combout\) # 
-- (\CPU1|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111010100000011111100110000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \RAM1|ALT_INV_ram~23_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \RAM1|ALT_INV_ram~15_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~527_combout\);

-- Location: MLABCELL_X34_Y4_N24
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \RAM1|ram~527_combout\ & ( (!\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\RAM1|ram~528_combout\))) ) ) # ( !\RAM1|ram~527_combout\ & ( (\ROM1|memROM~18_combout\ & (\RAM1|ram~528_combout\ & 
-- !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \RAM1|ALT_INV_ram~528_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: MLABCELL_X34_Y4_N0
\RAM1|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~579_combout\ = ( !\ROM1|memROM~21_combout\ & ( \RAM1|ram~529_combout\ & ( (!\ROM1|memROM~12_combout\) # ((!\ROM1|memROM~18_combout\ & (!\ROM1|memROM~1_combout\ & \RAM1|ram~530_combout\))) ) ) ) # ( !\ROM1|memROM~21_combout\ & ( 
-- !\RAM1|ram~529_combout\ & ( (!\ROM1|memROM~18_combout\ & (!\ROM1|memROM~1_combout\ & (\RAM1|ram~530_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000011111111000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \RAM1|ALT_INV_ram~530_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \RAM1|ALT_INV_ram~529_combout\,
	combout => \RAM1|ram~579_combout\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: MLABCELL_X37_Y4_N51
\AND_HEX0|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|dataOUT~0_combout\ = ( \CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( (\CPU1|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & !\CPU1|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM1|memROM~0_combout\ & ( (!\CPU1|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & \CPU1|PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \AND_HEX0|dataOUT~0_combout\);

-- Location: MLABCELL_X34_Y4_N21
\RAM_MUX[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_MUX[0]~5_combout\ = (\FPGA_RESET_N~input_o\ & \AND_HEX0|dataOUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FPGA_RESET_N~input_o\,
	datad => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	combout => \RAM_MUX[0]~5_combout\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X34_Y4_N18
\RAM_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_MUX[0]~1_combout\ = ( \ROM1|memROM~11_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~10_combout\ & \SW[9]~input_o\)) ) ) # ( !\ROM1|memROM~11_combout\ & ( (\SW[8]~input_o\ & (\ROM1|memROM~0_combout\ & \ROM1|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM_MUX[0]~1_combout\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X10_Y2_N51
\DETECTOR_BORDA_KEY0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DETECTOR_BORDA_KEY0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \DETECTOR_BORDA_KEY0|saidaQ~0_combout\);

-- Location: FF_X10_Y2_N53
\DETECTOR_BORDA_KEY0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DETECTOR_BORDA_KEY0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DETECTOR_BORDA_KEY0|saidaQ~q\);

-- Location: LABCELL_X10_Y2_N54
\DETECTOR_BORDA_KEY0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \DETECTOR_BORDA_KEY0|saida~combout\ = LCELL(( \KEY[0]~input_o\ & ( \DETECTOR_BORDA_KEY0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \DETECTOR_BORDA_KEY0|ALT_INV_saidaQ~q\,
	combout => \DETECTOR_BORDA_KEY0|saida~combout\);

-- Location: LABCELL_X36_Y4_N33
\REGISTRADOR|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \REGISTRADOR|DOUT~feeder_combout\);

-- Location: LABCELL_X36_Y4_N48
\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = ( !\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( (\ROM1|memROM~0_combout\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~22_combout\);

-- Location: LABCELL_X36_Y4_N57
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \comb~4_combout\);

-- Location: LABCELL_X36_Y4_N18
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \ROM1|memROM~20_combout\ & ( \comb~4_combout\ & ( (\ROM1|memROM~23_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~12_combout\ & \ROM1|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~22_combout\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ALT_INV_comb~4_combout\,
	combout => \comb~5_combout\);

-- Location: FF_X36_Y4_N35
\REGISTRADOR|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DETECTOR_BORDA_KEY0|saida~combout\,
	d => \REGISTRADOR|DOUT~feeder_combout\,
	clrn => \ALT_INV_comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR|DOUT~q\);

-- Location: LABCELL_X35_Y4_N51
\RAM_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_MUX[0]~4_combout\ = ( \ROM1|memROM~18_combout\ & ( \REGISTRADOR|DOUT~q\ & ( (!\ROM1|memROM~13_combout\ & ((\KEY[2]~input_o\))) # (\ROM1|memROM~13_combout\ & (\KEY[3]~input_o\)) ) ) ) # ( !\ROM1|memROM~18_combout\ & ( \REGISTRADOR|DOUT~q\ & ( 
-- (!\ROM1|memROM~13_combout\) # (\KEY[1]~input_o\) ) ) ) # ( \ROM1|memROM~18_combout\ & ( !\REGISTRADOR|DOUT~q\ & ( (!\ROM1|memROM~13_combout\ & ((\KEY[2]~input_o\))) # (\ROM1|memROM~13_combout\ & (\KEY[3]~input_o\)) ) ) ) # ( !\ROM1|memROM~18_combout\ & ( 
-- !\REGISTRADOR|DOUT~q\ & ( (\ROM1|memROM~13_combout\ & \KEY[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \REGISTRADOR|ALT_INV_DOUT~q\,
	combout => \RAM_MUX[0]~4_combout\);

-- Location: MLABCELL_X34_Y4_N42
\RAM_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_MUX[0]~2_combout\ = ( \comb~3_combout\ & ( \RAM_MUX[0]~4_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\ROM1|memROM~12_combout\) # (\RAM_MUX[0]~1_combout\)))) # (\ROM1|memROM~1_combout\ & (\RAM_MUX[0]~5_combout\)) ) ) ) # ( \comb~3_combout\ & ( 
-- !\RAM_MUX[0]~4_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\RAM_MUX[0]~1_combout\ & !\ROM1|memROM~12_combout\)))) # (\ROM1|memROM~1_combout\ & (\RAM_MUX[0]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111010001000100000000000000000001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM_MUX[0]~5_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_RAM_MUX[0]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ALT_INV_comb~3_combout\,
	dataf => \ALT_INV_RAM_MUX[0]~4_combout\,
	combout => \RAM_MUX[0]~2_combout\);

-- Location: MLABCELL_X34_Y4_N9
\CPU1|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~0_combout\ = ( \CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( \RAM_MUX[0]~2_combout\ & ( \ROM1|memROM~13_combout\ ) ) ) # ( !\CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( \RAM_MUX[0]~2_combout\ ) ) # ( 
-- \CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( !\RAM_MUX[0]~2_combout\ & ( \ROM1|memROM~13_combout\ ) ) ) # ( !\CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( !\RAM_MUX[0]~2_combout\ & ( ((\RAM1|dado_out~0_combout\ & \RAM1|ram~579_combout\)) # 
-- (\RAM_MUX[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_RAM_MUX[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_ram~579_combout\,
	datae => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\,
	dataf => \ALT_INV_RAM_MUX[0]~2_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X35_Y3_N30
\CPU1|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~34_cout\ = CARRY(( (\CPU1|DECODER|Equal9~0_combout\ & (((\CPU1|ULA1|Equal2~0_combout\ & !\CPU1|DECODER|Equal7~0_combout\)) # (\CPU1|DECODER|Equal8~0_combout\))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal8~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Equal2~0_combout\,
	datad => \CPU1|DECODER|ALT_INV_Equal7~0_combout\,
	cin => GND,
	cout => \CPU1|ULA1|Add0~34_cout\);

-- Location: LABCELL_X35_Y3_N33
\CPU1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~1_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))
-- \CPU1|ULA1|Add0~2\ = CARRY(( !\CPU1|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001001111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal8~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(0),
	cin => \CPU1|ULA1|Add0~34_cout\,
	sumout => \CPU1|ULA1|Add0~1_sumout\,
	cout => \CPU1|ULA1|Add0~2\);

-- Location: LABCELL_X35_Y3_N36
\CPU1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~5_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[1]~3_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(1) ) + ( \CPU1|ULA1|Add0~2\ ))
-- \CPU1|ULA1|Add0~6\ = CARRY(( !\CPU1|MUX1|saida_MUX[1]~3_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(1) ) + ( \CPU1|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001001111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal8~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~3_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(1),
	cin => \CPU1|ULA1|Add0~2\,
	sumout => \CPU1|ULA1|Add0~5_sumout\,
	cout => \CPU1|ULA1|Add0~6\);

-- Location: FF_X35_Y3_N38
\CPU1|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~5_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[1]~3_combout\,
	sload => \CPU1|ULA1|saida[7]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(1));

-- Location: FF_X36_Y4_N44
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: LABCELL_X36_Y4_N51
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~20_combout\ & (\RAM1|ram~32_q\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM1|ALT_INV_ram~32_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: FF_X36_Y5_N2
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: FF_X36_Y5_N50
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: LABCELL_X36_Y5_N42
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~0_combout\ & (((\RAM1|ram~16_q\)))) # (\ROM1|memROM~0_combout\ & (\RAM1|ram~24_q\ & (!\ROM1|memROM~9_combout\))) ) ) # ( !\ROM1|memROM~10_combout\ & ( (\RAM1|ram~16_q\ & 
-- ((!\ROM1|memROM~9_combout\) # (!\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111010001000000111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \RAM1|ALT_INV_ram~16_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X36_Y5_N39
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( !\ROM1|memROM~20_combout\ & ( (\RAM1|ram~531_combout\ & !\ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~531_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: FF_X35_Y5_N23
\RAM1|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~272_q\);

-- Location: LABCELL_X35_Y5_N39
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~20_combout\ & ( (\RAM1|ram~272_q\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~21_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~272_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: LABCELL_X35_Y3_N24
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \RAM1|ram~533_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~18_combout\ & ((\RAM1|ram~532_combout\))) # (\ROM1|memROM~18_combout\ & (\RAM1|ram~534_combout\)))) # (\ROM1|memROM~12_combout\ & 
-- (((!\ROM1|memROM~18_combout\)))) ) ) # ( !\RAM1|ram~533_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~18_combout\ & ((\RAM1|ram~532_combout\))) # (\ROM1|memROM~18_combout\ & (\RAM1|ram~534_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010010111100100101001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \RAM1|ALT_INV_ram~534_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \RAM1|ALT_INV_ram~532_combout\,
	dataf => \RAM1|ALT_INV_ram~533_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: LABCELL_X35_Y3_N0
\CPU1|MUX1|saida_MUX[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~3_combout\ = ( \CPU1|MUX1|saida_MUX[1]~1_combout\ & ( \RAM1|ram~535_combout\ ) ) # ( !\CPU1|MUX1|saida_MUX[1]~1_combout\ & ( \RAM1|ram~535_combout\ & ( (\SW[1]~input_o\ & \CPU1|MUX1|saida_MUX[1]~2_combout\) ) ) ) # ( 
-- \CPU1|MUX1|saida_MUX[1]~1_combout\ & ( !\RAM1|ram~535_combout\ & ( (\SW[1]~input_o\ & \CPU1|MUX1|saida_MUX[1]~2_combout\) ) ) ) # ( !\CPU1|MUX1|saida_MUX[1]~1_combout\ & ( !\RAM1|ram~535_combout\ & ( (\SW[1]~input_o\ & \CPU1|MUX1|saida_MUX[1]~2_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~3_combout\);

-- Location: LABCELL_X35_Y3_N39
\CPU1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~9_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[2]~4_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(2) ) + ( \CPU1|ULA1|Add0~6\ ))
-- \CPU1|ULA1|Add0~10\ = CARRY(( !\CPU1|MUX1|saida_MUX[2]~4_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(2) ) + ( \CPU1|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001001111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal8~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[2]~4_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(2),
	cin => \CPU1|ULA1|Add0~6\,
	sumout => \CPU1|ULA1|Add0~9_sumout\,
	cout => \CPU1|ULA1|Add0~10\);

-- Location: FF_X35_Y3_N41
\CPU1|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~9_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[2]~4_combout\,
	sload => \CPU1|ULA1|saida[7]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(2));

-- Location: FF_X36_Y3_N56
\RAM1|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~273_q\);

-- Location: LABCELL_X36_Y3_N54
\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = ( !\ROM1|memROM~21_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~20_combout\ & (!\ROM1|memROM~18_combout\ & \RAM1|ram~273_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~20_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \RAM1|ALT_INV_ram~273_q\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~564_combout\);

-- Location: LABCELL_X35_Y5_N3
\RAM1|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~565_combout\ = ( !\ROM1|memROM~20_combout\ & ( !\ROM1|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~565_combout\);

-- Location: LABCELL_X36_Y3_N57
\RAM1|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~566_combout\ = ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~566_combout\);

-- Location: MLABCELL_X37_Y3_N42
\RAM1|ram~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~25feeder_combout\ = ( \CPU1|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REG1|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~25feeder_combout\);

-- Location: FF_X37_Y3_N44
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~25feeder_combout\,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: FF_X36_Y3_N1
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: FF_X37_Y3_N41
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: MLABCELL_X37_Y3_N39
\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = ( \RAM1|ram~17_q\ & ( \ROM1|memROM~18_combout\ & ( (\RAM1|ram~33_q\ & !\ROM1|memROM~13_combout\) ) ) ) # ( !\RAM1|ram~17_q\ & ( \ROM1|memROM~18_combout\ & ( (\RAM1|ram~33_q\ & !\ROM1|memROM~13_combout\) ) ) ) # ( \RAM1|ram~17_q\ & 
-- ( !\ROM1|memROM~18_combout\ & ( (!\ROM1|memROM~13_combout\) # (\RAM1|ram~25_q\) ) ) ) # ( !\RAM1|ram~17_q\ & ( !\ROM1|memROM~18_combout\ & ( (\RAM1|ram~25_q\ & \ROM1|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \RAM1|ALT_INV_ram~33_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \RAM1|ALT_INV_ram~17_q\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \RAM1|ram~563_combout\);

-- Location: LABCELL_X36_Y3_N6
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \RAM1|ram~566_combout\ & ( \RAM1|ram~563_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~565_combout\)))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~564_combout\ & (\ROM1|memROM~1_combout\ & !\RAM1|ram~565_combout\))) ) ) ) 
-- # ( !\RAM1|ram~566_combout\ & ( \RAM1|ram~563_combout\ & ( (!\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~1_combout\ & \RAM1|ram~565_combout\)))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~564_combout\ & ((!\ROM1|memROM~1_combout\) # 
-- (!\RAM1|ram~565_combout\)))) ) ) ) # ( \RAM1|ram~566_combout\ & ( !\RAM1|ram~563_combout\ & ( (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~565_combout\)))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~564_combout\ & (\ROM1|memROM~1_combout\ & 
-- !\RAM1|ram~565_combout\))) ) ) ) # ( !\RAM1|ram~566_combout\ & ( !\RAM1|ram~563_combout\ & ( (\RAM1|ram~564_combout\ & (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~1_combout\) # (!\RAM1|ram~565_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000100000000011111000000000101110001000000000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~564_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~565_combout\,
	datae => \RAM1|ALT_INV_ram~566_combout\,
	dataf => \RAM1|ALT_INV_ram~563_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: LABCELL_X36_Y3_N48
\CPU1|MUX1|saida_MUX[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~4_combout\ = ( \CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( \RAM1|ram~536_combout\ & ( (((\SW[2]~input_o\ & \CPU1|MUX1|saida_MUX[1]~2_combout\)) # (\CPU1|MUX1|saida_MUX[1]~1_combout\)) # (\ROM1|memROM~1_combout\) ) ) ) # ( 
-- !\CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( \RAM1|ram~536_combout\ & ( ((\SW[2]~input_o\ & \CPU1|MUX1|saida_MUX[1]~2_combout\)) # (\CPU1|MUX1|saida_MUX[1]~1_combout\) ) ) ) # ( \CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( !\RAM1|ram~536_combout\ 
-- & ( ((\SW[2]~input_o\ & \CPU1|MUX1|saida_MUX[1]~2_combout\)) # (\ROM1|memROM~1_combout\) ) ) ) # ( !\CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( !\RAM1|ram~536_combout\ & ( (\SW[2]~input_o\ & \CPU1|MUX1|saida_MUX[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101110011011100000101111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	combout => \CPU1|MUX1|saida_MUX[2]~4_combout\);

-- Location: LABCELL_X35_Y3_N42
\CPU1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~13_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[3]~5_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(3) ) + ( \CPU1|ULA1|Add0~10\ ))
-- \CPU1|ULA1|Add0~14\ = CARRY(( !\CPU1|MUX1|saida_MUX[3]~5_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(3) ) + ( \CPU1|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_Equal8~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[3]~5_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(3),
	cin => \CPU1|ULA1|Add0~10\,
	sumout => \CPU1|ULA1|Add0~13_sumout\,
	cout => \CPU1|ULA1|Add0~14\);

-- Location: FF_X35_Y3_N44
\CPU1|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[3]~5_combout\,
	sload => \CPU1|ULA1|saida[7]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(3));

-- Location: FF_X34_Y3_N20
\RAM1|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~274_q\);

-- Location: MLABCELL_X34_Y3_N21
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( !\ROM1|memROM~20_combout\ & ( !\ROM1|memROM~21_combout\ & ( (\RAM1|ram~274_q\ & (!\ROM1|memROM~18_combout\ & !\ROM1|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~274_q\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: FF_X37_Y4_N37
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: MLABCELL_X34_Y3_N9
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~18_combout\ & (\RAM1|ram~26_q\ & !\ROM1|memROM~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \RAM1|ALT_INV_ram~26_q\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: FF_X36_Y3_N10
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: FF_X34_Y3_N26
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X34_Y3_N24
\RAM1|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~575_combout\ = ( \RAM1|ram~18_q\ & ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~18_combout\) # (\RAM1|ram~34_q\)))) ) ) ) # ( !\RAM1|ram~18_q\ & ( !\ROM1|memROM~20_combout\ & ( 
-- (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~21_combout\ & (\RAM1|ram~34_q\ & \ROM1|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000100010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \RAM1|ALT_INV_ram~34_q\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	datae => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~575_combout\);

-- Location: MLABCELL_X34_Y3_N36
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \RAM1|ram~575_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~13_combout\) # ((\RAM1|ram~538_combout\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~13_combout\ & (\RAM1|ram~537_combout\))) ) ) # ( 
-- !\RAM1|ram~575_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~13_combout\ & ((\RAM1|ram~538_combout\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~13_combout\ & (\RAM1|ram~537_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \RAM1|ALT_INV_ram~537_combout\,
	datad => \RAM1|ALT_INV_ram~538_combout\,
	dataf => \RAM1|ALT_INV_ram~575_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: MLABCELL_X34_Y3_N12
\CPU1|MUX1|saida_MUX[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~5_combout\ = ( \RAM1|ram~539_combout\ & ( \CPU1|MUX1|saida_MUX[1]~2_combout\ & ( (((\ROM1|memROM~20_combout\ & \CPU1|DECODER|PontosDeControle[6]~1_combout\)) # (\CPU1|MUX1|saida_MUX[1]~1_combout\)) # (\SW[3]~input_o\) ) ) ) # ( 
-- !\RAM1|ram~539_combout\ & ( \CPU1|MUX1|saida_MUX[1]~2_combout\ & ( ((\ROM1|memROM~20_combout\ & \CPU1|DECODER|PontosDeControle[6]~1_combout\)) # (\SW[3]~input_o\) ) ) ) # ( \RAM1|ram~539_combout\ & ( !\CPU1|MUX1|saida_MUX[1]~2_combout\ & ( 
-- ((\ROM1|memROM~20_combout\ & \CPU1|DECODER|PontosDeControle[6]~1_combout\)) # (\CPU1|MUX1|saida_MUX[1]~1_combout\) ) ) ) # ( !\RAM1|ram~539_combout\ & ( !\CPU1|MUX1|saida_MUX[1]~2_combout\ & ( (\ROM1|memROM~20_combout\ & 
-- \CPU1|DECODER|PontosDeControle[6]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110101111100110011011101110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\,
	datae => \RAM1|ALT_INV_ram~539_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \CPU1|MUX1|saida_MUX[3]~5_combout\);

-- Location: LABCELL_X35_Y3_N45
\CPU1|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~17_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[4]~6_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(4) ) + ( \CPU1|ULA1|Add0~14\ ))
-- \CPU1|ULA1|Add0~18\ = CARRY(( !\CPU1|MUX1|saida_MUX[4]~6_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(4) ) + ( \CPU1|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_Equal8~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[4]~6_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(4),
	cin => \CPU1|ULA1|Add0~14\,
	sumout => \CPU1|ULA1|Add0~17_sumout\,
	cout => \CPU1|ULA1|Add0~18\);

-- Location: FF_X35_Y3_N47
\CPU1|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~17_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[4]~6_combout\,
	sload => \CPU1|ULA1|saida[7]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(4));

-- Location: FF_X35_Y4_N29
\RAM1|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~275_q\);

-- Location: LABCELL_X35_Y4_N0
\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~13_combout\ & (\RAM1|ram~275_q\ & !\ROM1|memROM~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \RAM1|ALT_INV_ram~275_q\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~542_combout\);

-- Location: FF_X34_Y4_N37
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: FF_X34_Y4_N47
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: MLABCELL_X34_Y4_N33
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\RAM1|ram~19_q\))) # (\ROM1|memROM~13_combout\ & (\RAM1|ram~27_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~27_q\,
	datac => \RAM1|ALT_INV_ram~19_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~540_combout\);

-- Location: FF_X34_Y4_N50
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: MLABCELL_X34_Y4_N48
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~13_combout\ & \RAM1|ram~35_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_ram~35_q\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~541_combout\);

-- Location: MLABCELL_X34_Y4_N15
\RAM1|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~571_combout\ = ( \RAM1|ram~541_combout\ & ( (!\ROM1|memROM~1_combout\ & ((\ROM1|memROM~18_combout\) # (\RAM1|ram~540_combout\))) ) ) # ( !\RAM1|ram~541_combout\ & ( (\RAM1|ram~540_combout\ & (!\ROM1|memROM~1_combout\ & 
-- !\ROM1|memROM~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~540_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \RAM1|ALT_INV_ram~541_combout\,
	combout => \RAM1|ram~571_combout\);

-- Location: MLABCELL_X34_Y4_N54
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( \RAM1|ram~571_combout\ & ( (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~12_combout\) # (\RAM1|ram~542_combout\))) ) ) # ( !\RAM1|ram~571_combout\ & ( (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~21_combout\ & 
-- \RAM1|ram~542_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \RAM1|ALT_INV_ram~542_combout\,
	dataf => \RAM1|ALT_INV_ram~571_combout\,
	combout => \RAM1|ram~543_combout\);

-- Location: MLABCELL_X34_Y3_N57
\CPU1|MUX1|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[4]~6_combout\ = ( \RAM1|ram~543_combout\ & ( ((\SW[4]~input_o\ & \CPU1|MUX1|saida_MUX[1]~2_combout\)) # (\CPU1|MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\RAM1|ram~543_combout\ & ( (\SW[4]~input_o\ & \CPU1|MUX1|saida_MUX[1]~2_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \RAM1|ALT_INV_ram~543_combout\,
	combout => \CPU1|MUX1|saida_MUX[4]~6_combout\);

-- Location: LABCELL_X35_Y3_N48
\CPU1|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~21_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[5]~7_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(5) ) + ( \CPU1|ULA1|Add0~18\ ))
-- \CPU1|ULA1|Add0~22\ = CARRY(( !\CPU1|MUX1|saida_MUX[5]~7_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(5) ) + ( \CPU1|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_Equal8~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[5]~7_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(5),
	cin => \CPU1|ULA1|Add0~18\,
	sumout => \CPU1|ULA1|Add0~21_sumout\,
	cout => \CPU1|ULA1|Add0~22\);

-- Location: LABCELL_X36_Y3_N30
\CPU1|FLAG|DOUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~7_combout\ = ( !\RAM1|ram~543_combout\ & ( \CPU1|MUX1|saida_MUX[1]~1_combout\ & ( (!\RAM1|ram~547_combout\ & ((!\CPU1|MUX1|saida_MUX[1]~2_combout\) # ((!\SW[4]~input_o\ & !\SW[5]~input_o\)))) ) ) ) # ( \RAM1|ram~543_combout\ & ( 
-- !\CPU1|MUX1|saida_MUX[1]~1_combout\ & ( (!\CPU1|MUX1|saida_MUX[1]~2_combout\) # ((!\SW[4]~input_o\ & !\SW[5]~input_o\)) ) ) ) # ( !\RAM1|ram~543_combout\ & ( !\CPU1|MUX1|saida_MUX[1]~1_combout\ & ( (!\CPU1|MUX1|saida_MUX[1]~2_combout\) # 
-- ((!\SW[4]~input_o\ & !\SW[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010101110101011101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \RAM1|ALT_INV_ram~547_combout\,
	datae => \RAM1|ALT_INV_ram~543_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU1|FLAG|DOUT~7_combout\);

-- Location: LABCELL_X36_Y3_N24
\CPU1|MUX1|saida_MUX[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~11_combout\ = ( \ROM1|memROM~20_combout\ & ( \SW[3]~input_o\ & ( ((!\comb~0_combout\ & (\comb~3_combout\ & !\ROM1|memROM~1_combout\))) # (\CPU1|DECODER|PontosDeControle[6]~1_combout\) ) ) ) # ( !\ROM1|memROM~20_combout\ & ( 
-- \SW[3]~input_o\ & ( (!\CPU1|DECODER|PontosDeControle[6]~1_combout\ & (!\comb~0_combout\ & (\comb~3_combout\ & !\ROM1|memROM~1_combout\))) ) ) ) # ( \ROM1|memROM~20_combout\ & ( !\SW[3]~input_o\ & ( \CPU1|DECODER|PontosDeControle[6]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100001000000000000101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ALT_INV_comb~3_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[3]~11_combout\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X36_Y3_N27
\CPU1|MUX1|saida_MUX[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~12_combout\ = ( \ROM1|memROM~22_combout\ & ( \SW[6]~input_o\ & ( ((!\comb~0_combout\ & (!\ROM1|memROM~1_combout\ & \comb~3_combout\))) # (\CPU1|DECODER|PontosDeControle[6]~1_combout\) ) ) ) # ( !\ROM1|memROM~22_combout\ & ( 
-- \SW[6]~input_o\ & ( (!\CPU1|DECODER|PontosDeControle[6]~1_combout\ & (!\comb~0_combout\ & (!\ROM1|memROM~1_combout\ & \comb~3_combout\))) ) ) ) # ( \ROM1|memROM~22_combout\ & ( !\SW[6]~input_o\ & ( \CPU1|DECODER|PontosDeControle[6]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000100000000101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ALT_INV_comb~3_combout\,
	datae => \ROM1|ALT_INV_memROM~22_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[6]~12_combout\);

-- Location: MLABCELL_X34_Y3_N33
\CPU1|MUX1|saida_MUX[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~8_combout\ = ( \CPU1|MUX1|saida_MUX[1]~2_combout\ & ( \RAM1|ram~552_combout\ & ( (((\ROM1|memROM~22_combout\ & \CPU1|DECODER|PontosDeControle[6]~1_combout\)) # (\CPU1|MUX1|saida_MUX[1]~1_combout\)) # (\SW[6]~input_o\) ) ) ) # ( 
-- !\CPU1|MUX1|saida_MUX[1]~2_combout\ & ( \RAM1|ram~552_combout\ & ( ((\ROM1|memROM~22_combout\ & \CPU1|DECODER|PontosDeControle[6]~1_combout\)) # (\CPU1|MUX1|saida_MUX[1]~1_combout\) ) ) ) # ( \CPU1|MUX1|saida_MUX[1]~2_combout\ & ( !\RAM1|ram~552_combout\ 
-- & ( ((\ROM1|memROM~22_combout\ & \CPU1|DECODER|PontosDeControle[6]~1_combout\)) # (\SW[6]~input_o\) ) ) ) # ( !\CPU1|MUX1|saida_MUX[1]~2_combout\ & ( !\RAM1|ram~552_combout\ & ( (\ROM1|memROM~22_combout\ & \CPU1|DECODER|PontosDeControle[6]~1_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101110101011100000011111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ROM1|ALT_INV_memROM~22_combout\,
	datac => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \RAM1|ALT_INV_ram~552_combout\,
	combout => \CPU1|MUX1|saida_MUX[6]~8_combout\);

-- Location: LABCELL_X35_Y3_N51
\CPU1|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~25_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[6]~8_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(6) ) + ( \CPU1|ULA1|Add0~22\ ))
-- \CPU1|ULA1|Add0~26\ = CARRY(( !\CPU1|MUX1|saida_MUX[6]~8_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(6) ) + ( \CPU1|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_Equal8~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[6]~8_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(6),
	cin => \CPU1|ULA1|Add0~22\,
	sumout => \CPU1|ULA1|Add0~25_sumout\,
	cout => \CPU1|ULA1|Add0~26\);

-- Location: FF_X35_Y3_N53
\CPU1|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~25_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[6]~8_combout\,
	sload => \CPU1|ULA1|saida[7]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(6));

-- Location: FF_X34_Y3_N8
\RAM1|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~277_q\);

-- Location: MLABCELL_X34_Y3_N6
\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~18_combout\ & (!\ROM1|memROM~21_combout\ & \RAM1|ram~277_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \RAM1|ALT_INV_ram~277_q\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~550_combout\);

-- Location: FF_X34_Y3_N5
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: MLABCELL_X34_Y3_N3
\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~18_combout\ & \RAM1|ram~29_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \RAM1|ALT_INV_ram~29_q\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~551_combout\);

-- Location: FF_X34_Y4_N2
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X34_Y4_N32
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: MLABCELL_X34_Y4_N30
\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~18_combout\ & (\RAM1|ram~21_q\)) # (\ROM1|memROM~18_combout\ & ((\RAM1|ram~37_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \RAM1|ALT_INV_ram~37_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~548_combout\);

-- Location: MLABCELL_X34_Y3_N51
\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \RAM1|ram~548_combout\ & ( (!\ROM1|memROM~21_combout\ & !\ROM1|memROM~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \RAM1|ALT_INV_ram~548_combout\,
	combout => \RAM1|ram~549_combout\);

-- Location: MLABCELL_X34_Y3_N39
\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( \RAM1|ram~549_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~13_combout\) # ((\RAM1|ram~551_combout\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~13_combout\ & (\RAM1|ram~550_combout\))) ) ) # ( 
-- !\RAM1|ram~549_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~13_combout\ & ((\RAM1|ram~551_combout\)))) # (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~13_combout\ & (\RAM1|ram~550_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \RAM1|ALT_INV_ram~550_combout\,
	datad => \RAM1|ALT_INV_ram~551_combout\,
	dataf => \RAM1|ALT_INV_ram~549_combout\,
	combout => \RAM1|ram~552_combout\);

-- Location: LABCELL_X36_Y3_N42
\CPU1|FLAG|DOUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~6_combout\ = ( \RAM1|ram~552_combout\ & ( (!\CPU1|MUX1|saida_MUX[1]~1_combout\ & (!\CPU1|MUX1|saida_MUX[3]~11_combout\ & !\CPU1|MUX1|saida_MUX[6]~12_combout\)) ) ) # ( !\RAM1|ram~552_combout\ & ( (!\CPU1|MUX1|saida_MUX[3]~11_combout\ & 
-- (!\CPU1|MUX1|saida_MUX[6]~12_combout\ & ((!\RAM1|ram~539_combout\) # (!\CPU1|MUX1|saida_MUX[1]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~539_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[3]~11_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \RAM1|ALT_INV_ram~552_combout\,
	combout => \CPU1|FLAG|DOUT~6_combout\);

-- Location: LABCELL_X35_Y5_N12
\CPU1|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~0_combout\ = ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~15_combout\ & !\ROM1|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \CPU1|FLAG|DOUT~0_combout\);

-- Location: LABCELL_X35_Y3_N6
\CPU1|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~2_combout\ = ( \CPU1|FLAG|DOUT~q\ & ( !\CPU1|FLAG|DOUT~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|FLAG|ALT_INV_DOUT~0_combout\,
	dataf => \CPU1|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU1|FLAG|DOUT~2_combout\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X35_Y3_N54
\CPU1|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~29_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[7]~9_combout\ $ (((!\CPU1|DECODER|Equal9~0_combout\) # ((!\CPU1|DECODER|Equal8~0_combout\ & !\CPU1|ULA1|Equal2~1_combout\)))) ) + ( \CPU1|REG1|DOUT\(7) ) + ( \CPU1|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datab => \CPU1|DECODER|ALT_INV_Equal8~0_combout\,
	datac => \CPU1|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[7]~9_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(7),
	cin => \CPU1|ULA1|Add0~26\,
	sumout => \CPU1|ULA1|Add0~29_sumout\);

-- Location: FF_X35_Y3_N56
\CPU1|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~29_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[7]~9_combout\,
	sload => \CPU1|ULA1|saida[7]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(7));

-- Location: FF_X34_Y3_N2
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: MLABCELL_X34_Y3_N0
\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( !\ROM1|memROM~18_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~21_combout\ & (!\ROM1|memROM~12_combout\ & \RAM1|ram~30_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~30_q\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \RAM1|ram~553_combout\);

-- Location: FF_X34_Y3_N43
\RAM1|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~278_q\);

-- Location: FF_X36_Y3_N49
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: FF_X34_Y3_N50
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: MLABCELL_X34_Y3_N42
\RAM1|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~567_combout\ = ( !\ROM1|memROM~18_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~21_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~22_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~278_q\))))) ) ) # ( \ROM1|memROM~18_combout\ & ( 
-- (!\ROM1|memROM~12_combout\ & (((\RAM1|ram~38_q\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~21_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \RAM1|ALT_INV_ram~278_q\,
	datac => \RAM1|ALT_INV_ram~38_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	datag => \RAM1|ALT_INV_ram~22_q\,
	combout => \RAM1|ram~567_combout\);

-- Location: MLABCELL_X34_Y3_N54
\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( \RAM1|ram~567_combout\ & ( (!\ROM1|memROM~20_combout\ & ((!\ROM1|memROM~13_combout\) # (\RAM1|ram~553_combout\))) ) ) # ( !\RAM1|ram~567_combout\ & ( (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~20_combout\ & 
-- \RAM1|ram~553_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \RAM1|ALT_INV_ram~553_combout\,
	dataf => \RAM1|ALT_INV_ram~567_combout\,
	combout => \RAM1|ram~554_combout\);

-- Location: MLABCELL_X34_Y3_N48
\CPU1|MUX1|saida_MUX[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[7]~9_combout\ = ( \CPU1|MUX1|saida_MUX[1]~2_combout\ & ( ((\CPU1|MUX1|saida_MUX[1]~1_combout\ & \RAM1|ram~554_combout\)) # (\SW[7]~input_o\) ) ) # ( !\CPU1|MUX1|saida_MUX[1]~2_combout\ & ( (\CPU1|MUX1|saida_MUX[1]~1_combout\ & 
-- \RAM1|ram~554_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \RAM1|ALT_INV_ram~554_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \CPU1|MUX1|saida_MUX[7]~9_combout\);

-- Location: LABCELL_X35_Y4_N30
\RAM_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_MUX[0]~3_combout\ = ( \RAM1|ram~579_combout\ & ( \RAM1|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	dataf => \RAM1|ALT_INV_ram~579_combout\,
	combout => \RAM_MUX[0]~3_combout\);

-- Location: LABCELL_X35_Y3_N9
\CPU1|FLAG|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~3_combout\ = ( \CPU1|ULA1|saida[7]~1_combout\ & ( \CPU1|FLAG|DOUT~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|FLAG|ALT_INV_DOUT~0_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU1|FLAG|DOUT~3_combout\);

-- Location: LABCELL_X36_Y3_N36
\CPU1|FLAG|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~4_combout\ = ( \RAM_MUX[0]~3_combout\ & ( \CPU1|FLAG|DOUT~3_combout\ & ( (!\ROM1|memROM~13_combout\ & \CPU1|DECODER|PontosDeControle[6]~1_combout\) ) ) ) # ( !\RAM_MUX[0]~3_combout\ & ( \CPU1|FLAG|DOUT~3_combout\ & ( 
-- (!\CPU1|DECODER|PontosDeControle[6]~1_combout\ & (((!\RAM_MUX[0]~0_combout\ & !\RAM_MUX[0]~2_combout\)))) # (\CPU1|DECODER|PontosDeControle[6]~1_combout\ & (!\ROM1|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ALT_INV_RAM_MUX[0]~0_combout\,
	datac => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\,
	datad => \ALT_INV_RAM_MUX[0]~2_combout\,
	datae => \ALT_INV_RAM_MUX[0]~3_combout\,
	dataf => \CPU1|FLAG|ALT_INV_DOUT~3_combout\,
	combout => \CPU1|FLAG|DOUT~4_combout\);

-- Location: LABCELL_X36_Y5_N36
\CPU1|MUX1|saida_MUX[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~10_combout\ = ( \CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( \ROM1|memROM~1_combout\ ) ) # ( !\CPU1|DECODER|PontosDeControle[6]~1_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\comb~0_combout\ & (\SW[2]~input_o\ & 
-- \comb~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_comb~3_combout\,
	dataf => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~1_combout\,
	combout => \CPU1|MUX1|saida_MUX[2]~10_combout\);

-- Location: LABCELL_X36_Y3_N12
\CPU1|FLAG|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~5_combout\ = ( !\CPU1|MUX1|saida_MUX[2]~10_combout\ & ( \RAM1|ram~535_combout\ & ( (!\CPU1|MUX1|saida_MUX[1]~1_combout\ & ((!\CPU1|MUX1|saida_MUX[1]~2_combout\) # (!\SW[1]~input_o\))) ) ) ) # ( !\CPU1|MUX1|saida_MUX[2]~10_combout\ & ( 
-- !\RAM1|ram~535_combout\ & ( (!\CPU1|MUX1|saida_MUX[1]~2_combout\ & ((!\RAM1|ram~536_combout\) # ((!\CPU1|MUX1|saida_MUX[1]~1_combout\)))) # (\CPU1|MUX1|saida_MUX[1]~2_combout\ & (!\SW[1]~input_o\ & ((!\RAM1|ram~536_combout\) # 
-- (!\CPU1|MUX1|saida_MUX[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000000000000000000011111010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	datab => \RAM1|ALT_INV_ram~536_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[2]~10_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \CPU1|FLAG|DOUT~5_combout\);

-- Location: LABCELL_X36_Y3_N0
\CPU1|FLAG|DOUT~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~8_combout\ = ( \CPU1|FLAG|DOUT~4_combout\ & ( \CPU1|FLAG|DOUT~5_combout\ & ( (!\CPU1|FLAG|DOUT~2_combout\ & ((!\CPU1|FLAG|DOUT~7_combout\) # ((!\CPU1|FLAG|DOUT~6_combout\) # (\CPU1|MUX1|saida_MUX[7]~9_combout\)))) ) ) ) # ( 
-- !\CPU1|FLAG|DOUT~4_combout\ & ( \CPU1|FLAG|DOUT~5_combout\ & ( !\CPU1|FLAG|DOUT~2_combout\ ) ) ) # ( \CPU1|FLAG|DOUT~4_combout\ & ( !\CPU1|FLAG|DOUT~5_combout\ & ( !\CPU1|FLAG|DOUT~2_combout\ ) ) ) # ( !\CPU1|FLAG|DOUT~4_combout\ & ( 
-- !\CPU1|FLAG|DOUT~5_combout\ & ( !\CPU1|FLAG|DOUT~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|FLAG|ALT_INV_DOUT~7_combout\,
	datab => \CPU1|FLAG|ALT_INV_DOUT~6_combout\,
	datac => \CPU1|FLAG|ALT_INV_DOUT~2_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[7]~9_combout\,
	datae => \CPU1|FLAG|ALT_INV_DOUT~4_combout\,
	dataf => \CPU1|FLAG|ALT_INV_DOUT~5_combout\,
	combout => \CPU1|FLAG|DOUT~8_combout\);

-- Location: LABCELL_X35_Y3_N18
\CPU1|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~1_combout\ = ( !\CPU1|ULA1|Add0~5_sumout\ & ( !\CPU1|ULA1|Add0~13_sumout\ & ( (\CPU1|FLAG|DOUT~0_combout\ & (!\CPU1|ULA1|saida[7]~1_combout\ & (!\CPU1|ULA1|Add0~1_sumout\ & !\CPU1|ULA1|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|FLAG|ALT_INV_DOUT~0_combout\,
	datab => \CPU1|ULA1|ALT_INV_saida[7]~1_combout\,
	datac => \CPU1|ULA1|ALT_INV_Add0~1_sumout\,
	datad => \CPU1|ULA1|ALT_INV_Add0~9_sumout\,
	datae => \CPU1|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \CPU1|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU1|FLAG|DOUT~1_combout\);

-- Location: LABCELL_X35_Y3_N12
\CPU1|FLAG|DOUT~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FLAG|DOUT~9_combout\ = ( \CPU1|ULA1|Add0~29_sumout\ & ( \CPU1|FLAG|DOUT~1_combout\ & ( !\CPU1|FLAG|DOUT~8_combout\ ) ) ) # ( !\CPU1|ULA1|Add0~29_sumout\ & ( \CPU1|FLAG|DOUT~1_combout\ & ( (!\CPU1|FLAG|DOUT~8_combout\) # ((!\CPU1|ULA1|Add0~21_sumout\ 
-- & (!\CPU1|ULA1|Add0~25_sumout\ & !\CPU1|ULA1|Add0~17_sumout\))) ) ) ) # ( \CPU1|ULA1|Add0~29_sumout\ & ( !\CPU1|FLAG|DOUT~1_combout\ & ( !\CPU1|FLAG|DOUT~8_combout\ ) ) ) # ( !\CPU1|ULA1|Add0~29_sumout\ & ( !\CPU1|FLAG|DOUT~1_combout\ & ( 
-- !\CPU1|FLAG|DOUT~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011101100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_Add0~21_sumout\,
	datab => \CPU1|FLAG|ALT_INV_DOUT~8_combout\,
	datac => \CPU1|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \CPU1|ULA1|ALT_INV_Add0~17_sumout\,
	datae => \CPU1|ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \CPU1|FLAG|ALT_INV_DOUT~1_combout\,
	combout => \CPU1|FLAG|DOUT~9_combout\);

-- Location: FF_X35_Y3_N14
\CPU1|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|FLAG|DOUT~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|FLAG|DOUT~q\);

-- Location: LABCELL_X35_Y5_N30
\CPU1|logica_de_desvio|dataOUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|logica_de_desvio|dataOUT[0]~1_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~6_combout\ & ( (\CPU1|FLAG|DOUT~q\ & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~15_combout\))) ) ) ) # ( !\ROM1|memROM~14_combout\ & ( 
-- \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~15_combout\)) ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\ & 
-- !\ROM1|memROM~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000000000000000001100000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|FLAG|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU1|logica_de_desvio|dataOUT[0]~1_combout\);

-- Location: FF_X34_Y5_N34
\CPU1|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|SOMACONSTANTE|Add0~5_sumout\,
	ena => \CPU1|DECODER|PontosDeControle~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|END_RETORNO|DOUT\(1));

-- Location: LABCELL_X36_Y5_N15
\CPU1|MUXJUMP|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[1]~1_combout\ = ( \CPU1|END_RETORNO|DOUT\(1) & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\CPU1|SOMACONSTANTE|Add0~5_sumout\)) # (\CPU1|logica_de_desvio|dataOUT[1]~0_combout\))) # 
-- (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~18_combout\)))) ) ) # ( !\CPU1|END_RETORNO|DOUT\(1) & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (!\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & 
-- (\CPU1|SOMACONSTANTE|Add0~5_sumout\))) # (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\,
	datab => \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\,
	datac => \CPU1|SOMACONSTANTE|ALT_INV_Add0~5_sumout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \CPU1|END_RETORNO|ALT_INV_DOUT\(1),
	combout => \CPU1|MUXJUMP|saida_MUX[1]~1_combout\);

-- Location: FF_X36_Y5_N16
\CPU1|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N12
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & 
-- (\CPU1|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU1|PC|DOUT\(0))))) # (\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010000100000100001000010000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X35_Y4_N36
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: MLABCELL_X34_Y5_N21
\CPU1|logica_de_desvio|dataOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|logica_de_desvio|dataOUT[1]~0_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~17_combout\ & ( (\ROM1|memROM~16_combout\ & \ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \CPU1|logica_de_desvio|dataOUT[1]~0_combout\);

-- Location: FF_X34_Y5_N49
\CPU1|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|SOMACONSTANTE|Add0~25_sumout\,
	ena => \CPU1|DECODER|PontosDeControle~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|END_RETORNO|DOUT\(6));

-- Location: LABCELL_X35_Y4_N12
\CPU1|MUXJUMP|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[6]~6_combout\ = ( \CPU1|SOMACONSTANTE|Add0~25_sumout\ & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ((!\CPU1|logica_de_desvio|dataOUT[1]~0_combout\) # ((\CPU1|END_RETORNO|DOUT\(6))))) # 
-- (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~22_combout\)))) ) ) # ( !\CPU1|SOMACONSTANTE|Add0~25_sumout\ & ( (!\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & 
-- (\CPU1|END_RETORNO|DOUT\(6)))) # (\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & (((\ROM1|memROM~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\,
	datab => \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\,
	datac => \CPU1|END_RETORNO|ALT_INV_DOUT\(6),
	datad => \ROM1|ALT_INV_memROM~22_combout\,
	dataf => \CPU1|SOMACONSTANTE|ALT_INV_Add0~25_sumout\,
	combout => \CPU1|MUXJUMP|saida_MUX[6]~6_combout\);

-- Location: FF_X35_Y4_N14
\CPU1|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUXJUMP|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X35_Y4_N7
\CPU1|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|MUXJUMP|saida_MUX[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(7));

-- Location: LABCELL_X35_Y4_N18
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\CPU1|PC|DOUT\(7) & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(4),
	dataf => \CPU1|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X35_Y4_N27
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~13_combout\);

-- Location: FF_X34_Y5_N31
\CPU1|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|SOMACONSTANTE|Add0~1_sumout\,
	ena => \CPU1|DECODER|PontosDeControle~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|END_RETORNO|DOUT\(0));

-- Location: MLABCELL_X34_Y5_N12
\CPU1|MUXJUMP|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[0]~0_combout\ = ( \CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ( \CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( \ROM1|memROM~13_combout\ ) ) ) # ( !\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ( 
-- \CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( \ROM1|memROM~13_combout\ ) ) ) # ( \CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ( !\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( \CPU1|END_RETORNO|DOUT\(0) ) ) ) # ( 
-- !\CPU1|logica_de_desvio|dataOUT[1]~0_combout\ & ( !\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( \CPU1|SOMACONSTANTE|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \CPU1|END_RETORNO|ALT_INV_DOUT\(0),
	datad => \CPU1|SOMACONSTANTE|ALT_INV_Add0~1_sumout\,
	datae => \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\,
	dataf => \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\,
	combout => \CPU1|MUXJUMP|saida_MUX[0]~0_combout\);

-- Location: FF_X36_Y4_N28
\CPU1|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|MUXJUMP|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N54
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT\(5)))) ) ) # ( !\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & \CPU1|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	dataf => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X36_Y4_N36
\ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~23_combout\ = ( !\CPU1|PC|DOUT[3]~DUPLICATE_q\ & ( (\ROM1|memROM~7_combout\ & \ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~23_combout\);

-- Location: MLABCELL_X34_Y5_N54
\CPU1|SOMACONSTANTE|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~33_sumout\ = SUM(( \CPU1|PC|DOUT\(8) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|PC|ALT_INV_DOUT\(8),
	cin => \CPU1|SOMACONSTANTE|Add0~30\,
	sumout => \CPU1|SOMACONSTANTE|Add0~33_sumout\);

-- Location: FF_X34_Y5_N55
\CPU1|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|SOMACONSTANTE|Add0~33_sumout\,
	ena => \CPU1|DECODER|PontosDeControle~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|END_RETORNO|DOUT\(8));

-- Location: MLABCELL_X34_Y5_N3
\CPU1|MUXJUMP|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[8]~8_combout\ = ( \CPU1|SOMACONSTANTE|Add0~33_sumout\ & ( \CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( \ROM1|memROM~23_combout\ ) ) ) # ( !\CPU1|SOMACONSTANTE|Add0~33_sumout\ & ( \CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( 
-- \ROM1|memROM~23_combout\ ) ) ) # ( \CPU1|SOMACONSTANTE|Add0~33_sumout\ & ( !\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( (!\CPU1|logica_de_desvio|dataOUT[1]~0_combout\) # (\CPU1|END_RETORNO|DOUT\(8)) ) ) ) # ( !\CPU1|SOMACONSTANTE|Add0~33_sumout\ & ( 
-- !\CPU1|logica_de_desvio|dataOUT[0]~1_combout\ & ( (\CPU1|END_RETORNO|DOUT\(8) & \CPU1|logica_de_desvio|dataOUT[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \CPU1|END_RETORNO|ALT_INV_DOUT\(8),
	datad => \CPU1|logica_de_desvio|ALT_INV_dataOUT[1]~0_combout\,
	datae => \CPU1|SOMACONSTANTE|ALT_INV_Add0~33_sumout\,
	dataf => \CPU1|logica_de_desvio|ALT_INV_dataOUT[0]~1_combout\,
	combout => \CPU1|MUXJUMP|saida_MUX[8]~8_combout\);

-- Location: FF_X35_Y4_N50
\CPU1|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|MUXJUMP|saida_MUX[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y4_N45
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X35_Y5_N48
\CPU1|DECODER|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|Equal8~0_combout\ = ( \CPU1|ULA1|saida[7]~0_combout\ & ( (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \CPU1|DECODER|Equal8~0_combout\);

-- Location: FF_X35_Y3_N35
\CPU1|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~1_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU1|ULA1|saida[7]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(0));

-- Location: LABCELL_X31_Y4_N39
\REGISTRADOR_LED|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED|DOUT[0]~feeder_combout\ = ( \CPU1|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REG1|ALT_INV_DOUT\(0),
	combout => \REGISTRADOR_LED|DOUT[0]~feeder_combout\);

-- Location: MLABCELL_X37_Y4_N0
\AND_HEX4|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX4|dataOUT~0_combout\ = ( !\ROM1|memROM~9_combout\ & ( (\ROM1|memROM~7_combout\ & (\ROM1|memROM~0_combout\ & (!\CPU1|PC|DOUT[3]~DUPLICATE_q\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \AND_HEX4|dataOUT~0_combout\);

-- Location: LABCELL_X32_Y4_N12
\AND3|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND3|dataOUT~0_combout\ = ( \CPU1|ULA1|saida[7]~0_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\comb~0_combout\ & (\CPU1|DECODER|PontosDeControle[6]~0_combout\ & \AND_HEX4|dataOUT~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	datad => \AND_HEX4|ALT_INV_dataOUT~0_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \AND3|dataOUT~0_combout\);

-- Location: FF_X31_Y4_N41
\REGISTRADOR_LED|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_LED|DOUT[0]~feeder_combout\,
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(0));

-- Location: FF_X32_Y4_N16
\REGISTRADOR_LED|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(1));

-- Location: LABCELL_X32_Y4_N9
\REGISTRADOR_LED|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED|DOUT[2]~feeder_combout\ = ( \CPU1|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REG1|ALT_INV_DOUT\(2),
	combout => \REGISTRADOR_LED|DOUT[2]~feeder_combout\);

-- Location: FF_X32_Y4_N10
\REGISTRADOR_LED|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_LED|DOUT[2]~feeder_combout\,
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(2));

-- Location: LABCELL_X31_Y4_N30
\REGISTRADOR_LED|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED|DOUT[3]~feeder_combout\ = ( \CPU1|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REG1|ALT_INV_DOUT\(3),
	combout => \REGISTRADOR_LED|DOUT[3]~feeder_combout\);

-- Location: FF_X31_Y4_N31
\REGISTRADOR_LED|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_LED|DOUT[3]~feeder_combout\,
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(3));

-- Location: LABCELL_X32_Y4_N39
\REGISTRADOR_LED|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED|DOUT[4]~feeder_combout\ = ( \CPU1|REG1|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REG1|ALT_INV_DOUT\(4),
	combout => \REGISTRADOR_LED|DOUT[4]~feeder_combout\);

-- Location: FF_X32_Y4_N40
\REGISTRADOR_LED|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_LED|DOUT[4]~feeder_combout\,
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(4));

-- Location: LABCELL_X31_Y5_N39
\REGISTRADOR_LED|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED|DOUT[5]~feeder_combout\ = ( \CPU1|REG1|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REG1|ALT_INV_DOUT\(5),
	combout => \REGISTRADOR_LED|DOUT[5]~feeder_combout\);

-- Location: FF_X31_Y5_N41
\REGISTRADOR_LED|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_LED|DOUT[5]~feeder_combout\,
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(5));

-- Location: LABCELL_X32_Y4_N30
\REGISTRADOR_LED|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED|DOUT[6]~feeder_combout\ = ( \CPU1|REG1|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REG1|ALT_INV_DOUT\(6),
	combout => \REGISTRADOR_LED|DOUT[6]~feeder_combout\);

-- Location: FF_X32_Y4_N31
\REGISTRADOR_LED|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_LED|DOUT[6]~feeder_combout\,
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(6));

-- Location: FF_X32_Y4_N13
\REGISTRADOR_LED|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(7),
	sload => VCC,
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(7));

-- Location: LABCELL_X32_Y4_N18
\AND2|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND2|dataOUT~0_combout\ = ( \AND_HEX4|dataOUT~0_combout\ & ( (!\CPU1|DECODER|Equal9~0_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_Equal9~0_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \AND_HEX4|ALT_INV_dataOUT~0_combout\,
	combout => \AND2|dataOUT~0_combout\);

-- Location: MLABCELL_X37_Y4_N24
\AND_HEX1|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1|dataOUT~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~11_combout\ & \ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \AND_HEX1|dataOUT~0_combout\);

-- Location: LABCELL_X31_Y4_N15
\REGISTRADOR_LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED8|DOUT~0_combout\ = ( \AND_HEX1|dataOUT~0_combout\ & ( (!\AND2|dataOUT~0_combout\ & ((\REGISTRADOR_LED8|DOUT~q\))) # (\AND2|dataOUT~0_combout\ & (\CPU1|REG1|DOUT\(0))) ) ) # ( !\AND_HEX1|dataOUT~0_combout\ & ( \REGISTRADOR_LED8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|REG1|ALT_INV_DOUT\(0),
	datac => \AND2|ALT_INV_dataOUT~0_combout\,
	datad => \REGISTRADOR_LED8|ALT_INV_DOUT~q\,
	dataf => \AND_HEX1|ALT_INV_dataOUT~0_combout\,
	combout => \REGISTRADOR_LED8|DOUT~0_combout\);

-- Location: FF_X31_Y4_N17
\REGISTRADOR_LED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_LED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED8|DOUT~q\);

-- Location: MLABCELL_X34_Y4_N57
\AND_HEX2|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2|dataOUT~0_combout\ = ( \ROM1|memROM~11_combout\ & ( (!\ROM1|memROM~10_combout\ & \ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \AND_HEX2|dataOUT~0_combout\);

-- Location: LABCELL_X31_Y4_N42
\REGISTRADOR_LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED9|DOUT~0_combout\ = ( \REGISTRADOR_LED9|DOUT~q\ & ( \AND2|dataOUT~0_combout\ & ( (!\AND_HEX2|dataOUT~0_combout\) # (\CPU1|REG1|DOUT\(0)) ) ) ) # ( !\REGISTRADOR_LED9|DOUT~q\ & ( \AND2|dataOUT~0_combout\ & ( (\AND_HEX2|dataOUT~0_combout\ & 
-- \CPU1|REG1|DOUT\(0)) ) ) ) # ( \REGISTRADOR_LED9|DOUT~q\ & ( !\AND2|dataOUT~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX2|ALT_INV_dataOUT~0_combout\,
	datac => \CPU1|REG1|ALT_INV_DOUT\(0),
	datae => \REGISTRADOR_LED9|ALT_INV_DOUT~q\,
	dataf => \AND2|ALT_INV_dataOUT~0_combout\,
	combout => \REGISTRADOR_LED9|DOUT~0_combout\);

-- Location: FF_X31_Y4_N43
\REGISTRADOR_LED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_LED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED9|DOUT~q\);

-- Location: LABCELL_X40_Y2_N3
\AND_HEX0|dataOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|dataOUT~1_combout\ = ( \AND_HEX4|dataOUT~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (\CPU1|DECODER|PontosDeControle[6]~0_combout\ & (\AND_HEX0|dataOUT~0_combout\ & \CPU1|ULA1|saida[7]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	datac => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	datad => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	datae => \AND_HEX4|ALT_INV_dataOUT~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \AND_HEX0|dataOUT~1_combout\);

-- Location: FF_X40_Y2_N2
\REGISTRADOR_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX0|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX0|DOUT\(0));

-- Location: FF_X40_Y2_N8
\REGISTRADOR_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX0|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX0|DOUT\(1));

-- Location: FF_X40_Y2_N53
\REGISTRADOR_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX0|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX0|DOUT\(2));

-- Location: FF_X40_Y2_N5
\REGISTRADOR_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX0|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX0|DOUT\(3));

-- Location: LABCELL_X40_Y2_N45
\DECODIFICADOR_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[0]~0_combout\ = ( \REGISTRADOR_HEX0|DOUT\(3) & ( (\REGISTRADOR_HEX0|DOUT\(0) & (!\REGISTRADOR_HEX0|DOUT\(1) $ (!\REGISTRADOR_HEX0|DOUT\(2)))) ) ) # ( !\REGISTRADOR_HEX0|DOUT\(3) & ( (!\REGISTRADOR_HEX0|DOUT\(1) & 
-- (!\REGISTRADOR_HEX0|DOUT\(0) $ (!\REGISTRADOR_HEX0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000000001010101000001010000101000000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datae => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N27
\DECODIFICADOR_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[1]~1_combout\ = ( \REGISTRADOR_HEX0|DOUT\(2) & ( (!\REGISTRADOR_HEX0|DOUT\(3) & (!\REGISTRADOR_HEX0|DOUT\(1) $ (!\REGISTRADOR_HEX0|DOUT\(0)))) # (\REGISTRADOR_HEX0|DOUT\(3) & ((!\REGISTRADOR_HEX0|DOUT\(0)) # 
-- (\REGISTRADOR_HEX0|DOUT\(1)))) ) ) # ( !\REGISTRADOR_HEX0|DOUT\(2) & ( (\REGISTRADOR_HEX0|DOUT\(3) & (\REGISTRADOR_HEX0|DOUT\(1) & \REGISTRADOR_HEX0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101110111100110010111011110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	dataf => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N24
\DECODIFICADOR_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[2]~2_combout\ = (!\REGISTRADOR_HEX0|DOUT\(3) & (\REGISTRADOR_HEX0|DOUT\(1) & (!\REGISTRADOR_HEX0|DOUT\(2) & !\REGISTRADOR_HEX0|DOUT\(0)))) # (\REGISTRADOR_HEX0|DOUT\(3) & (\REGISTRADOR_HEX0|DOUT\(2) & 
-- ((!\REGISTRADOR_HEX0|DOUT\(0)) # (\REGISTRADOR_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100000001001001010000000100100101000000010010010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y2_N48
\DECODIFICADOR_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[3]~3_combout\ = ( \REGISTRADOR_HEX0|DOUT\(0) & ( (!\REGISTRADOR_HEX0|DOUT\(2) & (!\REGISTRADOR_HEX0|DOUT\(1) & !\REGISTRADOR_HEX0|DOUT\(3))) # (\REGISTRADOR_HEX0|DOUT\(2) & (\REGISTRADOR_HEX0|DOUT\(1))) ) ) # ( 
-- !\REGISTRADOR_HEX0|DOUT\(0) & ( (!\REGISTRADOR_HEX0|DOUT\(2) & (\REGISTRADOR_HEX0|DOUT\(1) & \REGISTRADOR_HEX0|DOUT\(3))) # (\REGISTRADOR_HEX0|DOUT\(2) & (!\REGISTRADOR_HEX0|DOUT\(1) & !\REGISTRADOR_HEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010100100011001000101000010010000101001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datae => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y2_N30
\DECODIFICADOR_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[4]~4_combout\ = ( \REGISTRADOR_HEX0|DOUT\(1) & ( (\REGISTRADOR_HEX0|DOUT\(0) & !\REGISTRADOR_HEX0|DOUT\(3)) ) ) # ( !\REGISTRADOR_HEX0|DOUT\(1) & ( (!\REGISTRADOR_HEX0|DOUT\(2) & (\REGISTRADOR_HEX0|DOUT\(0))) # 
-- (\REGISTRADOR_HEX0|DOUT\(2) & ((!\REGISTRADOR_HEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	dataf => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y2_N36
\DECODIFICADOR_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[5]~5_combout\ = ( \REGISTRADOR_HEX0|DOUT\(0) & ( !\REGISTRADOR_HEX0|DOUT\(3) $ (((\REGISTRADOR_HEX0|DOUT\(2) & !\REGISTRADOR_HEX0|DOUT\(1)))) ) ) # ( !\REGISTRADOR_HEX0|DOUT\(0) & ( (!\REGISTRADOR_HEX0|DOUT\(2) & 
-- (\REGISTRADOR_HEX0|DOUT\(1) & !\REGISTRADOR_HEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000101101001011010000100000001000001011010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datae => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y2_N57
\DECODIFICADOR_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[6]~6_combout\ = ( \REGISTRADOR_HEX0|DOUT\(2) & ( (!\REGISTRADOR_HEX0|DOUT\(3) & (\REGISTRADOR_HEX0|DOUT\(1) & \REGISTRADOR_HEX0|DOUT\(0))) # (\REGISTRADOR_HEX0|DOUT\(3) & (!\REGISTRADOR_HEX0|DOUT\(1) & 
-- !\REGISTRADOR_HEX0|DOUT\(0))) ) ) # ( !\REGISTRADOR_HEX0|DOUT\(2) & ( (!\REGISTRADOR_HEX0|DOUT\(3) & !\REGISTRADOR_HEX0|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001010000000010100101000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	dataf => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y2_N15
\AND_HEX1|dataOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1|dataOUT~1_combout\ = ( \CPU1|ULA1|saida[7]~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (\AND_HEX4|dataOUT~0_combout\ & (\AND_HEX1|dataOUT~0_combout\ & (\ROM1|memROM~12_combout\ & \CPU1|DECODER|PontosDeControle[6]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX4|ALT_INV_dataOUT~0_combout\,
	datab => \AND_HEX1|ALT_INV_dataOUT~0_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	datae => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \AND_HEX1|dataOUT~1_combout\);

-- Location: FF_X40_Y2_N40
\REGISTRADOR_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX1|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX1|DOUT\(2));

-- Location: FF_X40_Y2_N44
\REGISTRADOR_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX1|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX1|DOUT\(0));

-- Location: FF_X40_Y2_N17
\REGISTRADOR_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX1|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX1|DOUT\(1));

-- Location: FF_X40_Y2_N14
\REGISTRADOR_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX1|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX1|DOUT\(3));

-- Location: LABCELL_X40_Y2_N18
\DECODIFICADOR_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[0]~0_combout\ = ( \REGISTRADOR_HEX1|DOUT\(3) & ( (\REGISTRADOR_HEX1|DOUT\(0) & (!\REGISTRADOR_HEX1|DOUT\(2) $ (!\REGISTRADOR_HEX1|DOUT\(1)))) ) ) # ( !\REGISTRADOR_HEX1|DOUT\(3) & ( (!\REGISTRADOR_HEX1|DOUT\(1) & 
-- (!\REGISTRADOR_HEX1|DOUT\(2) $ (!\REGISTRADOR_HEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	dataf => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N21
\DECODIFICADOR_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[1]~1_combout\ = ( \REGISTRADOR_HEX1|DOUT\(3) & ( (!\REGISTRADOR_HEX1|DOUT\(0) & (\REGISTRADOR_HEX1|DOUT\(2))) # (\REGISTRADOR_HEX1|DOUT\(0) & ((\REGISTRADOR_HEX1|DOUT\(1)))) ) ) # ( !\REGISTRADOR_HEX1|DOUT\(3) & ( 
-- (\REGISTRADOR_HEX1|DOUT\(2) & (!\REGISTRADOR_HEX1|DOUT\(0) $ (!\REGISTRADOR_HEX1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	dataf => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N54
\DECODIFICADOR_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[2]~2_combout\ = ( \REGISTRADOR_HEX1|DOUT\(0) & ( (\REGISTRADOR_HEX1|DOUT\(3) & (\REGISTRADOR_HEX1|DOUT\(2) & \REGISTRADOR_HEX1|DOUT\(1))) ) ) # ( !\REGISTRADOR_HEX1|DOUT\(0) & ( (!\REGISTRADOR_HEX1|DOUT\(3) & 
-- (!\REGISTRADOR_HEX1|DOUT\(2) & \REGISTRADOR_HEX1|DOUT\(1))) # (\REGISTRADOR_HEX1|DOUT\(3) & (\REGISTRADOR_HEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	dataf => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y2_N27
\DECODIFICADOR_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[3]~3_combout\ = ( \REGISTRADOR_HEX1|DOUT\(1) & ( \REGISTRADOR_HEX1|DOUT\(2) & ( \REGISTRADOR_HEX1|DOUT\(0) ) ) ) # ( !\REGISTRADOR_HEX1|DOUT\(1) & ( \REGISTRADOR_HEX1|DOUT\(2) & ( (!\REGISTRADOR_HEX1|DOUT\(0) & 
-- !\REGISTRADOR_HEX1|DOUT\(3)) ) ) ) # ( \REGISTRADOR_HEX1|DOUT\(1) & ( !\REGISTRADOR_HEX1|DOUT\(2) & ( (!\REGISTRADOR_HEX1|DOUT\(0) & \REGISTRADOR_HEX1|DOUT\(3)) ) ) ) # ( !\REGISTRADOR_HEX1|DOUT\(1) & ( !\REGISTRADOR_HEX1|DOUT\(2) & ( 
-- (\REGISTRADOR_HEX1|DOUT\(0) & !\REGISTRADOR_HEX1|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011000000110011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datae => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	dataf => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X39_Y2_N42
\DECODIFICADOR_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[4]~4_combout\ = ( \REGISTRADOR_HEX1|DOUT\(0) & ( \REGISTRADOR_HEX1|DOUT\(2) & ( !\REGISTRADOR_HEX1|DOUT\(3) ) ) ) # ( !\REGISTRADOR_HEX1|DOUT\(0) & ( \REGISTRADOR_HEX1|DOUT\(2) & ( (!\REGISTRADOR_HEX1|DOUT\(3) & 
-- !\REGISTRADOR_HEX1|DOUT\(1)) ) ) ) # ( \REGISTRADOR_HEX1|DOUT\(0) & ( !\REGISTRADOR_HEX1|DOUT\(2) & ( (!\REGISTRADOR_HEX1|DOUT\(3)) # (!\REGISTRADOR_HEX1|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110011000000110000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	datae => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	dataf => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y2_N9
\DECODIFICADOR_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[5]~5_combout\ = ( \REGISTRADOR_HEX1|DOUT\(1) & ( \REGISTRADOR_HEX1|DOUT\(0) & ( !\REGISTRADOR_HEX1|DOUT\(3) ) ) ) # ( !\REGISTRADOR_HEX1|DOUT\(1) & ( \REGISTRADOR_HEX1|DOUT\(0) & ( !\REGISTRADOR_HEX1|DOUT\(2) $ 
-- (\REGISTRADOR_HEX1|DOUT\(3)) ) ) ) # ( \REGISTRADOR_HEX1|DOUT\(1) & ( !\REGISTRADOR_HEX1|DOUT\(0) & ( (!\REGISTRADOR_HEX1|DOUT\(2) & !\REGISTRADOR_HEX1|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datae => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	dataf => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y2_N33
\DECODIFICADOR_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[6]~6_combout\ = ( \REGISTRADOR_HEX1|DOUT\(2) & ( (!\REGISTRADOR_HEX1|DOUT\(3) & (\REGISTRADOR_HEX1|DOUT\(0) & \REGISTRADOR_HEX1|DOUT\(1))) # (\REGISTRADOR_HEX1|DOUT\(3) & (!\REGISTRADOR_HEX1|DOUT\(0) & 
-- !\REGISTRADOR_HEX1|DOUT\(1))) ) ) # ( !\REGISTRADOR_HEX1|DOUT\(2) & ( (!\REGISTRADOR_HEX1|DOUT\(3) & !\REGISTRADOR_HEX1|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	dataf => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X32_Y4_N48
\AND_HEX2|dataOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2|dataOUT~1_combout\ = ( !\ROM1|memROM~1_combout\ & ( \CPU1|ULA1|saida[7]~0_combout\ & ( (\CPU1|DECODER|PontosDeControle[6]~0_combout\ & (\AND_HEX4|dataOUT~0_combout\ & (\AND_HEX2|dataOUT~0_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	datab => \AND_HEX4|ALT_INV_dataOUT~0_combout\,
	datac => \AND_HEX2|ALT_INV_dataOUT~0_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \AND_HEX2|dataOUT~1_combout\);

-- Location: FF_X32_Y4_N52
\REGISTRADOR_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX2|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX2|DOUT\(1));

-- Location: FF_X32_Y4_N50
\REGISTRADOR_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX2|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX2|DOUT\(2));

-- Location: LABCELL_X31_Y4_N57
\REGISTRADOR_HEX2|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_HEX2|DOUT[3]~feeder_combout\ = ( \CPU1|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REG1|ALT_INV_DOUT\(3),
	combout => \REGISTRADOR_HEX2|DOUT[3]~feeder_combout\);

-- Location: FF_X31_Y4_N59
\REGISTRADOR_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_HEX2|DOUT[3]~feeder_combout\,
	ena => \AND_HEX2|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX2|DOUT\(3));

-- Location: LABCELL_X31_Y4_N0
\REGISTRADOR_HEX2|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_HEX2|DOUT[0]~feeder_combout\ = ( \CPU1|REG1|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REG1|ALT_INV_DOUT\(0),
	combout => \REGISTRADOR_HEX2|DOUT[0]~feeder_combout\);

-- Location: FF_X31_Y4_N2
\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_HEX2|DOUT[0]~feeder_combout\,
	ena => \AND_HEX2|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N51
\DECODIFICADOR_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[0]~0_combout\ = (!\REGISTRADOR_HEX2|DOUT\(2) & (\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & (!\REGISTRADOR_HEX2|DOUT\(1) $ (\REGISTRADOR_HEX2|DOUT\(3))))) # (\REGISTRADOR_HEX2|DOUT\(2) & (!\REGISTRADOR_HEX2|DOUT\(1) & 
-- (!\REGISTRADOR_HEX2|DOUT\(3) $ (\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000110001000001000011000100000100001100010000010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X31_Y4_N48
\DECODIFICADOR_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[1]~1_combout\ = (!\REGISTRADOR_HEX2|DOUT\(1) & (\REGISTRADOR_HEX2|DOUT\(2) & (!\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ $ (!\REGISTRADOR_HEX2|DOUT\(3))))) # (\REGISTRADOR_HEX2|DOUT\(1) & 
-- ((!\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & (\REGISTRADOR_HEX2|DOUT\(2))) # (\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & ((\REGISTRADOR_HEX2|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110101000100100011010100010010001101010001001000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X31_Y4_N18
\DECODIFICADOR_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[2]~2_combout\ = (!\REGISTRADOR_HEX2|DOUT\(2) & (\REGISTRADOR_HEX2|DOUT\(1) & (!\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & !\REGISTRADOR_HEX2|DOUT\(3)))) # (\REGISTRADOR_HEX2|DOUT\(2) & (\REGISTRADOR_HEX2|DOUT\(3) & 
-- ((!\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\) # (\REGISTRADOR_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000110001010000000011000101000000001100010100000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X31_Y4_N24
\DECODIFICADOR_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[3]~3_combout\ = ( \REGISTRADOR_HEX2|DOUT\(2) & ( (!\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & (!\REGISTRADOR_HEX2|DOUT\(3) & !\REGISTRADOR_HEX2|DOUT\(1))) # (\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & 
-- ((\REGISTRADOR_HEX2|DOUT\(1)))) ) ) # ( !\REGISTRADOR_HEX2|DOUT\(2) & ( (!\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & (\REGISTRADOR_HEX2|DOUT\(3) & \REGISTRADOR_HEX2|DOUT\(1))) # (\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & (!\REGISTRADOR_HEX2|DOUT\(3) & 
-- !\REGISTRADOR_HEX2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010100001011000010101000010010000101000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datae => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: FF_X31_Y4_N1
\REGISTRADOR_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGISTRADOR_HEX2|DOUT[0]~feeder_combout\,
	ena => \AND_HEX2|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX2|DOUT\(0));

-- Location: LABCELL_X31_Y4_N12
\DECODIFICADOR_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[4]~4_combout\ = ( \REGISTRADOR_HEX2|DOUT\(0) & ( (!\REGISTRADOR_HEX2|DOUT\(3)) # ((!\REGISTRADOR_HEX2|DOUT\(2) & !\REGISTRADOR_HEX2|DOUT\(1))) ) ) # ( !\REGISTRADOR_HEX2|DOUT\(0) & ( (\REGISTRADOR_HEX2|DOUT\(2) & 
-- (!\REGISTRADOR_HEX2|DOUT\(1) & !\REGISTRADOR_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	dataf => \REGISTRADOR_HEX2|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X31_Y4_N6
\DECODIFICADOR_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[5]~5_combout\ = ( \REGISTRADOR_HEX2|DOUT\(2) & ( (\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & (!\REGISTRADOR_HEX2|DOUT\(3) $ (!\REGISTRADOR_HEX2|DOUT\(1)))) ) ) # ( !\REGISTRADOR_HEX2|DOUT\(2) & ( 
-- (!\REGISTRADOR_HEX2|DOUT\(3) & ((\REGISTRADOR_HEX2|DOUT\(1)) # (\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000101000001010001001100010011000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datae => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X31_Y4_N21
\DECODIFICADOR_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[6]~6_combout\ = (!\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & (!\REGISTRADOR_HEX2|DOUT\(1) & (!\REGISTRADOR_HEX2|DOUT\(2) $ (\REGISTRADOR_HEX2|DOUT\(3))))) # (\REGISTRADOR_HEX2|DOUT[0]~DUPLICATE_q\ & 
-- (!\REGISTRADOR_HEX2|DOUT\(3) & (!\REGISTRADOR_HEX2|DOUT\(1) $ (\REGISTRADOR_HEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010010000100000101001000010000010100100001000001010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y4_N3
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \ROM1|memROM~10_combout\ & ( (\ROM1|memROM~0_combout\ & \ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \comb~1_combout\);

-- Location: MLABCELL_X37_Y2_N27
\AND_HEX3|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3|dataOUT~0_combout\ = ( \CPU1|DECODER|PontosDeControle[6]~0_combout\ & ( \CPU1|ULA1|saida[7]~0_combout\ & ( (\ROM1|memROM~12_combout\ & (\AND_HEX4|dataOUT~0_combout\ & (\comb~1_combout\ & !\ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \AND_HEX4|ALT_INV_dataOUT~0_combout\,
	datac => \ALT_INV_comb~1_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \AND_HEX3|dataOUT~0_combout\);

-- Location: FF_X41_Y2_N31
\REGISTRADOR_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX3|DOUT\(3));

-- Location: FF_X41_Y2_N14
\REGISTRADOR_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX3|DOUT\(0));

-- Location: FF_X41_Y2_N40
\REGISTRADOR_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX3|DOUT\(2));

-- Location: FF_X41_Y2_N17
\REGISTRADOR_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX3|DOUT\(1));

-- Location: LABCELL_X41_Y2_N54
\DECODIFICADOR_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[0]~0_combout\ = ( \REGISTRADOR_HEX3|DOUT\(1) & ( (\REGISTRADOR_HEX3|DOUT\(3) & (\REGISTRADOR_HEX3|DOUT\(0) & !\REGISTRADOR_HEX3|DOUT\(2))) ) ) # ( !\REGISTRADOR_HEX3|DOUT\(1) & ( (!\REGISTRADOR_HEX3|DOUT\(3) & 
-- (!\REGISTRADOR_HEX3|DOUT\(0) $ (!\REGISTRADOR_HEX3|DOUT\(2)))) # (\REGISTRADOR_HEX3|DOUT\(3) & (\REGISTRADOR_HEX3|DOUT\(0) & \REGISTRADOR_HEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N24
\DECODIFICADOR_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[1]~1_combout\ = ( \REGISTRADOR_HEX3|DOUT\(2) & ( \REGISTRADOR_HEX3|DOUT\(0) & ( !\REGISTRADOR_HEX3|DOUT\(1) $ (\REGISTRADOR_HEX3|DOUT\(3)) ) ) ) # ( !\REGISTRADOR_HEX3|DOUT\(2) & ( \REGISTRADOR_HEX3|DOUT\(0) & ( 
-- (\REGISTRADOR_HEX3|DOUT\(1) & \REGISTRADOR_HEX3|DOUT\(3)) ) ) ) # ( \REGISTRADOR_HEX3|DOUT\(2) & ( !\REGISTRADOR_HEX3|DOUT\(0) & ( (\REGISTRADOR_HEX3|DOUT\(3)) # (\REGISTRADOR_HEX3|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datae => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N42
\DECODIFICADOR_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[2]~2_combout\ = ( \REGISTRADOR_HEX3|DOUT\(1) & ( (!\REGISTRADOR_HEX3|DOUT\(3) & (!\REGISTRADOR_HEX3|DOUT\(0) & !\REGISTRADOR_HEX3|DOUT\(2))) # (\REGISTRADOR_HEX3|DOUT\(3) & ((\REGISTRADOR_HEX3|DOUT\(2)))) ) ) # ( 
-- !\REGISTRADOR_HEX3|DOUT\(1) & ( (\REGISTRADOR_HEX3|DOUT\(3) & (!\REGISTRADOR_HEX3|DOUT\(0) & \REGISTRADOR_HEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N57
\DECODIFICADOR_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[3]~3_combout\ = ( \REGISTRADOR_HEX3|DOUT\(0) & ( (!\REGISTRADOR_HEX3|DOUT\(1) & (!\REGISTRADOR_HEX3|DOUT\(3) & !\REGISTRADOR_HEX3|DOUT\(2))) # (\REGISTRADOR_HEX3|DOUT\(1) & ((\REGISTRADOR_HEX3|DOUT\(2)))) ) ) # ( 
-- !\REGISTRADOR_HEX3|DOUT\(0) & ( (!\REGISTRADOR_HEX3|DOUT\(3) & (!\REGISTRADOR_HEX3|DOUT\(1) & \REGISTRADOR_HEX3|DOUT\(2))) # (\REGISTRADOR_HEX3|DOUT\(3) & (\REGISTRADOR_HEX3|DOUT\(1) & !\REGISTRADOR_HEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N48
\DECODIFICADOR_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[4]~4_combout\ = ( \REGISTRADOR_HEX3|DOUT\(1) & ( (!\REGISTRADOR_HEX3|DOUT\(3) & \REGISTRADOR_HEX3|DOUT\(0)) ) ) # ( !\REGISTRADOR_HEX3|DOUT\(1) & ( (!\REGISTRADOR_HEX3|DOUT\(2) & ((\REGISTRADOR_HEX3|DOUT\(0)))) # 
-- (\REGISTRADOR_HEX3|DOUT\(2) & (!\REGISTRADOR_HEX3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110101010001100111010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N51
\DECODIFICADOR_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[5]~5_combout\ = ( \REGISTRADOR_HEX3|DOUT\(0) & ( !\REGISTRADOR_HEX3|DOUT\(3) $ (((!\REGISTRADOR_HEX3|DOUT\(1) & \REGISTRADOR_HEX3|DOUT\(2)))) ) ) # ( !\REGISTRADOR_HEX3|DOUT\(0) & ( (!\REGISTRADOR_HEX3|DOUT\(3) & 
-- (\REGISTRADOR_HEX3|DOUT\(1) & !\REGISTRADOR_HEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101010010110101010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N45
\DECODIFICADOR_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[6]~6_combout\ = ( \REGISTRADOR_HEX3|DOUT\(0) & ( (!\REGISTRADOR_HEX3|DOUT\(3) & (!\REGISTRADOR_HEX3|DOUT\(1) $ (\REGISTRADOR_HEX3|DOUT\(2)))) ) ) # ( !\REGISTRADOR_HEX3|DOUT\(0) & ( (!\REGISTRADOR_HEX3|DOUT\(1) & 
-- (!\REGISTRADOR_HEX3|DOUT\(3) $ (\REGISTRADOR_HEX3|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X41_Y2_N6
\AND_HEX4|dataOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX4|dataOUT~1_combout\ = ( \AND_HEX4|dataOUT~0_combout\ & ( (\CPU1|ULA1|saida[7]~0_combout\ & (\AND_HEX0|dataOUT~0_combout\ & (\ROM1|memROM~1_combout\ & \CPU1|DECODER|PontosDeControle[6]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[7]~0_combout\,
	datab => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|DECODER|ALT_INV_PontosDeControle[6]~0_combout\,
	datae => \AND_HEX4|ALT_INV_dataOUT~0_combout\,
	combout => \AND_HEX4|dataOUT~1_combout\);

-- Location: FF_X41_Y2_N8
\REGISTRADOR_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX4|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX4|DOUT\(3));

-- Location: FF_X41_Y2_N28
\REGISTRADOR_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX4|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX4|DOUT\(0));

-- Location: FF_X41_Y2_N2
\REGISTRADOR_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX4|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX4|DOUT\(2));

-- Location: FF_X41_Y2_N11
\REGISTRADOR_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX4|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX4|DOUT\(1));

-- Location: LABCELL_X41_Y2_N18
\DECODIFICADOR_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX4|rascSaida7seg[0]~0_combout\ = ( \REGISTRADOR_HEX4|DOUT\(1) & ( (\REGISTRADOR_HEX4|DOUT\(3) & (\REGISTRADOR_HEX4|DOUT\(0) & !\REGISTRADOR_HEX4|DOUT\(2))) ) ) # ( !\REGISTRADOR_HEX4|DOUT\(1) & ( (!\REGISTRADOR_HEX4|DOUT\(3) & 
-- (!\REGISTRADOR_HEX4|DOUT\(0) $ (!\REGISTRADOR_HEX4|DOUT\(2)))) # (\REGISTRADOR_HEX4|DOUT\(3) & (\REGISTRADOR_HEX4|DOUT\(0) & \REGISTRADOR_HEX4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX4|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX4|ALT_INV_DOUT\(0),
	datac => \REGISTRADOR_HEX4|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX4|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N21
\DECODIFICADOR_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX4|rascSaida7seg[1]~1_combout\ = ( \REGISTRADOR_HEX4|DOUT\(1) & ( (!\REGISTRADOR_HEX4|DOUT\(0) & ((\REGISTRADOR_HEX4|DOUT\(2)))) # (\REGISTRADOR_HEX4|DOUT\(0) & (\REGISTRADOR_HEX4|DOUT\(3))) ) ) # ( !\REGISTRADOR_HEX4|DOUT\(1) & ( 
-- (\REGISTRADOR_HEX4|DOUT\(2) & (!\REGISTRADOR_HEX4|DOUT\(3) $ (!\REGISTRADOR_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX4|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX4|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX4|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX4|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N3
\DECODIFICADOR_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX4|rascSaida7seg[2]~2_combout\ = (!\REGISTRADOR_HEX4|DOUT\(3) & (\REGISTRADOR_HEX4|DOUT\(1) & (!\REGISTRADOR_HEX4|DOUT\(0) & !\REGISTRADOR_HEX4|DOUT\(2)))) # (\REGISTRADOR_HEX4|DOUT\(3) & (\REGISTRADOR_HEX4|DOUT\(2) & 
-- ((!\REGISTRADOR_HEX4|DOUT\(0)) # (\REGISTRADOR_HEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001010001001000000101000100100000010100010010000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX4|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX4|ALT_INV_DOUT\(1),
	datac => \REGISTRADOR_HEX4|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX4|ALT_INV_DOUT\(2),
	combout => \DECODIFICADOR_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: FF_X41_Y2_N10
\REGISTRADOR_HEX4|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REG1|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX4|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX4|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y2_N15
\DECODIFICADOR_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX4|rascSaida7seg[3]~3_combout\ = ( \REGISTRADOR_HEX4|DOUT[1]~DUPLICATE_q\ & ( (!\REGISTRADOR_HEX4|DOUT\(0) & (\REGISTRADOR_HEX4|DOUT\(3) & !\REGISTRADOR_HEX4|DOUT\(2))) # (\REGISTRADOR_HEX4|DOUT\(0) & ((\REGISTRADOR_HEX4|DOUT\(2)))) ) ) # 
-- ( !\REGISTRADOR_HEX4|DOUT[1]~DUPLICATE_q\ & ( (!\REGISTRADOR_HEX4|DOUT\(3) & (!\REGISTRADOR_HEX4|DOUT\(0) $ (!\REGISTRADOR_HEX4|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000010100000000111100001010101000000101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX4|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX4|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX4|ALT_INV_DOUT\(2),
	datae => \REGISTRADOR_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DECODIFICADOR_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N33
\DECODIFICADOR_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX4|rascSaida7seg[4]~4_combout\ = ( \REGISTRADOR_HEX4|DOUT[1]~DUPLICATE_q\ & ( (!\REGISTRADOR_HEX4|DOUT\(3) & \REGISTRADOR_HEX4|DOUT\(0)) ) ) # ( !\REGISTRADOR_HEX4|DOUT[1]~DUPLICATE_q\ & ( (!\REGISTRADOR_HEX4|DOUT\(2) & 
-- ((\REGISTRADOR_HEX4|DOUT\(0)))) # (\REGISTRADOR_HEX4|DOUT\(2) & (!\REGISTRADOR_HEX4|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110101010001000100010001000110011101010100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX4|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX4|ALT_INV_DOUT\(0),
	datad => \REGISTRADOR_HEX4|ALT_INV_DOUT\(2),
	datae => \REGISTRADOR_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DECODIFICADOR_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N36
\DECODIFICADOR_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX4|rascSaida7seg[5]~5_combout\ = ( \REGISTRADOR_HEX4|DOUT\(2) & ( (\REGISTRADOR_HEX4|DOUT\(0) & (!\REGISTRADOR_HEX4|DOUT\(3) $ (!\REGISTRADOR_HEX4|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\REGISTRADOR_HEX4|DOUT\(2) & ( 
-- (!\REGISTRADOR_HEX4|DOUT\(3) & ((\REGISTRADOR_HEX4|DOUT[1]~DUPLICATE_q\) # (\REGISTRADOR_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010000100100001001000101010001010100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX4|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX4|ALT_INV_DOUT\(0),
	datac => \REGISTRADOR_HEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \REGISTRADOR_HEX4|ALT_INV_DOUT\(2),
	combout => \DECODIFICADOR_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N0
\DECODIFICADOR_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX4|rascSaida7seg[6]~6_combout\ = ( \REGISTRADOR_HEX4|DOUT\(0) & ( (!\REGISTRADOR_HEX4|DOUT\(3) & (!\REGISTRADOR_HEX4|DOUT\(1) $ (\REGISTRADOR_HEX4|DOUT\(2)))) ) ) # ( !\REGISTRADOR_HEX4|DOUT\(0) & ( (!\REGISTRADOR_HEX4|DOUT\(1) & 
-- (!\REGISTRADOR_HEX4|DOUT\(3) $ (\REGISTRADOR_HEX4|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001000100100010000100010010001000001000101000100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX4|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX4|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX4|ALT_INV_DOUT\(2),
	dataf => \REGISTRADOR_HEX4|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y33_N0
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


