--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   00:12:33 05/25/2018
-- Design Name:
-- Module Name:   C:/git/WAGDGame/GameSimulation.vhd
-- Project Name:  WAGDGame
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: Game
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;

ENTITY GameSimulation IS
END GameSimulation;

ARCHITECTURE behavior OF GameSimulation IS

	 -- Component Declaration for the Unit Under Test (UUT)

	 COMPONENT Game
	 PORT( Clk_50MHz   : IN   std_logic;
	       POSITION_IN : IN   signed(13 downto 0);
	       RESUME_BTN  : IN   std_logic;
	       VGA_R       : OUT  std_logic;
	       VGA_G       : OUT  std_logic;
	       VGA_B       : OUT  std_logic;
	       VGA_HS      : OUT  std_logic;
	       VGA_VS      : OUT  std_logic;
	       AMP_WE      : OUT  std_logic;
	       AMP_DI      : OUT  std_logic_vector(7 downto 0);
	       ADC_Start   : OUT  std_logic );
	 END COMPONENT;


	--Inputs
	signal Clk_50MHz   : std_logic := '0';
	signal POSITION_IN : signed(13 downto 0) := (others => '0');
	signal RESUME_BTN  : std_logic := '0';

 	--Outputs
	signal VGA_R     : std_logic;
	signal VGA_G     : std_logic;
	signal VGA_B     : std_logic;
	signal VGA_HS    : std_logic;
	signal VGA_VS    : std_logic;
	signal AMP_WE    : std_logic;
	signal AMP_DI    : std_logic_vector(7 downto 0);
	signal ADC_Start : std_logic;

	-- Clock period definitions
	constant Clk_50MHz_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: Game PORT MAP (
	         Clk_50MHz => Clk_50MHz,
	         POSITION_IN => POSITION_IN,
	         RESUME_BTN => RESUME_BTN,
	         VGA_R => VGA_R,
	         VGA_G => VGA_G,
	         VGA_B => VGA_B,
	         VGA_HS => VGA_HS,
	         VGA_VS => VGA_VS,
	         AMP_WE => AMP_WE,
	         AMP_DI => AMP_DI,
	         ADC_Start => ADC_Start
	     );

	-- Clock process definitions
	Clk_50MHz_process :process
	begin
		Clk_50MHz <= '0';
		wait for Clk_50MHz_period/2;
		Clk_50MHz <= '1';
		wait for Clk_50MHz_period/2;
	end process;


	-- Stimulus process
	stim_proc: process
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;

		wait for Clk_50MHz_period*10;

		-- insert stimulus here

		wait;
	end process;

END;
