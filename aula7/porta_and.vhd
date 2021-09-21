library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity porta_and is
    port   (
    -- Input ports
    entrada1  :  in  std_logic;
	 entrada2  :  in  std_logic;
	 entrada3  :  in  std_logic;
  


    -- Output ports
    dataOUT :  out  std_logic

  );
end entity;


architecture arch_name of porta_and is

begin
 dataOUT <= 
	'1' when entrada1 = '1' and entrada2 = '1' and entrada3='1' else
	'0';

 

end architecture;