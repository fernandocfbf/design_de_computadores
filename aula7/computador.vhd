library ieee;
use ieee.std_logic_1164.all;

entity computador is
	generic (
	 larguraDados  : natural :=  8;
	 ADDR_WIDTH  : natural :=  8
	);

  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    --SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(7 downto 0)
  );
end entity;


architecture arch_name of computador is
	signal PC_ROM : std_logic_vector (8 downto 0);
	signal habLeituraMEM : std_logic;
	signal habEscritaMEM : std_logic;
	signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
	signal instrucao : std_logic_vector (12 downto 0);
	signal RAM_MUX : std_logic_vector (7 downto 0);
	signal CLK : std_logic;
	signal CPU_DECODER_BLOCO : std_logic_vector (2 downto 0);
	signal habilita : std_logic;
	
begin

CPU1 : entity work.cpu
          port map (		 
				ROM_address => PC_ROM,
				wr => habEscritaMEM,
				rd => habEscritaMEM,
				data_out => REG1_ULA_A,
				data_address => instrucao(8 downto 0),
				instruction_in => instrucao(12 downto 0),
				data_in => RAM_MUX,
				CLK => CLK
			);

ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => PC_ROM, Dado => instrucao(12 downto 0));
			 
RAM1 : entity work.memoriaRAM   generic map (dataWidth => 8, addrWidth => 6)
          port map (addr => instrucao(5 downto 0), we => habEscritaMEM, re => habLeituraMEM, habilita => habilita, dado_in => REG1_ULA_A, dado_out => RAM_MUX, clk => CLK);

-- CRIAR DECODIFICADOR 3x8
DECODIFICADO_BLOCO: entity work.decodificador3x8
        port map(entrada => instrucao(8 downto 6), s0 => habilita);

end architecture;