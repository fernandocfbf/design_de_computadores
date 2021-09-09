library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador is

  port   (
    -- Input ports
    opcode  :  in  std_logic_vector(3 downto 0);
    
    -- Output ports
    PontosDeControle :  out  std_logic_vector(6 downto 0)
    
  );
end entity;

architecture arch_name of decodificador is
  
  constant NOP   : std_logic_vector(3 downto 0) := "0000" ;
  constant LDA   : std_logic_vector(3 downto 0) := "0001" ;
  constant SOMA   : std_logic_vector(3 downto 0) := "0010" ;
  constant SUB   : std_logic_vector(3 downto 0) := "0011" ;
  constant LDI  : std_logic_vector(3 downto 0) := "0100" ;
  constant STA  : std_logic_vector(3 downto 0) := "0101" ;
  constant JMP  : std_logic_vector(3 downto 0) := "0110" ;
begin

   PontosDeControle <= 
	"0000001" when opcode = STA else
	"0011010" when opcode = LDA else 
	"0010110" when opcode = SOMA else
	"0010010" when opcode = SUB else
	"0111000" when opcode = LDI else
	"1000000" when opcode = JMP else
	"0000000";

end architecture;