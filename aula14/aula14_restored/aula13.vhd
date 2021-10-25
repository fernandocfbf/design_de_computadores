LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY aula13 IS
	GENERIC (
		larguraDados : NATURAL := 8;
		ADDR_WIDTH : NATURAL := 8
	);

	PORT (
		CLOCK_50 : IN STD_LOGIC
	);
END ENTITY;
ARCHITECTURE arch_name OF aula13 IS
	signal PC_OUT : std_logic_vector (31 downto 0);
	signal SOMADOR_PC : std_logic_vector (31 downto 0);
	signal instrucao : std_logic_vector (31 downto 0);
	signal Saida_ULA_flag : std_logic;
	signal escrita : std_logic;
	signal REG1_ULA_B : std_logic_vector (31 downto 0);
	signal REG2_ULA_C : std_logic_vector (31 downto 0);
	signal Saida_ULA : std_logic_vector (31 downto 0);
	signal Saida_estende : std_logic_vector (31 downto 0);
	signal Saida_unidade_de_controle : std_logic_vector (3 downto 0);
	signal Dado_lido:  std_logic_vector (31 downto 0);
	
	
	signal CLK : std_logic;
	
BEGIN
	CLK <= CLOCK_50;	

PC : entity work.registradorGenerico   generic map (larguraDados => 32)
		port map (DIN => SOMADOR_PC, DOUT => PC_OUT, ENABLE => '1', CLK => CLK, RST => '0');


ROMMIPS : entity work.ROMMIPS   generic map (dataWidth => 32, addrWidth => 32)
			port map (Endereco => PC_OUT, Dado => instrucao, clk => CLK);		
		
RAMMIPS: entity work.RAMMIPS generic map (dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
			port map (Endereco => Saida_ULA, Dado_in => REG2_ULA_C, Dado_out => Dado_lido, we=> Saida_unidade_de_controle(3),re=>Saida_unidade_de_controle(2));
		
BANCO_REG : entity work.bancoReg generic map (larguraDados => 32, larguraEndBancoRegs => 5)
		 port map ( 
			  clk => CLK,
			  enderecoA => instrucao(25 downto 21),
			  enderecoB => instrucao(20 downto 16),
			  enderecoC => instrucao(20 downto 16),
			  dadoEscritaC => Dado_lido,
			  escreveC => Saida_unidade_de_controle(0), -- concluir
			  saidaA  => REG1_ULA_B,
			  saidaB => REG2_ULA_C
		 );

	 
ULA1 : entity work.ULASomaSub  generic map(larguraDados => 32)
			port map (
				entradaA => REG1_ULA_B, 
				entradaB => Saida_estende, 
				saida => Saida_ULA, 
				seletor => Saida_unidade_de_controle(1)
			);

			
SOMACONSTANTE :  entity work.somaConstante  generic map (larguraDados => 32, constante => 1)
						port map(entrada => PC_OUT, saida => SOMADOR_PC);
						
ESTENDE_SINAL: entity work.estendeSinalGenerico generic map(larguraDadoEntrada = 16, larguraDadoSaida = 32)
						port map(
							estendeSinal_IN => instrucao(15 downto 0),
							estendeSinal_OUT => Saida_estende
						);
						
UNIDADE_DE_CONTROLE :  entity work.decoder
        port map( entrada => instrucao(31 downto 26),
                 saida => Saida_unidade_de_controle
					  );
					  
--       habEscritaReg  = Saida_unidade_de_controle(0)
--			operacao = Saida_unidade_de_controle(1)
--			habEscritaMem  = Saida_unidade_de_controle(2)
--			habLeituraMem = Saida_unidade_de_controle(3)

 
END ARCHITECTURE;