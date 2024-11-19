
-- VHDL Instantiation Created from source file VGAController.vhd -- 18:42:09 11/18/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT VGAController
	PORT(
		clk_50 : IN std_logic;
		lp_dir : IN std_logic;
		lp_move_en : IN std_logic;
		rp_dir : IN std_logic;
		rp_move_en : IN std_logic;          
		DAC_clk : OUT std_logic;
		h_sync : OUT std_logic;
		v_sync : OUT std_logic;
		Rout : OUT std_logic_vector(7 downto 0);
		Gout : OUT std_logic_vector(7 downto 0);
		Bout : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_VGAController: VGAController PORT MAP(
		clk_50 => ,
		lp_dir => ,
		lp_move_en => ,
		rp_dir => ,
		rp_move_en => ,
		DAC_clk => ,
		h_sync => ,
		v_sync => ,
		Rout => ,
		Gout => ,
		Bout => 
	);


