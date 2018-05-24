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
	Signal playerPosition : INTEGER := 400;

	type Point is array (1 downto 0) of INTEGER;

	Signal bomb1Position : Point := (250, 0);

	Signal rand800 : unsigned(9 downto 0);
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

	PrintPlayer : process ( vs_counter, hs_counter, playerPosition, bomb1Position ) is
	begin
	if ( rising_edge(Clk_50MHz) ) then
		if ( hs_counter > 0 and hs_counter < 799 and vs_counter > 0 and vs_counter < 599 ) then
			if (hs_counter > playerPosition - 20 and hs_counter < playerPosition + 20 and vs_counter > 490 and vs_counter < 510) then
				VGA_R <= '1';
				VGA_G <= '0';
				VGA_B <= '1';
			else
				if ( hs_counter > bomb1Position(1) - 5 and hs_counter < bomb1Position(1) + 5 and vs_counter > bomb1Position(0) - 10 and vs_counter < bomb1Position(0) + 10 ) then
					VGA_R <= '0';
					VGA_G <= '1';
					VGA_B <= '0';
				else
					VGA_R <= '0';
					VGA_G <= '0';
					VGA_B <= '0';
				end if;
			end if;
		else
			VGA_R <= '0';
			VGA_G <= '0';
			VGA_B <= '0';
		end if;
	end if;
	end process;

	CalculatePlayerPos : process ( POSITION_IN ) is
		variable temp : INTEGER;
	begin
		if (rising_edge(Clk_50MHz)) then
			temp := to_integer( POSITION_IN );
			temp := temp / 64;
			temp := temp * 3;
			playerPosition <= 399 + temp;
		end if;
	end process;

	MoveBombs : process ( hs_counter, vs_counter, bomb1Position ) is
	begin
		if (rising_edge(Clk_50MHz) and hs_counter = 855 and vs_counter = 636) then
			if ( bomb1Position(0) >= 700 ) then --cause why not
				bomb1Position(1) <= to_integer( rand800 );
				bomb1Position(0) <= 0;
			else
				bomb1Position(0) <= bomb1Position(0) + 5;
			end if;
		end if;
	end process;

	calculateRand : process ( Clk_50MHz, POSITION_IN ) is
	begin
		if (rising_edge(Clk_50MHz)) then
			if (rand800 < 800) then
				rand800 <= rand800 + 1 + unsigned(POSITION_IN(1 downto 0)); -- przesunac generacje na troszke dalsze miejsce bo nastepuja skoki
			else
				rand800 <= (others => '0');
			end if;
		end if;
	end process;

end Behavioral;
