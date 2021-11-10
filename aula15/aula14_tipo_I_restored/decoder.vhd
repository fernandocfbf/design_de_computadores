library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
			saida: out std_logic_vector(5 downto 0)
  );
end entity;

architecture comportamento of decoder is
		alias habEscritaMem: std_logic is saida(0);
		alias habLeituraMem: std_logic is saida(1);
		alias operacao: std_logic_vector(2 downto 0) is saida(5 downto 2);
		alias habEscritaReg: std_logic is saida(5);
		
		constant ADD  : std_logic_vector(2 downto 0) := "000" ;
		constant SUB  : std_logic_vector(2 downto 0) := "001" ;
		constant LW   : std_logic_vector(2 downto 0) := "010" ;
		constant SW   : std_logic_vector(2 downto 0) := "011" ;
		constant BEQ  : std_logic_vector(2 downto 0) := "100" ;
  begin
		
--		habEscritaMem  <= '0'  when (opcode = "000000" and funct = "100000"),--add
--								'0'  when (opcode = "000000" and funct = "100010"), --sub
--								'0'  when (opcode = "100011"), --lw
--								'0'  when (opcode = "100011"), --sw
--								'0'  when (opcode ="000100"); --beq
--							
--								
--		habLeituraMem  <= '0'  when (opcode = "000000" and funct = "100000"),--add
--								'0'  when (opcode = "000000" and funct = "100010"), --sub
--								'0'  when (opcode = "100011"), --lw
--								'1'  when (opcode = "100011"), --sw
--								'0'  when (opcode ="000100"); --beq
--								
--								
--		operacao  <=      ADD  when (opcode = "000000" and funct = "100000"),--add
--								SUB  when (opcode = "000000" and funct = "100010"), --sub
--								LW  when (opcode = "100011"), --lw
--								SW  when (opcode = "100011"), --sw
--								BEQ  when (opcode ="000100"); --beq
--								
--								
--		habEscritaReg  <= '1'  when (opcode = "000000" and funct = "100000"),--add
--								'1'  when (opcode = "000000" and funct = "100010"), --sub
--								'0'  when (opcode = "100011"), --lw
--								'0'  when (opcode = "100011"), --sw
--								'0'  when (opcode ="000100"); --beq
							
								
		
						
end architecture;