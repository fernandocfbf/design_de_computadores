LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY decodificador3x8 IS

	PORT (
		-- Input ports
		entrada : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

		-- Output ports
		s0 : OUT STD_LOGIC;
		s1 : OUT STD_LOGIC;
		s2 : OUT STD_LOGIC;
		s3 : OUT STD_LOGIC;
		s4 : OUT STD_LOGIC;
		s5 : OUT STD_LOGIC;
		s6 : OUT STD_LOGIC;
		s7 : OUT STD_LOGIC

	);

END ENTITY;

ARCHITECTURE arch_name OF decodificador3x8 IS
BEGIN

	s0 <= '1' WHEN entrada = "000" ELSE
		'0';
	s1 <= '1' WHEN entrada = "001" ELSE
		'0';
	s2 <= '1' WHEN entrada = "010" ELSE
		'0';
	s3 <= '1' WHEN entrada = "011" ELSE
		'0';
	s4 <= '1' WHEN entrada = "100" ELSE
		'0';
	s5 <= '1' WHEN entrada = "101" ELSE
		'0';
	s6 <= '1' WHEN entrada = "110" ELSE
		'0';
	s7 <= '1' WHEN entrada = "111" ELSE
		'0';

END ARCHITECTURE;