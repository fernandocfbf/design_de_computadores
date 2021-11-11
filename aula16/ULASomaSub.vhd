library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 4 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal lw : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal sw : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal beq : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
    begin
	 
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
--		lw <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));  --ARRUMAR
--		sw <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));  --ARRUMAR
--		beq <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB)); --ARRUMAR
		
--      saida <= soma when (seletor = "000"), 
--					subtracao when (seletor = "001"),
--					lw when (seletor  = "010"), 
--					sw when (seletor = "011") else
--					beq;
		saida <= soma when (seletor = "000") else 
					subtracao;
					       
end architecture;