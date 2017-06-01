@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 854e0b0eecfe48d9b3279cd92bcb6664 -m64 --debug typical --relax --mt 2 -L microblaze_v9_5_3 -L xil_defaultlib -L lmb_v10_v3_0_7 -L lmb_bram_if_cntlr_v4_0_7 -L blk_mem_gen_v8_3_1 -L axi_lite_ipif_v3_0_3 -L mdm_v3_2_4 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_8 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_7 -L fifo_generator_v13_0_1 -L axi_data_fifo_v2_1_6 -L axi_crossbar_v2_1_8 -L unisims_ver -L unimacro_ver -L secureip --snapshot testben_behav xil_defaultlib.testben xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0