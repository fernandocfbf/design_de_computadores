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

-- DATE "09/25/2021 15:52:24"

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
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
	FPGA_RESET : IN std_logic;
	PC_out : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END aula8;

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
SIGNAL ww_FPGA_RESET : std_logic;
SIGNAL ww_PC_out : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \PC_out[0]~output_o\ : std_logic;
SIGNAL \PC_out[1]~output_o\ : std_logic;
SIGNAL \PC_out[2]~output_o\ : std_logic;
SIGNAL \PC_out[3]~output_o\ : std_logic;
SIGNAL \PC_out[4]~output_o\ : std_logic;
SIGNAL \PC_out[5]~output_o\ : std_logic;
SIGNAL \PC_out[6]~output_o\ : std_logic;
SIGNAL \PC_out[7]~output_o\ : std_logic;
SIGNAL \PC_out[8]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~2\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~6\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~10\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~14\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~18\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~22\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~26\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~30\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~33_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|MUXJUMP|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \AND_HEX4|dataOUT~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|DECODER|PontosDeControle[4]~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER|PontosDeControle[4]~1_combout\ : std_logic;
SIGNAL \CPU1|DECODER|PontosDeControle[5]~2_combout\ : std_logic;
SIGNAL \AND_HEX0|dataOUT~0_combout\ : std_logic;
SIGNAL \AND3|dataOUT~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~6_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~7_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM_MUX[3]~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM_MUX[4]~1_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \RAM_MUX[7]~2_combout\ : std_logic;
SIGNAL \AND2|dataOUT~0_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED8|DOUT~0_combout\ : std_logic;
SIGNAL \REGISTRADOR_LED8|DOUT~q\ : std_logic;
SIGNAL \AND1|dataOUT~0_combout\ : std_logic;
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
SIGNAL \AND_HEX1|dataOUT~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX2|dataOUT~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX3|dataOUT~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODIFICADOR_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU1|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTRADOR_LED|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGISTRADOR_LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGISTRADOR_LED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|SOMACONSTANTE|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[2]~7_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\ : std_logic;
SIGNAL \CPU1|DECODER|ALT_INV_PontosDeControle[4]~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \AND_HEX4|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \AND1|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \AND2|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \AND_HEX0|ALT_INV_dataOUT~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGISTRADOR_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGISTRADOR_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_FPGA_RESET <= FPGA_RESET;
PC_out <= ww_PC_out;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REGISTRADOR_HEX1|ALT_INV_DOUT\(0) <= NOT \REGISTRADOR_HEX1|DOUT\(0);
\REGISTRADOR_HEX0|ALT_INV_DOUT\(1) <= NOT \REGISTRADOR_HEX0|DOUT\(1);
\REGISTRADOR_HEX0|ALT_INV_DOUT\(2) <= NOT \REGISTRADOR_HEX0|DOUT\(2);
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
\CPU1|SOMACONSTANTE|ALT_INV_Add0~21_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~21_sumout\;
\CPU1|SOMACONSTANTE|ALT_INV_Add0~17_sumout\ <= NOT \CPU1|SOMACONSTANTE|Add0~17_sumout\;
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
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[6]~9_combout\ <= NOT \CPU1|MUX1|saida_MUX[6]~9_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[5]~8_combout\ <= NOT \CPU1|MUX1|saida_MUX[5]~8_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[2]~7_combout\ <= NOT \CPU1|MUX1|saida_MUX[2]~7_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~6_combout\;
\CPU1|DECODER|ALT_INV_PontosDeControle[4]~0_combout\ <= NOT \CPU1|DECODER|PontosDeControle[4]~0_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~5_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~5_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~4_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~4_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~3_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~2_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~1_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\AND_HEX4|ALT_INV_dataOUT~0_combout\ <= NOT \AND_HEX4|dataOUT~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\AND1|ALT_INV_dataOUT~0_combout\ <= NOT \AND1|dataOUT~0_combout\;
\AND2|ALT_INV_dataOUT~0_combout\ <= NOT \AND2|dataOUT~0_combout\;
\AND_HEX0|ALT_INV_dataOUT~0_combout\ <= NOT \AND_HEX0|dataOUT~0_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGISTRADOR_HEX3|ALT_INV_DOUT\(1) <= NOT \REGISTRADOR_HEX3|DOUT\(1);
\REGISTRADOR_HEX3|ALT_INV_DOUT\(2) <= NOT \REGISTRADOR_HEX3|DOUT\(2);
\REGISTRADOR_HEX3|ALT_INV_DOUT\(3) <= NOT \REGISTRADOR_HEX3|DOUT\(3);
\REGISTRADOR_HEX3|ALT_INV_DOUT\(0) <= NOT \REGISTRADOR_HEX3|DOUT\(0);
\REGISTRADOR_HEX2|ALT_INV_DOUT\(1) <= NOT \REGISTRADOR_HEX2|DOUT\(1);
\REGISTRADOR_HEX2|ALT_INV_DOUT\(2) <= NOT \REGISTRADOR_HEX2|DOUT\(2);
\REGISTRADOR_HEX2|ALT_INV_DOUT\(3) <= NOT \REGISTRADOR_HEX2|DOUT\(3);
\REGISTRADOR_HEX2|ALT_INV_DOUT\(0) <= NOT \REGISTRADOR_HEX2|DOUT\(0);
\REGISTRADOR_HEX1|ALT_INV_DOUT\(1) <= NOT \REGISTRADOR_HEX1|DOUT\(1);
\REGISTRADOR_HEX1|ALT_INV_DOUT\(2) <= NOT \REGISTRADOR_HEX1|DOUT\(2);
\REGISTRADOR_HEX1|ALT_INV_DOUT\(3) <= NOT \REGISTRADOR_HEX1|DOUT\(3);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

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
	o => \PC_out[0]~output_o\);

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
	o => \PC_out[1]~output_o\);

\PC_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_out[2]~output_o\);

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
	o => \PC_out[3]~output_o\);

\PC_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_out[4]~output_o\);

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
	o => \PC_out[5]~output_o\);

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
	o => \PC_out[6]~output_o\);

\PC_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_out[7]~output_o\);

\PC_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU1|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_out[8]~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(6),
	datac => \CPU1|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~4_combout\);

\CPU1|SOMACONSTANTE|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~1_sumout\ = SUM(( \CPU1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU1|SOMACONSTANTE|Add0~2\ = CARRY(( \CPU1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU1|SOMACONSTANTE|Add0~1_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~2\);

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

\CPU1|MUXJUMP|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~6_combout\ & ( \CPU1|SOMACONSTANTE|Add0~5_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~4_combout\) # (\CPU1|PC|DOUT\(8)))) # (\CPU1|PC|DOUT\(0)) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( 
-- \CPU1|SOMACONSTANTE|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \CPU1|SOMACONSTANTE|ALT_INV_Add0~5_sumout\,
	combout => \CPU1|MUXJUMP|saida_MUX[1]~1_combout\);

\CPU1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|MUXJUMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(1));

\CPU1|SOMACONSTANTE|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~9_sumout\ = SUM(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~6\ ))
-- \CPU1|SOMACONSTANTE|Add0~10\ = CARRY(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	cin => \CPU1|SOMACONSTANTE|Add0~6\,
	sumout => \CPU1|SOMACONSTANTE|Add0~9_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~10\);

\CPU1|MUXJUMP|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[2]~2_combout\ = ( \ROM1|memROM~6_combout\ & ( \CPU1|SOMACONSTANTE|Add0~9_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~4_combout\) # (\CPU1|PC|DOUT\(8)))) # (\CPU1|PC|DOUT\(0)) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( 
-- \CPU1|SOMACONSTANTE|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \CPU1|SOMACONSTANTE|ALT_INV_Add0~9_sumout\,
	combout => \CPU1|MUXJUMP|saida_MUX[2]~2_combout\);

\CPU1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|MUXJUMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(2));

\CPU1|SOMACONSTANTE|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~13_sumout\ = SUM(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~10\ ))
-- \CPU1|SOMACONSTANTE|Add0~14\ = CARRY(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	cin => \CPU1|SOMACONSTANTE|Add0~10\,
	sumout => \CPU1|SOMACONSTANTE|Add0~13_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~14\);

\CPU1|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|SOMACONSTANTE|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(3));

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(1),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\CPU1|SOMACONSTANTE|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~17_sumout\ = SUM(( \CPU1|PC|DOUT\(4) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~14\ ))
-- \CPU1|SOMACONSTANTE|Add0~18\ = CARRY(( \CPU1|PC|DOUT\(4) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(4),
	cin => \CPU1|SOMACONSTANTE|Add0~14\,
	sumout => \CPU1|SOMACONSTANTE|Add0~17_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~18\);

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

\CPU1|MUXJUMP|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[5]~4_combout\ = ( \ROM1|memROM~6_combout\ & ( \CPU1|SOMACONSTANTE|Add0~21_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~4_combout\) # (\CPU1|PC|DOUT\(8)))) # (\CPU1|PC|DOUT\(0)) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( 
-- \CPU1|SOMACONSTANTE|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \CPU1|SOMACONSTANTE|ALT_INV_Add0~21_sumout\,
	combout => \CPU1|MUXJUMP|saida_MUX[5]~4_combout\);

\CPU1|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|MUXJUMP|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(5));

\CPU1|SOMACONSTANTE|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~25_sumout\ = SUM(( \CPU1|PC|DOUT\(6) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~22\ ))
-- \CPU1|SOMACONSTANTE|Add0~26\ = CARRY(( \CPU1|PC|DOUT\(6) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(6),
	cin => \CPU1|SOMACONSTANTE|Add0~22\,
	sumout => \CPU1|SOMACONSTANTE|Add0~25_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~26\);

\CPU1|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|SOMACONSTANTE|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(6));

\CPU1|SOMACONSTANTE|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~29_sumout\ = SUM(( \CPU1|PC|DOUT\(7) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~26\ ))
-- \CPU1|SOMACONSTANTE|Add0~30\ = CARRY(( \CPU1|PC|DOUT\(7) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(7),
	cin => \CPU1|SOMACONSTANTE|Add0~26\,
	sumout => \CPU1|SOMACONSTANTE|Add0~29_sumout\,
	cout => \CPU1|SOMACONSTANTE|Add0~30\);

\CPU1|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|SOMACONSTANTE|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(7));

\CPU1|SOMACONSTANTE|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|SOMACONSTANTE|Add0~33_sumout\ = SUM(( \CPU1|PC|DOUT\(8) ) + ( GND ) + ( \CPU1|SOMACONSTANTE|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(8),
	cin => \CPU1|SOMACONSTANTE|Add0~30\,
	sumout => \CPU1|SOMACONSTANTE|Add0~33_sumout\);

\CPU1|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|SOMACONSTANTE|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(8));

\CPU1|MUXJUMP|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[4]~3_combout\ = ( \ROM1|memROM~6_combout\ & ( \CPU1|SOMACONSTANTE|Add0~17_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~4_combout\) # (\CPU1|PC|DOUT\(8)))) # (\CPU1|PC|DOUT\(0)) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( 
-- \CPU1|SOMACONSTANTE|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \CPU1|SOMACONSTANTE|ALT_INV_Add0~17_sumout\,
	combout => \CPU1|MUXJUMP|saida_MUX[4]~3_combout\);

\CPU1|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|MUXJUMP|saida_MUX[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(4));

\CPU1|MUXJUMP|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUXJUMP|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( \CPU1|SOMACONSTANTE|Add0~1_sumout\ & ( ((!\CPU1|PC|DOUT\(4)) # ((!\ROM1|memROM~4_combout\) # (\CPU1|PC|DOUT\(8)))) # (\CPU1|PC|DOUT\(0)) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( 
-- \CPU1|SOMACONSTANTE|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \CPU1|SOMACONSTANTE|ALT_INV_Add0~1_sumout\,
	combout => \CPU1|MUXJUMP|saida_MUX[0]~0_combout\);

\CPU1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|MUXJUMP|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(0));

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(8) & \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU1|PC|DOUT\(8) & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \CPU1|PC|ALT_INV_DOUT\(6),
	datad => \CPU1|PC|ALT_INV_DOUT\(7),
	datae => \CPU1|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\CPU1|PC|DOUT\(8) & (\ROM1|memROM~4_combout\ & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT\(4))))) ) ) # ( !\ROM1|memROM~6_combout\ & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(8) & 
-- \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000110000000000000010000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010010000000010101001000000001010100100000000101010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(8) & \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \comb~0_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(0)) # (\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(2)) # (\CPU1|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000110001100001100011000110000110001100011000011000110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) $ (((!\CPU1|PC|DOUT\(0)) # (!\CPU1|PC|DOUT\(3)))))) # (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(2)) # (\CPU1|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001111001000011000111100100001100011110010000110001111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(1)) # (!\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(0) & (((\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000101101010000000010110101000000001011010100000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\CPU1|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~0_combout\ = ( \SW[8]~input_o\ & ( \SW[9]~input_o\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~2_combout\)))) ) ) ) # ( !\SW[8]~input_o\ & ( \SW[9]~input_o\ & ( 
-- (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) ) ) # ( \SW[8]~input_o\ & ( !\SW[9]~input_o\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & 
-- \ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000100000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[0]~0_combout\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\CPU1|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~1_combout\ = ( \KEY[3]~input_o\ & ( \KEY[1]~input_o\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\)) ) ) ) # ( !\KEY[3]~input_o\ & ( \KEY[1]~input_o\ & ( (\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) ) ) # ( \KEY[3]~input_o\ & ( !\KEY[1]~input_o\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000010000000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[0]~1_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\CPU1|MUX1|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~2_combout\ = ( \KEY[0]~input_o\ & ( \KEY[2]~input_o\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\)) ) ) ) # ( !\KEY[0]~input_o\ & ( \KEY[2]~input_o\ & ( (!\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) ) ) # ( \KEY[0]~input_o\ & ( !\KEY[2]~input_o\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[0]~2_combout\);

\AND_HEX4|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX4|dataOUT~0_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \AND_HEX4|dataOUT~0_combout\);

\CPU1|MUX1|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~3_combout\ = ( !\CPU1|PC|DOUT\(6) & ( !\CPU1|PC|DOUT\(7) & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(8) & !\CPU1|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	datae => \CPU1|PC|ALT_INV_DOUT\(6),
	dataf => \CPU1|PC|ALT_INV_DOUT\(7),
	combout => \CPU1|MUX1|saida_MUX[0]~3_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\ROM1|memROM~1_combout\ & (((!\ROM1|memROM~3_combout\) # (\ROM1|memROM~2_combout\)) # (\ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010011001100110001001100110011000100110011001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \comb~1_combout\);

\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

\CPU1|MUX1|saida_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~4_combout\ = ( \comb~1_combout\ & ( \FPGA_RESET~input_o\ & ( (\AND_HEX4|dataOUT~0_combout\ & \CPU1|MUX1|saida_MUX[0]~3_combout\) ) ) ) # ( !\comb~1_combout\ & ( \FPGA_RESET~input_o\ & ( (!\AND_HEX4|dataOUT~0_combout\ & 
-- (((\comb~0_combout\ & \SW[0]~input_o\)))) # (\AND_HEX4|dataOUT~0_combout\ & (((\comb~0_combout\ & \SW[0]~input_o\)) # (\CPU1|MUX1|saida_MUX[0]~3_combout\))) ) ) ) # ( !\comb~1_combout\ & ( !\FPGA_RESET~input_o\ & ( (\comb~0_combout\ & \SW[0]~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000010001000111110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX4|ALT_INV_dataOUT~0_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_FPGA_RESET~input_o\,
	combout => \CPU1|MUX1|saida_MUX[0]~4_combout\);

\CPU1|MUX1|saida_MUX[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~5_combout\ = ( \CPU1|MUX1|saida_MUX[0]~4_combout\ ) # ( !\CPU1|MUX1|saida_MUX[0]~4_combout\ & ( (\comb~0_combout\ & (((\CPU1|MUX1|saida_MUX[0]~2_combout\) # (\CPU1|MUX1|saida_MUX[0]~1_combout\)) # 
-- (\CPU1|MUX1|saida_MUX[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101111111111111111100010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[0]~2_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[0]~4_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~5_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (\ROM1|memROM~4_combout\ & ((!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(4) & \ROM1|memROM~6_combout\)) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000110000001000000011000000100000001100000010000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~9_combout\);

\CPU1|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~34_cout\ = CARRY(( (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\ROM1|memROM~9_combout\) # (\CPU1|PC|DOUT\(8)))))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	cin => GND,
	cout => \CPU1|ULA1|Add0~34_cout\);

\CPU1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~1_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[0]~5_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))
-- \CPU1|ULA1|Add0~2\ = CARRY(( !\CPU1|MUX1|saida_MUX[0]~5_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010100011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[0]~5_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(0),
	cin => \CPU1|ULA1|Add0~34_cout\,
	sumout => \CPU1|ULA1|Add0~1_sumout\,
	cout => \CPU1|ULA1|Add0~2\);

\CPU1|DECODER|PontosDeControle[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|PontosDeControle[4]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(8) & \ROM1|memROM~4_combout\)) ) ) # ( !\ROM1|memROM~6_combout\ & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(8) & 
-- \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001010000000000000100000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU1|DECODER|PontosDeControle[4]~0_combout\);

\CPU1|DECODER|PontosDeControle[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|PontosDeControle[4]~1_combout\ = (!\ROM1|memROM~8_combout\ & \CPU1|DECODER|PontosDeControle[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU1|DECODER|ALT_INV_PontosDeControle[4]~0_combout\,
	combout => \CPU1|DECODER|PontosDeControle[4]~1_combout\);

\CPU1|DECODER|PontosDeControle[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER|PontosDeControle[5]~2_combout\ = (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~1_combout\ $ (!\ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU1|DECODER|PontosDeControle[5]~2_combout\);

\CPU1|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|ULA1|Add0~1_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[0]~5_combout\,
	sload => \CPU1|DECODER|PontosDeControle[4]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(0));

\AND_HEX0|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|dataOUT~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(8) & \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \AND_HEX0|dataOUT~0_combout\);

\AND3|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND3|dataOUT~0_combout\ = ( \AND_HEX0|dataOUT~0_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001110110000000000000000001100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	combout => \AND3|dataOUT~0_combout\);

\REGISTRADOR_LED|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(0),
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(0));

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\CPU1|MUX1|saida_MUX[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~6_combout\ = (\comb~0_combout\ & (!\comb~1_combout\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[1]~6_combout\);

\CPU1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~5_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[1]~6_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(1) ) + ( \CPU1|ULA1|Add0~2\ ))
-- \CPU1|ULA1|Add0~6\ = CARRY(( !\CPU1|MUX1|saida_MUX[1]~6_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(1) ) + ( \CPU1|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010100011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(1),
	cin => \CPU1|ULA1|Add0~2\,
	sumout => \CPU1|ULA1|Add0~5_sumout\,
	cout => \CPU1|ULA1|Add0~6\);

\CPU1|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|ULA1|Add0~5_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[1]~6_combout\,
	sload => \CPU1|DECODER|PontosDeControle[4]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(1));

\REGISTRADOR_LED|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(1),
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(1));

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\CPU1|MUX1|saida_MUX[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~7_combout\ = (\comb~0_combout\ & (!\comb~1_combout\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[2]~7_combout\);

\CPU1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~9_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[2]~7_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(2) ) + ( \CPU1|ULA1|Add0~6\ ))
-- \CPU1|ULA1|Add0~10\ = CARRY(( !\CPU1|MUX1|saida_MUX[2]~7_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(2) ) + ( \CPU1|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010100011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[2]~7_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(2),
	cin => \CPU1|ULA1|Add0~6\,
	sumout => \CPU1|ULA1|Add0~9_sumout\,
	cout => \CPU1|ULA1|Add0~10\);

\CPU1|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|ULA1|Add0~9_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[2]~7_combout\,
	sload => \CPU1|DECODER|PontosDeControle[4]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(2));

\REGISTRADOR_LED|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(2),
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(2));

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\comb~0_combout\ & !\comb~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ALT_INV_comb~1_combout\,
	combout => \comb~2_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\CPU1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~13_sumout\ = SUM(( (!\comb~2_combout\ & (\CPU1|DECODER|PontosDeControle[4]~0_combout\ & (!\ROM1|memROM~8_combout\))) # (\comb~2_combout\ & (!\SW[3]~input_o\ $ (((!\CPU1|DECODER|PontosDeControle[4]~0_combout\) # 
-- (\ROM1|memROM~8_combout\))))) ) + ( \CPU1|REG1|DOUT\(3) ) + ( \CPU1|ULA1|Add0~10\ ))
-- \CPU1|ULA1|Add0~14\ = CARRY(( (!\comb~2_combout\ & (\CPU1|DECODER|PontosDeControle[4]~0_combout\ & (!\ROM1|memROM~8_combout\))) # (\comb~2_combout\ & (!\SW[3]~input_o\ $ (((!\CPU1|DECODER|PontosDeControle[4]~0_combout\) # (\ROM1|memROM~8_combout\))))) ) + 
-- ( \CPU1|REG1|DOUT\(3) ) + ( \CPU1|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011000001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \CPU1|DECODER|ALT_INV_PontosDeControle[4]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(3),
	cin => \CPU1|ULA1|Add0~10\,
	sumout => \CPU1|ULA1|Add0~13_sumout\,
	cout => \CPU1|ULA1|Add0~14\);

\RAM_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_MUX[3]~0_combout\ = (\comb~2_combout\ & \SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	combout => \RAM_MUX[3]~0_combout\);

\CPU1|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \RAM_MUX[3]~0_combout\,
	sload => \CPU1|DECODER|PontosDeControle[4]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(3));

\REGISTRADOR_LED|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(3),
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(3));

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\CPU1|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~17_sumout\ = SUM(( (!\comb~2_combout\ & (\CPU1|DECODER|PontosDeControle[4]~0_combout\ & (!\ROM1|memROM~8_combout\))) # (\comb~2_combout\ & (!\SW[4]~input_o\ $ (((!\CPU1|DECODER|PontosDeControle[4]~0_combout\) # 
-- (\ROM1|memROM~8_combout\))))) ) + ( \CPU1|REG1|DOUT\(4) ) + ( \CPU1|ULA1|Add0~14\ ))
-- \CPU1|ULA1|Add0~18\ = CARRY(( (!\comb~2_combout\ & (\CPU1|DECODER|PontosDeControle[4]~0_combout\ & (!\ROM1|memROM~8_combout\))) # (\comb~2_combout\ & (!\SW[4]~input_o\ $ (((!\CPU1|DECODER|PontosDeControle[4]~0_combout\) # (\ROM1|memROM~8_combout\))))) ) + 
-- ( \CPU1|REG1|DOUT\(4) ) + ( \CPU1|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011000001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \CPU1|DECODER|ALT_INV_PontosDeControle[4]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(4),
	cin => \CPU1|ULA1|Add0~14\,
	sumout => \CPU1|ULA1|Add0~17_sumout\,
	cout => \CPU1|ULA1|Add0~18\);

\RAM_MUX[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_MUX[4]~1_combout\ = (\comb~2_combout\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	combout => \RAM_MUX[4]~1_combout\);

\CPU1|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|ULA1|Add0~17_sumout\,
	asdata => \RAM_MUX[4]~1_combout\,
	sload => \CPU1|DECODER|PontosDeControle[4]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(4));

\REGISTRADOR_LED|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(4),
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(4));

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\CPU1|MUX1|saida_MUX[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[5]~8_combout\ = (\comb~0_combout\ & (!\comb~1_combout\ & \SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[5]~8_combout\);

\CPU1|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~21_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[5]~8_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(5) ) + ( \CPU1|ULA1|Add0~18\ ))
-- \CPU1|ULA1|Add0~22\ = CARRY(( !\CPU1|MUX1|saida_MUX[5]~8_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(5) ) + ( \CPU1|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010100011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[5]~8_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(5),
	cin => \CPU1|ULA1|Add0~18\,
	sumout => \CPU1|ULA1|Add0~21_sumout\,
	cout => \CPU1|ULA1|Add0~22\);

\CPU1|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|ULA1|Add0~21_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[5]~8_combout\,
	sload => \CPU1|DECODER|PontosDeControle[4]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(5));

\REGISTRADOR_LED|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(5),
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(5));

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\CPU1|MUX1|saida_MUX[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~9_combout\ = (\comb~0_combout\ & (!\comb~1_combout\ & \SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[6]~9_combout\);

\CPU1|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~25_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[6]~9_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(6) ) + ( \CPU1|ULA1|Add0~22\ ))
-- \CPU1|ULA1|Add0~26\ = CARRY(( !\CPU1|MUX1|saida_MUX[6]~9_combout\ $ (((!\ROM1|memROM~1_combout\ $ (\ROM1|memROM~7_combout\)) # (\ROM1|memROM~8_combout\))) ) + ( \CPU1|REG1|DOUT\(6) ) + ( \CPU1|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010100011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[6]~9_combout\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(6),
	cin => \CPU1|ULA1|Add0~22\,
	sumout => \CPU1|ULA1|Add0~25_sumout\,
	cout => \CPU1|ULA1|Add0~26\);

\CPU1|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|ULA1|Add0~25_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[6]~9_combout\,
	sload => \CPU1|DECODER|PontosDeControle[4]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(6));

\REGISTRADOR_LED|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(6),
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(6));

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\CPU1|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~29_sumout\ = SUM(( (!\comb~2_combout\ & (!\ROM1|memROM~8_combout\ & (\CPU1|DECODER|PontosDeControle[4]~0_combout\))) # (\comb~2_combout\ & (!\SW[7]~input_o\ $ (((!\CPU1|DECODER|PontosDeControle[4]~0_combout\) # 
-- (\ROM1|memROM~8_combout\))))) ) + ( \CPU1|REG1|DOUT\(7) ) + ( \CPU1|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU1|DECODER|ALT_INV_PontosDeControle[4]~0_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \CPU1|REG1|ALT_INV_DOUT\(7),
	cin => \CPU1|ULA1|Add0~26\,
	sumout => \CPU1|ULA1|Add0~29_sumout\);

\RAM_MUX[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM_MUX[7]~2_combout\ = (\comb~2_combout\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	combout => \RAM_MUX[7]~2_combout\);

\CPU1|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|ULA1|Add0~29_sumout\,
	asdata => \RAM_MUX[7]~2_combout\,
	sload => \CPU1|DECODER|PontosDeControle[4]~1_combout\,
	ena => \CPU1|DECODER|PontosDeControle[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG1|DOUT\(7));

\REGISTRADOR_LED|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(7),
	ena => \AND3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED|DOUT\(7));

\AND2|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND2|dataOUT~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \AND2|dataOUT~0_combout\);

\REGISTRADOR_LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED8|DOUT~0_combout\ = ( \AND_HEX0|dataOUT~0_combout\ & ( \AND2|dataOUT~0_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\CPU1|REG1|DOUT\(0))))) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~3_combout\ & (\REGISTRADOR_LED8|DOUT~q\)) # 
-- (\ROM1|memROM~3_combout\ & ((\CPU1|REG1|DOUT\(0)))))) ) ) ) # ( !\AND_HEX0|dataOUT~0_combout\ & ( \AND2|dataOUT~0_combout\ & ( \REGISTRADOR_LED8|DOUT~q\ ) ) ) # ( \AND_HEX0|dataOUT~0_combout\ & ( !\AND2|dataOUT~0_combout\ & ( \REGISTRADOR_LED8|DOUT~q\ ) ) 
-- ) # ( !\AND_HEX0|dataOUT~0_combout\ & ( !\AND2|dataOUT~0_combout\ & ( \REGISTRADOR_LED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010011010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_LED8|ALT_INV_DOUT~q\,
	datab => \CPU1|REG1|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	dataf => \AND2|ALT_INV_dataOUT~0_combout\,
	combout => \REGISTRADOR_LED8|DOUT~0_combout\);

\REGISTRADOR_LED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REGISTRADOR_LED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED8|DOUT~q\);

\AND1|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND1|dataOUT~0_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \AND1|dataOUT~0_combout\);

\REGISTRADOR_LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTRADOR_LED9|DOUT~0_combout\ = ( \AND_HEX0|dataOUT~0_combout\ & ( \AND1|dataOUT~0_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\CPU1|REG1|DOUT\(0))))) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~3_combout\ & (\REGISTRADOR_LED9|DOUT~q\)) # 
-- (\ROM1|memROM~3_combout\ & ((\CPU1|REG1|DOUT\(0)))))) ) ) ) # ( !\AND_HEX0|dataOUT~0_combout\ & ( \AND1|dataOUT~0_combout\ & ( \REGISTRADOR_LED9|DOUT~q\ ) ) ) # ( \AND_HEX0|dataOUT~0_combout\ & ( !\AND1|dataOUT~0_combout\ & ( \REGISTRADOR_LED9|DOUT~q\ ) ) 
-- ) # ( !\AND_HEX0|dataOUT~0_combout\ & ( !\AND1|dataOUT~0_combout\ & ( \REGISTRADOR_LED9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010011010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_LED9|ALT_INV_DOUT~q\,
	datab => \CPU1|REG1|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	dataf => \AND1|ALT_INV_dataOUT~0_combout\,
	combout => \REGISTRADOR_LED9|DOUT~0_combout\);

\REGISTRADOR_LED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REGISTRADOR_LED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_LED9|DOUT~q\);

\AND_HEX0|dataOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|dataOUT~1_combout\ = ( \AND_HEX0|dataOUT~0_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	combout => \AND_HEX0|dataOUT~1_combout\);

\REGISTRADOR_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(0),
	ena => \AND_HEX0|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX0|DOUT\(0));

\REGISTRADOR_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(3),
	ena => \AND_HEX0|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX0|DOUT\(3));

\REGISTRADOR_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(2),
	ena => \AND_HEX0|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX0|DOUT\(2));

\REGISTRADOR_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(1),
	ena => \AND_HEX0|dataOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX0|DOUT\(1));

\DECODIFICADOR_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[0]~0_combout\ = (!\REGISTRADOR_HEX0|DOUT\(3) & (!\REGISTRADOR_HEX0|DOUT\(1) & (!\REGISTRADOR_HEX0|DOUT\(0) $ (!\REGISTRADOR_HEX0|DOUT\(2))))) # (\REGISTRADOR_HEX0|DOUT\(3) & (\REGISTRADOR_HEX0|DOUT\(0) & 
-- (!\REGISTRADOR_HEX0|DOUT\(2) $ (!\REGISTRADOR_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[0]~0_combout\);

\DECODIFICADOR_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[1]~1_combout\ = (!\REGISTRADOR_HEX0|DOUT\(3) & (\REGISTRADOR_HEX0|DOUT\(2) & (!\REGISTRADOR_HEX0|DOUT\(0) $ (!\REGISTRADOR_HEX0|DOUT\(1))))) # (\REGISTRADOR_HEX0|DOUT\(3) & ((!\REGISTRADOR_HEX0|DOUT\(0) & 
-- (\REGISTRADOR_HEX0|DOUT\(2))) # (\REGISTRADOR_HEX0|DOUT\(0) & ((\REGISTRADOR_HEX0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[1]~1_combout\);

\DECODIFICADOR_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[2]~2_combout\ = (!\REGISTRADOR_HEX0|DOUT\(3) & (!\REGISTRADOR_HEX0|DOUT\(0) & (!\REGISTRADOR_HEX0|DOUT\(2) & \REGISTRADOR_HEX0|DOUT\(1)))) # (\REGISTRADOR_HEX0|DOUT\(3) & (\REGISTRADOR_HEX0|DOUT\(2) & 
-- ((!\REGISTRADOR_HEX0|DOUT\(0)) # (\REGISTRADOR_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[2]~2_combout\);

\DECODIFICADOR_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[3]~3_combout\ = (!\REGISTRADOR_HEX0|DOUT\(1) & (!\REGISTRADOR_HEX0|DOUT\(3) & (!\REGISTRADOR_HEX0|DOUT\(0) $ (!\REGISTRADOR_HEX0|DOUT\(2))))) # (\REGISTRADOR_HEX0|DOUT\(1) & ((!\REGISTRADOR_HEX0|DOUT\(0) & 
-- (!\REGISTRADOR_HEX0|DOUT\(2) & \REGISTRADOR_HEX0|DOUT\(3))) # (\REGISTRADOR_HEX0|DOUT\(0) & (\REGISTRADOR_HEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[3]~3_combout\);

\DECODIFICADOR_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[4]~4_combout\ = (!\REGISTRADOR_HEX0|DOUT\(1) & ((!\REGISTRADOR_HEX0|DOUT\(2) & ((\REGISTRADOR_HEX0|DOUT\(0)))) # (\REGISTRADOR_HEX0|DOUT\(2) & (!\REGISTRADOR_HEX0|DOUT\(3))))) # (\REGISTRADOR_HEX0|DOUT\(1) & 
-- (!\REGISTRADOR_HEX0|DOUT\(3) & ((\REGISTRADOR_HEX0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[4]~4_combout\);

\DECODIFICADOR_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[5]~5_combout\ = (!\REGISTRADOR_HEX0|DOUT\(0) & (!\REGISTRADOR_HEX0|DOUT\(2) & (\REGISTRADOR_HEX0|DOUT\(1) & !\REGISTRADOR_HEX0|DOUT\(3)))) # (\REGISTRADOR_HEX0|DOUT\(0) & (!\REGISTRADOR_HEX0|DOUT\(3) $ 
-- (((\REGISTRADOR_HEX0|DOUT\(2) & !\REGISTRADOR_HEX0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[5]~5_combout\);

\DECODIFICADOR_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX0|rascSaida7seg[6]~6_combout\ = (!\REGISTRADOR_HEX0|DOUT\(0) & (!\REGISTRADOR_HEX0|DOUT\(1) & (!\REGISTRADOR_HEX0|DOUT\(3) $ (\REGISTRADOR_HEX0|DOUT\(2))))) # (\REGISTRADOR_HEX0|DOUT\(0) & (!\REGISTRADOR_HEX0|DOUT\(3) & 
-- (!\REGISTRADOR_HEX0|DOUT\(2) $ (\REGISTRADOR_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX0|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX0|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX0|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX0|rascSaida7seg[6]~6_combout\);

\AND_HEX1|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1|dataOUT~0_combout\ = ( \AND_HEX0|dataOUT~0_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	combout => \AND_HEX1|dataOUT~0_combout\);

\REGISTRADOR_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(0),
	ena => \AND_HEX1|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX1|DOUT\(0));

\REGISTRADOR_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(3),
	ena => \AND_HEX1|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX1|DOUT\(3));

\REGISTRADOR_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(2),
	ena => \AND_HEX1|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX1|DOUT\(2));

\REGISTRADOR_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(1),
	ena => \AND_HEX1|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX1|DOUT\(1));

\DECODIFICADOR_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[0]~0_combout\ = (!\REGISTRADOR_HEX1|DOUT\(3) & (!\REGISTRADOR_HEX1|DOUT\(1) & (!\REGISTRADOR_HEX1|DOUT\(0) $ (!\REGISTRADOR_HEX1|DOUT\(2))))) # (\REGISTRADOR_HEX1|DOUT\(3) & (\REGISTRADOR_HEX1|DOUT\(0) & 
-- (!\REGISTRADOR_HEX1|DOUT\(2) $ (!\REGISTRADOR_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[0]~0_combout\);

\DECODIFICADOR_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[1]~1_combout\ = (!\REGISTRADOR_HEX1|DOUT\(3) & (\REGISTRADOR_HEX1|DOUT\(2) & (!\REGISTRADOR_HEX1|DOUT\(0) $ (!\REGISTRADOR_HEX1|DOUT\(1))))) # (\REGISTRADOR_HEX1|DOUT\(3) & ((!\REGISTRADOR_HEX1|DOUT\(0) & 
-- (\REGISTRADOR_HEX1|DOUT\(2))) # (\REGISTRADOR_HEX1|DOUT\(0) & ((\REGISTRADOR_HEX1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[1]~1_combout\);

\DECODIFICADOR_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[2]~2_combout\ = (!\REGISTRADOR_HEX1|DOUT\(3) & (!\REGISTRADOR_HEX1|DOUT\(0) & (!\REGISTRADOR_HEX1|DOUT\(2) & \REGISTRADOR_HEX1|DOUT\(1)))) # (\REGISTRADOR_HEX1|DOUT\(3) & (\REGISTRADOR_HEX1|DOUT\(2) & 
-- ((!\REGISTRADOR_HEX1|DOUT\(0)) # (\REGISTRADOR_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[2]~2_combout\);

\DECODIFICADOR_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[3]~3_combout\ = (!\REGISTRADOR_HEX1|DOUT\(1) & (!\REGISTRADOR_HEX1|DOUT\(3) & (!\REGISTRADOR_HEX1|DOUT\(0) $ (!\REGISTRADOR_HEX1|DOUT\(2))))) # (\REGISTRADOR_HEX1|DOUT\(1) & ((!\REGISTRADOR_HEX1|DOUT\(0) & 
-- (!\REGISTRADOR_HEX1|DOUT\(2) & \REGISTRADOR_HEX1|DOUT\(3))) # (\REGISTRADOR_HEX1|DOUT\(0) & (\REGISTRADOR_HEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[3]~3_combout\);

\DECODIFICADOR_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[4]~4_combout\ = (!\REGISTRADOR_HEX1|DOUT\(1) & ((!\REGISTRADOR_HEX1|DOUT\(2) & ((\REGISTRADOR_HEX1|DOUT\(0)))) # (\REGISTRADOR_HEX1|DOUT\(2) & (!\REGISTRADOR_HEX1|DOUT\(3))))) # (\REGISTRADOR_HEX1|DOUT\(1) & 
-- (!\REGISTRADOR_HEX1|DOUT\(3) & ((\REGISTRADOR_HEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[4]~4_combout\);

\DECODIFICADOR_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[5]~5_combout\ = (!\REGISTRADOR_HEX1|DOUT\(0) & (!\REGISTRADOR_HEX1|DOUT\(2) & (\REGISTRADOR_HEX1|DOUT\(1) & !\REGISTRADOR_HEX1|DOUT\(3)))) # (\REGISTRADOR_HEX1|DOUT\(0) & (!\REGISTRADOR_HEX1|DOUT\(3) $ 
-- (((\REGISTRADOR_HEX1|DOUT\(2) & !\REGISTRADOR_HEX1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[5]~5_combout\);

\DECODIFICADOR_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX1|rascSaida7seg[6]~6_combout\ = (!\REGISTRADOR_HEX1|DOUT\(0) & (!\REGISTRADOR_HEX1|DOUT\(1) & (!\REGISTRADOR_HEX1|DOUT\(3) $ (\REGISTRADOR_HEX1|DOUT\(2))))) # (\REGISTRADOR_HEX1|DOUT\(0) & (!\REGISTRADOR_HEX1|DOUT\(3) & 
-- (!\REGISTRADOR_HEX1|DOUT\(2) $ (\REGISTRADOR_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX1|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX1|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX1|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX1|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX1|rascSaida7seg[6]~6_combout\);

\AND_HEX2|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2|dataOUT~0_combout\ = ( \AND_HEX0|dataOUT~0_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	combout => \AND_HEX2|dataOUT~0_combout\);

\REGISTRADOR_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(0),
	ena => \AND_HEX2|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX2|DOUT\(0));

\REGISTRADOR_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(3),
	ena => \AND_HEX2|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX2|DOUT\(3));

\REGISTRADOR_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(2),
	ena => \AND_HEX2|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX2|DOUT\(2));

\REGISTRADOR_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(1),
	ena => \AND_HEX2|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX2|DOUT\(1));

\DECODIFICADOR_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[0]~0_combout\ = (!\REGISTRADOR_HEX2|DOUT\(3) & (!\REGISTRADOR_HEX2|DOUT\(1) & (!\REGISTRADOR_HEX2|DOUT\(0) $ (!\REGISTRADOR_HEX2|DOUT\(2))))) # (\REGISTRADOR_HEX2|DOUT\(3) & (\REGISTRADOR_HEX2|DOUT\(0) & 
-- (!\REGISTRADOR_HEX2|DOUT\(2) $ (!\REGISTRADOR_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[0]~0_combout\);

\DECODIFICADOR_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[1]~1_combout\ = (!\REGISTRADOR_HEX2|DOUT\(3) & (\REGISTRADOR_HEX2|DOUT\(2) & (!\REGISTRADOR_HEX2|DOUT\(0) $ (!\REGISTRADOR_HEX2|DOUT\(1))))) # (\REGISTRADOR_HEX2|DOUT\(3) & ((!\REGISTRADOR_HEX2|DOUT\(0) & 
-- (\REGISTRADOR_HEX2|DOUT\(2))) # (\REGISTRADOR_HEX2|DOUT\(0) & ((\REGISTRADOR_HEX2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[1]~1_combout\);

\DECODIFICADOR_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[2]~2_combout\ = (!\REGISTRADOR_HEX2|DOUT\(3) & (!\REGISTRADOR_HEX2|DOUT\(0) & (!\REGISTRADOR_HEX2|DOUT\(2) & \REGISTRADOR_HEX2|DOUT\(1)))) # (\REGISTRADOR_HEX2|DOUT\(3) & (\REGISTRADOR_HEX2|DOUT\(2) & 
-- ((!\REGISTRADOR_HEX2|DOUT\(0)) # (\REGISTRADOR_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[2]~2_combout\);

\DECODIFICADOR_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[3]~3_combout\ = (!\REGISTRADOR_HEX2|DOUT\(1) & (!\REGISTRADOR_HEX2|DOUT\(3) & (!\REGISTRADOR_HEX2|DOUT\(0) $ (!\REGISTRADOR_HEX2|DOUT\(2))))) # (\REGISTRADOR_HEX2|DOUT\(1) & ((!\REGISTRADOR_HEX2|DOUT\(0) & 
-- (!\REGISTRADOR_HEX2|DOUT\(2) & \REGISTRADOR_HEX2|DOUT\(3))) # (\REGISTRADOR_HEX2|DOUT\(0) & (\REGISTRADOR_HEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[3]~3_combout\);

\DECODIFICADOR_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[4]~4_combout\ = (!\REGISTRADOR_HEX2|DOUT\(1) & ((!\REGISTRADOR_HEX2|DOUT\(2) & ((\REGISTRADOR_HEX2|DOUT\(0)))) # (\REGISTRADOR_HEX2|DOUT\(2) & (!\REGISTRADOR_HEX2|DOUT\(3))))) # (\REGISTRADOR_HEX2|DOUT\(1) & 
-- (!\REGISTRADOR_HEX2|DOUT\(3) & ((\REGISTRADOR_HEX2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[4]~4_combout\);

\DECODIFICADOR_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[5]~5_combout\ = (!\REGISTRADOR_HEX2|DOUT\(0) & (!\REGISTRADOR_HEX2|DOUT\(2) & (\REGISTRADOR_HEX2|DOUT\(1) & !\REGISTRADOR_HEX2|DOUT\(3)))) # (\REGISTRADOR_HEX2|DOUT\(0) & (!\REGISTRADOR_HEX2|DOUT\(3) $ 
-- (((\REGISTRADOR_HEX2|DOUT\(2) & !\REGISTRADOR_HEX2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[5]~5_combout\);

\DECODIFICADOR_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX2|rascSaida7seg[6]~6_combout\ = (!\REGISTRADOR_HEX2|DOUT\(0) & (!\REGISTRADOR_HEX2|DOUT\(1) & (!\REGISTRADOR_HEX2|DOUT\(3) $ (\REGISTRADOR_HEX2|DOUT\(2))))) # (\REGISTRADOR_HEX2|DOUT\(0) & (!\REGISTRADOR_HEX2|DOUT\(3) & 
-- (!\REGISTRADOR_HEX2|DOUT\(2) $ (\REGISTRADOR_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX2|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX2|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX2|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX2|rascSaida7seg[6]~6_combout\);

\AND_HEX3|dataOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3|dataOUT~0_combout\ = ( \AND_HEX0|dataOUT~0_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \AND_HEX0|ALT_INV_dataOUT~0_combout\,
	combout => \AND_HEX3|dataOUT~0_combout\);

\REGISTRADOR_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(0),
	ena => \AND_HEX3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX3|DOUT\(0));

\REGISTRADOR_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(3),
	ena => \AND_HEX3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX3|DOUT\(3));

\REGISTRADOR_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(2),
	ena => \AND_HEX3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX3|DOUT\(2));

\REGISTRADOR_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU1|REG1|DOUT\(1),
	ena => \AND_HEX3|dataOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTRADOR_HEX3|DOUT\(1));

\DECODIFICADOR_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[0]~0_combout\ = (!\REGISTRADOR_HEX3|DOUT\(3) & (!\REGISTRADOR_HEX3|DOUT\(1) & (!\REGISTRADOR_HEX3|DOUT\(0) $ (!\REGISTRADOR_HEX3|DOUT\(2))))) # (\REGISTRADOR_HEX3|DOUT\(3) & (\REGISTRADOR_HEX3|DOUT\(0) & 
-- (!\REGISTRADOR_HEX3|DOUT\(2) $ (!\REGISTRADOR_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[0]~0_combout\);

\DECODIFICADOR_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[1]~1_combout\ = (!\REGISTRADOR_HEX3|DOUT\(3) & (\REGISTRADOR_HEX3|DOUT\(2) & (!\REGISTRADOR_HEX3|DOUT\(0) $ (!\REGISTRADOR_HEX3|DOUT\(1))))) # (\REGISTRADOR_HEX3|DOUT\(3) & ((!\REGISTRADOR_HEX3|DOUT\(0) & 
-- (\REGISTRADOR_HEX3|DOUT\(2))) # (\REGISTRADOR_HEX3|DOUT\(0) & ((\REGISTRADOR_HEX3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[1]~1_combout\);

\DECODIFICADOR_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[2]~2_combout\ = (!\REGISTRADOR_HEX3|DOUT\(3) & (!\REGISTRADOR_HEX3|DOUT\(0) & (!\REGISTRADOR_HEX3|DOUT\(2) & \REGISTRADOR_HEX3|DOUT\(1)))) # (\REGISTRADOR_HEX3|DOUT\(3) & (\REGISTRADOR_HEX3|DOUT\(2) & 
-- ((!\REGISTRADOR_HEX3|DOUT\(0)) # (\REGISTRADOR_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[2]~2_combout\);

\DECODIFICADOR_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[3]~3_combout\ = (!\REGISTRADOR_HEX3|DOUT\(1) & (!\REGISTRADOR_HEX3|DOUT\(3) & (!\REGISTRADOR_HEX3|DOUT\(0) $ (!\REGISTRADOR_HEX3|DOUT\(2))))) # (\REGISTRADOR_HEX3|DOUT\(1) & ((!\REGISTRADOR_HEX3|DOUT\(0) & 
-- (!\REGISTRADOR_HEX3|DOUT\(2) & \REGISTRADOR_HEX3|DOUT\(3))) # (\REGISTRADOR_HEX3|DOUT\(0) & (\REGISTRADOR_HEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[3]~3_combout\);

\DECODIFICADOR_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[4]~4_combout\ = (!\REGISTRADOR_HEX3|DOUT\(1) & ((!\REGISTRADOR_HEX3|DOUT\(2) & ((\REGISTRADOR_HEX3|DOUT\(0)))) # (\REGISTRADOR_HEX3|DOUT\(2) & (!\REGISTRADOR_HEX3|DOUT\(3))))) # (\REGISTRADOR_HEX3|DOUT\(1) & 
-- (!\REGISTRADOR_HEX3|DOUT\(3) & ((\REGISTRADOR_HEX3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[4]~4_combout\);

\DECODIFICADOR_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[5]~5_combout\ = (!\REGISTRADOR_HEX3|DOUT\(0) & (!\REGISTRADOR_HEX3|DOUT\(2) & (\REGISTRADOR_HEX3|DOUT\(1) & !\REGISTRADOR_HEX3|DOUT\(3)))) # (\REGISTRADOR_HEX3|DOUT\(0) & (!\REGISTRADOR_HEX3|DOUT\(3) $ 
-- (((\REGISTRADOR_HEX3|DOUT\(2) & !\REGISTRADOR_HEX3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[5]~5_combout\);

\DECODIFICADOR_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODIFICADOR_HEX3|rascSaida7seg[6]~6_combout\ = (!\REGISTRADOR_HEX3|DOUT\(0) & (!\REGISTRADOR_HEX3|DOUT\(1) & (!\REGISTRADOR_HEX3|DOUT\(3) $ (\REGISTRADOR_HEX3|DOUT\(2))))) # (\REGISTRADOR_HEX3|DOUT\(0) & (!\REGISTRADOR_HEX3|DOUT\(3) & 
-- (!\REGISTRADOR_HEX3|DOUT\(2) $ (\REGISTRADOR_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTRADOR_HEX3|ALT_INV_DOUT\(0),
	datab => \REGISTRADOR_HEX3|ALT_INV_DOUT\(3),
	datac => \REGISTRADOR_HEX3|ALT_INV_DOUT\(2),
	datad => \REGISTRADOR_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODIFICADOR_HEX3|rascSaida7seg[6]~6_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_PC_out(0) <= \PC_out[0]~output_o\;

ww_PC_out(1) <= \PC_out[1]~output_o\;

ww_PC_out(2) <= \PC_out[2]~output_o\;

ww_PC_out(3) <= \PC_out[3]~output_o\;

ww_PC_out(4) <= \PC_out[4]~output_o\;

ww_PC_out(5) <= \PC_out[5]~output_o\;

ww_PC_out(6) <= \PC_out[6]~output_o\;

ww_PC_out(7) <= \PC_out[7]~output_o\;

ww_PC_out(8) <= \PC_out[8]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;
END structure;


