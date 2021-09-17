library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Logica_de_desvio is
  generic   (
    DATA_WIDTH  : natural :=  8;
    ADDR_WIDTH  : natural :=  8
  );

  port   (
    -- Input ports
    flag  :  in  std_logic;
	 jeq  :  in  std_logic;
	 SelMuxJump  :  in std_logic;
	 ret  :  in  std_logic;
	 jsr  :  in  std_logic;
    
    -- Output ports
    dataOUT :  out std_logic_vector(1 downto 0)
  );
end entity;


architecture arch_name of Logica_de_desvio is

begin
	dataOUT<= 
	"01" when (SelMuxJump or (jeq and flag) or jsr) else
             "10" when (ret) else
				 "00";

end architecture;