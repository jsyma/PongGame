----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jonathan Ma
-- 
-- Create Date:    16:52:49 11/05/2024 
-- Design Name: 	 Pong Game
-- Module Name:    VGAController - Behavioral 
-- Project Name: 	 Pong Game
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGAController is
	Port ( 
		clk_50      : in  STD_LOGIC;
	   p1_move_dir : in  STD_LOGIC;
	   p1_move_en  : in  STD_LOGIC;
	   p2_move_dir : in  STD_LOGIC;
	   p2_move_en  : in  STD_LOGIC;
	   h_sync      : out  STD_LOGIC;
	   v_sync      : out  STD_LOGIC;
	   DAC_CLK     : out  STD_LOGIC;
	   Rout        : out  STD_LOGIC_VECTOR (7 downto 0);
	   Gout        : out  STD_LOGIC_VECTOR (7 downto 0);
	   Bout        : out  STD_LOGIC_VECTOR (7 downto 0)
	);
end VGAController;

architecture Behavioral of VGAController is

	-- VGA Specifications
	constant h_total	     : integer := 800;
	constant h_front_porch : integer := 16;
	constant h_sync_pulse  : integer := 96;
	constant h_back_porch  : integer := 48;
	constant h_active 	  : integer := 640;
	
	constant v_total	     : integer := 525;
	constant v_front_porch : integer := 10;
	constant v_sync_pulse  : integer := 2;
	constant v_back_porch  : integer := 33;
	constant v_active 	  : integer := 480;
	
	-- Border
	constant top_border : integer := 40;
	constant bot_border : integer := 340;
	
	-- Paddle Dimensions 
	constant p_height : integer := 100;
	constant p_width  : integer := 10;
	
	-- Ball Dimensions
	constant ball_hw : integer := 15;
	
	--Clock Signals
	signal clk_count : integer := 0;
	signal clk_25	  : STD_LOGIC := '0';
	signal clk_phase : STD_LOGIC := '0';
	
	--Display Signals
	signal video_on	: STD_LOGIC;
	signal h_count    : integer := 0;
	signal v_count    : integer := 0;
	signal p1_pos_x	: integer := 50;
	signal p1_pos_y	: integer := 240;
	signal p2_pos_x	: integer := 580;
	signal p2_pos_y   : integer := 240;
	signal ball_x     : integer := 300;
	signal ball_y     : integer := 240;
	signal ball_x_dir : STD_LOGIC;	
	signal ball_y_dir : STD_LOGIC;

begin
	-- Clock Divider
	process(clk_50)
	begin
		if rising_edge(clk_50) then
			clk_25 <= not clk_25;
			if (clk_count  = 100000) then
				clk_phase <= not clk_phase;
				clk_count <= 0;
			else
				clk_count <= clk_count + 1;
			end if;
		end if;
	end process;
	
	-- Horizontal and Vertical Position Counter and Synchronization
	process(clk_25)
	begin
		if rising_edge(clk_25) then
			-- Horizontal Counter
			if (h_count < h_total - 1) then
				h_count <= h_count + 1;
			else
				h_count <= 0;
				-- Vertical Counter
				if (v_count < v_total - 1) then
					v_count <= v_count + 1;
				else
					v_count <= 0;
				end if;
			end if;
			
			-- Horizontal Synchronization
			if ((h_count < h_active + h_front_porch) or 
			(h_count >= h_active + h_front_porch + h_sync_pulse)) then
				h_sync <= '1';
			else
				h_sync <= '0';
			end if;
			
			-- Vertical Synchronization
			if ((v_count < v_active + v_front_porch) or 
			(v_count >= v_active + v_front_porch + v_sync_pulse)) then
				v_sync <= '1';
			else
				v_sync <= '0';
			end if;

			-- Video Process
			if ((h_count < h_active) and (v_count < v_active)) then
				video_on <= '1';
			else
				video_on <= '0';
			end if;
		end if;
	end process;
	
	process(clk_phase, p1_move_dir, p2_move_dir,p1_move_en, p2_move_en,  p1_pos_y, p2_pos_y)
	begin
		-- Paddle Movement 
		if rising_edge(clk_phase) then
			-- Player 1 Paddle Movement
			if(p1_move_en = '1') then
				if (p1_move_dir = '0') then
					if (p1_pos_y < bot_border) then
						p1_pos_y <= p1_pos_y + 1;
					else
						p1_pos_y <= bot_border;
					end if;
				else
					if (p1_pos_y > top_border) then
						p1_pos_y <= p1_pos_y - 1;
					else
						p1_pos_y <= top_border;
					end if;
				end if;
			end if;
			
			-- Player 2 Paddle Movement
			if (p2_move_en = '1') then
				if (p2_move_dir = '0') then
					if (p2_pos_y < bot_border) then
						p2_pos_y <= p2_pos_y + 1;
					else
						p2_pos_y <= bot_border;
					end if;
				else
					if (p2_pos_y > top_border) then
						p2_pos_y <= p2_pos_y - 1;
					else
						p2_pos_y <= top_border;
					end if;
				end if;
			end if;
			
			-- Ball collisions with Paddles and Edges/Borders
			if (ball_x >= p1_pos_x and ball_x < p1_pos_x + p_width) then
				if (((ball_y >= p1_pos_y) or (ball_y + ball_hw >= p1_pos_y)) and 
				((ball_y < p1_pos_y + p_height) or (ball_y + ball_hw < p1_pos_y + p_height))) then
					ball_x_dir <= '0';
				end if;
			elsif (ball_x = 40) then
				if ((ball_y >= top_border and ball_y < 180) or 
				(ball_y + ball_hw >= 300 and ball_y + ball_hw < h_active - 40)) then
					ball_x_dir <= '0';
				end if;
			elsif (ball_x + ball_hw > p2_pos_x and ball_x + ball_hw <= p2_pos_x + p_width) then
				if (((ball_y >= p2_pos_y) or (ball_y + ball_hw >= p2_pos_y)) and 
				((ball_y < p2_pos_y + p_height) or (ball_y + ball_hw < p2_pos_y + p_height))) then
					ball_x_dir <= '1';
				end if;
			elsif (ball_x + ball_hw = 600) then
				if ((ball_y >= top_border and ball_y < 180) or 
				(ball_y + ball_hw >= 300 and ball_y + ball_hw < h_active - 40)) then
					ball_x_dir <= '1';
				end if;
			end if;
			if (ball_y <= top_border) then
				ball_y_dir <= '1';
			elsif (ball_y + ball_hw >= h_active - 40) then
				ball_y_dir <= '0';
			end if;
			
			-- Ball Movement
			if ((ball_x > 0) and (ball_x + ball_hw) < h_active) then
				if (ball_x_dir = '0') then
					ball_x <= ball_x + 1;
				elsif (ball_x_dir = '1') then
					ball_x <= ball_x - 1;
				end if;
				if (ball_y_dir = '0') then
					ball_y <= ball_y - 1;
				elsif(ball_y_dir = '1') then
					ball_y <= ball_y + 1;
				end if;
			else
				-- Resets ball position
				ball_x <= 320;
				ball_y <= 240;
			end if;
		end if;
	end process;

	-- Draw Process
	process(video_on)
	begin
		if (video_on = '0') then
			Rout <= (others => '0');
			Gout <= (others => '0');
			Bout <= (others => '0');
		else
			if (h_count >= 20 and h_count < h_active - 20 and v_count >= 20 and v_count < v_active - 20) then
				-- Top and Bottom border
				if (v_count < top_border or v_count >= v_active - top_border) then
					Rout <= "11111111";  
					Gout <= "11111111";
					Bout <= "11111111";
				-- Side Borders
				elsif (((h_count < 40) or (h_count >= h_active - 40)) and 
				(v_count < 180 or v_count >= 300)) then
					Rout <= "11111111";  
					Gout <= "11111111";
					Bout <= "11111111";
				-- Ball
				elsif ((h_count >= ball_x and h_count < ball_x + ball_hw) and 
				(v_count >= ball_y and v_count < ball_y + ball_hw)) then
					Rout <= "11111111";   
					Gout <= "11111111";
					Bout <= "00000000";
				-- Left Paddle (Player 1)
				elsif ((h_count >= p1_pos_x and h_count < p1_pos_x + p_width) and 
				(v_count >= p1_pos_y and v_count < p1_pos_y + p_height)) then
					Rout <=  "00000000";  
					Gout <=  "00000000";
					Bout <=  "11111111";
				-- Right Paddle (Player 2)
				elsif ((h_count >= p2_pos_x and h_count < p2_pos_x + p_width) and 
				(v_count >= p2_pos_y and v_count < p2_pos_y + p_height)) then
					Rout <= "11111111";  
					Gout <= "00000000";
					Bout <= "11111111";
				-- Center Line 
				elsif ((h_count >= 319 and h_count <= 321) and 
				((v_count >= 45 and v_count < 440) and 
				(((v_count - 45) mod 64) < 27))) then
					Rout <= "00000000";   
					Gout <= "00000000";
					Bout <= "00000000";
				--Green background
				else
					Rout <= "00000000";
					Gout <= "11111111";
					Bout <= "00000000";
				end if;
			-- Ball (Goal Scored)
			elsif ((h_count >= ball_x and h_count < ball_x + ball_hw) and (v_count >= ball_y and v_count < ball_y + ball_hw)) then
				Rout <= "11111111";   
				Gout <= "00000000";
				Bout <= "00000000";
			-- Green background
			else
				Rout <= "00000000";
				Gout <= "11111111";
				Bout <= "00000000";
			end if;
		end if;
	end process;
	
	DAC_CLK <= clk_25;


end Behavioral;
