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
	Port ( Clk_50MHz : in  STD_LOGIC;
			POSITION_IN : in signed(13 downto 0);
			VGA_R : out  STD_LOGIC;
			VGA_G : out  STD_LOGIC;
			VGA_B : out  STD_LOGIC;
			VGA_HS : out  STD_LOGIC;
			VGA_VS : out  STD_LOGIC;
			AMP_WE : out STD_LOGIC;
			AMP_DI : out STD_LOGIC_VECTOR(7 downto 0);
			ADC_Start : out STD_LOGIC);
end VGADisplay;

architecture Behavioral of VGADisplay is
	Signal vs_counter : INTEGER;
	Signal hs_counter : INTEGER;
	Signal box1Position : INTEGER := 400;
begin

	Horizontal_sync : process ( Clk_50MHz, hs_counter ) is
	begin
		if (rising_edge(Clk_50MHz)) then
			if (hs_counter < -64) then
				VGA_HS <= '0';
			else
				VGA_HS <= '1';
			end if;
		end if;
	end process;

	Vertical_sync : process ( Clk_50MHz, vs_counter ) is
	begin
		if (rising_edge(Clk_50MHz)) then
			if (vs_counter < -23) then
				VGA_VS <= '0';
			else
				VGA_VS <= '1';
			end if;
		end if;
	end process;

	Pixel_counters : process ( Clk_50MHz, hs_counter, vs_counter ) is
	begin
		if (falling_edge(Clk_50MHz)) then
			if (hs_counter = 855) then
				hs_counter <= -184;
				if (vs_counter = 636) then
					vs_counter <= -29;
				else
					vs_counter <= vs_counter + 1;
				end if;
			else
				hs_counter <= hs_counter + 1;
			end if;
		end if;
	end process;
	
	ADC_Support : process ( Clk_50MHz, hs_counter, vs_counter ) is
	begin
		if (rising_edge(Clk_50MHz)) then
			if (hs_counter = 0 and vs_counter = 0) then
				AMP_DI <= X"11";
				AMP_WE <= '1';
			else
				if (hs_counter = 800 and vs_counter = 600) then
					ADC_Start <= '1';
				else
					ADC_Start <= '0';
					AMP_WE <= '0';
				end if;
			end if;
		end if;
	end process;

	PrintPlayer : process ( vs_counter, hs_counter ) is
	begin
		if (hs_counter > box1Position - 20 and hs_counter < box1Position + 20 and vs_counter > 490 and vs_counter < 510) then
			VGA_R <= '1';
			VGA_G <= '0';
			VGA_B <= '1';
		else
			VGA_R <= '0';
			VGA_G <= '0';
			VGA_B <= '0';
		end if;
	end process;
	
	CalculatePlayerPos : process ( POSITION_IN ) is
		variable temp : INTEGER;
	begin
		temp := to_integer( POSITION_IN );
		temp := temp / 64;
		temp := temp * 3;
		box1Position <= 400 + temp;
	end process;

end Behavioral;
