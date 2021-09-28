library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador3x8 is

port   (
	-- Input ports
	entrada  :  in  std_logic_vector(2 downto 0);

	-- Output ports
	s0 :  out  std_logic;
	s1 :  out  std_logic;
	s2 :  out  std_logic;
	s3 :  out  std_logic;
	s4 :  out  std_logic;
	s5 :  out  std_logic;
	s6 :  out  std_logic;
	s7 :  out  std_logic
 
);

end entity;

architecture arch_name of decodificador3x8 is
begin

   s0 <= '1' when entrada="000" else '0';
	s1 <= '1' when entrada="001" else '0';
	s2 <= '1' when entrada="010" else '0';
	s3 <= '1' when entrada="011" else '0';
	s4 <= '1' when entrada="100" else '0';
	s5 <= '1' when entrada="101" else '0';
	s6 <= '1' when entrada="110" else '0';
	s7 <= '1' when entrada="111" else '0';
	
end architecture;