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

-- DATE "09/10/2021 16:37:41"

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

ENTITY 	aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END aula5;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aula5 IS
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~22\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~25_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \DECODER|Equal9~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~26\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~30\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~34\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[4]~1_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~2\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[5]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~6\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~9_sumout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \DECODER|PontosDeControle~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \DECODER|PontosDeControle[6]~2_combout\ : std_logic;
SIGNAL \DECODER|PontosDeControle[5]~0_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~7_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \DECODER|PontosDeControle~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \logica_de_desvio|dataOUT~0_combout\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~10\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~17_sumout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~18\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[8]~5_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~29_sumout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[2]~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \MUXJUMP|Equal1~0_combout\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~21_sumout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \MUXJUMP|Equal0~0_combout\ : std_logic;
SIGNAL \SOMACONSTANTE|Add0~33_sumout\ : std_logic;
SIGNAL \MUXJUMP|saida_MUX[3]~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \DECODER|Equal3~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FLAG|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~7_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_PontosDeControle~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \MUXJUMP|ALT_INV_saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \MUXJUMP|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MUXJUMP|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \logica_de_desvio|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \MUXJUMP|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_PontosDeControle~1_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_PontosDeControle[5]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \SOMACONSTANTE|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \SOMACONSTANTE|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \SOMACONSTANTE|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \SOMACONSTANTE|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \SOMACONSTANTE|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \SOMACONSTANTE|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \SOMACONSTANTE|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \SOMACONSTANTE|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \SOMACONSTANTE|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FLAG|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \FLAG|DOUT~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\MUX1|ALT_INV_saida_MUX[2]~7_combout\ <= NOT \MUX1|saida_MUX[2]~7_combout\;
\MUX1|ALT_INV_saida_MUX[2]~6_combout\ <= NOT \MUX1|saida_MUX[2]~6_combout\;
\FLAG|ALT_INV_DOUT~2_combout\ <= NOT \FLAG|DOUT~2_combout\;
\FLAG|ALT_INV_DOUT~1_combout\ <= NOT \FLAG|DOUT~1_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\DECODER|ALT_INV_PontosDeControle~3_combout\ <= NOT \DECODER|PontosDeControle~3_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ULA1|ALT_INV_Equal2~0_combout\ <= NOT \ULA1|Equal2~0_combout\;
\END_RETORNO|ALT_INV_DOUT\(3) <= NOT \END_RETORNO|DOUT\(3);
\END_RETORNO|ALT_INV_DOUT\(2) <= NOT \END_RETORNO|DOUT\(2);
\END_RETORNO|ALT_INV_DOUT\(1) <= NOT \END_RETORNO|DOUT\(1);
\END_RETORNO|ALT_INV_DOUT\(0) <= NOT \END_RETORNO|DOUT\(0);
\END_RETORNO|ALT_INV_DOUT\(7) <= NOT \END_RETORNO|DOUT\(7);
\END_RETORNO|ALT_INV_DOUT\(8) <= NOT \END_RETORNO|DOUT\(8);
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\END_RETORNO|ALT_INV_DOUT\(6) <= NOT \END_RETORNO|DOUT\(6);
\MUXJUMP|ALT_INV_saida_MUX[6]~3_combout\ <= NOT \MUXJUMP|saida_MUX[6]~3_combout\;
\END_RETORNO|ALT_INV_DOUT\(5) <= NOT \END_RETORNO|DOUT\(5);
\END_RETORNO|ALT_INV_DOUT\(4) <= NOT \END_RETORNO|DOUT\(4);
\MUXJUMP|ALT_INV_Equal0~0_combout\ <= NOT \MUXJUMP|Equal0~0_combout\;
\MUXJUMP|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \MUXJUMP|saida_MUX[7]~0_combout\;
\logica_de_desvio|ALT_INV_dataOUT~0_combout\ <= NOT \logica_de_desvio|dataOUT~0_combout\;
\MUXJUMP|ALT_INV_Equal1~0_combout\ <= NOT \MUXJUMP|Equal1~0_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\DECODER|ALT_INV_Equal9~0_combout\ <= NOT \DECODER|Equal9~0_combout\;
\DECODER|ALT_INV_Equal3~0_combout\ <= NOT \DECODER|Equal3~0_combout\;
\MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX1|saida_MUX[5]~5_combout\;
\MUX1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX1|saida_MUX[4]~4_combout\;
\MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1|saida_MUX[2]~2_combout\;
\MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1|saida_MUX[1]~1_combout\;
\DECODER|ALT_INV_PontosDeControle~1_combout\ <= NOT \DECODER|PontosDeControle~1_combout\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\DECODER|ALT_INV_PontosDeControle[5]~0_combout\ <= NOT \DECODER|PontosDeControle[5]~0_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\SOMACONSTANTE|ALT_INV_Add0~33_sumout\ <= NOT \SOMACONSTANTE|Add0~33_sumout\;
\SOMACONSTANTE|ALT_INV_Add0~29_sumout\ <= NOT \SOMACONSTANTE|Add0~29_sumout\;
\SOMACONSTANTE|ALT_INV_Add0~25_sumout\ <= NOT \SOMACONSTANTE|Add0~25_sumout\;
\SOMACONSTANTE|ALT_INV_Add0~21_sumout\ <= NOT \SOMACONSTANTE|Add0~21_sumout\;
\SOMACONSTANTE|ALT_INV_Add0~17_sumout\ <= NOT \SOMACONSTANTE|Add0~17_sumout\;
\SOMACONSTANTE|ALT_INV_Add0~13_sumout\ <= NOT \SOMACONSTANTE|Add0~13_sumout\;
\SOMACONSTANTE|ALT_INV_Add0~9_sumout\ <= NOT \SOMACONSTANTE|Add0~9_sumout\;
\SOMACONSTANTE|ALT_INV_Add0~5_sumout\ <= NOT \SOMACONSTANTE|Add0~5_sumout\;
\SOMACONSTANTE|ALT_INV_Add0~1_sumout\ <= NOT \SOMACONSTANTE|Add0~1_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);

-- Location: IOOBUF_X54_Y20_N22
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X54_Y18_N79
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X54_Y19_N56
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X54_Y20_N56
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X54_Y17_N5
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X54_Y16_N5
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X54_Y18_N96
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X54_Y18_N45
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X33_Y0_N93
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: FF_X48_Y18_N59
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y18_N30
\SOMACONSTANTE|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMACONSTANTE|Add0~21_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \SOMACONSTANTE|Add0~22\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \SOMACONSTANTE|Add0~21_sumout\,
	cout => \SOMACONSTANTE|Add0~22\);

-- Location: LABCELL_X47_Y18_N33
\SOMACONSTANTE|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMACONSTANTE|Add0~25_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~22\ ))
-- \SOMACONSTANTE|Add0~26\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \SOMACONSTANTE|Add0~22\,
	sumout => \SOMACONSTANTE|Add0~25_sumout\,
	cout => \SOMACONSTANTE|Add0~26\);

-- Location: FF_X48_Y18_N11
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X48_Y18_N42
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & !\PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(1) & ( (\PC|DOUT\(3) & (!\PC|DOUT\(0) $ (\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000110001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X50_Y18_N30
\DECODER|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal9~0_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~4_combout\ ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~3_combout\) # ((!\ROM1|memROM~0_combout\) # (\ROM1|memROM~5_combout\)) ) ) ) # ( 
-- \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER|Equal9~0_combout\);

-- Location: FF_X47_Y18_N34
\END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMACONSTANTE|Add0~25_sumout\,
	ena => \DECODER|ALT_INV_Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(1));

-- Location: LABCELL_X48_Y18_N30
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT\(0) & (!\PC|DOUT\(3) & !\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X48_Y18_N9
\MUXJUMP|saida_MUX[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[1]~8_combout\ = ( \ROM1|memROM~6_combout\ & ( ((!\MUXJUMP|Equal0~0_combout\ & ((\SOMACONSTANTE|Add0~25_sumout\))) # (\MUXJUMP|Equal0~0_combout\ & (\END_RETORNO|DOUT\(1)))) # (\MUXJUMP|Equal1~0_combout\) ) ) # ( !\ROM1|memROM~6_combout\ 
-- & ( (!\MUXJUMP|Equal1~0_combout\ & ((!\MUXJUMP|Equal0~0_combout\ & ((\SOMACONSTANTE|Add0~25_sumout\))) # (\MUXJUMP|Equal0~0_combout\ & (\END_RETORNO|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXJUMP|ALT_INV_Equal0~0_combout\,
	datab => \MUXJUMP|ALT_INV_Equal1~0_combout\,
	datac => \END_RETORNO|ALT_INV_DOUT\(1),
	datad => \SOMACONSTANTE|ALT_INV_Add0~25_sumout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \MUXJUMP|saida_MUX[1]~8_combout\);

-- Location: FF_X48_Y18_N10
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y18_N36
\SOMACONSTANTE|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMACONSTANTE|Add0~29_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~26\ ))
-- \SOMACONSTANTE|Add0~30\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \SOMACONSTANTE|Add0~26\,
	sumout => \SOMACONSTANTE|Add0~29_sumout\,
	cout => \SOMACONSTANTE|Add0~30\);

-- Location: LABCELL_X47_Y18_N39
\SOMACONSTANTE|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMACONSTANTE|Add0~33_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMACONSTANTE|Add0~30\ ))
-- \SOMACONSTANTE|Add0~34\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMACONSTANTE|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(3),
	cin => \SOMACONSTANTE|Add0~30\,
	sumout => \SOMACONSTANTE|Add0~33_sumout\,
	cout => \SOMACONSTANTE|Add0~34\);

-- Location: LABCELL_X47_Y18_N42
\SOMACONSTANTE|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMACONSTANTE|Add0~1_sumout\ = SUM(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~34\ ))
-- \SOMACONSTANTE|Add0~2\ = CARRY(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \SOMACONSTANTE|Add0~34\,
	sumout => \SOMACONSTANTE|Add0~1_sumout\,
	cout => \SOMACONSTANTE|Add0~2\);

-- Location: FF_X47_Y18_N43
\END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMACONSTANTE|Add0~1_sumout\,
	ena => \DECODER|ALT_INV_Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(4));

-- Location: LABCELL_X48_Y18_N15
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC|DOUT\(3) & (!\PC|DOUT\(1) & (!\PC|DOUT\(0) & \PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X47_Y18_N15
\MUXJUMP|saida_MUX[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[4]~1_combout\ = ( \ROM1|memROM~9_combout\ & ( ((!\MUXJUMP|Equal0~0_combout\ & (\SOMACONSTANTE|Add0~1_sumout\)) # (\MUXJUMP|Equal0~0_combout\ & ((\END_RETORNO|DOUT\(4))))) # (\MUXJUMP|Equal1~0_combout\) ) ) # ( !\ROM1|memROM~9_combout\ & 
-- ( (!\MUXJUMP|Equal1~0_combout\ & ((!\MUXJUMP|Equal0~0_combout\ & (\SOMACONSTANTE|Add0~1_sumout\)) # (\MUXJUMP|Equal0~0_combout\ & ((\END_RETORNO|DOUT\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXJUMP|ALT_INV_Equal1~0_combout\,
	datab => \MUXJUMP|ALT_INV_Equal0~0_combout\,
	datac => \SOMACONSTANTE|ALT_INV_Add0~1_sumout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \MUXJUMP|saida_MUX[4]~1_combout\);

-- Location: FF_X47_Y18_N16
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y18_N45
\SOMACONSTANTE|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMACONSTANTE|Add0~5_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~2\ ))
-- \SOMACONSTANTE|Add0~6\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \SOMACONSTANTE|Add0~2\,
	sumout => \SOMACONSTANTE|Add0~5_sumout\,
	cout => \SOMACONSTANTE|Add0~6\);

-- Location: FF_X47_Y18_N47
\END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMACONSTANTE|Add0~5_sumout\,
	ena => \DECODER|ALT_INV_Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(5));

-- Location: LABCELL_X48_Y18_N36
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT\(3) & (\PC|DOUT[2]~DUPLICATE_q\ & (\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X47_Y18_N12
\MUXJUMP|saida_MUX[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[5]~2_combout\ = ( \ROM1|memROM~10_combout\ & ( ((!\MUXJUMP|Equal0~0_combout\ & (\SOMACONSTANTE|Add0~5_sumout\)) # (\MUXJUMP|Equal0~0_combout\ & ((\END_RETORNO|DOUT\(5))))) # (\MUXJUMP|Equal1~0_combout\) ) ) # ( !\ROM1|memROM~10_combout\ 
-- & ( (!\MUXJUMP|Equal1~0_combout\ & ((!\MUXJUMP|Equal0~0_combout\ & (\SOMACONSTANTE|Add0~5_sumout\)) # (\MUXJUMP|Equal0~0_combout\ & ((\END_RETORNO|DOUT\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXJUMP|ALT_INV_Equal1~0_combout\,
	datab => \MUXJUMP|ALT_INV_Equal0~0_combout\,
	datac => \SOMACONSTANTE|ALT_INV_Add0~5_sumout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \MUXJUMP|saida_MUX[5]~2_combout\);

-- Location: FF_X47_Y18_N14
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y18_N48
\SOMACONSTANTE|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMACONSTANTE|Add0~9_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~6\ ))
-- \SOMACONSTANTE|Add0~10\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \SOMACONSTANTE|Add0~6\,
	sumout => \SOMACONSTANTE|Add0~9_sumout\,
	cout => \SOMACONSTANTE|Add0~10\);

-- Location: LABCELL_X50_Y18_N3
\MUXJUMP|saida_MUX[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[6]~3_combout\ = ( \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~5_combout\)) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\ & 
-- (!\ROM1|memROM~3_combout\ $ (!\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100000010000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \MUXJUMP|saida_MUX[6]~3_combout\);

-- Location: FF_X47_Y18_N50
\END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMACONSTANTE|Add0~9_sumout\,
	ena => \DECODER|ALT_INV_Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(6));

-- Location: LABCELL_X47_Y18_N27
\MUXJUMP|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[6]~4_combout\ = ( \END_RETORNO|DOUT\(6) & ( (!\logica_de_desvio|dataOUT~0_combout\ & (((\SOMACONSTANTE|Add0~9_sumout\ & !\MUXJUMP|saida_MUX[6]~3_combout\)) # (\MUXJUMP|saida_MUX[7]~0_combout\))) ) ) # ( !\END_RETORNO|DOUT\(6) & ( 
-- (!\logica_de_desvio|dataOUT~0_combout\ & (\SOMACONSTANTE|Add0~9_sumout\ & !\MUXJUMP|saida_MUX[6]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000101010001000100010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_de_desvio|ALT_INV_dataOUT~0_combout\,
	datab => \MUXJUMP|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \SOMACONSTANTE|ALT_INV_Add0~9_sumout\,
	datad => \MUXJUMP|ALT_INV_saida_MUX[6]~3_combout\,
	dataf => \END_RETORNO|ALT_INV_DOUT\(6),
	combout => \MUXJUMP|saida_MUX[6]~4_combout\);

-- Location: FF_X47_Y18_N29
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X47_Y18_N17
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X47_Y18_N0
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT\(7) & !\PC|DOUT[6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X50_Y18_N39
\DECODER|PontosDeControle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|PontosDeControle~1_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~3_combout\ & (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER|PontosDeControle~1_combout\);

-- Location: LABCELL_X50_Y18_N18
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X50_Y18_N42
\DECODER|PontosDeControle[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|PontosDeControle[6]~2_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER|PontosDeControle[6]~2_combout\);

-- Location: FF_X49_Y18_N52
\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \DECODER|PontosDeControle~1_combout\,
	ena => \DECODER|PontosDeControle[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

-- Location: LABCELL_X48_Y18_N24
\DECODER|PontosDeControle[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|PontosDeControle[5]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~4_combout\ $ (((!\ROM1|memROM~3_combout\ & !\ROM1|memROM~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001000100010000100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECODER|PontosDeControle[5]~0_combout\);

-- Location: LABCELL_X50_Y18_N45
\MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~5_combout\ = ( \DECODER|PontosDeControle[5]~0_combout\ & ( \ROM1|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \DECODER|ALT_INV_PontosDeControle[5]~0_combout\,
	combout => \MUX1|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X50_Y18_N48
\MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~4_combout\ = ( \DECODER|PontosDeControle[5]~0_combout\ & ( \ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \DECODER|ALT_INV_PontosDeControle[5]~0_combout\,
	combout => \MUX1|saida_MUX[4]~4_combout\);

-- Location: FF_X47_Y18_N13
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: FF_X47_Y18_N19
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: FF_X47_Y18_N28
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X48_Y18_N0
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \PC|DOUT\(1) & ( (\PC|DOUT\(0) & (!\PC|DOUT\(3) & !\PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(0) & (\PC|DOUT\(3) & !\PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~15_combout\);

-- Location: MLABCELL_X49_Y18_N24
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( !\PC|DOUT\(4) & ( \ROM1|memROM~15_combout\ & ( (!\PC|DOUT\(5) & (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & !\PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: FF_X47_Y18_N25
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y18_N39
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT\(3)) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (\PC|DOUT\(0))) # (\PC|DOUT[2]~DUPLICATE_q\ & ((!\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X47_Y18_N9
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( \ROM1|memROM~13_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT\(4) & !\PC|DOUT[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X48_Y18_N18
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~7_combout\)) ) ) # ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: LABCELL_X48_Y18_N33
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~10_combout\) # (\ROM1|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X48_Y18_N51
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \RAM1|ram~531_combout\ & ( (\RAM1|ram~530_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~530_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: LABCELL_X48_Y18_N12
\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = ( \RAM1|ram~529_combout\ & ( (!\DECODER|PontosDeControle[5]~0_combout\) # (\ROM1|memROM~8_combout\) ) ) # ( !\RAM1|ram~529_combout\ & ( (\DECODER|PontosDeControle[5]~0_combout\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER|ALT_INV_PontosDeControle[5]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~529_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

-- Location: MLABCELL_X49_Y18_N3
\MUX1|saida_MUX[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~6_combout\ = ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \MUX1|saida_MUX[2]~6_combout\);

-- Location: MLABCELL_X49_Y18_N9
\MUX1|saida_MUX[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~7_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~6_combout\ ) ) # ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \MUX1|saida_MUX[2]~7_combout\);

-- Location: MLABCELL_X49_Y18_N0
\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = ( \MUX1|saida_MUX[2]~7_combout\ & ( (!\DECODER|PontosDeControle[5]~0_combout\ & (!\ROM1|memROM~7_combout\ & \MUX1|saida_MUX[2]~6_combout\)) # (\DECODER|PontosDeControle[5]~0_combout\ & (\ROM1|memROM~7_combout\)) ) ) # ( 
-- !\MUX1|saida_MUX[2]~7_combout\ & ( (\DECODER|PontosDeControle[5]~0_combout\ & \ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|ALT_INV_PontosDeControle[5]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~6_combout\,
	dataf => \MUX1|ALT_INV_saida_MUX[2]~7_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

-- Location: MLABCELL_X49_Y18_N6
\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = ( \DECODER|PontosDeControle[5]~0_combout\ & ( \ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \DECODER|ALT_INV_PontosDeControle[5]~0_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X47_Y18_N3
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = ( \DECODER|PontosDeControle[5]~0_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \DECODER|ALT_INV_PontosDeControle[5]~0_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X50_Y18_N15
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X50_Y18_N9
\DECODER|PontosDeControle~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|PontosDeControle~3_combout\ = ( \ROM1|memROM~2_combout\ ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~5_combout\) # (\ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111111111111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER|PontosDeControle~3_combout\);

-- Location: MLABCELL_X49_Y18_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( (\DECODER|Equal9~0_combout\ & (((\ROM1|memROM~12_combout\ & !\DECODER|PontosDeControle~3_combout\)) # (\DECODER|Equal3~0_combout\))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal3~0_combout\,
	datab => \DECODER|ALT_INV_Equal9~0_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \DECODER|ALT_INV_PontosDeControle~3_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: MLABCELL_X49_Y18_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\MUX1|saida_MUX[0]~0_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|Equal3~0_combout\ & !\DECODER|PontosDeControle~1_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\MUX1|saida_MUX[0]~0_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|Equal3~0_combout\ & !\DECODER|PontosDeControle~1_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001001111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal3~0_combout\,
	datab => \DECODER|ALT_INV_Equal9~0_combout\,
	datac => \DECODER|ALT_INV_PontosDeControle~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: MLABCELL_X49_Y18_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\MUX1|saida_MUX[1]~1_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|Equal3~0_combout\ & !\DECODER|PontosDeControle~1_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\MUX1|saida_MUX[1]~1_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|Equal3~0_combout\ & !\DECODER|PontosDeControle~1_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001001111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal3~0_combout\,
	datab => \DECODER|ALT_INV_Equal9~0_combout\,
	datac => \DECODER|ALT_INV_PontosDeControle~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: FF_X49_Y18_N38
\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~1_combout\,
	sload => \DECODER|PontosDeControle~1_combout\,
	ena => \DECODER|PontosDeControle[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

-- Location: MLABCELL_X49_Y18_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\MUX1|saida_MUX[2]~2_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|Equal3~0_combout\ & !\DECODER|PontosDeControle~1_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\MUX1|saida_MUX[2]~2_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|Equal3~0_combout\ & !\DECODER|PontosDeControle~1_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001001111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal3~0_combout\,
	datab => \DECODER|ALT_INV_Equal9~0_combout\,
	datac => \DECODER|ALT_INV_PontosDeControle~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: FF_X49_Y18_N41
\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \DECODER|PontosDeControle~1_combout\,
	ena => \DECODER|PontosDeControle[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

-- Location: MLABCELL_X49_Y18_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\MUX1|saida_MUX[3]~3_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|PontosDeControle~1_combout\ & !\DECODER|Equal3~0_combout\)))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\MUX1|saida_MUX[3]~3_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|PontosDeControle~1_combout\ & !\DECODER|Equal3~0_combout\)))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_PontosDeControle~1_combout\,
	datab => \DECODER|ALT_INV_Equal3~0_combout\,
	datac => \DECODER|ALT_INV_Equal9~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: FF_X49_Y18_N44
\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~3_combout\,
	sload => \DECODER|PontosDeControle~1_combout\,
	ena => \DECODER|PontosDeControle[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

-- Location: MLABCELL_X49_Y18_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\MUX1|saida_MUX[4]~4_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|PontosDeControle~1_combout\ & !\DECODER|Equal3~0_combout\)))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\MUX1|saida_MUX[4]~4_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|PontosDeControle~1_combout\ & !\DECODER|Equal3~0_combout\)))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_PontosDeControle~1_combout\,
	datab => \DECODER|ALT_INV_Equal3~0_combout\,
	datac => \DECODER|ALT_INV_Equal9~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: FF_X49_Y18_N47
\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[4]~4_combout\,
	sload => \DECODER|PontosDeControle~1_combout\,
	ena => \DECODER|PontosDeControle[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

-- Location: MLABCELL_X49_Y18_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\MUX1|saida_MUX[5]~5_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|Equal3~0_combout\ & !\DECODER|PontosDeControle~1_combout\)))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\MUX1|saida_MUX[5]~5_combout\ $ (((!\DECODER|Equal9~0_combout\) # ((!\DECODER|Equal3~0_combout\ & !\DECODER|PontosDeControle~1_combout\)))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001001111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal3~0_combout\,
	datab => \DECODER|ALT_INV_Equal9~0_combout\,
	datac => \DECODER|ALT_INV_PontosDeControle~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: FF_X49_Y18_N50
\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~5_combout\,
	sload => \DECODER|PontosDeControle~1_combout\,
	ena => \DECODER|PontosDeControle[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

-- Location: MLABCELL_X49_Y18_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REG1|DOUT\(6) ) + ( (\DECODER|Equal9~0_combout\ & ((\DECODER|PontosDeControle~1_combout\) # (\DECODER|Equal3~0_combout\))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REG1|DOUT\(6) ) + ( (\DECODER|Equal9~0_combout\ & ((\DECODER|PontosDeControle~1_combout\) # (\DECODER|Equal3~0_combout\))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011001110110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal3~0_combout\,
	datab => \DECODER|ALT_INV_Equal9~0_combout\,
	datac => \DECODER|ALT_INV_PontosDeControle~1_combout\,
	datad => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X50_Y18_N12
\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \FLAG|DOUT~1_combout\);

-- Location: LABCELL_X50_Y18_N0
\ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~0_combout\ = ( \DECODER|Equal3~0_combout\ ) # ( !\DECODER|Equal3~0_combout\ & ( \DECODER|PontosDeControle~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECODER|ALT_INV_PontosDeControle~1_combout\,
	dataf => \DECODER|ALT_INV_Equal3~0_combout\,
	combout => \ULA1|Equal2~0_combout\);

-- Location: FF_X49_Y18_N55
\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \DECODER|PontosDeControle~1_combout\,
	ena => \DECODER|PontosDeControle[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

-- Location: MLABCELL_X49_Y18_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REG1|DOUT\(7) ) + ( (\DECODER|Equal9~0_combout\ & \ULA1|Equal2~0_combout\) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal9~0_combout\,
	datac => \ULA1|ALT_INV_Equal2~0_combout\,
	datad => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: FF_X49_Y18_N14
\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

-- Location: MLABCELL_X49_Y18_N18
\FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~2_combout\ = ( \ULA1|Add0~13_sumout\ & ( \ULA1|Add0~9_sumout\ & ( (\FLAG|DOUT~q\ & !\FLAG|DOUT~1_combout\) ) ) ) # ( !\ULA1|Add0~13_sumout\ & ( \ULA1|Add0~9_sumout\ & ( (\FLAG|DOUT~q\ & !\FLAG|DOUT~1_combout\) ) ) ) # ( \ULA1|Add0~13_sumout\ & 
-- ( !\ULA1|Add0~9_sumout\ & ( (\FLAG|DOUT~q\ & !\FLAG|DOUT~1_combout\) ) ) ) # ( !\ULA1|Add0~13_sumout\ & ( !\ULA1|Add0~9_sumout\ & ( (!\FLAG|DOUT~1_combout\ & (((\FLAG|DOUT~q\)))) # (\FLAG|DOUT~1_combout\ & (!\ULA1|Add0~1_sumout\ & 
-- ((!\ULA1|Add0~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110100000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~1_sumout\,
	datab => \FLAG|ALT_INV_DOUT~q\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	datad => \FLAG|ALT_INV_DOUT~1_combout\,
	datae => \ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \FLAG|DOUT~2_combout\);

-- Location: MLABCELL_X49_Y18_N12
\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = ( \ULA1|Add0~29_sumout\ & ( \FLAG|DOUT~2_combout\ & ( !\FLAG|DOUT~1_combout\ ) ) ) # ( !\ULA1|Add0~29_sumout\ & ( \FLAG|DOUT~2_combout\ & ( (!\FLAG|DOUT~1_combout\) # ((!\ULA1|Add0~25_sumout\ & (!\ULA1|Add0~21_sumout\ & 
-- !\ULA1|Add0~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~25_sumout\,
	datab => \FLAG|ALT_INV_DOUT~1_combout\,
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	datae => \ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \FLAG|ALT_INV_DOUT~2_combout\,
	combout => \FLAG|DOUT~0_combout\);

-- Location: FF_X49_Y18_N13
\FLAG|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X50_Y18_N54
\logica_de_desvio|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_de_desvio|dataOUT~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\FLAG|DOUT~DUPLICATE_q\ & (!\ROM1|memROM~3_combout\ $ (\ROM1|memROM~2_combout\)))) ) ) ) # ( \ROM1|memROM~5_combout\ & ( 
-- !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~0_combout\ & (\FLAG|DOUT~DUPLICATE_q\ & !\ROM1|memROM~2_combout\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~3_combout\ & 
-- (\ROM1|memROM~0_combout\ & (\FLAG|DOUT~DUPLICATE_q\ & !\ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000100000000000000010000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \FLAG|ALT_INV_DOUT~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \logica_de_desvio|dataOUT~0_combout\);

-- Location: LABCELL_X47_Y18_N51
\SOMACONSTANTE|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMACONSTANTE|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMACONSTANTE|Add0~10\ ))
-- \SOMACONSTANTE|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMACONSTANTE|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	cin => \SOMACONSTANTE|Add0~10\,
	sumout => \SOMACONSTANTE|Add0~17_sumout\,
	cout => \SOMACONSTANTE|Add0~18\);

-- Location: FF_X47_Y18_N53
\END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMACONSTANTE|Add0~17_sumout\,
	ena => \DECODER|ALT_INV_Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(7));

-- Location: LABCELL_X47_Y18_N24
\MUXJUMP|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[7]~6_combout\ = ( \SOMACONSTANTE|Add0~17_sumout\ & ( (!\logica_de_desvio|dataOUT~0_combout\ & ((!\MUXJUMP|saida_MUX[6]~3_combout\) # ((\MUXJUMP|saida_MUX[7]~0_combout\ & \END_RETORNO|DOUT\(7))))) ) ) # ( !\SOMACONSTANTE|Add0~17_sumout\ 
-- & ( (!\logica_de_desvio|dataOUT~0_combout\ & (\MUXJUMP|saida_MUX[7]~0_combout\ & \END_RETORNO|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010101010000000101010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_de_desvio|ALT_INV_dataOUT~0_combout\,
	datab => \MUXJUMP|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \END_RETORNO|ALT_INV_DOUT\(7),
	datad => \MUXJUMP|ALT_INV_saida_MUX[6]~3_combout\,
	dataf => \SOMACONSTANTE|ALT_INV_Add0~17_sumout\,
	combout => \MUXJUMP|saida_MUX[7]~6_combout\);

-- Location: FF_X47_Y18_N26
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X47_Y18_N54
\SOMACONSTANTE|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMACONSTANTE|Add0~13_sumout\ = SUM(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \SOMACONSTANTE|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \SOMACONSTANTE|Add0~18\,
	sumout => \SOMACONSTANTE|Add0~13_sumout\);

-- Location: FF_X47_Y18_N55
\END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMACONSTANTE|Add0~13_sumout\,
	ena => \DECODER|ALT_INV_Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(8));

-- Location: LABCELL_X50_Y18_N6
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( !\PC|DOUT\(3) & ( (!\PC|DOUT[1]~DUPLICATE_q\ & ((\PC|DOUT[2]~DUPLICATE_q\) # (\PC|DOUT\(0)))) # (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011111010010110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X47_Y18_N18
\MUXJUMP|saida_MUX[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[8]~5_combout\ = ( \ROM1|memROM~0_combout\ & ( \SOMACONSTANTE|Add0~13_sumout\ & ( (!\MUXJUMP|Equal1~0_combout\ & (((!\MUXJUMP|Equal0~0_combout\)) # (\END_RETORNO|DOUT\(8)))) # (\MUXJUMP|Equal1~0_combout\ & (((\ROM1|memROM~11_combout\)))) 
-- ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \SOMACONSTANTE|Add0~13_sumout\ & ( (!\MUXJUMP|Equal1~0_combout\ & ((!\MUXJUMP|Equal0~0_combout\) # (\END_RETORNO|DOUT\(8)))) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\SOMACONSTANTE|Add0~13_sumout\ & ( 
-- (!\MUXJUMP|Equal1~0_combout\ & (\END_RETORNO|DOUT\(8) & ((\MUXJUMP|Equal0~0_combout\)))) # (\MUXJUMP|Equal1~0_combout\ & (((\ROM1|memROM~11_combout\)))) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\SOMACONSTANTE|Add0~13_sumout\ & ( (\END_RETORNO|DOUT\(8) & 
-- (!\MUXJUMP|Equal1~0_combout\ & \MUXJUMP|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000110100011111001100010001001100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RETORNO|ALT_INV_DOUT\(8),
	datab => \MUXJUMP|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \MUXJUMP|ALT_INV_Equal0~0_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \SOMACONSTANTE|ALT_INV_Add0~13_sumout\,
	combout => \MUXJUMP|saida_MUX[8]~5_combout\);

-- Location: FF_X47_Y18_N20
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y18_N45
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(0) & ((!\PC|DOUT\(1)))) # (\PC|DOUT\(0) & (\PC|DOUT\(3) & \PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000001110000011100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X47_Y18_N6
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( \ROM1|memROM~14_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT[6]~DUPLICATE_q\ & !\PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: FF_X47_Y18_N37
\END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMACONSTANTE|Add0~29_sumout\,
	ena => \DECODER|ALT_INV_Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(2));

-- Location: LABCELL_X48_Y18_N57
\MUXJUMP|saida_MUX[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[2]~9_combout\ = ( \SOMACONSTANTE|Add0~29_sumout\ & ( (!\MUXJUMP|Equal1~0_combout\ & ((!\MUXJUMP|Equal0~0_combout\) # ((\END_RETORNO|DOUT\(2))))) # (\MUXJUMP|Equal1~0_combout\ & (((\ROM1|memROM~7_combout\)))) ) ) # ( 
-- !\SOMACONSTANTE|Add0~29_sumout\ & ( (!\MUXJUMP|Equal1~0_combout\ & (\MUXJUMP|Equal0~0_combout\ & ((\END_RETORNO|DOUT\(2))))) # (\MUXJUMP|Equal1~0_combout\ & (((\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXJUMP|ALT_INV_Equal0~0_combout\,
	datab => \MUXJUMP|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(2),
	dataf => \SOMACONSTANTE|ALT_INV_Add0~29_sumout\,
	combout => \MUXJUMP|saida_MUX[2]~9_combout\);

-- Location: FF_X48_Y18_N58
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X48_Y18_N21
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(2) & ((\PC|DOUT\(3)) # (\PC|DOUT\(1)))) # (\PC|DOUT\(2) & (!\PC|DOUT\(1))) ) ) # ( !\PC|DOUT\(0) & ( (\PC|DOUT\(2) & (!\PC|DOUT\(1) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011010111110100101101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X50_Y18_N24
\MUXJUMP|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|Equal1~0_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & (\FLAG|DOUT~DUPLICATE_q\ & !\ROM1|memROM~4_combout\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\ROM1|memROM~2_combout\)) # (\ROM1|memROM~3_combout\))) # (\ROM1|memROM~4_combout\ & (\FLAG|DOUT~DUPLICATE_q\ & (!\ROM1|memROM~3_combout\ $ (\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111000010010000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \FLAG|ALT_INV_DOUT~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \MUXJUMP|Equal1~0_combout\);

-- Location: FF_X47_Y18_N31
\END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMACONSTANTE|Add0~21_sumout\,
	ena => \DECODER|ALT_INV_Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(0));

-- Location: LABCELL_X48_Y18_N6
\MUXJUMP|saida_MUX[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[0]~7_combout\ = ( \ROM1|memROM~1_combout\ & ( ((!\MUXJUMP|Equal0~0_combout\ & (\SOMACONSTANTE|Add0~21_sumout\)) # (\MUXJUMP|Equal0~0_combout\ & ((\END_RETORNO|DOUT\(0))))) # (\MUXJUMP|Equal1~0_combout\) ) ) # ( !\ROM1|memROM~1_combout\ 
-- & ( (!\MUXJUMP|Equal1~0_combout\ & ((!\MUXJUMP|Equal0~0_combout\ & (\SOMACONSTANTE|Add0~21_sumout\)) # (\MUXJUMP|Equal0~0_combout\ & ((\END_RETORNO|DOUT\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXJUMP|ALT_INV_Equal0~0_combout\,
	datab => \MUXJUMP|ALT_INV_Equal1~0_combout\,
	datac => \SOMACONSTANTE|ALT_INV_Add0~21_sumout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \MUXJUMP|saida_MUX[0]~7_combout\);

-- Location: FF_X48_Y18_N8
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X48_Y18_N48
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ (!\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (!\PC|DOUT[2]~DUPLICATE_q\))) # (\PC|DOUT\(0) & (!\PC|DOUT\(3) & 
-- !\PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000000001111001100000000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X50_Y18_N51
\MUXJUMP|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[7]~0_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \MUXJUMP|saida_MUX[7]~0_combout\);

-- Location: LABCELL_X50_Y18_N36
\MUXJUMP|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|Equal0~0_combout\ = (\MUXJUMP|saida_MUX[7]~0_combout\ & !\logica_de_desvio|dataOUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUXJUMP|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \logica_de_desvio|ALT_INV_dataOUT~0_combout\,
	combout => \MUXJUMP|Equal0~0_combout\);

-- Location: FF_X47_Y18_N41
\END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \SOMACONSTANTE|Add0~33_sumout\,
	ena => \DECODER|ALT_INV_Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(3));

-- Location: LABCELL_X48_Y18_N54
\MUXJUMP|saida_MUX[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXJUMP|saida_MUX[3]~10_combout\ = ( \SOMACONSTANTE|Add0~33_sumout\ & ( (!\MUXJUMP|Equal1~0_combout\ & ((!\MUXJUMP|Equal0~0_combout\) # ((\END_RETORNO|DOUT\(3))))) # (\MUXJUMP|Equal1~0_combout\ & (((\ROM1|memROM~8_combout\)))) ) ) # ( 
-- !\SOMACONSTANTE|Add0~33_sumout\ & ( (!\MUXJUMP|Equal1~0_combout\ & (\MUXJUMP|Equal0~0_combout\ & ((\END_RETORNO|DOUT\(3))))) # (\MUXJUMP|Equal1~0_combout\ & (((\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUXJUMP|ALT_INV_Equal0~0_combout\,
	datab => \MUXJUMP|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \END_RETORNO|ALT_INV_DOUT\(3),
	dataf => \SOMACONSTANTE|ALT_INV_Add0~33_sumout\,
	combout => \MUXJUMP|saida_MUX[3]~10_combout\);

-- Location: FF_X48_Y18_N56
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXJUMP|saida_MUX[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X48_Y18_N3
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\PC|DOUT\(3) & \PC|DOUT\(1))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(3) $ (\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X48_Y18_N27
\DECODER|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal3~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~3_combout\ & \ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECODER|Equal3~0_combout\);

-- Location: FF_X49_Y18_N35
\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~0_combout\,
	sload => \DECODER|PontosDeControle~1_combout\,
	ena => \DECODER|PontosDeControle[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

-- Location: IOIBUF_X50_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X32_Y45_N41
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N92
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X34_Y45_N52
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


