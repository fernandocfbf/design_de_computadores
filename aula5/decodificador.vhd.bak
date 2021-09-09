library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador is

  port   (
    -- Input ports
    opcode  :  in  std_logic_vector(3 downto 0);
    
    -- Output ports
    PontosDeControle :  out  std_logic_vector(5 downto 0)
    
  );
end entity;

architecture arch_name of decodificador is
  
  constant NOP   : std_logic_vector(3 downto 0) := "0000" ;
  constant LDA   : std_logic_vector(3 downto 0) := "0001" ;
  constant SOMA   : std_logic_vector(3 downto 0) := "0010" ;
  constant SUB   : std_logic_vector(3 downto 0) := "0011" ;
  constant LDI  : std_logic_vector(3 downto 0) := "0100" ;
  constant STA  : std_logic_vector(3 downto 0) := "0101" ;

begin

   PontosDeControle <= 
	"011001" when opcode = STA else
	"011010" when opcode = LDA else 
	"010100" when opcode = SOMA else
	"010000" when opcode = SUB else
	"111000" when opcode = LDI else
	"001000";

end architecture;