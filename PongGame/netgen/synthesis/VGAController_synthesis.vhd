--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: VGAController_synthesis.vhd
-- /___/   /\     Timestamp: Fri Nov  8 15:05:35 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm VGAController -w -dir netgen/synthesis -ofmt vhdl -sim VGAController.ngc VGAController_synthesis.vhd 
-- Device	: xc3s500e-5-fg320
-- Input file	: VGAController.ngc
-- Output file	: /home/student2/jsma/Project2/netgen/synthesis/VGAController_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: VGAController
-- Xilinx	: /CMC/tools/xilinx/13.4/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity VGAController is
  port (
    h_sync : out STD_LOGIC; 
    rp_move_en : in STD_LOGIC := 'X'; 
    DAC_clk : out STD_LOGIC; 
    lp_move_en : in STD_LOGIC := 'X'; 
    lp_dir : in STD_LOGIC := 'X'; 
    rp_dir : in STD_LOGIC := 'X'; 
    clk_50 : in STD_LOGIC := 'X'; 
    v_sync : out STD_LOGIC; 
    Bout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Gout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Rout : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end VGAController;

architecture Structure of VGAController is
  signal Bout_1_OBUF_8 : STD_LOGIC; 
  signal DAC_clk_OBUF_10 : STD_LOGIC; 
  signal Gout_1_116_13 : STD_LOGIC; 
  signal Gout_1_14_14 : STD_LOGIC; 
  signal Gout_1_169_15 : STD_LOGIC; 
  signal Gout_1_21101_16 : STD_LOGIC; 
  signal Gout_1_21137_17 : STD_LOGIC; 
  signal Gout_1_21152_18 : STD_LOGIC; 
  signal Gout_1_2116 : STD_LOGIC; 
  signal Gout_1_21161_20 : STD_LOGIC; 
  signal Gout_1_21162 : STD_LOGIC; 
  signal Gout_1_21230_22 : STD_LOGIC; 
  signal Gout_1_21265_23 : STD_LOGIC; 
  signal Gout_1_21303_24 : STD_LOGIC; 
  signal Gout_1_21324_25 : STD_LOGIC; 
  signal Gout_1_21378_26 : STD_LOGIC; 
  signal Gout_1_21384_27 : STD_LOGIC; 
  signal Gout_1_21391_28 : STD_LOGIC; 
  signal Gout_1_21407_29 : STD_LOGIC; 
  signal Gout_1_21435_30 : STD_LOGIC; 
  signal Gout_1_21459_31 : STD_LOGIC; 
  signal Gout_1_21482_32 : STD_LOGIC; 
  signal Gout_1_261_33 : STD_LOGIC; 
  signal Gout_1_282_34 : STD_LOGIC; 
  signal Gout_1_294_35 : STD_LOGIC; 
  signal Gout_1_310_36 : STD_LOGIC; 
  signal Gout_1_321 : STD_LOGIC; 
  signal Gout_1_361_38 : STD_LOGIC; 
  signal Gout_1_37_39 : STD_LOGIC; 
  signal Gout_1_376 : STD_LOGIC; 
  signal Gout_1_397_41 : STD_LOGIC; 
  signal Gout_1_453_42 : STD_LOGIC; 
  signal Gout_1_482_43 : STD_LOGIC; 
  signal Gout_1_515_44 : STD_LOGIC; 
  signal Gout_1_543_45 : STD_LOGIC; 
  signal Gout_1_64_46 : STD_LOGIC; 
  signal Gout_1_75_47 : STD_LOGIC; 
  signal Gout_1_OBUF_54 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_0_Q : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_2_Q_90 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_3_Q_91 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_3_rt_92 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_4_Q_93 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_4_rt_94 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_5_Q_95 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_5_rt_96 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_6_Q_97 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_6_rt_98 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_7_Q_99 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_7_rt_100 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_8_Q_101 : STD_LOGIC; 
  signal Madd_Rout_add0000_cy_8_rt_102 : STD_LOGIC; 
  signal Madd_Rout_add0000_lut_0_Q : STD_LOGIC; 
  signal Madd_Rout_add0000_lut_2_Q : STD_LOGIC; 
  signal Madd_Rout_add0000_xor_1_rt_105 : STD_LOGIC; 
  signal Madd_Rout_add0000_xor_9_rt_106 : STD_LOGIC; 
  signal Madd_add0000_cy_4_Q : STD_LOGIC; 
  signal Madd_add0000_cy_6_Q : STD_LOGIC; 
  signal Madd_add0001_cy_4_Q : STD_LOGIC; 
  signal Madd_add0001_cy_6_Q : STD_LOGIC; 
  signal Madd_add0002_cy_3_rt_113 : STD_LOGIC; 
  signal Madd_add0002_cy_4_rt_115 : STD_LOGIC; 
  signal Madd_add0002_cy_5_rt_117 : STD_LOGIC; 
  signal Madd_add0002_cy_6_rt_119 : STD_LOGIC; 
  signal Madd_add0002_cy_7_rt_121 : STD_LOGIC; 
  signal Madd_add0002_xor_1_rt_123 : STD_LOGIC; 
  signal Madd_add0002_xor_8_rt_124 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_lt0002_cy_0_rt_274 : STD_LOGIC; 
  signal Mcompar_Rout_cmp_lt0003_cy_0_rt_294 : STD_LOGIC; 
  signal Mcount_h_count_cy_1_rt_315 : STD_LOGIC; 
  signal Mcount_h_count_cy_2_rt_317 : STD_LOGIC; 
  signal Mcount_h_count_cy_3_rt_319 : STD_LOGIC; 
  signal Mcount_h_count_cy_4_rt_321 : STD_LOGIC; 
  signal Mcount_h_count_cy_5_rt_323 : STD_LOGIC; 
  signal Mcount_h_count_cy_6_rt_325 : STD_LOGIC; 
  signal Mcount_h_count_cy_7_rt_327 : STD_LOGIC; 
  signal Mcount_h_count_cy_8_rt_329 : STD_LOGIC; 
  signal Mcount_h_count_xor_9_rt_331 : STD_LOGIC; 
  signal Mcount_v_count_cy_1_rt_334 : STD_LOGIC; 
  signal Mcount_v_count_cy_2_rt_336 : STD_LOGIC; 
  signal Mcount_v_count_cy_3_rt_338 : STD_LOGIC; 
  signal Mcount_v_count_cy_4_rt_340 : STD_LOGIC; 
  signal Mcount_v_count_cy_5_rt_342 : STD_LOGIC; 
  signal Mcount_v_count_cy_6_rt_344 : STD_LOGIC; 
  signal Mcount_v_count_cy_7_rt_346 : STD_LOGIC; 
  signal Mcount_v_count_cy_8_rt_348 : STD_LOGIC; 
  signal Mcount_v_count_xor_9_rt_350 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N611 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N671 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N681 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N691 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N701 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_0_2 : STD_LOGIC; 
  signal Result_0_3 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_1_3 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_2_3 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Result_3_3 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_4_2 : STD_LOGIC; 
  signal Result_4_3 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_5_2 : STD_LOGIC; 
  signal Result_5_3 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_6_2 : STD_LOGIC; 
  signal Result_6_3 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_7_2 : STD_LOGIC; 
  signal Result_7_3 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_8_2 : STD_LOGIC; 
  signal Result_8_3 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Rout_1_14 : STD_LOGIC; 
  signal Rout_1_141_443 : STD_LOGIC; 
  signal Rout_1_142_444 : STD_LOGIC; 
  signal Rout_1_OBUF_451 : STD_LOGIC; 
  signal Rout_and0000 : STD_LOGIC; 
  signal Rout_and000011_462 : STD_LOGIC; 
  signal Rout_and000024_463 : STD_LOGIC; 
  signal Rout_and000051_464 : STD_LOGIC; 
  signal Rout_and000076_465 : STD_LOGIC; 
  signal Rout_and0009 : STD_LOGIC; 
  signal Rout_and000928_467 : STD_LOGIC; 
  signal Rout_and000941_468 : STD_LOGIC; 
  signal Rout_and0010 : STD_LOGIC; 
  signal Rout_and001032 : STD_LOGIC; 
  signal Rout_and0010321_471 : STD_LOGIC; 
  signal Rout_and0010322_472 : STD_LOGIC; 
  signal Rout_and001055 : STD_LOGIC; 
  signal Rout_and0010551_474 : STD_LOGIC; 
  signal Rout_and0011 : STD_LOGIC; 
  signal Rout_cmp_ge0000 : STD_LOGIC; 
  signal Rout_cmp_ge0000212 : STD_LOGIC; 
  signal Rout_cmp_ge00002121_478 : STD_LOGIC; 
  signal Rout_cmp_ge000025_479 : STD_LOGIC; 
  signal Rout_cmp_ge0004 : STD_LOGIC; 
  signal Rout_cmp_ge0007 : STD_LOGIC; 
  signal Rout_cmp_ge0009 : STD_LOGIC; 
  signal Rout_cmp_ge0010 : STD_LOGIC; 
  signal Rout_cmp_ge0011 : STD_LOGIC; 
  signal Rout_cmp_gt0000 : STD_LOGIC; 
  signal Rout_cmp_gt000027_486 : STD_LOGIC; 
  signal Rout_cmp_le00052 : STD_LOGIC; 
  signal Rout_cmp_lt0004 : STD_LOGIC; 
  signal Rout_cmp_lt000426_489 : STD_LOGIC; 
  signal ball_dx_cmp_ge0000 : STD_LOGIC; 
  signal ball_dx_cmp_ge000022_502 : STD_LOGIC; 
  signal ball_dx_cmp_ge000028_503 : STD_LOGIC; 
  signal ball_dx_cmp_gt0001110_504 : STD_LOGIC; 
  signal ball_dx_cmp_gt000114_505 : STD_LOGIC; 
  signal ball_dx_cmp_le0001 : STD_LOGIC; 
  signal ball_dx_cmp_le0001217_507 : STD_LOGIC; 
  signal ball_dx_cmp_le0001230_508 : STD_LOGIC; 
  signal ball_dx_cmp_le000128_509 : STD_LOGIC; 
  signal ball_dx_not0001 : STD_LOGIC; 
  signal ball_dx_not0001111_512 : STD_LOGIC; 
  signal ball_dx_not0001116_513 : STD_LOGIC; 
  signal ball_dx_not0001129_514 : STD_LOGIC; 
  signal ball_dx_not0001134_515 : STD_LOGIC; 
  signal ball_dx_not000116_516 : STD_LOGIC; 
  signal ball_dx_not0001164_517 : STD_LOGIC; 
  signal ball_dx_not000125 : STD_LOGIC; 
  signal ball_dx_not0001251_519 : STD_LOGIC; 
  signal ball_dx_not0001252_520 : STD_LOGIC; 
  signal ball_dy_mux0000_23_14_523 : STD_LOGIC; 
  signal ball_dy_mux0000_23_2_524 : STD_LOGIC; 
  signal ball_dy_mux0000_23_8_525 : STD_LOGIC; 
  signal ball_dy_not0001 : STD_LOGIC; 
  signal ball_dy_not000131_527 : STD_LOGIC; 
  signal ball_dy_not00014_528 : STD_LOGIC; 
  signal ball_dy_not000149_529 : STD_LOGIC; 
  signal ball_dy_not000152_530 : STD_LOGIC; 
  signal ball_dy_not000181_531 : STD_LOGIC; 
  signal ball_dy_not00019_532 : STD_LOGIC; 
  signal clk_25_584 : STD_LOGIC; 
  signal clk_251 : STD_LOGIC; 
  signal clk_50_BUFGP_587 : STD_LOGIC; 
  signal h_count_cmp_ge0000 : STD_LOGIC; 
  signal h_sync_s_600 : STD_LOGIC; 
  signal h_sync_s_not0001 : STD_LOGIC; 
  signal h_sync_s_not000110_602 : STD_LOGIC; 
  signal h_sync_s_not000116_603 : STD_LOGIC; 
  signal h_sync_s_not000139_604 : STD_LOGIC; 
  signal lp_dir_IBUF_606 : STD_LOGIC; 
  signal lp_move_en_IBUF_608 : STD_LOGIC; 
  signal lp_pos_cmp_le0000 : STD_LOGIC; 
  signal lp_pos_cmp_le0000115_619 : STD_LOGIC; 
  signal lp_pos_cmp_le0000133_620 : STD_LOGIC; 
  signal lp_pos_not0002 : STD_LOGIC; 
  signal lp_pos_not0003_inv : STD_LOGIC; 
  signal rp_dir_IBUF_624 : STD_LOGIC; 
  signal rp_move_en_IBUF_626 : STD_LOGIC; 
  signal rp_pos_cmp_le0000 : STD_LOGIC; 
  signal rp_pos_cmp_le0000115_637 : STD_LOGIC; 
  signal rp_pos_cmp_le0000133_638 : STD_LOGIC; 
  signal rp_pos_not0002 : STD_LOGIC; 
  signal rp_pos_not0003_inv : STD_LOGIC; 
  signal v_count_cmp_ge0000 : STD_LOGIC; 
  signal v_sync_s_653 : STD_LOGIC; 
  signal v_sync_s_not0001 : STD_LOGIC; 
  signal v_sync_s_not000119_655 : STD_LOGIC; 
  signal v_sync_s_not00017_656 : STD_LOGIC; 
  signal video_on_657 : STD_LOGIC; 
  signal video_on_not0001 : STD_LOGIC; 
  signal Maccum_lp_pos_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Maccum_lp_pos_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Maccum_rp_pos_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Maccum_rp_pos_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Madd_add0002_cy : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal Madd_add0002_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal Madd_ball_x_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal Madd_ball_x_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal Madd_ball_y_addsub0000_cy : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal Madd_ball_y_addsub0000_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal Mcompar_Rout_cmp_ge0007_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0007_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0009_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0009_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0010_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0010_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0011_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcompar_Rout_cmp_ge0011_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_lt0001_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_lt0001_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_lt0002_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_lt0002_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal Mcompar_Rout_cmp_lt0003_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_Rout_cmp_lt0003_lut : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal Mcount_h_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcount_h_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_v_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Mcount_v_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Rout_add0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal Q_add0000 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal Q_add0001 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal Q_add0002 : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal ball_dx : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal ball_dx_mux0000 : STD_LOGIC_VECTOR ( 22 downto 22 ); 
  signal ball_dy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal ball_dy_mux0000 : STD_LOGIC_VECTOR ( 23 downto 23 ); 
  signal ball_x : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal ball_x_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal ball_x_mux0002 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal ball_y : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal ball_y_addsub0000 : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal ball_y_mux0002 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal h_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal lp_pos : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal rp_pos : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal v_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => Madd_Rout_add0000_cy_0_Q
    );
  XST_VCC : VCC
    port map (
      P => Madd_Rout_add0000_lut_0_Q
    );
  clk_25 : FDR
    port map (
      C => clk_50_BUFGP_587,
      D => Madd_Rout_add0000_lut_0_Q,
      R => clk_251,
      Q => clk_251
    );
  DAC_clk_4 : FD
    port map (
      C => clk_50_BUFGP_587,
      D => clk_251,
      Q => DAC_clk_OBUF_10
    );
  video_on : FDR
    port map (
      C => clk_25_584,
      D => Madd_Rout_add0000_lut_0_Q,
      R => video_on_not0001,
      Q => video_on_657
    );
  v_sync_s : FDR
    port map (
      C => clk_25_584,
      D => Madd_Rout_add0000_lut_0_Q,
      R => v_sync_s_not0001,
      Q => v_sync_s_653
    );
  h_sync_s : FDR
    port map (
      C => clk_25_584,
      D => Madd_Rout_add0000_lut_0_Q,
      R => h_sync_s_not0001,
      Q => h_sync_s_600
    );
  ball_dx_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => ball_dx_not0001,
      D => ball_dx_mux0000(22),
      Q => ball_dx(2)
    );
  ball_dy_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => ball_dy_not0001,
      D => ball_dy_mux0000(23),
      Q => ball_dy(2)
    );
  ball_x_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_x_mux0002(8),
      Q => ball_x(1)
    );
  ball_x_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_x_mux0002(7),
      Q => ball_x(2)
    );
  ball_x_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_x_mux0002(6),
      Q => ball_x(3)
    );
  ball_x_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_x_mux0002(5),
      Q => ball_x(4)
    );
  ball_x_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_x_mux0002(4),
      Q => ball_x(5)
    );
  ball_x_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_x_mux0002(3),
      Q => ball_x(6)
    );
  ball_x_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_x_mux0002(2),
      Q => ball_x(7)
    );
  ball_x_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_x_mux0002(1),
      Q => ball_x(8)
    );
  ball_x_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_x_mux0002(0),
      Q => ball_x(9)
    );
  ball_y_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_y_mux0002(7),
      Q => ball_y(1)
    );
  ball_y_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_y_mux0002(6),
      Q => ball_y(2)
    );
  ball_y_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_y_mux0002(5),
      Q => ball_y(3)
    );
  ball_y_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_y_mux0002(4),
      Q => ball_y(4)
    );
  ball_y_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_y_mux0002(3),
      Q => ball_y(5)
    );
  ball_y_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_y_mux0002(2),
      Q => ball_y(6)
    );
  ball_y_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_y_mux0002(1),
      Q => ball_y(7)
    );
  ball_y_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => video_on_657,
      D => ball_y_mux0002(0),
      Q => ball_y(8)
    );
  lp_pos_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => lp_pos_not0002,
      D => Result(0),
      Q => lp_pos(0)
    );
  lp_pos_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_25_584,
      CE => lp_pos_not0002,
      D => Result(1),
      Q => lp_pos(1)
    );
  lp_pos_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_25_584,
      CE => lp_pos_not0002,
      D => Result(2),
      Q => lp_pos(2)
    );
  lp_pos_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => lp_pos_not0002,
      D => Result(3),
      Q => lp_pos(3)
    );
  lp_pos_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_25_584,
      CE => lp_pos_not0002,
      D => Result(4),
      Q => lp_pos(4)
    );
  lp_pos_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => lp_pos_not0002,
      D => Result(5),
      Q => lp_pos(5)
    );
  lp_pos_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => lp_pos_not0002,
      D => Result(6),
      Q => lp_pos(6)
    );
  lp_pos_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_25_584,
      CE => lp_pos_not0002,
      D => Result(7),
      Q => lp_pos(7)
    );
  lp_pos_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => lp_pos_not0002,
      D => Result(8),
      Q => lp_pos(8)
    );
  rp_pos_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => rp_pos_not0002,
      D => Result_0_1,
      Q => rp_pos(0)
    );
  rp_pos_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_25_584,
      CE => rp_pos_not0002,
      D => Result_1_1,
      Q => rp_pos(1)
    );
  rp_pos_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_25_584,
      CE => rp_pos_not0002,
      D => Result_2_1,
      Q => rp_pos(2)
    );
  rp_pos_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => rp_pos_not0002,
      D => Result_3_1,
      Q => rp_pos(3)
    );
  rp_pos_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_25_584,
      CE => rp_pos_not0002,
      D => Result_4_1,
      Q => rp_pos(4)
    );
  rp_pos_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => rp_pos_not0002,
      D => Result_5_1,
      Q => rp_pos(5)
    );
  rp_pos_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => rp_pos_not0002,
      D => Result_6_1,
      Q => rp_pos(6)
    );
  rp_pos_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_25_584,
      CE => rp_pos_not0002,
      D => Result_7_1,
      Q => rp_pos(7)
    );
  rp_pos_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      CE => rp_pos_not0002,
      D => Result_8_1,
      Q => rp_pos(8)
    );
  v_count_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_0_2,
      R => v_count_cmp_ge0000,
      Q => v_count(0)
    );
  v_count_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_1_2,
      R => v_count_cmp_ge0000,
      Q => v_count(1)
    );
  v_count_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_2_2,
      R => v_count_cmp_ge0000,
      Q => v_count(2)
    );
  v_count_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_3_2,
      R => v_count_cmp_ge0000,
      Q => v_count(3)
    );
  v_count_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_4_2,
      R => v_count_cmp_ge0000,
      Q => v_count(4)
    );
  v_count_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_5_2,
      R => v_count_cmp_ge0000,
      Q => v_count(5)
    );
  v_count_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_6_2,
      R => v_count_cmp_ge0000,
      Q => v_count(6)
    );
  v_count_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_7_2,
      R => v_count_cmp_ge0000,
      Q => v_count(7)
    );
  v_count_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_8_2,
      R => v_count_cmp_ge0000,
      Q => v_count(8)
    );
  v_count_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result(9),
      R => v_count_cmp_ge0000,
      Q => v_count(9)
    );
  h_count_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_0_3,
      R => h_count_cmp_ge0000,
      Q => h_count(0)
    );
  h_count_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_1_3,
      R => h_count_cmp_ge0000,
      Q => h_count(1)
    );
  h_count_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_2_3,
      R => h_count_cmp_ge0000,
      Q => h_count(2)
    );
  h_count_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_3_3,
      R => h_count_cmp_ge0000,
      Q => h_count(3)
    );
  h_count_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_4_3,
      R => h_count_cmp_ge0000,
      Q => h_count(4)
    );
  h_count_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_5_3,
      R => h_count_cmp_ge0000,
      Q => h_count(5)
    );
  h_count_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_6_3,
      R => h_count_cmp_ge0000,
      Q => h_count(6)
    );
  h_count_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_7_3,
      R => h_count_cmp_ge0000,
      Q => h_count(7)
    );
  h_count_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_8_3,
      R => h_count_cmp_ge0000,
      Q => h_count(8)
    );
  h_count_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25_584,
      D => Result_9_1,
      R => h_count_cmp_ge0000,
      Q => h_count(9)
    );
  Madd_add0002_xor_1_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      LI => Madd_add0002_xor_1_rt_123,
      O => Q_add0002(1)
    );
  Madd_add0002_cy_2_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Madd_add0002_lut(2),
      O => Madd_add0002_cy(2)
    );
  Madd_add0002_xor_2_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      LI => Madd_add0002_lut(2),
      O => Q_add0002(2)
    );
  Madd_add0002_cy_3_Q : MUXCY
    port map (
      CI => Madd_add0002_cy(2),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_add0002_cy_3_rt_113,
      O => Madd_add0002_cy(3)
    );
  Madd_add0002_xor_3_Q : XORCY
    port map (
      CI => Madd_add0002_cy(2),
      LI => Madd_add0002_cy_3_rt_113,
      O => Q_add0002(3)
    );
  Madd_add0002_cy_4_Q : MUXCY
    port map (
      CI => Madd_add0002_cy(3),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_add0002_cy_4_rt_115,
      O => Madd_add0002_cy(4)
    );
  Madd_add0002_xor_4_Q : XORCY
    port map (
      CI => Madd_add0002_cy(3),
      LI => Madd_add0002_cy_4_rt_115,
      O => Q_add0002(4)
    );
  Madd_add0002_cy_5_Q : MUXCY
    port map (
      CI => Madd_add0002_cy(4),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_add0002_cy_5_rt_117,
      O => Madd_add0002_cy(5)
    );
  Madd_add0002_xor_5_Q : XORCY
    port map (
      CI => Madd_add0002_cy(4),
      LI => Madd_add0002_cy_5_rt_117,
      O => Q_add0002(5)
    );
  Madd_add0002_cy_6_Q : MUXCY
    port map (
      CI => Madd_add0002_cy(5),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_add0002_cy_6_rt_119,
      O => Madd_add0002_cy(6)
    );
  Madd_add0002_xor_6_Q : XORCY
    port map (
      CI => Madd_add0002_cy(5),
      LI => Madd_add0002_cy_6_rt_119,
      O => Q_add0002(6)
    );
  Madd_add0002_cy_7_Q : MUXCY
    port map (
      CI => Madd_add0002_cy(6),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_add0002_cy_7_rt_121,
      O => Madd_add0002_cy(7)
    );
  Madd_add0002_xor_7_Q : XORCY
    port map (
      CI => Madd_add0002_cy(6),
      LI => Madd_add0002_cy_7_rt_121,
      O => Q_add0002(7)
    );
  Madd_add0002_xor_8_Q : XORCY
    port map (
      CI => Madd_add0002_cy(7),
      LI => Madd_add0002_xor_8_rt_124,
      O => Q_add0002(8)
    );
  Madd_Rout_add0000_xor_1_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      LI => Madd_Rout_add0000_xor_1_rt_105,
      O => Rout_add0000(1)
    );
  Madd_Rout_add0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Madd_Rout_add0000_lut_2_Q,
      O => Madd_Rout_add0000_cy_2_Q_90
    );
  Madd_Rout_add0000_xor_2_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      LI => Madd_Rout_add0000_lut_2_Q,
      O => Rout_add0000(2)
    );
  Madd_Rout_add0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_2_Q_90,
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_Rout_add0000_cy_3_rt_92,
      O => Madd_Rout_add0000_cy_3_Q_91
    );
  Madd_Rout_add0000_xor_3_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_2_Q_90,
      LI => Madd_Rout_add0000_cy_3_rt_92,
      O => Rout_add0000(3)
    );
  Madd_Rout_add0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_3_Q_91,
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_Rout_add0000_cy_4_rt_94,
      O => Madd_Rout_add0000_cy_4_Q_93
    );
  Madd_Rout_add0000_xor_4_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_3_Q_91,
      LI => Madd_Rout_add0000_cy_4_rt_94,
      O => Rout_add0000(4)
    );
  Madd_Rout_add0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_4_Q_93,
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_Rout_add0000_cy_5_rt_96,
      O => Madd_Rout_add0000_cy_5_Q_95
    );
  Madd_Rout_add0000_xor_5_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_4_Q_93,
      LI => Madd_Rout_add0000_cy_5_rt_96,
      O => Rout_add0000(5)
    );
  Madd_Rout_add0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_5_Q_95,
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_Rout_add0000_cy_6_rt_98,
      O => Madd_Rout_add0000_cy_6_Q_97
    );
  Madd_Rout_add0000_xor_6_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_5_Q_95,
      LI => Madd_Rout_add0000_cy_6_rt_98,
      O => Rout_add0000(6)
    );
  Madd_Rout_add0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_6_Q_97,
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_Rout_add0000_cy_7_rt_100,
      O => Madd_Rout_add0000_cy_7_Q_99
    );
  Madd_Rout_add0000_xor_7_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_6_Q_97,
      LI => Madd_Rout_add0000_cy_7_rt_100,
      O => Rout_add0000(7)
    );
  Madd_Rout_add0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_7_Q_99,
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Madd_Rout_add0000_cy_8_rt_102,
      O => Madd_Rout_add0000_cy_8_Q_101
    );
  Madd_Rout_add0000_xor_8_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_7_Q_99,
      LI => Madd_Rout_add0000_cy_8_rt_102,
      O => Rout_add0000(8)
    );
  Madd_Rout_add0000_xor_9_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_8_Q_101,
      LI => Madd_Rout_add0000_xor_9_rt_106,
      O => Rout_add0000(9)
    );
  Madd_ball_x_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Madd_ball_x_addsub0000_lut(1),
      O => Madd_ball_x_addsub0000_cy(1)
    );
  Madd_ball_x_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      LI => Madd_ball_x_addsub0000_lut(1),
      O => ball_x_addsub0000(1)
    );
  Madd_ball_x_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_x(2),
      I1 => ball_dx(2),
      O => Madd_ball_x_addsub0000_lut(2)
    );
  Madd_ball_x_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(1),
      DI => ball_x(2),
      S => Madd_ball_x_addsub0000_lut(2),
      O => Madd_ball_x_addsub0000_cy(2)
    );
  Madd_ball_x_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(1),
      LI => Madd_ball_x_addsub0000_lut(2),
      O => ball_x_addsub0000(2)
    );
  Madd_ball_x_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_x(3),
      I1 => ball_dx(2),
      O => Madd_ball_x_addsub0000_lut(3)
    );
  Madd_ball_x_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(2),
      DI => ball_x(3),
      S => Madd_ball_x_addsub0000_lut(3),
      O => Madd_ball_x_addsub0000_cy(3)
    );
  Madd_ball_x_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(2),
      LI => Madd_ball_x_addsub0000_lut(3),
      O => ball_x_addsub0000(3)
    );
  Madd_ball_x_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_x(4),
      I1 => ball_dx(2),
      O => Madd_ball_x_addsub0000_lut(4)
    );
  Madd_ball_x_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(3),
      DI => ball_x(4),
      S => Madd_ball_x_addsub0000_lut(4),
      O => Madd_ball_x_addsub0000_cy(4)
    );
  Madd_ball_x_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(3),
      LI => Madd_ball_x_addsub0000_lut(4),
      O => ball_x_addsub0000(4)
    );
  Madd_ball_x_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_x(5),
      I1 => ball_dx(2),
      O => Madd_ball_x_addsub0000_lut(5)
    );
  Madd_ball_x_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(4),
      DI => ball_x(5),
      S => Madd_ball_x_addsub0000_lut(5),
      O => Madd_ball_x_addsub0000_cy(5)
    );
  Madd_ball_x_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(4),
      LI => Madd_ball_x_addsub0000_lut(5),
      O => ball_x_addsub0000(5)
    );
  Madd_ball_x_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_x(6),
      I1 => ball_dx(2),
      O => Madd_ball_x_addsub0000_lut(6)
    );
  Madd_ball_x_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(5),
      DI => ball_x(6),
      S => Madd_ball_x_addsub0000_lut(6),
      O => Madd_ball_x_addsub0000_cy(6)
    );
  Madd_ball_x_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(5),
      LI => Madd_ball_x_addsub0000_lut(6),
      O => ball_x_addsub0000(6)
    );
  Madd_ball_x_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_x(7),
      I1 => ball_dx(2),
      O => Madd_ball_x_addsub0000_lut(7)
    );
  Madd_ball_x_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(6),
      DI => ball_x(7),
      S => Madd_ball_x_addsub0000_lut(7),
      O => Madd_ball_x_addsub0000_cy(7)
    );
  Madd_ball_x_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(6),
      LI => Madd_ball_x_addsub0000_lut(7),
      O => ball_x_addsub0000(7)
    );
  Madd_ball_x_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_x(8),
      I1 => ball_dx(2),
      O => Madd_ball_x_addsub0000_lut(8)
    );
  Madd_ball_x_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(7),
      DI => ball_x(8),
      S => Madd_ball_x_addsub0000_lut(8),
      O => Madd_ball_x_addsub0000_cy(8)
    );
  Madd_ball_x_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(7),
      LI => Madd_ball_x_addsub0000_lut(8),
      O => ball_x_addsub0000(8)
    );
  Madd_ball_x_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_x(9),
      I1 => ball_dx(2),
      O => Madd_ball_x_addsub0000_lut(9)
    );
  Madd_ball_x_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Madd_ball_x_addsub0000_cy(8),
      LI => Madd_ball_x_addsub0000_lut(9),
      O => ball_x_addsub0000(9)
    );
  Madd_ball_y_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Madd_ball_y_addsub0000_lut(1),
      O => Madd_ball_y_addsub0000_cy(1)
    );
  Madd_ball_y_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      LI => Madd_ball_y_addsub0000_lut(1),
      O => ball_y_addsub0000(1)
    );
  Madd_ball_y_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_y(2),
      I1 => ball_dy(2),
      O => Madd_ball_y_addsub0000_lut(2)
    );
  Madd_ball_y_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(1),
      DI => ball_y(2),
      S => Madd_ball_y_addsub0000_lut(2),
      O => Madd_ball_y_addsub0000_cy(2)
    );
  Madd_ball_y_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(1),
      LI => Madd_ball_y_addsub0000_lut(2),
      O => ball_y_addsub0000(2)
    );
  Madd_ball_y_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_y(3),
      I1 => ball_dy(2),
      O => Madd_ball_y_addsub0000_lut(3)
    );
  Madd_ball_y_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(2),
      DI => ball_y(3),
      S => Madd_ball_y_addsub0000_lut(3),
      O => Madd_ball_y_addsub0000_cy(3)
    );
  Madd_ball_y_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(2),
      LI => Madd_ball_y_addsub0000_lut(3),
      O => ball_y_addsub0000(3)
    );
  Madd_ball_y_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_y(4),
      I1 => ball_dy(2),
      O => Madd_ball_y_addsub0000_lut(4)
    );
  Madd_ball_y_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(3),
      DI => ball_y(4),
      S => Madd_ball_y_addsub0000_lut(4),
      O => Madd_ball_y_addsub0000_cy(4)
    );
  Madd_ball_y_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(3),
      LI => Madd_ball_y_addsub0000_lut(4),
      O => ball_y_addsub0000(4)
    );
  Madd_ball_y_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_y(5),
      I1 => ball_dy(2),
      O => Madd_ball_y_addsub0000_lut(5)
    );
  Madd_ball_y_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(4),
      DI => ball_y(5),
      S => Madd_ball_y_addsub0000_lut(5),
      O => Madd_ball_y_addsub0000_cy(5)
    );
  Madd_ball_y_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(4),
      LI => Madd_ball_y_addsub0000_lut(5),
      O => ball_y_addsub0000(5)
    );
  Madd_ball_y_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_y(6),
      I1 => ball_dy(2),
      O => Madd_ball_y_addsub0000_lut(6)
    );
  Madd_ball_y_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(5),
      DI => ball_y(6),
      S => Madd_ball_y_addsub0000_lut(6),
      O => Madd_ball_y_addsub0000_cy(6)
    );
  Madd_ball_y_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(5),
      LI => Madd_ball_y_addsub0000_lut(6),
      O => ball_y_addsub0000(6)
    );
  Madd_ball_y_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_y(7),
      I1 => ball_dy(2),
      O => Madd_ball_y_addsub0000_lut(7)
    );
  Madd_ball_y_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(6),
      DI => ball_y(7),
      S => Madd_ball_y_addsub0000_lut(7),
      O => Madd_ball_y_addsub0000_cy(7)
    );
  Madd_ball_y_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(6),
      LI => Madd_ball_y_addsub0000_lut(7),
      O => ball_y_addsub0000(7)
    );
  Madd_ball_y_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ball_y(8),
      I1 => ball_dy(2),
      O => Madd_ball_y_addsub0000_lut(8)
    );
  Madd_ball_y_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_ball_y_addsub0000_cy(7),
      LI => Madd_ball_y_addsub0000_lut(8),
      O => ball_y_addsub0000(8)
    );
  Mcompar_Rout_cmp_ge0007_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(0),
      I1 => lp_pos(0),
      O => Mcompar_Rout_cmp_ge0007_lut(0)
    );
  Mcompar_Rout_cmp_ge0007_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_lut_0_Q,
      DI => v_count(0),
      S => Mcompar_Rout_cmp_ge0007_lut(0),
      O => Mcompar_Rout_cmp_ge0007_cy(0)
    );
  Mcompar_Rout_cmp_ge0007_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(1),
      I1 => lp_pos(1),
      O => Mcompar_Rout_cmp_ge0007_lut(1)
    );
  Mcompar_Rout_cmp_ge0007_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(0),
      DI => v_count(1),
      S => Mcompar_Rout_cmp_ge0007_lut(1),
      O => Mcompar_Rout_cmp_ge0007_cy(1)
    );
  Mcompar_Rout_cmp_ge0007_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(2),
      I1 => lp_pos(2),
      O => Mcompar_Rout_cmp_ge0007_lut(2)
    );
  Mcompar_Rout_cmp_ge0007_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(1),
      DI => v_count(2),
      S => Mcompar_Rout_cmp_ge0007_lut(2),
      O => Mcompar_Rout_cmp_ge0007_cy(2)
    );
  Mcompar_Rout_cmp_ge0007_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(3),
      I1 => lp_pos(3),
      O => Mcompar_Rout_cmp_ge0007_lut(3)
    );
  Mcompar_Rout_cmp_ge0007_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(2),
      DI => v_count(3),
      S => Mcompar_Rout_cmp_ge0007_lut(3),
      O => Mcompar_Rout_cmp_ge0007_cy(3)
    );
  Mcompar_Rout_cmp_ge0007_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(4),
      I1 => lp_pos(4),
      O => Mcompar_Rout_cmp_ge0007_lut(4)
    );
  Mcompar_Rout_cmp_ge0007_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(3),
      DI => v_count(4),
      S => Mcompar_Rout_cmp_ge0007_lut(4),
      O => Mcompar_Rout_cmp_ge0007_cy(4)
    );
  Mcompar_Rout_cmp_ge0007_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(5),
      I1 => lp_pos(5),
      O => Mcompar_Rout_cmp_ge0007_lut(5)
    );
  Mcompar_Rout_cmp_ge0007_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(4),
      DI => v_count(5),
      S => Mcompar_Rout_cmp_ge0007_lut(5),
      O => Mcompar_Rout_cmp_ge0007_cy(5)
    );
  Mcompar_Rout_cmp_ge0007_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(6),
      I1 => lp_pos(6),
      O => Mcompar_Rout_cmp_ge0007_lut(6)
    );
  Mcompar_Rout_cmp_ge0007_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(5),
      DI => v_count(6),
      S => Mcompar_Rout_cmp_ge0007_lut(6),
      O => Mcompar_Rout_cmp_ge0007_cy(6)
    );
  Mcompar_Rout_cmp_ge0007_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(7),
      I1 => lp_pos(7),
      O => Mcompar_Rout_cmp_ge0007_lut(7)
    );
  Mcompar_Rout_cmp_ge0007_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(6),
      DI => v_count(7),
      S => Mcompar_Rout_cmp_ge0007_lut(7),
      O => Mcompar_Rout_cmp_ge0007_cy(7)
    );
  Mcompar_Rout_cmp_ge0007_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(8),
      I1 => lp_pos(8),
      O => Mcompar_Rout_cmp_ge0007_lut(8)
    );
  Mcompar_Rout_cmp_ge0007_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(7),
      DI => v_count(8),
      S => Mcompar_Rout_cmp_ge0007_lut(8),
      O => Mcompar_Rout_cmp_ge0007_cy(8)
    );
  Mcompar_Rout_cmp_ge0007_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0007_cy(8),
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0007_lut(9),
      O => Rout_cmp_ge0007
    );
  Mcompar_Rout_cmp_ge0009_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(0),
      I1 => rp_pos(0),
      O => Mcompar_Rout_cmp_ge0009_lut(0)
    );
  Mcompar_Rout_cmp_ge0009_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_lut_0_Q,
      DI => v_count(0),
      S => Mcompar_Rout_cmp_ge0009_lut(0),
      O => Mcompar_Rout_cmp_ge0009_cy(0)
    );
  Mcompar_Rout_cmp_ge0009_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(1),
      I1 => rp_pos(1),
      O => Mcompar_Rout_cmp_ge0009_lut(1)
    );
  Mcompar_Rout_cmp_ge0009_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(0),
      DI => v_count(1),
      S => Mcompar_Rout_cmp_ge0009_lut(1),
      O => Mcompar_Rout_cmp_ge0009_cy(1)
    );
  Mcompar_Rout_cmp_ge0009_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(2),
      I1 => rp_pos(2),
      O => Mcompar_Rout_cmp_ge0009_lut(2)
    );
  Mcompar_Rout_cmp_ge0009_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(1),
      DI => v_count(2),
      S => Mcompar_Rout_cmp_ge0009_lut(2),
      O => Mcompar_Rout_cmp_ge0009_cy(2)
    );
  Mcompar_Rout_cmp_ge0009_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(3),
      I1 => rp_pos(3),
      O => Mcompar_Rout_cmp_ge0009_lut(3)
    );
  Mcompar_Rout_cmp_ge0009_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(2),
      DI => v_count(3),
      S => Mcompar_Rout_cmp_ge0009_lut(3),
      O => Mcompar_Rout_cmp_ge0009_cy(3)
    );
  Mcompar_Rout_cmp_ge0009_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(4),
      I1 => rp_pos(4),
      O => Mcompar_Rout_cmp_ge0009_lut(4)
    );
  Mcompar_Rout_cmp_ge0009_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(3),
      DI => v_count(4),
      S => Mcompar_Rout_cmp_ge0009_lut(4),
      O => Mcompar_Rout_cmp_ge0009_cy(4)
    );
  Mcompar_Rout_cmp_ge0009_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(5),
      I1 => rp_pos(5),
      O => Mcompar_Rout_cmp_ge0009_lut(5)
    );
  Mcompar_Rout_cmp_ge0009_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(4),
      DI => v_count(5),
      S => Mcompar_Rout_cmp_ge0009_lut(5),
      O => Mcompar_Rout_cmp_ge0009_cy(5)
    );
  Mcompar_Rout_cmp_ge0009_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(6),
      I1 => rp_pos(6),
      O => Mcompar_Rout_cmp_ge0009_lut(6)
    );
  Mcompar_Rout_cmp_ge0009_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(5),
      DI => v_count(6),
      S => Mcompar_Rout_cmp_ge0009_lut(6),
      O => Mcompar_Rout_cmp_ge0009_cy(6)
    );
  Mcompar_Rout_cmp_ge0009_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(7),
      I1 => rp_pos(7),
      O => Mcompar_Rout_cmp_ge0009_lut(7)
    );
  Mcompar_Rout_cmp_ge0009_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(6),
      DI => v_count(7),
      S => Mcompar_Rout_cmp_ge0009_lut(7),
      O => Mcompar_Rout_cmp_ge0009_cy(7)
    );
  Mcompar_Rout_cmp_ge0009_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(8),
      I1 => rp_pos(8),
      O => Mcompar_Rout_cmp_ge0009_lut(8)
    );
  Mcompar_Rout_cmp_ge0009_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(7),
      DI => v_count(8),
      S => Mcompar_Rout_cmp_ge0009_lut(8),
      O => Mcompar_Rout_cmp_ge0009_cy(8)
    );
  Mcompar_Rout_cmp_ge0009_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0009_cy(8),
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0009_lut(9),
      O => Rout_cmp_ge0009
    );
  Mcompar_Rout_cmp_ge0010_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_lut_0_Q,
      DI => h_count(0),
      S => Mcompar_Rout_cmp_ge0010_lut(0),
      O => Mcompar_Rout_cmp_ge0010_cy(0)
    );
  Mcompar_Rout_cmp_ge0010_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(1),
      I1 => ball_x(1),
      O => Mcompar_Rout_cmp_ge0010_lut(1)
    );
  Mcompar_Rout_cmp_ge0010_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0010_cy(0),
      DI => h_count(1),
      S => Mcompar_Rout_cmp_ge0010_lut(1),
      O => Mcompar_Rout_cmp_ge0010_cy(1)
    );
  Mcompar_Rout_cmp_ge0010_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(2),
      I1 => ball_x(2),
      O => Mcompar_Rout_cmp_ge0010_lut(2)
    );
  Mcompar_Rout_cmp_ge0010_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0010_cy(1),
      DI => h_count(2),
      S => Mcompar_Rout_cmp_ge0010_lut(2),
      O => Mcompar_Rout_cmp_ge0010_cy(2)
    );
  Mcompar_Rout_cmp_ge0010_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(3),
      I1 => ball_x(3),
      O => Mcompar_Rout_cmp_ge0010_lut(3)
    );
  Mcompar_Rout_cmp_ge0010_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0010_cy(2),
      DI => h_count(3),
      S => Mcompar_Rout_cmp_ge0010_lut(3),
      O => Mcompar_Rout_cmp_ge0010_cy(3)
    );
  Mcompar_Rout_cmp_ge0010_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(4),
      I1 => ball_x(4),
      O => Mcompar_Rout_cmp_ge0010_lut(4)
    );
  Mcompar_Rout_cmp_ge0010_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0010_cy(3),
      DI => h_count(4),
      S => Mcompar_Rout_cmp_ge0010_lut(4),
      O => Mcompar_Rout_cmp_ge0010_cy(4)
    );
  Mcompar_Rout_cmp_ge0010_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(5),
      I1 => ball_x(5),
      O => Mcompar_Rout_cmp_ge0010_lut(5)
    );
  Mcompar_Rout_cmp_ge0010_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0010_cy(4),
      DI => h_count(5),
      S => Mcompar_Rout_cmp_ge0010_lut(5),
      O => Mcompar_Rout_cmp_ge0010_cy(5)
    );
  Mcompar_Rout_cmp_ge0010_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(6),
      I1 => ball_x(6),
      O => Mcompar_Rout_cmp_ge0010_lut(6)
    );
  Mcompar_Rout_cmp_ge0010_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0010_cy(5),
      DI => h_count(6),
      S => Mcompar_Rout_cmp_ge0010_lut(6),
      O => Mcompar_Rout_cmp_ge0010_cy(6)
    );
  Mcompar_Rout_cmp_ge0010_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(7),
      I1 => ball_x(7),
      O => Mcompar_Rout_cmp_ge0010_lut(7)
    );
  Mcompar_Rout_cmp_ge0010_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0010_cy(6),
      DI => h_count(7),
      S => Mcompar_Rout_cmp_ge0010_lut(7),
      O => Mcompar_Rout_cmp_ge0010_cy(7)
    );
  Mcompar_Rout_cmp_ge0010_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(8),
      I1 => ball_x(8),
      O => Mcompar_Rout_cmp_ge0010_lut(8)
    );
  Mcompar_Rout_cmp_ge0010_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0010_cy(7),
      DI => h_count(8),
      S => Mcompar_Rout_cmp_ge0010_lut(8),
      O => Mcompar_Rout_cmp_ge0010_cy(8)
    );
  Mcompar_Rout_cmp_ge0010_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(9),
      I1 => ball_x(9),
      O => Mcompar_Rout_cmp_ge0010_lut(9)
    );
  Mcompar_Rout_cmp_ge0010_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0010_cy(8),
      DI => h_count(9),
      S => Mcompar_Rout_cmp_ge0010_lut(9),
      O => Rout_cmp_ge0010
    );
  Mcompar_Rout_cmp_ge0011_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_lut_0_Q,
      DI => v_count(0),
      S => Mcompar_Rout_cmp_ge0011_lut(0),
      O => Mcompar_Rout_cmp_ge0011_cy(0)
    );
  Mcompar_Rout_cmp_ge0011_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(1),
      I1 => ball_y(1),
      O => Mcompar_Rout_cmp_ge0011_lut(1)
    );
  Mcompar_Rout_cmp_ge0011_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(0),
      DI => v_count(1),
      S => Mcompar_Rout_cmp_ge0011_lut(1),
      O => Mcompar_Rout_cmp_ge0011_cy(1)
    );
  Mcompar_Rout_cmp_ge0011_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(2),
      I1 => ball_y(2),
      O => Mcompar_Rout_cmp_ge0011_lut(2)
    );
  Mcompar_Rout_cmp_ge0011_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(1),
      DI => v_count(2),
      S => Mcompar_Rout_cmp_ge0011_lut(2),
      O => Mcompar_Rout_cmp_ge0011_cy(2)
    );
  Mcompar_Rout_cmp_ge0011_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(3),
      I1 => ball_y(3),
      O => Mcompar_Rout_cmp_ge0011_lut(3)
    );
  Mcompar_Rout_cmp_ge0011_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(2),
      DI => v_count(3),
      S => Mcompar_Rout_cmp_ge0011_lut(3),
      O => Mcompar_Rout_cmp_ge0011_cy(3)
    );
  Mcompar_Rout_cmp_ge0011_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(4),
      I1 => ball_y(4),
      O => Mcompar_Rout_cmp_ge0011_lut(4)
    );
  Mcompar_Rout_cmp_ge0011_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(3),
      DI => v_count(4),
      S => Mcompar_Rout_cmp_ge0011_lut(4),
      O => Mcompar_Rout_cmp_ge0011_cy(4)
    );
  Mcompar_Rout_cmp_ge0011_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(5),
      I1 => ball_y(5),
      O => Mcompar_Rout_cmp_ge0011_lut(5)
    );
  Mcompar_Rout_cmp_ge0011_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(4),
      DI => v_count(5),
      S => Mcompar_Rout_cmp_ge0011_lut(5),
      O => Mcompar_Rout_cmp_ge0011_cy(5)
    );
  Mcompar_Rout_cmp_ge0011_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(6),
      I1 => ball_y(6),
      O => Mcompar_Rout_cmp_ge0011_lut(6)
    );
  Mcompar_Rout_cmp_ge0011_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(5),
      DI => v_count(6),
      S => Mcompar_Rout_cmp_ge0011_lut(6),
      O => Mcompar_Rout_cmp_ge0011_cy(6)
    );
  Mcompar_Rout_cmp_ge0011_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(7),
      I1 => ball_y(7),
      O => Mcompar_Rout_cmp_ge0011_lut(7)
    );
  Mcompar_Rout_cmp_ge0011_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(6),
      DI => v_count(7),
      S => Mcompar_Rout_cmp_ge0011_lut(7),
      O => Mcompar_Rout_cmp_ge0011_cy(7)
    );
  Mcompar_Rout_cmp_ge0011_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(8),
      I1 => ball_y(8),
      O => Mcompar_Rout_cmp_ge0011_lut(8)
    );
  Mcompar_Rout_cmp_ge0011_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(7),
      DI => v_count(8),
      S => Mcompar_Rout_cmp_ge0011_lut(8),
      O => Mcompar_Rout_cmp_ge0011_cy(8)
    );
  Mcompar_Rout_cmp_ge0011_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_ge0011_cy(8),
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_ge0011_lut(9),
      O => Rout_cmp_ge0011
    );
  Maccum_lp_pos_cy_0_Q : MUXCY
    port map (
      CI => lp_pos_not0003_inv,
      DI => lp_pos(0),
      S => Maccum_lp_pos_lut(0),
      O => Maccum_lp_pos_cy(0)
    );
  Maccum_lp_pos_xor_0_Q : XORCY
    port map (
      CI => lp_pos_not0003_inv,
      LI => Maccum_lp_pos_lut(0),
      O => Result(0)
    );
  Maccum_lp_pos_cy_1_Q : MUXCY
    port map (
      CI => Maccum_lp_pos_cy(0),
      DI => lp_pos(1),
      S => Maccum_lp_pos_lut(1),
      O => Maccum_lp_pos_cy(1)
    );
  Maccum_lp_pos_xor_1_Q : XORCY
    port map (
      CI => Maccum_lp_pos_cy(0),
      LI => Maccum_lp_pos_lut(1),
      O => Result(1)
    );
  Maccum_lp_pos_cy_2_Q : MUXCY
    port map (
      CI => Maccum_lp_pos_cy(1),
      DI => lp_pos(2),
      S => Maccum_lp_pos_lut(2),
      O => Maccum_lp_pos_cy(2)
    );
  Maccum_lp_pos_xor_2_Q : XORCY
    port map (
      CI => Maccum_lp_pos_cy(1),
      LI => Maccum_lp_pos_lut(2),
      O => Result(2)
    );
  Maccum_lp_pos_cy_3_Q : MUXCY
    port map (
      CI => Maccum_lp_pos_cy(2),
      DI => lp_pos(3),
      S => Maccum_lp_pos_lut(3),
      O => Maccum_lp_pos_cy(3)
    );
  Maccum_lp_pos_xor_3_Q : XORCY
    port map (
      CI => Maccum_lp_pos_cy(2),
      LI => Maccum_lp_pos_lut(3),
      O => Result(3)
    );
  Maccum_lp_pos_cy_4_Q : MUXCY
    port map (
      CI => Maccum_lp_pos_cy(3),
      DI => lp_pos(4),
      S => Maccum_lp_pos_lut(4),
      O => Maccum_lp_pos_cy(4)
    );
  Maccum_lp_pos_xor_4_Q : XORCY
    port map (
      CI => Maccum_lp_pos_cy(3),
      LI => Maccum_lp_pos_lut(4),
      O => Result(4)
    );
  Maccum_lp_pos_cy_5_Q : MUXCY
    port map (
      CI => Maccum_lp_pos_cy(4),
      DI => lp_pos(5),
      S => Maccum_lp_pos_lut(5),
      O => Maccum_lp_pos_cy(5)
    );
  Maccum_lp_pos_xor_5_Q : XORCY
    port map (
      CI => Maccum_lp_pos_cy(4),
      LI => Maccum_lp_pos_lut(5),
      O => Result(5)
    );
  Maccum_lp_pos_cy_6_Q : MUXCY
    port map (
      CI => Maccum_lp_pos_cy(5),
      DI => lp_pos(6),
      S => Maccum_lp_pos_lut(6),
      O => Maccum_lp_pos_cy(6)
    );
  Maccum_lp_pos_xor_6_Q : XORCY
    port map (
      CI => Maccum_lp_pos_cy(5),
      LI => Maccum_lp_pos_lut(6),
      O => Result(6)
    );
  Maccum_lp_pos_cy_7_Q : MUXCY
    port map (
      CI => Maccum_lp_pos_cy(6),
      DI => lp_pos(7),
      S => Maccum_lp_pos_lut(7),
      O => Maccum_lp_pos_cy(7)
    );
  Maccum_lp_pos_xor_7_Q : XORCY
    port map (
      CI => Maccum_lp_pos_cy(6),
      LI => Maccum_lp_pos_lut(7),
      O => Result(7)
    );
  Maccum_lp_pos_xor_8_Q : XORCY
    port map (
      CI => Maccum_lp_pos_cy(7),
      LI => Maccum_lp_pos_lut(8),
      O => Result(8)
    );
  Maccum_rp_pos_cy_0_Q : MUXCY
    port map (
      CI => rp_pos_not0003_inv,
      DI => rp_pos(0),
      S => Maccum_rp_pos_lut(0),
      O => Maccum_rp_pos_cy(0)
    );
  Maccum_rp_pos_xor_0_Q : XORCY
    port map (
      CI => rp_pos_not0003_inv,
      LI => Maccum_rp_pos_lut(0),
      O => Result_0_1
    );
  Maccum_rp_pos_cy_1_Q : MUXCY
    port map (
      CI => Maccum_rp_pos_cy(0),
      DI => rp_pos(1),
      S => Maccum_rp_pos_lut(1),
      O => Maccum_rp_pos_cy(1)
    );
  Maccum_rp_pos_xor_1_Q : XORCY
    port map (
      CI => Maccum_rp_pos_cy(0),
      LI => Maccum_rp_pos_lut(1),
      O => Result_1_1
    );
  Maccum_rp_pos_cy_2_Q : MUXCY
    port map (
      CI => Maccum_rp_pos_cy(1),
      DI => rp_pos(2),
      S => Maccum_rp_pos_lut(2),
      O => Maccum_rp_pos_cy(2)
    );
  Maccum_rp_pos_xor_2_Q : XORCY
    port map (
      CI => Maccum_rp_pos_cy(1),
      LI => Maccum_rp_pos_lut(2),
      O => Result_2_1
    );
  Maccum_rp_pos_cy_3_Q : MUXCY
    port map (
      CI => Maccum_rp_pos_cy(2),
      DI => rp_pos(3),
      S => Maccum_rp_pos_lut(3),
      O => Maccum_rp_pos_cy(3)
    );
  Maccum_rp_pos_xor_3_Q : XORCY
    port map (
      CI => Maccum_rp_pos_cy(2),
      LI => Maccum_rp_pos_lut(3),
      O => Result_3_1
    );
  Maccum_rp_pos_cy_4_Q : MUXCY
    port map (
      CI => Maccum_rp_pos_cy(3),
      DI => rp_pos(4),
      S => Maccum_rp_pos_lut(4),
      O => Maccum_rp_pos_cy(4)
    );
  Maccum_rp_pos_xor_4_Q : XORCY
    port map (
      CI => Maccum_rp_pos_cy(3),
      LI => Maccum_rp_pos_lut(4),
      O => Result_4_1
    );
  Maccum_rp_pos_cy_5_Q : MUXCY
    port map (
      CI => Maccum_rp_pos_cy(4),
      DI => rp_pos(5),
      S => Maccum_rp_pos_lut(5),
      O => Maccum_rp_pos_cy(5)
    );
  Maccum_rp_pos_xor_5_Q : XORCY
    port map (
      CI => Maccum_rp_pos_cy(4),
      LI => Maccum_rp_pos_lut(5),
      O => Result_5_1
    );
  Maccum_rp_pos_cy_6_Q : MUXCY
    port map (
      CI => Maccum_rp_pos_cy(5),
      DI => rp_pos(6),
      S => Maccum_rp_pos_lut(6),
      O => Maccum_rp_pos_cy(6)
    );
  Maccum_rp_pos_xor_6_Q : XORCY
    port map (
      CI => Maccum_rp_pos_cy(5),
      LI => Maccum_rp_pos_lut(6),
      O => Result_6_1
    );
  Maccum_rp_pos_cy_7_Q : MUXCY
    port map (
      CI => Maccum_rp_pos_cy(6),
      DI => rp_pos(7),
      S => Maccum_rp_pos_lut(7),
      O => Maccum_rp_pos_cy(7)
    );
  Maccum_rp_pos_xor_7_Q : XORCY
    port map (
      CI => Maccum_rp_pos_cy(6),
      LI => Maccum_rp_pos_lut(7),
      O => Result_7_1
    );
  Maccum_rp_pos_xor_8_Q : XORCY
    port map (
      CI => Maccum_rp_pos_cy(7),
      LI => Maccum_rp_pos_lut(8),
      O => Result_8_1
    );
  Mcount_v_count_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Mcount_v_count_lut(0),
      O => Mcount_v_count_cy(0)
    );
  Mcount_v_count_xor_0_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      LI => Mcount_v_count_lut(0),
      O => Result_0_2
    );
  Mcount_v_count_cy_1_Q : MUXCY
    port map (
      CI => Mcount_v_count_cy(0),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_v_count_cy_1_rt_334,
      O => Mcount_v_count_cy(1)
    );
  Mcount_v_count_xor_1_Q : XORCY
    port map (
      CI => Mcount_v_count_cy(0),
      LI => Mcount_v_count_cy_1_rt_334,
      O => Result_1_2
    );
  Mcount_v_count_cy_2_Q : MUXCY
    port map (
      CI => Mcount_v_count_cy(1),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_v_count_cy_2_rt_336,
      O => Mcount_v_count_cy(2)
    );
  Mcount_v_count_xor_2_Q : XORCY
    port map (
      CI => Mcount_v_count_cy(1),
      LI => Mcount_v_count_cy_2_rt_336,
      O => Result_2_2
    );
  Mcount_v_count_cy_3_Q : MUXCY
    port map (
      CI => Mcount_v_count_cy(2),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_v_count_cy_3_rt_338,
      O => Mcount_v_count_cy(3)
    );
  Mcount_v_count_xor_3_Q : XORCY
    port map (
      CI => Mcount_v_count_cy(2),
      LI => Mcount_v_count_cy_3_rt_338,
      O => Result_3_2
    );
  Mcount_v_count_cy_4_Q : MUXCY
    port map (
      CI => Mcount_v_count_cy(3),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_v_count_cy_4_rt_340,
      O => Mcount_v_count_cy(4)
    );
  Mcount_v_count_xor_4_Q : XORCY
    port map (
      CI => Mcount_v_count_cy(3),
      LI => Mcount_v_count_cy_4_rt_340,
      O => Result_4_2
    );
  Mcount_v_count_cy_5_Q : MUXCY
    port map (
      CI => Mcount_v_count_cy(4),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_v_count_cy_5_rt_342,
      O => Mcount_v_count_cy(5)
    );
  Mcount_v_count_xor_5_Q : XORCY
    port map (
      CI => Mcount_v_count_cy(4),
      LI => Mcount_v_count_cy_5_rt_342,
      O => Result_5_2
    );
  Mcount_v_count_cy_6_Q : MUXCY
    port map (
      CI => Mcount_v_count_cy(5),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_v_count_cy_6_rt_344,
      O => Mcount_v_count_cy(6)
    );
  Mcount_v_count_xor_6_Q : XORCY
    port map (
      CI => Mcount_v_count_cy(5),
      LI => Mcount_v_count_cy_6_rt_344,
      O => Result_6_2
    );
  Mcount_v_count_cy_7_Q : MUXCY
    port map (
      CI => Mcount_v_count_cy(6),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_v_count_cy_7_rt_346,
      O => Mcount_v_count_cy(7)
    );
  Mcount_v_count_xor_7_Q : XORCY
    port map (
      CI => Mcount_v_count_cy(6),
      LI => Mcount_v_count_cy_7_rt_346,
      O => Result_7_2
    );
  Mcount_v_count_cy_8_Q : MUXCY
    port map (
      CI => Mcount_v_count_cy(7),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_v_count_cy_8_rt_348,
      O => Mcount_v_count_cy(8)
    );
  Mcount_v_count_xor_8_Q : XORCY
    port map (
      CI => Mcount_v_count_cy(7),
      LI => Mcount_v_count_cy_8_rt_348,
      O => Result_8_2
    );
  Mcount_v_count_xor_9_Q : XORCY
    port map (
      CI => Mcount_v_count_cy(8),
      LI => Mcount_v_count_xor_9_rt_350,
      O => Result(9)
    );
  Mcount_h_count_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Mcount_h_count_lut(0),
      O => Mcount_h_count_cy(0)
    );
  Mcount_h_count_xor_0_Q : XORCY
    port map (
      CI => Madd_Rout_add0000_cy_0_Q,
      LI => Mcount_h_count_lut(0),
      O => Result_0_3
    );
  Mcount_h_count_cy_1_Q : MUXCY
    port map (
      CI => Mcount_h_count_cy(0),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_h_count_cy_1_rt_315,
      O => Mcount_h_count_cy(1)
    );
  Mcount_h_count_xor_1_Q : XORCY
    port map (
      CI => Mcount_h_count_cy(0),
      LI => Mcount_h_count_cy_1_rt_315,
      O => Result_1_3
    );
  Mcount_h_count_cy_2_Q : MUXCY
    port map (
      CI => Mcount_h_count_cy(1),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_h_count_cy_2_rt_317,
      O => Mcount_h_count_cy(2)
    );
  Mcount_h_count_xor_2_Q : XORCY
    port map (
      CI => Mcount_h_count_cy(1),
      LI => Mcount_h_count_cy_2_rt_317,
      O => Result_2_3
    );
  Mcount_h_count_cy_3_Q : MUXCY
    port map (
      CI => Mcount_h_count_cy(2),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_h_count_cy_3_rt_319,
      O => Mcount_h_count_cy(3)
    );
  Mcount_h_count_xor_3_Q : XORCY
    port map (
      CI => Mcount_h_count_cy(2),
      LI => Mcount_h_count_cy_3_rt_319,
      O => Result_3_3
    );
  Mcount_h_count_cy_4_Q : MUXCY
    port map (
      CI => Mcount_h_count_cy(3),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_h_count_cy_4_rt_321,
      O => Mcount_h_count_cy(4)
    );
  Mcount_h_count_xor_4_Q : XORCY
    port map (
      CI => Mcount_h_count_cy(3),
      LI => Mcount_h_count_cy_4_rt_321,
      O => Result_4_3
    );
  Mcount_h_count_cy_5_Q : MUXCY
    port map (
      CI => Mcount_h_count_cy(4),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_h_count_cy_5_rt_323,
      O => Mcount_h_count_cy(5)
    );
  Mcount_h_count_xor_5_Q : XORCY
    port map (
      CI => Mcount_h_count_cy(4),
      LI => Mcount_h_count_cy_5_rt_323,
      O => Result_5_3
    );
  Mcount_h_count_cy_6_Q : MUXCY
    port map (
      CI => Mcount_h_count_cy(5),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_h_count_cy_6_rt_325,
      O => Mcount_h_count_cy(6)
    );
  Mcount_h_count_xor_6_Q : XORCY
    port map (
      CI => Mcount_h_count_cy(5),
      LI => Mcount_h_count_cy_6_rt_325,
      O => Result_6_3
    );
  Mcount_h_count_cy_7_Q : MUXCY
    port map (
      CI => Mcount_h_count_cy(6),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_h_count_cy_7_rt_327,
      O => Mcount_h_count_cy(7)
    );
  Mcount_h_count_xor_7_Q : XORCY
    port map (
      CI => Mcount_h_count_cy(6),
      LI => Mcount_h_count_cy_7_rt_327,
      O => Result_7_3
    );
  Mcount_h_count_cy_8_Q : MUXCY
    port map (
      CI => Mcount_h_count_cy(7),
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcount_h_count_cy_8_rt_329,
      O => Mcount_h_count_cy(8)
    );
  Mcount_h_count_xor_8_Q : XORCY
    port map (
      CI => Mcount_h_count_cy(7),
      LI => Mcount_h_count_cy_8_rt_329,
      O => Result_8_3
    );
  Mcount_h_count_xor_9_Q : XORCY
    port map (
      CI => Mcount_h_count_cy(8),
      LI => Mcount_h_count_xor_9_rt_331,
      O => Result_9_1
    );
  Mcompar_Rout_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(0),
      I1 => lp_pos(0),
      O => Mcompar_Rout_cmp_lt0000_lut(0)
    );
  Mcompar_Rout_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_lut_0_Q,
      DI => v_count(0),
      S => Mcompar_Rout_cmp_lt0000_lut(0),
      O => Mcompar_Rout_cmp_lt0000_cy(0)
    );
  Mcompar_Rout_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0000_cy(0),
      DI => v_count(1),
      S => Mcompar_Rout_cmp_lt0000_lut(1),
      O => Mcompar_Rout_cmp_lt0000_cy(1)
    );
  Mcompar_Rout_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0000_cy(1),
      DI => v_count(2),
      S => Mcompar_Rout_cmp_lt0000_lut(2),
      O => Mcompar_Rout_cmp_lt0000_cy(2)
    );
  Mcompar_Rout_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0000_cy(2),
      DI => v_count(3),
      S => Mcompar_Rout_cmp_lt0000_lut(3),
      O => Mcompar_Rout_cmp_lt0000_cy(3)
    );
  Mcompar_Rout_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(4),
      I1 => Q_add0000(4),
      O => Mcompar_Rout_cmp_lt0000_lut(4)
    );
  Mcompar_Rout_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0000_cy(3),
      DI => v_count(4),
      S => Mcompar_Rout_cmp_lt0000_lut(4),
      O => Mcompar_Rout_cmp_lt0000_cy(4)
    );
  Mcompar_Rout_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0000_cy(4),
      DI => v_count(5),
      S => Mcompar_Rout_cmp_lt0000_lut(5),
      O => Mcompar_Rout_cmp_lt0000_cy(5)
    );
  Mcompar_Rout_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0000_cy(5),
      DI => v_count(6),
      S => Mcompar_Rout_cmp_lt0000_lut(6),
      O => Mcompar_Rout_cmp_lt0000_cy(6)
    );
  Mcompar_Rout_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0000_cy(6),
      DI => v_count(7),
      S => Mcompar_Rout_cmp_lt0000_lut(7),
      O => Mcompar_Rout_cmp_lt0000_cy(7)
    );
  Mcompar_Rout_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0000_cy(7),
      DI => v_count(8),
      S => Mcompar_Rout_cmp_lt0000_lut(8),
      O => Mcompar_Rout_cmp_lt0000_cy(8)
    );
  Mcompar_Rout_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0000_cy(8),
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_lt0000_lut(9),
      O => Mcompar_Rout_cmp_lt0000_cy(9)
    );
  Mcompar_Rout_cmp_lt0001_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(0),
      I1 => rp_pos(0),
      O => Mcompar_Rout_cmp_lt0001_lut(0)
    );
  Mcompar_Rout_cmp_lt0001_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_lut_0_Q,
      DI => v_count(0),
      S => Mcompar_Rout_cmp_lt0001_lut(0),
      O => Mcompar_Rout_cmp_lt0001_cy(0)
    );
  Mcompar_Rout_cmp_lt0001_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0001_cy(0),
      DI => v_count(1),
      S => Mcompar_Rout_cmp_lt0001_lut(1),
      O => Mcompar_Rout_cmp_lt0001_cy(1)
    );
  Mcompar_Rout_cmp_lt0001_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0001_cy(1),
      DI => v_count(2),
      S => Mcompar_Rout_cmp_lt0001_lut(2),
      O => Mcompar_Rout_cmp_lt0001_cy(2)
    );
  Mcompar_Rout_cmp_lt0001_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0001_cy(2),
      DI => v_count(3),
      S => Mcompar_Rout_cmp_lt0001_lut(3),
      O => Mcompar_Rout_cmp_lt0001_cy(3)
    );
  Mcompar_Rout_cmp_lt0001_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(4),
      I1 => Q_add0001(4),
      O => Mcompar_Rout_cmp_lt0001_lut(4)
    );
  Mcompar_Rout_cmp_lt0001_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0001_cy(3),
      DI => v_count(4),
      S => Mcompar_Rout_cmp_lt0001_lut(4),
      O => Mcompar_Rout_cmp_lt0001_cy(4)
    );
  Mcompar_Rout_cmp_lt0001_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0001_cy(4),
      DI => v_count(5),
      S => Mcompar_Rout_cmp_lt0001_lut(5),
      O => Mcompar_Rout_cmp_lt0001_cy(5)
    );
  Mcompar_Rout_cmp_lt0001_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0001_cy(5),
      DI => v_count(6),
      S => Mcompar_Rout_cmp_lt0001_lut(6),
      O => Mcompar_Rout_cmp_lt0001_cy(6)
    );
  Mcompar_Rout_cmp_lt0001_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0001_cy(6),
      DI => v_count(7),
      S => Mcompar_Rout_cmp_lt0001_lut(7),
      O => Mcompar_Rout_cmp_lt0001_cy(7)
    );
  Mcompar_Rout_cmp_lt0001_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0001_cy(7),
      DI => v_count(8),
      S => Mcompar_Rout_cmp_lt0001_lut(8),
      O => Mcompar_Rout_cmp_lt0001_cy(8)
    );
  Mcompar_Rout_cmp_lt0001_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0001_cy(8),
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_lt0001_lut(9),
      O => Mcompar_Rout_cmp_lt0001_cy(9)
    );
  Mcompar_Rout_cmp_lt0002_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_lut_0_Q,
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcompar_Rout_cmp_lt0002_cy_0_rt_274,
      O => Mcompar_Rout_cmp_lt0002_cy(0)
    );
  Mcompar_Rout_cmp_lt0002_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(1),
      I1 => Rout_add0000(1),
      O => Mcompar_Rout_cmp_lt0002_lut(1)
    );
  Mcompar_Rout_cmp_lt0002_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0002_cy(0),
      DI => h_count(1),
      S => Mcompar_Rout_cmp_lt0002_lut(1),
      O => Mcompar_Rout_cmp_lt0002_cy(1)
    );
  Mcompar_Rout_cmp_lt0002_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(2),
      I1 => Rout_add0000(2),
      O => Mcompar_Rout_cmp_lt0002_lut(2)
    );
  Mcompar_Rout_cmp_lt0002_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0002_cy(1),
      DI => h_count(2),
      S => Mcompar_Rout_cmp_lt0002_lut(2),
      O => Mcompar_Rout_cmp_lt0002_cy(2)
    );
  Mcompar_Rout_cmp_lt0002_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(3),
      I1 => Rout_add0000(3),
      O => Mcompar_Rout_cmp_lt0002_lut(3)
    );
  Mcompar_Rout_cmp_lt0002_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0002_cy(2),
      DI => h_count(3),
      S => Mcompar_Rout_cmp_lt0002_lut(3),
      O => Mcompar_Rout_cmp_lt0002_cy(3)
    );
  Mcompar_Rout_cmp_lt0002_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(4),
      I1 => Rout_add0000(4),
      O => Mcompar_Rout_cmp_lt0002_lut(4)
    );
  Mcompar_Rout_cmp_lt0002_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0002_cy(3),
      DI => h_count(4),
      S => Mcompar_Rout_cmp_lt0002_lut(4),
      O => Mcompar_Rout_cmp_lt0002_cy(4)
    );
  Mcompar_Rout_cmp_lt0002_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(5),
      I1 => Rout_add0000(5),
      O => Mcompar_Rout_cmp_lt0002_lut(5)
    );
  Mcompar_Rout_cmp_lt0002_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0002_cy(4),
      DI => h_count(5),
      S => Mcompar_Rout_cmp_lt0002_lut(5),
      O => Mcompar_Rout_cmp_lt0002_cy(5)
    );
  Mcompar_Rout_cmp_lt0002_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(6),
      I1 => Rout_add0000(6),
      O => Mcompar_Rout_cmp_lt0002_lut(6)
    );
  Mcompar_Rout_cmp_lt0002_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0002_cy(5),
      DI => h_count(6),
      S => Mcompar_Rout_cmp_lt0002_lut(6),
      O => Mcompar_Rout_cmp_lt0002_cy(6)
    );
  Mcompar_Rout_cmp_lt0002_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(7),
      I1 => Rout_add0000(7),
      O => Mcompar_Rout_cmp_lt0002_lut(7)
    );
  Mcompar_Rout_cmp_lt0002_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0002_cy(6),
      DI => h_count(7),
      S => Mcompar_Rout_cmp_lt0002_lut(7),
      O => Mcompar_Rout_cmp_lt0002_cy(7)
    );
  Mcompar_Rout_cmp_lt0002_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(8),
      I1 => Rout_add0000(8),
      O => Mcompar_Rout_cmp_lt0002_lut(8)
    );
  Mcompar_Rout_cmp_lt0002_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0002_cy(7),
      DI => h_count(8),
      S => Mcompar_Rout_cmp_lt0002_lut(8),
      O => Mcompar_Rout_cmp_lt0002_cy(8)
    );
  Mcompar_Rout_cmp_lt0002_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => h_count(9),
      I1 => Rout_add0000(9),
      O => Mcompar_Rout_cmp_lt0002_lut(9)
    );
  Mcompar_Rout_cmp_lt0002_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0002_cy(8),
      DI => h_count(9),
      S => Mcompar_Rout_cmp_lt0002_lut(9),
      O => Mcompar_Rout_cmp_lt0002_cy(9)
    );
  Mcompar_Rout_cmp_lt0003_cy_0_Q : MUXCY
    port map (
      CI => Madd_Rout_add0000_lut_0_Q,
      DI => Madd_Rout_add0000_cy_0_Q,
      S => Mcompar_Rout_cmp_lt0003_cy_0_rt_294,
      O => Mcompar_Rout_cmp_lt0003_cy(0)
    );
  Mcompar_Rout_cmp_lt0003_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(1),
      I1 => Q_add0002(1),
      O => Mcompar_Rout_cmp_lt0003_lut(1)
    );
  Mcompar_Rout_cmp_lt0003_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0003_cy(0),
      DI => v_count(1),
      S => Mcompar_Rout_cmp_lt0003_lut(1),
      O => Mcompar_Rout_cmp_lt0003_cy(1)
    );
  Mcompar_Rout_cmp_lt0003_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(2),
      I1 => Q_add0002(2),
      O => Mcompar_Rout_cmp_lt0003_lut(2)
    );
  Mcompar_Rout_cmp_lt0003_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0003_cy(1),
      DI => v_count(2),
      S => Mcompar_Rout_cmp_lt0003_lut(2),
      O => Mcompar_Rout_cmp_lt0003_cy(2)
    );
  Mcompar_Rout_cmp_lt0003_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(3),
      I1 => Q_add0002(3),
      O => Mcompar_Rout_cmp_lt0003_lut(3)
    );
  Mcompar_Rout_cmp_lt0003_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0003_cy(2),
      DI => v_count(3),
      S => Mcompar_Rout_cmp_lt0003_lut(3),
      O => Mcompar_Rout_cmp_lt0003_cy(3)
    );
  Mcompar_Rout_cmp_lt0003_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(4),
      I1 => Q_add0002(4),
      O => Mcompar_Rout_cmp_lt0003_lut(4)
    );
  Mcompar_Rout_cmp_lt0003_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0003_cy(3),
      DI => v_count(4),
      S => Mcompar_Rout_cmp_lt0003_lut(4),
      O => Mcompar_Rout_cmp_lt0003_cy(4)
    );
  Mcompar_Rout_cmp_lt0003_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(5),
      I1 => Q_add0002(5),
      O => Mcompar_Rout_cmp_lt0003_lut(5)
    );
  Mcompar_Rout_cmp_lt0003_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0003_cy(4),
      DI => v_count(5),
      S => Mcompar_Rout_cmp_lt0003_lut(5),
      O => Mcompar_Rout_cmp_lt0003_cy(5)
    );
  Mcompar_Rout_cmp_lt0003_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(6),
      I1 => Q_add0002(6),
      O => Mcompar_Rout_cmp_lt0003_lut(6)
    );
  Mcompar_Rout_cmp_lt0003_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0003_cy(5),
      DI => v_count(6),
      S => Mcompar_Rout_cmp_lt0003_lut(6),
      O => Mcompar_Rout_cmp_lt0003_cy(6)
    );
  Mcompar_Rout_cmp_lt0003_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(7),
      I1 => Q_add0002(7),
      O => Mcompar_Rout_cmp_lt0003_lut(7)
    );
  Mcompar_Rout_cmp_lt0003_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0003_cy(6),
      DI => v_count(7),
      S => Mcompar_Rout_cmp_lt0003_lut(7),
      O => Mcompar_Rout_cmp_lt0003_cy(7)
    );
  Mcompar_Rout_cmp_lt0003_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => v_count(8),
      I1 => Q_add0002(8),
      O => Mcompar_Rout_cmp_lt0003_lut(8)
    );
  Mcompar_Rout_cmp_lt0003_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0003_cy(7),
      DI => v_count(8),
      S => Mcompar_Rout_cmp_lt0003_lut(8),
      O => Mcompar_Rout_cmp_lt0003_cy(8)
    );
  Mcompar_Rout_cmp_lt0003_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_Rout_cmp_lt0003_cy(8),
      DI => Madd_Rout_add0000_lut_0_Q,
      S => Mcompar_Rout_cmp_lt0003_lut(9),
      O => Mcompar_Rout_cmp_lt0003_cy(9)
    );
  v_sync_s_not000119 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => v_count(2),
      I1 => v_count(9),
      I2 => v_count(5),
      I3 => v_count(3),
      O => v_sync_s_not000119_655
    );
  h_count_cmp_ge000021 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => h_count(8),
      I1 => h_count(9),
      I2 => N75,
      I3 => N63,
      O => h_count_cmp_ge0000
    );
  rp_pos_not00021 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => rp_dir_IBUF_624,
      I1 => rp_move_en_IBUF_626,
      I2 => video_on_657,
      I3 => rp_pos_cmp_le0000,
      O => rp_pos_not0002
    );
  lp_pos_not00021 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => lp_dir_IBUF_606,
      I1 => lp_move_en_IBUF_608,
      I2 => video_on_657,
      I3 => lp_pos_cmp_le0000,
      O => lp_pos_not0002
    );
  ball_y_mux0002_4_1 : LUT4
    generic map(
      INIT => X"AABF"
    )
    port map (
      I0 => ball_y_addsub0000(4),
      I1 => ball_dx_cmp_le0001,
      I2 => ball_dx_cmp_ge0000,
      I3 => N62,
      O => ball_y_mux0002(4)
    );
  ball_y_mux0002_3_1 : LUT4
    generic map(
      INIT => X"AABF"
    )
    port map (
      I0 => ball_y_addsub0000(5),
      I1 => ball_dx_cmp_le0001,
      I2 => ball_dx_cmp_ge0000,
      I3 => N1,
      O => ball_y_mux0002(3)
    );
  ball_y_mux0002_2_1 : LUT4
    generic map(
      INIT => X"AABF"
    )
    port map (
      I0 => ball_y_addsub0000(6),
      I1 => ball_dx_cmp_le0001,
      I2 => ball_dx_cmp_ge0000,
      I3 => N1,
      O => ball_y_mux0002(2)
    );
  ball_y_mux0002_1_1 : LUT4
    generic map(
      INIT => X"AABF"
    )
    port map (
      I0 => ball_y_addsub0000(7),
      I1 => ball_dx_cmp_le0001,
      I2 => ball_dx_cmp_ge0000,
      I3 => N1,
      O => ball_y_mux0002(1)
    );
  ball_x_mux0002_3_1 : LUT4
    generic map(
      INIT => X"AABF"
    )
    port map (
      I0 => ball_x_addsub0000(6),
      I1 => ball_dx_cmp_le0001,
      I2 => ball_dx_cmp_ge0000,
      I3 => N1,
      O => ball_x_mux0002(3)
    );
  ball_x_mux0002_1_1 : LUT4
    generic map(
      INIT => X"AABF"
    )
    port map (
      I0 => ball_x_addsub0000(8),
      I1 => ball_dx_cmp_le0001,
      I2 => ball_dx_cmp_ge0000,
      I3 => N1,
      O => ball_x_mux0002(1)
    );
  ball_dy_mux0000_23_8 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => ball_y(4),
      I1 => ball_y(3),
      I2 => ball_y(2),
      I3 => ball_y(1),
      O => ball_dy_mux0000_23_8_525
    );
  ball_dy_mux0000_23_14 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => ball_dy_mux0000_23_2_524,
      I1 => ball_y(5),
      I2 => ball_dy_mux0000_23_8_525,
      O => ball_dy_mux0000_23_14_523
    );
  ball_dy_mux0000_23_33 : LUT4
    generic map(
      INIT => X"AABF"
    )
    port map (
      I0 => ball_dy_mux0000_23_14_523,
      I1 => ball_dx_cmp_le0001,
      I2 => ball_dx_cmp_ge0000,
      I3 => N1,
      O => ball_dy_mux0000(23)
    );
  ball_dx_cmp_gt000114 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ball_x(6),
      I1 => ball_x(9),
      I2 => ball_x(8),
      I3 => ball_x(7),
      O => ball_dx_cmp_gt000114_505
    );
  ball_dx_cmp_gt0001110 : LUT4
    generic map(
      INIT => X"EA00"
    )
    port map (
      I0 => ball_x(4),
      I1 => ball_x(3),
      I2 => ball_x(2),
      I3 => ball_x(5),
      O => ball_dx_cmp_gt0001110_504
    );
  ball_dx_cmp_ge000022 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ball_x(5),
      I1 => ball_x(8),
      I2 => ball_x(9),
      O => ball_dx_cmp_ge000022_502
    );
  ball_dx_cmp_ge000028 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_x(1),
      I1 => ball_x(4),
      I2 => ball_x(3),
      I3 => ball_x(2),
      O => ball_dx_cmp_ge000028_503
    );
  Rout_cmp_ge000025 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N75,
      I1 => h_count(9),
      I2 => h_count(8),
      I3 => h_count(5),
      O => Rout_cmp_ge000025_479
    );
  Rout_cmp_ge0000214 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Rout_cmp_ge000025_479,
      I1 => Rout_cmp_ge0000212,
      O => Rout_cmp_ge0000
    );
  h_sync_s_not000110 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => h_count(6),
      I1 => h_count(4),
      I2 => h_count(5),
      O => h_sync_s_not000110_602
    );
  h_sync_s_not000139 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => h_count(8),
      I1 => h_count(7),
      I2 => h_count(9),
      O => h_sync_s_not000139_604
    );
  h_sync_s_not000143 : LUT4
    generic map(
      INIT => X"C4C0"
    )
    port map (
      I0 => h_count(5),
      I1 => h_sync_s_not000139_604,
      I2 => h_sync_s_not000110_602,
      I3 => h_sync_s_not000116_603,
      O => h_sync_s_not0001
    );
  ball_dx_cmp_le000128 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => ball_x(4),
      I1 => ball_x(5),
      I2 => ball_x(6),
      O => ball_dx_cmp_le000128_509
    );
  ball_dx_cmp_le0001217 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ball_x(1),
      I1 => ball_x(3),
      I2 => ball_x(2),
      O => ball_dx_cmp_le0001217_507
    );
  ball_dx_cmp_le0001247 : LUT4
    generic map(
      INIT => X"FD55"
    )
    port map (
      I0 => ball_x(9),
      I1 => ball_dx_cmp_le0001217_507,
      I2 => ball_dx_cmp_le000128_509,
      I3 => ball_dx_cmp_le0001230_508,
      O => ball_dx_cmp_le0001
    );
  ball_dy_not00014 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => ball_y(2),
      I1 => ball_y(4),
      I2 => ball_y(5),
      I3 => ball_y(3),
      O => ball_dy_not00014_528
    );
  ball_dy_not000131 : LUT4
    generic map(
      INIT => X"007F"
    )
    port map (
      I0 => ball_y(1),
      I1 => ball_y(2),
      I2 => ball_y(3),
      I3 => ball_y(4),
      O => ball_dy_not000131_527
    );
  ball_dy_not000152 : LUT3
    generic map(
      INIT => X"D0"
    )
    port map (
      I0 => ball_y(5),
      I1 => ball_dy_not000131_527,
      I2 => ball_dy_not000149_529,
      O => ball_dy_not000152_530
    );
  ball_dy_not000181 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => N701,
      I1 => ball_dx_cmp_le0001,
      O => ball_dy_not000181_531
    );
  Rout_cmp_gt0000111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => h_count(7),
      I1 => h_count(8),
      O => Gout_1_21161_20
    );
  Rout_cmp_ge0001121 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => v_count(7),
      I1 => v_count(6),
      I2 => v_count(8),
      O => N68
    );
  Rout_cmp_gt000027 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => h_count(1),
      I1 => h_count(3),
      I2 => h_count(4),
      I3 => h_count(2),
      O => Rout_cmp_gt000027_486
    );
  Rout_and000024 : LUT4
    generic map(
      INIT => X"5551"
    )
    port map (
      I0 => v_count(9),
      I1 => v_count(5),
      I2 => Gout_1_376,
      I3 => Rout_and000011_462,
      O => Rout_and000024_463
    );
  Rout_and000051 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_count(0),
      I1 => h_count(4),
      I2 => h_count(5),
      I3 => h_count(6),
      O => Rout_and000051_464
    );
  Rout_and000076 : LUT4
    generic map(
      INIT => X"1151"
    )
    port map (
      I0 => h_count(8),
      I1 => h_count(7),
      I2 => Rout_and000051_464,
      I3 => N691,
      O => Rout_and000076_465
    );
  Rout_and000099 : LUT4
    generic map(
      INIT => X"AF8C"
    )
    port map (
      I0 => Rout_and000076_465,
      I1 => Rout_and000024_463,
      I2 => h_count(9),
      I3 => Gout_1_321,
      O => Rout_and0000
    );
  ball_dx_not000116 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ball_y(5),
      I1 => ball_y(7),
      I2 => ball_y(6),
      I3 => ball_dx_not0001111_512,
      O => ball_dx_not000116_516
    );
  ball_dx_not0001116 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => ball_y(7),
      I1 => ball_y(6),
      O => ball_dx_not0001116_513
    );
  ball_dx_not0001134 : LUT4
    generic map(
      INIT => X"1F00"
    )
    port map (
      I0 => ball_y(1),
      I1 => ball_y(2),
      I2 => ball_y(3),
      I3 => ball_dx_not0001129_514,
      O => ball_dx_not0001134_515
    );
  Rout_cmp_ge0000111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => h_count(6),
      I1 => h_count(7),
      O => N75
    );
  Rout_cmp_le000511 : LUT4
    generic map(
      INIT => X"FF4C"
    )
    port map (
      I0 => v_count(3),
      I1 => N74,
      I2 => N5,
      I3 => Gout_1_376,
      O => Rout_cmp_le00052
    );
  Gout_1_21303 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(3),
      I3 => v_count(2),
      O => Gout_1_21303_24
    );
  Gout_1_21324 : LUT4
    generic map(
      INIT => X"5F4F"
    )
    port map (
      I0 => v_count(6),
      I1 => N73,
      I2 => v_count(7),
      I3 => Gout_1_21303_24,
      O => Gout_1_21324_25
    );
  Gout_1_21378 : LUT3
    generic map(
      INIT => X"75"
    )
    port map (
      I0 => v_count(5),
      I1 => v_count(4),
      I2 => N6,
      O => Gout_1_21378_26
    );
  Gout_1_21384 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => v_count(4),
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(1),
      O => Gout_1_21384_27
    );
  Gout_1_21391 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => v_count(5),
      I1 => Gout_1_21384_27,
      I2 => N68,
      I3 => v_count(9),
      O => Gout_1_21391_28
    );
  Gout_1_21407 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_count(8),
      I1 => v_count(7),
      I2 => v_count(6),
      I3 => v_count(9),
      O => Gout_1_21407_29
    );
  Gout_1_21459 : LUT4
    generic map(
      INIT => X"777F"
    )
    port map (
      I0 => h_count(5),
      I1 => h_count(6),
      I2 => h_count(4),
      I3 => h_count(3),
      O => Gout_1_21459_31
    );
  Gout_1_21482 : LUT4
    generic map(
      INIT => X"20AA"
    )
    port map (
      I0 => Rout_cmp_ge0000,
      I1 => Gout_1_21161_20,
      I2 => Gout_1_21459_31,
      I3 => h_count(9),
      O => Gout_1_21482_32
    );
  Gout_1_21503 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Gout_1_21101_16,
      I1 => Gout_1_21230_22,
      I2 => Gout_1_21435_30,
      I3 => Gout_1_21482_32,
      O => N67
    );
  rp_pos_cmp_le0000136 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => rp_pos(5),
      I1 => N65,
      I2 => rp_pos_cmp_le0000115_637,
      O => rp_pos_cmp_le0000
    );
  lp_pos_cmp_le0000136 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => lp_pos(5),
      I1 => N671,
      I2 => lp_pos_cmp_le0000115_619,
      O => lp_pos_cmp_le0000
    );
  Madd_add0000_xor_4_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => lp_pos(4),
      I1 => lp_pos(1),
      I2 => lp_pos(2),
      I3 => lp_pos(3),
      O => Q_add0000(4)
    );
  Rout_cmp_ge00041_SW0 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => v_count(3),
      I1 => v_count(4),
      I2 => v_count(6),
      I3 => v_count(7),
      O => N2
    );
  Rout_cmp_ge00041 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => v_count(5),
      I1 => v_count(8),
      I2 => N2,
      I3 => v_count(9),
      O => Rout_cmp_ge0004
    );
  Madd_add0001_xor_4_11 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => rp_pos(4),
      I1 => rp_pos(2),
      I2 => rp_pos(3),
      I3 => rp_pos(1),
      O => Q_add0001(4)
    );
  Rout_cmp_le0001111 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => v_count(7),
      I1 => v_count(6),
      O => Gout_1_376
    );
  Gout_cmp_ge000031 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => h_count(1),
      I1 => h_count(2),
      I2 => h_count(3),
      O => N69
    );
  Bout_1_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => Rout_and0000,
      I1 => N67,
      I2 => Rout_and0009,
      I3 => Rout_and0010,
      O => Bout_1_OBUF_8
    );
  Gout_cmp_le000421 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => v_count(2),
      I1 => v_count(3),
      O => N35
    );
  Gout_cmp_le000221 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_count(5),
      I1 => v_count(4),
      O => N74
    );
  Gout_cmp_ge0003111 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => v_count(4),
      I1 => v_count(5),
      O => N73
    );
  Gout_cmp_ge000131 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => v_count(1),
      I1 => v_count(2),
      I2 => v_count(3),
      O => N6
    );
  Gout_cmp_ge000431 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => v_count(0),
      I1 => v_count(1),
      I2 => v_count(2),
      O => N5
    );
  Madd_add0000_cy_6_11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => lp_pos(6),
      I1 => lp_pos(5),
      I2 => Madd_add0000_cy_4_Q,
      O => Madd_add0000_cy_6_Q
    );
  Madd_add0000_cy_4_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => lp_pos(4),
      I1 => lp_pos(3),
      I2 => lp_pos(2),
      I3 => lp_pos(1),
      O => Madd_add0000_cy_4_Q
    );
  Rout_and000928 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => h_count(8),
      I1 => h_count(9),
      I2 => h_count(4),
      I3 => h_count(5),
      O => Rout_and000928_467
    );
  Madd_add0001_cy_6_11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rp_pos(6),
      I1 => Madd_add0001_cy_4_Q,
      I2 => rp_pos(5),
      O => Madd_add0001_cy_6_Q
    );
  Madd_add0001_cy_4_11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => rp_pos(4),
      I1 => rp_pos(3),
      I2 => rp_pos(2),
      I3 => rp_pos(1),
      O => Madd_add0001_cy_4_Q
    );
  Rout_and00111 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Rout_cmp_gt0000,
      I1 => Rout_cmp_lt0004,
      I2 => N7,
      O => Rout_and0011
    );
  Rout_1_42 : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => Rout_and0000,
      I1 => Rout_1_14,
      I2 => Rout_and0009,
      I3 => N67,
      O => Rout_1_OBUF_451
    );
  Rout_and001221 : LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => N7,
      I1 => Rout_cmp_ge0004,
      I2 => Gout_1_321,
      I3 => Rout_cmp_le00052,
      O => N70
    );
  Gout_1_64 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => Gout_1_37_39,
      I1 => h_count(9),
      I2 => Gout_1_14_14,
      I3 => h_count(8),
      O => Gout_1_64_46
    );
  Gout_1_116 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => v_count(5),
      I1 => v_count(3),
      I2 => N5,
      I3 => v_count(4),
      O => Gout_1_116_13
    );
  Gout_1_261 : LUT4
    generic map(
      INIT => X"3233"
    )
    port map (
      I0 => v_count(3),
      I1 => Gout_1_376,
      I2 => v_count(2),
      I3 => N74,
      O => Gout_1_261_33
    );
  Gout_1_282 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => v_count(2),
      I1 => v_count(3),
      I2 => v_count(0),
      I3 => v_count(1),
      O => Gout_1_282_34
    );
  Gout_1_294 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_count(5),
      I1 => v_count(6),
      O => Gout_1_294_35
    );
  Gout_1_310 : LUT4
    generic map(
      INIT => X"8CFF"
    )
    port map (
      I0 => Gout_1_282_34,
      I1 => Gout_1_294_35,
      I2 => v_count(4),
      I3 => v_count(7),
      O => Gout_1_310_36
    );
  Gout_1_482 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => Gout_1_64_46,
      I1 => Gout_1_169_15,
      I2 => Gout_1_453_42,
      O => Gout_1_482_43
    );
  Gout_1_515 : LUT4
    generic map(
      INIT => X"80AA"
    )
    port map (
      I0 => Gout_1_482_43,
      I1 => Rout_cmp_lt0004,
      I2 => Rout_cmp_gt0000,
      I3 => N70,
      O => Gout_1_515_44
    );
  Gout_1_571 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => Rout_and0000,
      I1 => N67,
      I2 => Gout_1_543_45,
      O => Gout_1_OBUF_54
    );
  rp_move_en_IBUF : IBUF
    port map (
      I => rp_move_en,
      O => rp_move_en_IBUF_626
    );
  lp_move_en_IBUF : IBUF
    port map (
      I => lp_move_en,
      O => lp_move_en_IBUF_608
    );
  lp_dir_IBUF : IBUF
    port map (
      I => lp_dir,
      O => lp_dir_IBUF_606
    );
  rp_dir_IBUF : IBUF
    port map (
      I => rp_dir,
      O => rp_dir_IBUF_624
    );
  h_sync_OBUF : OBUF
    port map (
      I => h_sync_s_600,
      O => h_sync
    );
  DAC_clk_OBUF : OBUF
    port map (
      I => DAC_clk_OBUF_10,
      O => DAC_clk
    );
  v_sync_OBUF : OBUF
    port map (
      I => v_sync_s_653,
      O => v_sync
    );
  Bout_7_OBUF : OBUF
    port map (
      I => Bout_1_OBUF_8,
      O => Bout(7)
    );
  Bout_6_OBUF : OBUF
    port map (
      I => Bout_1_OBUF_8,
      O => Bout(6)
    );
  Bout_5_OBUF : OBUF
    port map (
      I => Bout_1_OBUF_8,
      O => Bout(5)
    );
  Bout_4_OBUF : OBUF
    port map (
      I => Bout_1_OBUF_8,
      O => Bout(4)
    );
  Bout_3_OBUF : OBUF
    port map (
      I => Bout_1_OBUF_8,
      O => Bout(3)
    );
  Bout_2_OBUF : OBUF
    port map (
      I => Bout_1_OBUF_8,
      O => Bout(2)
    );
  Bout_1_OBUF : OBUF
    port map (
      I => Bout_1_OBUF_8,
      O => Bout(1)
    );
  Bout_0_OBUF : OBUF
    port map (
      I => Bout_1_OBUF_8,
      O => Bout(0)
    );
  Gout_7_OBUF : OBUF
    port map (
      I => Gout_1_OBUF_54,
      O => Gout(7)
    );
  Gout_6_OBUF : OBUF
    port map (
      I => Gout_1_OBUF_54,
      O => Gout(6)
    );
  Gout_5_OBUF : OBUF
    port map (
      I => Gout_1_OBUF_54,
      O => Gout(5)
    );
  Gout_4_OBUF : OBUF
    port map (
      I => Gout_1_OBUF_54,
      O => Gout(4)
    );
  Gout_3_OBUF : OBUF
    port map (
      I => Gout_1_OBUF_54,
      O => Gout(3)
    );
  Gout_2_OBUF : OBUF
    port map (
      I => Gout_1_OBUF_54,
      O => Gout(2)
    );
  Gout_1_OBUF : OBUF
    port map (
      I => Gout_1_OBUF_54,
      O => Gout(1)
    );
  Gout_0_OBUF : OBUF
    port map (
      I => Gout_1_OBUF_54,
      O => Gout(0)
    );
  Rout_7_OBUF : OBUF
    port map (
      I => Rout_1_OBUF_451,
      O => Rout(7)
    );
  Rout_6_OBUF : OBUF
    port map (
      I => Rout_1_OBUF_451,
      O => Rout(6)
    );
  Rout_5_OBUF : OBUF
    port map (
      I => Rout_1_OBUF_451,
      O => Rout(5)
    );
  Rout_4_OBUF : OBUF
    port map (
      I => Rout_1_OBUF_451,
      O => Rout(4)
    );
  Rout_3_OBUF : OBUF
    port map (
      I => Rout_1_OBUF_451,
      O => Rout(3)
    );
  Rout_2_OBUF : OBUF
    port map (
      I => Rout_1_OBUF_451,
      O => Rout(2)
    );
  Rout_1_OBUF : OBUF
    port map (
      I => Rout_1_OBUF_451,
      O => Rout(1)
    );
  Rout_0_OBUF : OBUF
    port map (
      I => Rout_1_OBUF_451,
      O => Rout(0)
    );
  Madd_add0002_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_y(3),
      O => Madd_add0002_cy_3_rt_113
    );
  Madd_add0002_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_y(4),
      O => Madd_add0002_cy_4_rt_115
    );
  Madd_add0002_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_y(5),
      O => Madd_add0002_cy_5_rt_117
    );
  Madd_add0002_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_y(6),
      O => Madd_add0002_cy_6_rt_119
    );
  Madd_add0002_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_y(7),
      O => Madd_add0002_cy_7_rt_121
    );
  Madd_Rout_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_x(3),
      O => Madd_Rout_add0000_cy_3_rt_92
    );
  Madd_Rout_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_x(4),
      O => Madd_Rout_add0000_cy_4_rt_94
    );
  Madd_Rout_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_x(5),
      O => Madd_Rout_add0000_cy_5_rt_96
    );
  Madd_Rout_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_x(6),
      O => Madd_Rout_add0000_cy_6_rt_98
    );
  Madd_Rout_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_x(7),
      O => Madd_Rout_add0000_cy_7_rt_100
    );
  Madd_Rout_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_x(8),
      O => Madd_Rout_add0000_cy_8_rt_102
    );
  Mcount_v_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(1),
      O => Mcount_v_count_cy_1_rt_334
    );
  Mcount_v_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(2),
      O => Mcount_v_count_cy_2_rt_336
    );
  Mcount_v_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(3),
      O => Mcount_v_count_cy_3_rt_338
    );
  Mcount_v_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(4),
      O => Mcount_v_count_cy_4_rt_340
    );
  Mcount_v_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(5),
      O => Mcount_v_count_cy_5_rt_342
    );
  Mcount_v_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(6),
      O => Mcount_v_count_cy_6_rt_344
    );
  Mcount_v_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(7),
      O => Mcount_v_count_cy_7_rt_346
    );
  Mcount_v_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(8),
      O => Mcount_v_count_cy_8_rt_348
    );
  Mcount_h_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(1),
      O => Mcount_h_count_cy_1_rt_315
    );
  Mcount_h_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(2),
      O => Mcount_h_count_cy_2_rt_317
    );
  Mcount_h_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(3),
      O => Mcount_h_count_cy_3_rt_319
    );
  Mcount_h_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(4),
      O => Mcount_h_count_cy_4_rt_321
    );
  Mcount_h_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(5),
      O => Mcount_h_count_cy_5_rt_323
    );
  Mcount_h_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(6),
      O => Mcount_h_count_cy_6_rt_325
    );
  Mcount_h_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(7),
      O => Mcount_h_count_cy_7_rt_327
    );
  Mcount_h_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(8),
      O => Mcount_h_count_cy_8_rt_329
    );
  Mcompar_Rout_cmp_lt0002_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(0),
      O => Mcompar_Rout_cmp_lt0002_cy_0_rt_274
    );
  Mcompar_Rout_cmp_lt0003_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(0),
      O => Mcompar_Rout_cmp_lt0003_cy_0_rt_294
    );
  Madd_add0002_xor_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_y(1),
      O => Madd_add0002_xor_1_rt_123
    );
  Madd_add0002_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_y(8),
      O => Madd_add0002_xor_8_rt_124
    );
  Madd_Rout_add0000_xor_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_x(1),
      O => Madd_Rout_add0000_xor_1_rt_105
    );
  Madd_Rout_add0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ball_x(9),
      O => Madd_Rout_add0000_xor_9_rt_106
    );
  Mcount_v_count_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => v_count(9),
      O => Mcount_v_count_xor_9_rt_350
    );
  Mcount_h_count_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => h_count(9),
      O => Mcount_h_count_xor_9_rt_331
    );
  Maccum_lp_pos_lut_0_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => lp_pos(0),
      I1 => lp_dir_IBUF_606,
      I2 => lp_pos_cmp_le0000,
      O => Maccum_lp_pos_lut(0)
    );
  Maccum_rp_pos_lut_0_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => rp_pos(0),
      I1 => rp_dir_IBUF_624,
      I2 => rp_pos_cmp_le0000,
      O => Maccum_rp_pos_lut(0)
    );
  Maccum_lp_pos_lut_1_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => lp_pos(1),
      I1 => lp_dir_IBUF_606,
      I2 => lp_pos_cmp_le0000,
      O => Maccum_lp_pos_lut(1)
    );
  Maccum_rp_pos_lut_1_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => rp_pos(1),
      I1 => rp_dir_IBUF_624,
      I2 => rp_pos_cmp_le0000,
      O => Maccum_rp_pos_lut(1)
    );
  Maccum_lp_pos_lut_3_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => lp_pos(3),
      I1 => lp_dir_IBUF_606,
      I2 => lp_pos_cmp_le0000,
      O => Maccum_lp_pos_lut(3)
    );
  Maccum_rp_pos_lut_3_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => rp_pos(3),
      I1 => rp_dir_IBUF_624,
      I2 => rp_pos_cmp_le0000,
      O => Maccum_rp_pos_lut(3)
    );
  Maccum_lp_pos_lut_4_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => lp_pos(4),
      I1 => lp_dir_IBUF_606,
      I2 => lp_pos_cmp_le0000,
      O => Maccum_lp_pos_lut(4)
    );
  Maccum_rp_pos_lut_4_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => rp_pos(4),
      I1 => rp_dir_IBUF_624,
      I2 => rp_pos_cmp_le0000,
      O => Maccum_rp_pos_lut(4)
    );
  Maccum_lp_pos_lut_6_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => lp_pos(6),
      I1 => lp_dir_IBUF_606,
      I2 => lp_pos_cmp_le0000,
      O => Maccum_lp_pos_lut(6)
    );
  Maccum_rp_pos_lut_6_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => rp_pos(6),
      I1 => rp_dir_IBUF_624,
      I2 => rp_pos_cmp_le0000,
      O => Maccum_rp_pos_lut(6)
    );
  Maccum_lp_pos_lut_7_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => lp_pos(7),
      I1 => lp_dir_IBUF_606,
      I2 => lp_pos_cmp_le0000,
      O => Maccum_lp_pos_lut(7)
    );
  Maccum_rp_pos_lut_7_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => rp_pos(7),
      I1 => rp_dir_IBUF_624,
      I2 => rp_pos_cmp_le0000,
      O => Maccum_rp_pos_lut(7)
    );
  video_on_not00011 : LUT4
    generic map(
      INIT => X"0A3B"
    )
    port map (
      I0 => h_count(9),
      I1 => N681,
      I2 => Rout_and000076_465,
      I3 => Rout_and000024_463,
      O => video_on_not0001
    );
  Maccum_lp_pos_lut_2_Q : LUT3
    generic map(
      INIT => X"39"
    )
    port map (
      I0 => lp_dir_IBUF_606,
      I1 => lp_pos(2),
      I2 => lp_pos_cmp_le0000,
      O => Maccum_lp_pos_lut(2)
    );
  Maccum_rp_pos_lut_2_Q : LUT3
    generic map(
      INIT => X"39"
    )
    port map (
      I0 => rp_dir_IBUF_624,
      I1 => rp_pos(2),
      I2 => rp_pos_cmp_le0000,
      O => Maccum_rp_pos_lut(2)
    );
  ball_dy_not0001103 : LUT4
    generic map(
      INIT => X"8A88"
    )
    port map (
      I0 => video_on_657,
      I1 => N41,
      I2 => N71,
      I3 => ball_dy_not000181_531,
      O => ball_dy_not0001
    );
  ball_dx_not000149 : LUT4
    generic map(
      INIT => X"808A"
    )
    port map (
      I0 => video_on_657,
      I1 => ball_dx_not000125,
      I2 => ball_dx_not0001164_517,
      I3 => N61,
      O => ball_dx_not0001
    );
  ball_y_mux0002_7_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_y_addsub0000(1),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_y_mux0002(7)
    );
  ball_y_mux0002_6_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_y_addsub0000(2),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_y_mux0002(6)
    );
  ball_y_mux0002_5_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_y_addsub0000(3),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_y_mux0002(5)
    );
  ball_x_mux0002_8_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_x_addsub0000(1),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_x_mux0002(8)
    );
  ball_x_mux0002_7_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_x_addsub0000(2),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_x_mux0002(7)
    );
  ball_x_mux0002_6_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_x_addsub0000(3),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_x_mux0002(6)
    );
  ball_x_mux0002_5_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_x_addsub0000(4),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_x_mux0002(5)
    );
  ball_x_mux0002_4_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_x_addsub0000(5),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_x_mux0002(4)
    );
  ball_x_mux0002_2_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_x_addsub0000(7),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_x_mux0002(2)
    );
  Maccum_lp_pos_lut_5_Q : LUT4
    generic map(
      INIT => X"A626"
    )
    port map (
      I0 => lp_pos(5),
      I1 => lp_dir_IBUF_606,
      I2 => lp_pos_cmp_le0000133_620,
      I3 => lp_pos_cmp_le0000115_619,
      O => Maccum_lp_pos_lut(5)
    );
  Maccum_rp_pos_lut_5_Q : LUT4
    generic map(
      INIT => X"A626"
    )
    port map (
      I0 => rp_pos(5),
      I1 => rp_dir_IBUF_624,
      I2 => rp_pos_cmp_le0000133_638,
      I3 => rp_pos_cmp_le0000115_637,
      O => Maccum_rp_pos_lut(5)
    );
  Maccum_lp_pos_lut_8_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => lp_pos(8),
      I1 => lp_dir_IBUF_606,
      I2 => lp_pos_cmp_le0000,
      O => Maccum_lp_pos_lut(8)
    );
  Maccum_rp_pos_lut_8_Q : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => rp_pos(8),
      I1 => rp_dir_IBUF_624,
      I2 => rp_pos_cmp_le0000,
      O => Maccum_rp_pos_lut(8)
    );
  ball_y_mux0002_0_1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_y_addsub0000(8),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_y_mux0002(0)
    );
  ball_x_mux0002_0_2 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => ball_x_addsub0000(9),
      I1 => ball_dx_cmp_ge0000,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_x_mux0002(0)
    );
  rp_pos_not0003_inv2 : LUT4
    generic map(
      INIT => X"20AA"
    )
    port map (
      I0 => rp_dir_IBUF_624,
      I1 => N64,
      I2 => rp_pos(5),
      I3 => rp_pos_cmp_le0000133_638,
      O => rp_pos_not0003_inv
    );
  lp_pos_not0003_inv2 : LUT4
    generic map(
      INIT => X"20AA"
    )
    port map (
      I0 => lp_dir_IBUF_606,
      I1 => N66,
      I2 => lp_pos(5),
      I3 => lp_pos_cmp_le0000133_620,
      O => lp_pos_not0003_inv
    );
  ball_dy_not000190_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => ball_y(6),
      I1 => ball_dy_not00019_532,
      I2 => ball_dy_not00014_528,
      I3 => ball_dy_not000152_530,
      O => N41
    );
  ball_dx_mux0000_22_1 : LUT4
    generic map(
      INIT => X"EEF0"
    )
    port map (
      I0 => ball_dx_cmp_gt000114_505,
      I1 => ball_dx_cmp_gt0001110_504,
      I2 => ball_dx_cmp_le0001,
      I3 => N1,
      O => ball_dx_mux0000(22)
    );
  Rout_and001211 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Mcompar_Rout_cmp_lt0002_cy(9),
      I1 => Mcompar_Rout_cmp_lt0003_cy(9),
      I2 => Rout_cmp_ge0010,
      I3 => Rout_cmp_ge0011,
      O => N7
    );
  Rout_and000941_SW0 : LUT4
    generic map(
      INIT => X"8891"
    )
    port map (
      I0 => h_count(2),
      I1 => h_count(3),
      I2 => h_count(0),
      I3 => h_count(1),
      O => N8
    );
  Rout_and000941 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => h_count(6),
      I1 => h_count(7),
      I2 => Rout_and000928_467,
      I3 => N8,
      O => Rout_and000941_468
    );
  Gout_1_21435_SW0 : LUT4
    generic map(
      INIT => X"AF8C"
    )
    port map (
      I0 => Gout_1_21324_25,
      I1 => v_count(6),
      I2 => v_count(8),
      I3 => Gout_1_21265_23,
      O => N14
    );
  Gout_1_2194_SW0 : LUT4
    generic map(
      INIT => X"1311"
    )
    port map (
      I0 => v_count(5),
      I1 => N68,
      I2 => v_count(4),
      I3 => N6,
      O => N16
    );
  Gout_1_453_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => Gout_1_397_41,
      I1 => Gout_1_261_33,
      I2 => Gout_1_310_36,
      O => N18
    );
  Mcompar_Rout_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => v_count(1),
      I1 => lp_pos(1),
      O => Mcompar_Rout_cmp_lt0000_lut(1)
    );
  Mcompar_Rout_cmp_lt0000_lut_2_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => v_count(2),
      I1 => lp_pos(2),
      I2 => lp_pos(1),
      O => Mcompar_Rout_cmp_lt0000_lut(2)
    );
  Mcompar_Rout_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => lp_pos(3),
      I1 => v_count(3),
      I2 => lp_pos(2),
      I3 => lp_pos(1),
      O => Mcompar_Rout_cmp_lt0000_lut(3)
    );
  Mcompar_Rout_cmp_lt0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => v_count(5),
      I1 => lp_pos(5),
      I2 => Madd_add0000_cy_4_Q,
      O => Mcompar_Rout_cmp_lt0000_lut(5)
    );
  Mcompar_Rout_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => v_count(6),
      I1 => lp_pos(6),
      I2 => Madd_add0000_cy_4_Q,
      I3 => lp_pos(5),
      O => Mcompar_Rout_cmp_lt0000_lut(6)
    );
  Mcompar_Rout_cmp_lt0000_lut_7_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => v_count(7),
      I1 => lp_pos(7),
      I2 => Madd_add0000_cy_6_Q,
      O => Mcompar_Rout_cmp_lt0000_lut(7)
    );
  Mcompar_Rout_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => lp_pos(8),
      I1 => v_count(8),
      I2 => Madd_add0000_cy_6_Q,
      I3 => lp_pos(7),
      O => Mcompar_Rout_cmp_lt0000_lut(8)
    );
  Mcompar_Rout_cmp_lt0001_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => v_count(1),
      I1 => rp_pos(1),
      O => Mcompar_Rout_cmp_lt0001_lut(1)
    );
  Mcompar_Rout_cmp_lt0001_lut_2_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => v_count(2),
      I1 => rp_pos(2),
      I2 => rp_pos(1),
      O => Mcompar_Rout_cmp_lt0001_lut(2)
    );
  Mcompar_Rout_cmp_lt0001_lut_3_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => rp_pos(3),
      I1 => v_count(3),
      I2 => rp_pos(2),
      I3 => rp_pos(1),
      O => Mcompar_Rout_cmp_lt0001_lut(3)
    );
  Mcompar_Rout_cmp_lt0001_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => v_count(5),
      I1 => rp_pos(5),
      I2 => Madd_add0001_cy_4_Q,
      O => Mcompar_Rout_cmp_lt0001_lut(5)
    );
  Mcompar_Rout_cmp_lt0001_lut_6_Q : LUT4
    generic map(
      INIT => X"6669"
    )
    port map (
      I0 => v_count(6),
      I1 => rp_pos(6),
      I2 => Madd_add0001_cy_4_Q,
      I3 => rp_pos(5),
      O => Mcompar_Rout_cmp_lt0001_lut(6)
    );
  Mcompar_Rout_cmp_lt0001_lut_7_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => v_count(7),
      I1 => rp_pos(7),
      I2 => Madd_add0001_cy_6_Q,
      O => Mcompar_Rout_cmp_lt0001_lut(7)
    );
  Mcompar_Rout_cmp_lt0001_lut_8_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => rp_pos(8),
      I1 => v_count(8),
      I2 => Madd_add0001_cy_6_Q,
      I3 => rp_pos(7),
      O => Mcompar_Rout_cmp_lt0001_lut(8)
    );
  Rout_cmp_lt0004243_SW0 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => h_count(2),
      I1 => h_count(0),
      I2 => h_count(1),
      I3 => Rout_cmp_lt000426_489,
      O => N20
    );
  Rout_cmp_lt0004243 : LUT4
    generic map(
      INIT => X"5755"
    )
    port map (
      I0 => h_count(9),
      I1 => h_count(7),
      I2 => h_count(8),
      I3 => N20,
      O => Rout_cmp_lt0004
    );
  Rout_and000969 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => Mcompar_Rout_cmp_lt0000_cy(9),
      I1 => Rout_cmp_ge0007,
      I2 => Rout_and000941_468,
      O => Rout_and0009
    );
  Rout_and001082 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => Rout_cmp_ge0009,
      I1 => Rout_and001032,
      I2 => Mcompar_Rout_cmp_lt0001_cy(9),
      I3 => Rout_and001055,
      O => Rout_and0010
    );
  Gout_1_361_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => v_count(6),
      I1 => v_count(7),
      I2 => v_count(9),
      O => N22
    );
  Gout_1_361 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => v_count(3),
      I1 => v_count(5),
      I2 => v_count(4),
      I3 => N22,
      O => Gout_1_361_38
    );
  Gout_1_543 : LUT4
    generic map(
      INIT => X"0504"
    )
    port map (
      I0 => Rout_and0009,
      I1 => Rout_and0011,
      I2 => Rout_and0010,
      I3 => Gout_1_515_44,
      O => Gout_1_543_45
    );
  v_count_cmp_ge00001 : LUT4
    generic map(
      INIT => X"C8CC"
    )
    port map (
      I0 => N24,
      I1 => v_count(9),
      I2 => v_count(4),
      I3 => N35,
      O => v_count_cmp_ge0000
    );
  v_sync_s_not000128 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => v_sync_s_not00017_656,
      I1 => v_count(8),
      I2 => v_count(7),
      I3 => v_sync_s_not000119_655,
      O => v_sync_s_not0001
    );
  Gout_1_21101_SW0 : LUT4
    generic map(
      INIT => X"7F77"
    )
    port map (
      I0 => v_count(7),
      I1 => v_count(8),
      I2 => v_count(6),
      I3 => Gout_1_2116,
      O => N30
    );
  Rout_cmp_gt0000214_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => h_count(7),
      I1 => h_count(8),
      I2 => h_count(9),
      O => N32
    );
  Rout_cmp_gt0000214 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Rout_cmp_gt000027_486,
      I1 => h_count(5),
      I2 => h_count(6),
      I3 => N32,
      O => Rout_cmp_gt0000
    );
  Rout_cmp_lt000426 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => h_count(4),
      I1 => h_count(5),
      I2 => h_count(3),
      I3 => h_count(6),
      O => Rout_cmp_lt000426_489
    );
  Gout_1_21137 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => h_count(9),
      I1 => h_count(6),
      I2 => h_count(7),
      I3 => h_count(8),
      O => Gout_1_21137_17
    );
  Gout_1_21152_SW0 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => h_count(5),
      I1 => h_count(2),
      I2 => h_count(3),
      I3 => h_count(4),
      O => N34
    );
  Gout_1_21152 : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => Rout_cmp_ge0000212,
      I1 => N34,
      I2 => Gout_1_21137_17,
      I3 => Rout_cmp_ge000025_479,
      O => Gout_1_21152_18
    );
  Gout_1_21206_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N4,
      I1 => h_count(4),
      I2 => h_count(5),
      I3 => h_count(6),
      O => N36
    );
  Gout_1_21265_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => v_count(3),
      I1 => v_count(0),
      I2 => v_count(1),
      O => N38
    );
  Gout_1_21265 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => v_count(2),
      I1 => v_count(5),
      I2 => v_count(4),
      I3 => N38,
      O => Gout_1_21265_23
    );
  Gout_1_14_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => h_count(2),
      I1 => h_count(3),
      I2 => h_count(4),
      I3 => h_count(5),
      O => N40
    );
  Gout_1_14 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => h_count(1),
      I1 => h_count(6),
      I2 => N40,
      I3 => h_count(7),
      O => Gout_1_14_14
    );
  Gout_1_75 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => v_count(6),
      I1 => v_count(5),
      I2 => v_count(4),
      O => Gout_1_75_47
    );
  Gout_1_397_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => v_count(0),
      I1 => v_count(2),
      I2 => v_count(1),
      I3 => v_count(3),
      O => N42
    );
  Gout_1_397 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => v_count(4),
      I1 => Gout_1_376,
      I2 => v_count(5),
      I3 => N42,
      O => Gout_1_397_41
    );
  Gout_1_21230_SW0 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => N48,
      I1 => h_count(9),
      I2 => N36,
      I3 => h_count(6),
      O => N46
    );
  Gout_1_21230 : LUT4
    generic map(
      INIT => X"AABA"
    )
    port map (
      I0 => Gout_1_21152_18,
      I1 => h_count(7),
      I2 => N46,
      I3 => h_count(8),
      O => Gout_1_21230_22
    );
  Gout_1_21435_SW1 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => v_count(8),
      I1 => v_count(7),
      I2 => v_count(9),
      I3 => N14,
      O => N50
    );
  Gout_1_21435 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => N50,
      I1 => Gout_1_21378_26,
      I2 => Gout_1_21391_28,
      I3 => Gout_1_21407_29,
      O => Gout_1_21435_30
    );
  Gout_1_453_SW1 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => N18,
      I1 => N26,
      I2 => v_count(7),
      O => N52
    );
  Gout_1_453 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => v_count(8),
      I1 => Gout_1_361_38,
      I2 => v_count(9),
      I3 => N52,
      O => Gout_1_453_42
    );
  Gout_1_37_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N69,
      I1 => h_count(4),
      I2 => h_count(5),
      O => N54
    );
  Gout_1_37 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => h_count(0),
      I1 => h_count(6),
      I2 => h_count(7),
      I3 => N54,
      O => Gout_1_37_39
    );
  Gout_1_240_SW0_SW1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => v_count(0),
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(1),
      O => N56
    );
  Gout_1_240_SW0 : LUT4
    generic map(
      INIT => X"999D"
    )
    port map (
      I0 => v_count(6),
      I1 => v_count(5),
      I2 => v_count(4),
      I3 => N56,
      O => N26
    );
  clk_25_BUFG : BUFG
    port map (
      I => clk_251,
      O => clk_25_584
    );
  clk_50_BUFGP : BUFGP
    port map (
      I => clk_50,
      O => clk_50_BUFGP_587
    );
  Madd_add0002_lut_2_INV_0 : INV
    port map (
      I => ball_y(2),
      O => Madd_add0002_lut(2)
    );
  Madd_Rout_add0000_lut_2_INV_0 : INV
    port map (
      I => ball_x(2),
      O => Madd_Rout_add0000_lut_2_Q
    );
  Madd_ball_x_addsub0000_lut_1_INV_0 : INV
    port map (
      I => ball_x(1),
      O => Madd_ball_x_addsub0000_lut(1)
    );
  Madd_ball_y_addsub0000_lut_1_INV_0 : INV
    port map (
      I => ball_y(1),
      O => Madd_ball_y_addsub0000_lut(1)
    );
  Mcompar_Rout_cmp_ge0007_lut_9_INV_0 : INV
    port map (
      I => v_count(9),
      O => Mcompar_Rout_cmp_ge0007_lut(9)
    );
  Mcompar_Rout_cmp_ge0009_lut_9_INV_0 : INV
    port map (
      I => v_count(9),
      O => Mcompar_Rout_cmp_ge0009_lut(9)
    );
  Mcompar_Rout_cmp_ge0011_lut_9_INV_0 : INV
    port map (
      I => v_count(9),
      O => Mcompar_Rout_cmp_ge0011_lut(9)
    );
  Mcount_v_count_lut_0_INV_0 : INV
    port map (
      I => v_count(0),
      O => Mcount_v_count_lut(0)
    );
  Mcount_h_count_lut_0_INV_0 : INV
    port map (
      I => h_count(0),
      O => Mcount_h_count_lut(0)
    );
  Mcompar_Rout_cmp_lt0000_lut_9_INV_0 : INV
    port map (
      I => v_count(9),
      O => Mcompar_Rout_cmp_lt0000_lut(9)
    );
  Mcompar_Rout_cmp_lt0001_lut_9_INV_0 : INV
    port map (
      I => v_count(9),
      O => Mcompar_Rout_cmp_lt0001_lut(9)
    );
  Mcompar_Rout_cmp_lt0003_lut_9_INV_0 : INV
    port map (
      I => v_count(9),
      O => Mcompar_Rout_cmp_lt0003_lut(9)
    );
  Mcompar_Rout_cmp_ge0010_lut_0_1_INV_0 : INV
    port map (
      I => h_count(0),
      O => Mcompar_Rout_cmp_ge0010_lut(0)
    );
  Mcompar_Rout_cmp_ge0011_lut_0_1_INV_0 : INV
    port map (
      I => v_count(0),
      O => Mcompar_Rout_cmp_ge0011_lut(0)
    );
  Gout_1_169 : MUXF5
    port map (
      I0 => N58,
      I1 => N59,
      S => v_count(7),
      O => Gout_1_169_15
    );
  Gout_1_169_F : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => Gout_1_116_13,
      I1 => v_count(9),
      I2 => v_count(6),
      I3 => v_count(8),
      O => N58
    );
  Gout_1_169_G : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => Gout_1_75_47,
      I1 => v_count(9),
      I2 => v_count(8),
      I3 => N35,
      O => N59
    );
  Gout_1_21101 : MUXF5
    port map (
      I0 => N60,
      I1 => N611,
      S => v_count(8),
      O => Gout_1_21101_16
    );
  Gout_1_21101_F : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => v_count(9),
      I1 => N16,
      I2 => Rout_cmp_le00052,
      O => N60
    );
  Gout_1_21101_G : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => N2,
      I1 => v_count(9),
      I2 => N30,
      I3 => v_count(5),
      O => N611
    );
  Rout_cmp_ge00002121 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => h_count(3),
      I1 => h_count(2),
      I2 => h_count(1),
      I3 => h_count(0),
      O => Rout_cmp_ge00002121_478
    );
  Rout_cmp_ge0000212_f5 : MUXF5
    port map (
      I0 => Madd_Rout_add0000_cy_0_Q,
      I1 => Rout_cmp_ge00002121_478,
      S => h_count(4),
      O => Rout_cmp_ge0000212
    );
  Gout_1_21161 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => v_count(2),
      I1 => v_count(0),
      I2 => v_count(1),
      I3 => N73,
      O => Gout_1_21162
    );
  Gout_1_2116_f5 : MUXF5
    port map (
      I0 => Gout_1_21162,
      I1 => N73,
      S => v_count(3),
      O => Gout_1_2116
    );
  Rout_and0010551 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => h_count(7),
      I1 => h_count(8),
      I2 => h_count(6),
      I3 => h_count(5),
      O => Rout_and0010551_474
    );
  Rout_and001055_f5 : MUXF5
    port map (
      I0 => Madd_Rout_add0000_cy_0_Q,
      I1 => Rout_and0010551_474,
      S => h_count(9),
      O => Rout_and001055
    );
  Rout_and0010321 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => h_count(0),
      I1 => h_count(1),
      I2 => h_count(2),
      I3 => h_count(3),
      O => Rout_and0010321_471
    );
  Rout_and0010322 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => h_count(3),
      I1 => h_count(1),
      I2 => h_count(2),
      O => Rout_and0010322_472
    );
  Rout_and001032_f5 : MUXF5
    port map (
      I0 => Rout_and0010322_472,
      I1 => Rout_and0010321_471,
      S => h_count(4),
      O => Rout_and001032
    );
  Rout_1_141 : LUT4
    generic map(
      INIT => X"FEAE"
    )
    port map (
      I0 => Rout_and0010,
      I1 => N70,
      I2 => Rout_cmp_gt0000,
      I3 => N7,
      O => Rout_1_141_443
    );
  Rout_1_142 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Rout_and0010,
      I1 => N70,
      O => Rout_1_142_444
    );
  Rout_1_14_f5 : MUXF5
    port map (
      I0 => Rout_1_142_444,
      I1 => Rout_1_141_443,
      S => Rout_cmp_lt0004,
      O => Rout_1_14
    );
  ball_dx_not0001251 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => ball_x(6),
      I1 => ball_x(5),
      I2 => ball_x(7),
      I3 => ball_x(8),
      O => ball_dx_not0001251_519
    );
  ball_dx_not0001252 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ball_x(8),
      I1 => ball_x(7),
      I2 => ball_x(6),
      I3 => ball_dx_cmp_gt0001110_504,
      O => ball_dx_not0001252_520
    );
  ball_dx_not000125_f5 : MUXF5
    port map (
      I0 => ball_dx_not0001252_520,
      I1 => ball_dx_not0001251_519,
      S => ball_x(9),
      O => ball_dx_not000125
    );
  v_sync_s_not00017 : LUT4_L
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => v_count(6),
      I1 => v_count(0),
      I2 => v_count(4),
      I3 => v_count(1),
      LO => v_sync_s_not00017_656
    );
  ball_dy_mux0000_23_2 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ball_y(8),
      I1 => ball_y(7),
      I2 => ball_y(6),
      LO => ball_dy_mux0000_23_2_524
    );
  h_sync_s_not000116 : LUT4_L
    generic map(
      INIT => X"FCEC"
    )
    port map (
      I0 => h_count(0),
      I1 => h_count(6),
      I2 => h_count(4),
      I3 => N4,
      LO => h_sync_s_not000116_603
    );
  ball_dx_cmp_le0001230 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ball_x(8),
      I1 => ball_x(7),
      LO => ball_dx_cmp_le0001230_508
    );
  ball_dy_not00019 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ball_y(8),
      I1 => ball_y(7),
      LO => ball_dy_not00019_532
    );
  ball_dy_not000149 : LUT3_L
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ball_y(8),
      I1 => ball_y(6),
      I2 => ball_y(7),
      LO => ball_dy_not000149_529
    );
  Rout_and000011 : LUT3_L
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => v_count(3),
      I1 => v_count(4),
      I2 => N5,
      LO => Rout_and000011_462
    );
  ball_dx_not0001111 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ball_y(3),
      I1 => ball_y(4),
      LO => ball_dx_not0001111_512
    );
  ball_dx_not0001129 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ball_y(5),
      I1 => ball_y(4),
      LO => ball_dx_not0001129_514
    );
  ball_dx_not0001164 : LUT4_D
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => ball_y(8),
      I1 => ball_dx_not0001116_513,
      I2 => ball_dx_not000116_516,
      I3 => ball_dx_not0001134_515,
      LO => N62,
      O => N1
    );
  Rout_cmp_ge0005111 : LUT4_D
    generic map(
      INIT => X"ECCC"
    )
    port map (
      I0 => h_count(0),
      I1 => h_count(5),
      I2 => h_count(4),
      I3 => N69,
      LO => N63,
      O => N48
    );
  rp_pos_cmp_le0000115 : LUT4_D
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => rp_pos(4),
      I1 => rp_pos(3),
      I2 => rp_pos(1),
      I3 => rp_pos(2),
      LO => N64,
      O => rp_pos_cmp_le0000115_637
    );
  rp_pos_cmp_le0000133 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => rp_pos(8),
      I1 => rp_pos(6),
      I2 => rp_pos(7),
      LO => N65,
      O => rp_pos_cmp_le0000133_638
    );
  lp_pos_cmp_le0000115 : LUT4_D
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => lp_pos(4),
      I1 => lp_pos(3),
      I2 => lp_pos(1),
      I3 => lp_pos(2),
      LO => N66,
      O => lp_pos_cmp_le0000115_619
    );
  lp_pos_cmp_le0000133 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => lp_pos(8),
      I1 => lp_pos(6),
      I2 => lp_pos(7),
      LO => N671,
      O => lp_pos_cmp_le0000133_620
    );
  Gout_cmp_le0002111 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => v_count(8),
      I1 => v_count(9),
      LO => N681,
      O => Gout_1_321
    );
  Rout_cmp_ge000631 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => h_count(1),
      I1 => h_count(2),
      I2 => h_count(3),
      LO => N691,
      O => N4
    );
  ball_dx_cmp_ge0000215 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ball_x(6),
      I1 => ball_x(7),
      I2 => ball_dx_cmp_ge000028_503,
      I3 => ball_dx_cmp_ge000022_502,
      LO => N701,
      O => ball_dx_cmp_ge0000
    );
  ball_dx_not000142_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ball_dx_cmp_ge0000,
      I1 => ball_dx_cmp_le0001,
      LO => N61
    );
  v_count_cmp_ge00001_SW1 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => v_count(5),
      I1 => v_count(6),
      I2 => v_count(7),
      I3 => v_count(8),
      LO => N24
    );
  ball_dx_not0001164_1 : LUT4_D
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => ball_y(8),
      I1 => ball_dx_not0001116_513,
      I2 => ball_dx_not000116_516,
      I3 => ball_dx_not0001134_515,
      LO => N71,
      O => ball_dx_not0001164_517
    );

end Structure;

