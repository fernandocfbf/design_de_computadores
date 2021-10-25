LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY aula13 IS
	GENERIC (
		larguraDados : NATURAL := 8;
		ADDR_WIDTH : NATURAL := 8
	);

	PORT (
		CLOCK_50 : IN STD_LOGIC;
		escrita_reg : in std_logic;
		operacao : std_logic_vector(2 downto 0)
	);
END ENTITY;
ARCHITECTURE arch_name OF aula13 IS
	signal PC_OUT : std_logic_vector (31 downto 0);
	signal SOMADOR_PC : std_logic_vector (31 downto 0);
	signal saida_rom : std_logic_vector (31 downto 0);
	signal Saida_ULA_flag : std_logic;
	signal escrita : std_logic;
	signal REG1_ULA_B : std_logic_vector (31 downto 0);
	signal REG2_ULA_C : std_logic_vector (31 downto 0);
	signal Saida_ULA : std_logic_vector (31 downto 0);
	
	signal CLK : std_logic;
	
BEGIN
	CLK <= CLOCK_50;
	escrita <= escrita_reg;
	

PC : entity work.registradorGenerico   generic map (larguraDados => 32)
		port map (DIN => SOMADOR_PC, DOUT => PC_OUT, ENABLE => '1', CLK => CLK, RST => '0');


ROMMIPS : entity work.ROMMIPS   generic map (dataWidth => 32, addrWidth => 32)
			port map (Endereco => PC_OUT, Dado => saida_rom, clk => CLK);		 
		
BANCO_REG : entity work.bancoReg generic map (larguraDados => 32, larguraEndBancoRegs => 5)
		 port map ( 
			  clk => CLK,
			  enderecoA => saida_rom(25 downto 21),
			  enderecoB => saida_rom(20 downto 16),
			  enderecoC => saida_rom(15 downto 11),
			  dadoEscritaC => Saida_ULA,
			  escreveC => escrita, -- concluir
			  saidaA  => REG1_ULA_B,
			  saidaB => REG2_ULA_C
		 );

	 
ULA1 : entity work.ULASomaSub  generic map(larguraDados => 32)
			port map (
				entradaA => REG1_ULA_B, 
				entradaB => REG2_ULA_C, 
				saida => Saida_ULA, 
				seletor => saida_rom(5 downto 0)
			);

			
SOMACONSTANTE :  entity work.somaConstante  generic map (larguraDados => 32, constante => 1)
						port map(entrada => PC_OUT, saida => SOMADOR_PC);

 
END ARCHITECTURE;