library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGADisplay is
	Port ( PixelClk_25MHz : in  STD_LOGIC;
		   VGA_R : out  STD_LOGIC;
		   VGA_G : out  STD_LOGIC;
		   VGA_B : out  STD_LOGIC;
		   VGA_HS : out  STD_LOGIC;
		   VGA_VS : out  STD_LOGIC);
end VGADisplay;

architecture Behavioral of VGADisplay is
	Signal vs_counter : INTEGER;
	Signal hs_counter : INTEGER;
begin

	Horizontal_sync : process ( PixelClk_25MHz, hs_counter ) is
	begin
		if (rising_edge(PixelClk_25MHz)) then
			if (hs_counter < -48) then
            VGA_HS <= '0';
         else
            VGA_HS <= '1';
         end if;
		end if;
	end process;
   
	Vertical_sync : process ( PixelClk_25MHz, vs_counter ) is
	begin
		if (rising_edge(PixelClk_25MHz)) then
			if (vs_counter < -29) then
            VGA_VS <= '0';
         else
            VGA_VS <= '1';
         end if;
		end if;
	end process;

	Pixel_counters : process ( PixelClk_25MHz, hs_counter ) is
	begin
		if (falling_edge(PixelClk_25MHz)) then
			if (hs_counter = 654) then
				hs_counter <= -144;
				if (vs_counter = 490) then
					vs_counter <= -31;
				else
					vs_counter <= vs_counter + 1;
				end if;
			else
				hs_counter <= hs_counter + 1;
			end if;
		end if;
	end process;
	
		Pixel_search : process ( vs_counter, hs_counter ) is
	begin
		if (hs_counter > 333 and hs_counter < 366 and vs_counter > 222 and vs_counter < 255) then
			VGA_R <= '1';
			VGA_G <= '0';
			VGA_B <= '1';
		else
			VGA_R <= '0';
			VGA_G <= '0';
			VGA_B <= '0';
		end if;
	end process;

end Behavioral;
