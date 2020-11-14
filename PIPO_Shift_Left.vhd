-- Team Number 7
-- Vishal Mansuria, Sean McCray 
-- vpm5113@psu.edu, smm7442@psu.edu
-- PIPO_Shift_Left.vhd
-- Version 1.0 , 10/15/2020

library IEEE;
use IEEE.std_logic_1164.all;

--	Rising-edge Clock
--	Active-high Synchronous Clear
--	Active-high Synchronous Enable


entity Register_4bits_PIPO_WithLoadOrShiftLeft is
	port(
		clr, enable : in  std_logic;
                data_in : in  std_logic_vector(7 downto 0);
                Done : in std_logic;
                dout : out std_logic_vector(7 downto 0)
	);
end entity Register_4bits_PIPO_WithLoadOrShiftLeft;

-- It is predefault to Shift Left

architecture Behavioral of Register_4bits_PIPO_WithLoadOrShiftLeft is
signal Q : std_logic_vector(7 downto 0);
begin
	process(done)
	begin
			if rising_edge(Done) then
			 if clr = '1' then
		  		Q <= "00000000";
   	 		elsif enable = '1' then				
					Q <= data_in;
				end if;
		 	end if;
	end process;
	
	 dout <= Q;
end Behavioral;
