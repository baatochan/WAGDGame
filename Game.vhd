library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Game is
	Port ( Clk_50MHz   : in   STD_LOGIC;
	       POSITION_IN : in   signed (13 downto 0);
		   RESUME_BTN  : in   STD_LOGIC;
	       VGA_R       : out  STD_LOGIC;
	       VGA_G       : out  STD_LOGIC;
	       VGA_B       : out  STD_LOGIC;
	       VGA_HS      : out  STD_LOGIC;
	       VGA_VS      : out  STD_LOGIC;
	       AMP_WE      : out  STD_LOGIC;
	       AMP_DI      : out  STD_LOGIC_VECTOR (7 downto 0);
	       ADC_Start   : out  STD_LOGIC );
end Game;

architecture Behavioral of Game is
	Signal vs_counter : INTEGER;
	Signal hs_counter : INTEGER;


	Signal playerPositionX : INTEGER := 400;
	-- playerPositionY := 500;

	type Point is array (1 downto 0) of INTEGER;
	type BombArray is array (4 downto 0) of Point;

	Signal bombsPosition : BombArray := ( (50, -2850), (200, -2650), (400, -2450), (600, -2250), (750, -2050) ); -- -2000 to get few seconds before first bomb, 200 difrence between them to not get them falling all in the same time
	-- bombsPosition(x)(1) -> x position; bombsPosition(x)(0) -> y position;


	Signal rand800 : unsigned (9 downto 0);

	Signal colision : STD_LOGIC := '0';
begin

	HorizontalSync : process ( Clk_50MHz, hs_counter ) is
	begin
		if ( rising_edge(Clk_50MHz) ) then
			if ( hs_counter < -64 ) then
				VGA_HS <= '0';
			else
				VGA_HS <= '1';
			end if;
		end if;
	end process;

	VerticalSync : process ( Clk_50MHz, vs_counter ) is
	begin
		if ( rising_edge(Clk_50MHz) ) then
			if ( vs_counter < -23 ) then
				VGA_VS <= '0';
			else
				VGA_VS <= '1';
			end if;
		end if;
	end process;

	PixelCounters : process ( Clk_50MHz, hs_counter, vs_counter ) is
	begin
		if ( falling_edge(Clk_50MHz) ) then
			if ( hs_counter = 855 ) then
				hs_counter <= -184;
				if ( vs_counter = 636 ) then
					vs_counter <= -29;
				else
					vs_counter <= vs_counter + 1;
				end if;
			else
				hs_counter <= hs_counter + 1;
			end if;
		end if;
	end process;

	ADCSync : process ( Clk_50MHz, hs_counter, vs_counter ) is
	begin
		if ( rising_edge(Clk_50MHz) ) then
			if ( hs_counter = 0 and vs_counter = 0 ) then
				AMP_DI <= X"11";
				AMP_WE <= '1';
			elsif ( hs_counter = 800 and vs_counter = 600 ) then
				ADC_Start <= '1';
			else
				ADC_Start <= '0';
				AMP_WE <= '0';
			end if;
		end if;
	end process;

	Print : process ( vs_counter, hs_counter, playerPositionX, bombsPosition ) is
	begin
	if ( rising_edge(Clk_50MHz) ) then
		if ( hs_counter > 0 and hs_counter < 799 and vs_counter > 0 and vs_counter < 599 ) then
			if (hs_counter > playerPositionX - 20 and hs_counter < playerPositionX + 20 and vs_counter > 490 and vs_counter < 510) then
				-- print player
				VGA_R <= '1';
				VGA_G <= '0';
				VGA_B <= '1';
			elsif ( hs_counter > bombsPosition(0)(1) - 5 and hs_counter < bombsPosition(0)(1) + 5 and vs_counter > bombsPosition(0)(0) - 10 and vs_counter < bombsPosition(0)(0) + 10 ) then
				-- print bomb 0
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			elsif ( hs_counter > bombsPosition(1)(1) - 5 and hs_counter < bombsPosition(1)(1) + 5 and vs_counter > bombsPosition(1)(0) - 10 and vs_counter < bombsPosition(1)(0) + 10 ) then
				-- print bomb 1
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			elsif ( hs_counter > bombsPosition(2)(1) - 5 and hs_counter < bombsPosition(2)(1) + 5 and vs_counter > bombsPosition(2)(0) - 10 and vs_counter < bombsPosition(2)(0) + 10 ) then
				-- print bomb 2
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			elsif ( hs_counter > bombsPosition(3)(1) - 5 and hs_counter < bombsPosition(3)(1) + 5 and vs_counter > bombsPosition(3)(0) - 10 and vs_counter < bombsPosition(3)(0) + 10 ) then
				-- print bomb 3
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			elsif ( hs_counter > bombsPosition(4)(1) - 5 and hs_counter < bombsPosition(4)(1) + 5 and vs_counter > bombsPosition(4)(0) - 10 and vs_counter < bombsPosition(4)(0) + 10 ) then
				-- print bomb 4
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
				VGA_B <= '0';
			elsif ( colision = '1' ) then
				-- print red game over background
				VGA_R <= '1';
				VGA_G <= '0';
				VGA_B <= '0';
			else
				-- print black background
				VGA_R <= '0';
				VGA_G <= '0';
				VGA_B <= '0';
			end if;
		else
			-- set 0 to secure vga output and not get random lines
			VGA_R <= '0';
			VGA_G <= '0';
			VGA_B <= '0';
		end if;
	end if;
	end process;

	CalculatePlayerPos : process ( POSITION_IN ) is
		variable temp : INTEGER;
	begin
		if ( rising_edge(Clk_50MHz) and colision = '0' ) then
			temp := to_integer( POSITION_IN );
			temp := temp / 64;
			temp := temp * 3;

			playerPositionX <= 399 + temp;
		end if;
	end process;

	CalculateBombsPos : process ( hs_counter, vs_counter, bombsPosition ) is
	begin
		if ( rising_edge(Clk_50MHz) ) then
			if ( colision = '0' ) then
				if ( hs_counter = 855 and vs_counter = 636 ) then
					if ( bombsPosition(0)(0) >= 650 ) then --despawn below the screen
						bombsPosition(0)(1) <= to_integer( rand800 );
						bombsPosition(0)(0) <= -12; --spawn above screen
					else
						--move 7 pixels down every frame
						bombsPosition(0)(0) <= bombsPosition(0)(0) + 7;
					end if;
				end if;
				if ( hs_counter = 855 and vs_counter = 636 ) then
					if ( bombsPosition(1)(0) >= 650 ) then --despawn below the screen
						bombsPosition(1)(1) <= to_integer( rand800 );
						bombsPosition(1)(0) <= -12; --spawn above screen
					else
						--move 7 pixels down every frame
						bombsPosition(1)(0) <= bombsPosition(1)(0) + 7;
					end if;
				end if;
				if ( hs_counter = 855 and vs_counter = 636 ) then
					if ( bombsPosition(2)(0) >= 650 ) then --despawn below the screen
						bombsPosition(2)(1) <= to_integer( rand800 );
						bombsPosition(2)(0) <= -12; --spawn above screen
					else
						--move 7 pixels down every frame
						bombsPosition(2)(0) <= bombsPosition(2)(0) + 7;
					end if;
				end if;
				if ( hs_counter = 855 and vs_counter = 636 ) then
					if ( bombsPosition(3)(0) >= 650 ) then --despawn below the screen
						bombsPosition(3)(1) <= to_integer( rand800 );
						bombsPosition(3)(0) <= -12; --spawn above screen
					else
						--move 7 pixels down every frame
						bombsPosition(3)(0) <= bombsPosition(3)(0) + 7;
					end if;
				end if;
				if ( hs_counter = 855 and vs_counter = 636 ) then
					if ( bombsPosition(4)(0) >= 650 ) then --despawn below the screen
						bombsPosition(4)(0) <= -12; --spawn above screen
						bombsPosition(4)(1) <= to_integer( rand800 );
					else
						--move 7 pixels down every frame
						bombsPosition(4)(0) <= bombsPosition(4)(0) + 7;
					end if;
				end if;
			end if;
			-- reset bomb pos if button pressed
			if ( RESUME_BTN = '1' ) then
				bombsPosition <= ( (50, -2850), (200, -2650), (400, -2450), (600, -2250), (750, -2050) );
			end if;
		end if;
	end process;

	CalculateRand : process ( Clk_50MHz, POSITION_IN ) is
	begin
		if ( rising_edge(Clk_50MHz) ) then
			if ( rand800 < 800 ) then
				rand800 <= rand800 + 1 + unsigned( POSITION_IN(1 downto 0) );
			else
				rand800 <= (others => '0');
			end if;
		end if;
	end process;

	CheckIfColiosion : process ( Clk_50MHz, hs_counter, vs_counter, bombsPosition, playerPositionX ) is
	begin
		if ( rising_edge(Clk_50MHz) and hs_counter = 801 and vs_counter = 601 ) then
			-- once per frame check if colision occurs
			if ( hs_counter = 801 and vs_counter = 601 ) then
				if ( abs( playerPositionX - bombsPosition(0)(1) ) < 25 and abs( 500 - bombsPosition(0)(0) ) < 20 ) then
					colision <= '1';
				elsif ( abs( playerPositionX - bombsPosition(1)(1) ) < 25 and abs( 500 - bombsPosition(1)(0) ) < 20 ) then
					colision <= '1';
				elsif ( abs( playerPositionX - bombsPosition(2)(1) ) < 25 and abs( 500 - bombsPosition(2)(0) ) < 20 ) then
					colision <= '1';
				elsif ( abs( playerPositionX - bombsPosition(3)(1) ) < 25 and abs( 500 - bombsPosition(3)(0) ) < 20 ) then
					colision <= '1';
				elsif ( abs( playerPositionX - bombsPosition(4)(1) ) < 25 and abs( 500 - bombsPosition(4)(0) ) < 20 ) then
					colision <= '1';
				end if;
			end if;
			-- resume game if button pressed
			if ( RESUME_BTN = '1' ) then
				colision <= '0';
			end if;
		end if;
	end process;

end Behavioral;
