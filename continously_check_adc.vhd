----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:02:43 04/26/2018 
-- Design Name: 
-- Module Name:    continously_check_adc - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity continously_check_adc is
	Port ( Clk : in  STD_LOGIC;
		   Busy : in  STD_LOGIC;
		   ADCCheck : out STD_LOGIC;
		   ADCStart: out STD_LOGIC;
           ADCWord : out STD_LOGIC_VECTOR(7 downto 0));
end continously_check_adc;

architecture Behavioral of continously_check_adc is
begin
	ADCWord <= X"11";
	ADCStart <= '1', '0' after 1000 ms;

	
	process_1 : process(Clk, Busy)
	begin
		if rising_edge(Clk) then
			if Busy = '0' then
				ADCCheck <= '1';
			else 
				ADCCheck <= '0';
			end if;
		end if;
	end process process_1;
end Behavioral;

