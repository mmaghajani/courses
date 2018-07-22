vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v10_0_0
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_10
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_7
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_10

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v10_0_0 riviera/microblaze_v10_0_0
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_10 riviera/lmb_bram_if_cntlr_v4_0_10
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_7 riviera/mdm_v3_2_7
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 riviera/proc_sys_reset_v5_0_10

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/db52" "+incdir+../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/db52" "+incdir+../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_0 -93 \
"../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/7262/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_10 -93 \
"../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/f4d9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \
"d:/courses/University courses/Design Automation/Homeworks/project/phase_one/phase_one.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_sim_netlist.vhdl" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_7 -93 \
"../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/911b/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \
"d:/courses/University courses/Design Automation/Homeworks/project/phase_one/phase_one.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../phase_one.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \
"../../../bd/design_1/ipshared/f48c/src/full_adder.vhd" \
"../../../bd/design_1/ipshared/f48c/src/multiplier.vhd" \
"../../../bd/design_1/ipshared/f48c/src/half_adder.vhd" \
"../../../bd/design_1/ipshared/f48c/src/BinaryToBCD.vhd" \
"../../../bd/design_1/ipshared/f48c/src/BCD_multiplier.vhd" \
"../../../bd/design_1/ipshared/f48c/src/BCD_adder.vhd" \
"../../../bd/design_1/ipshared/f48c/src/N_digit_BCD_adder.vhd" \
"../../../bd/design_1/ipshared/f48c/src/BCD_1x8_multiplier.vhd" \
"../../../bd/design_1/ipshared/f48c/src/BCD_8x8_multiplier.vhd" \
"../../../bd/design_1/ipshared/f48c/hdl/myip_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/f48c/hdl/myip_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_myip_0_0/sim/design_1_myip_0_0.vhd" \
"d:/courses/University courses/Design Automation/Homeworks/project/phase_one/phase_one.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_sim_netlist.vhdl" \
"../../../bd/design_1/hdl/design_1.vhd" \

vlog -work xil_defaultlib "glbl.v"

