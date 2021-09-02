library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador is

  port   (
    -- Input ports
    opcode  :  in  std_logic_vector(3 downto 0);
    
    -- Output ports
    PontosDeControle :  out  std_logic_vector(3 downto 0)
    
  );
end entity;


architecture arch_name of decodificador is

  
  constant CLRA   : std_logic_vector(3 downto 0) := "0000" ;
  constant LDA   : std_logic_vector(3 downto 0) := "0001" ;
  constant SOMA   : std_logic_vector(3 downto 0) := "0010" ;
  constant SUB   : std_logic_vector(3 downto 0) := "0011" ;
  

begin

   PontosDeControle <= 
	"0010" when opcode = CLRA else
	"0100" when opcode = LDA else 
	"1101" when opcode = SOMA else
	"1100" when opcode = SUB else
	"0000";


end architecture;