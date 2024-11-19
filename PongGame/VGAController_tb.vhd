--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:37:50 11/18/2024
-- Design Name:   
-- Module Name:   /home/student2/jsma/Project2/VGAController_tb.vhd
-- Project Name:  Project2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGAController
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
--USE ieee.numeric_std.ALL;
 entity VGAController_tb is
end VGAController_tb;

-- Testbench Architecture
architecture Behavioral of VGAController_tb is
    -- Component Declaration for the Unit Under Test (UUT)
    component VGAController
        Port (
            clk_50      : in  STD_LOGIC;
            p1_move_dir : in  STD_LOGIC;
            p1_move_en  : in  STD_LOGIC;
            p2_move_dir : in  STD_LOGIC;
            p2_move_en  : in  STD_LOGIC;
            h_sync      : out STD_LOGIC;
            v_sync      : out STD_LOGIC;
            DAC_CLK     : out STD_LOGIC;
            Rout        : out STD_LOGIC_VECTOR (7 downto 0);
            Gout        : out STD_LOGIC_VECTOR (7 downto 0);
            Bout        : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal clk_50      : STD_LOGIC := '0';
    signal p1_move_dir : STD_LOGIC := '0';
    signal p1_move_en  : STD_LOGIC := '0';
    signal p2_move_dir : STD_LOGIC := '0';
    signal p2_move_en  : STD_LOGIC := '0';
    signal h_sync      : STD_LOGIC;
    signal v_sync      : STD_LOGIC;
    signal DAC_CLK     : STD_LOGIC;
    signal Rout        : STD_LOGIC_VECTOR (7 downto 0);
    signal Gout        : STD_LOGIC_VECTOR (7 downto 0);
    signal Bout        : STD_LOGIC_VECTOR (7 downto 0);

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: VGAController
        Port map (
            clk_50 => clk_50,
            p1_move_dir => p1_move_dir,
            p1_move_en => p1_move_en,
            p2_move_dir => p2_move_dir,
            p2_move_en => p2_move_en,
            h_sync => h_sync,
            v_sync => v_sync,
            DAC_CLK => DAC_CLK,
            Rout => Rout,
            Gout => Gout,
            Bout => Bout
        );

    -- Clock Generation: 50 MHz clock
    clk_process : process
    begin
        clk_50 <= '0';
        wait for 10 ns; -- 10 ns high, 10 ns low = 20 ns period (50 MHz)
        clk_50 <= '1';
        wait for 10 ns;
    end process;

    -- Input Stimuli Process
    stimuli_process: process
    begin
        -- Wait for global reset
        wait for 100 ns;

        -- Simulate Player 1 moving up
        p1_move_en <= '1';
        p1_move_dir <= '1';
        wait for 500 ns;

        -- Simulate Player 1 moving down
        p1_move_dir <= '0';
        wait for 500 ns;

        -- Simulate Player 2 moving up
        p1_move_en <= '0';
        p2_move_en <= '1';
        p2_move_dir <= '1';
        wait for 500 ns;

        -- Simulate Player 2 moving down
        p2_move_dir <= '0';
        wait for 500 ns;

        -- Stop simulation
        wait;
    end process;

end Behavioral;